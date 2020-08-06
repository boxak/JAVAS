package dao;

import java.util.ArrayList;
import java.util.List;

import org.bson.Document;
import org.bson.types.ObjectId;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.springframework.stereotype.Repository;

import com.google.gson.Gson;
import com.mongodb.MongoClient;
import com.mongodb.MongoClientURI;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoCursor;
import com.mongodb.client.MongoDatabase;
import com.mongodb.client.model.Filters;

import vo.ReviewVO;

@Repository
public class ReviewDAOImpl implements ReviewDAO{
	MongoClientURI uri = null;
	MongoClient mongoClient = null;
	MongoDatabase mongodb = null;
	MongoCollection<Document> collection = null;
	MongoCursor<Document> cursor = null;
	String boardType;
	
	public ReviewDAOImpl() {}
	
	public ReviewDAOImpl(String boardType){
		this.boardType = boardType;
		try {
			uri = new MongoClientURI(
				"mongodb://boxak:Second142857%21@exercise-shard-00-00-atylc.mongodb.net:27017,exercise-shard-00-01-atylc.mongodb.net:27017,exercise-shard-00-02-atylc.mongodb.net:27017/test?ssl=true&replicaSet=Exercise-shard-0&authSource=admin&retryWrites=true&w=majority"
			);
			mongoClient = new MongoClient(uri);
			mongodb = mongoClient.getDatabase("JavasDB");
			collection = mongodb.getCollection(boardType+"Review");
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	public List<ReviewVO> listAll(String postId){
		List<ReviewVO> list = new ArrayList<>();
		try {
			cursor = collection.find(Filters.eq("postId", postId)).cursor();
			while(cursor.hasNext()) {
				String json = cursor.next().toJson();
				Gson gson = new Gson();
				ReviewVO vo = gson.fromJson(json,ReviewVO.class);
				
				JSONParser parser = new JSONParser();
				JSONObject jsonObj = (JSONObject)parser.parse(json);
				jsonObj = (JSONObject)parser.parse(jsonObj.get("_id").toString());
				vo.setReviewId(jsonObj.get("$oid").toString());
				
				list.add(vo);
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public String myReview(String targetId){
		List<ReviewVO> list = new ArrayList<>();
		String jsonList = "";
		try {
			cursor = collection.find(Filters.eq("targetId", targetId)).cursor();
			while(cursor.hasNext()) {
				String json = cursor.next().toJson();
				Gson gson = new Gson();
				ReviewVO vo = gson.fromJson(json, ReviewVO.class);
				list.add(vo);
			}
			Gson gson = new Gson();
			jsonList = gson.toJson(list);
			System.out.println(jsonList);
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return jsonList;
	}
	
	public boolean insert(ReviewVO vo) {
		boolean result = false;
		try {
			Document document = setDocument(vo);
			collection.insertOne(document);
			BoardDAOImpl boardDAO = new BoardDAOImpl(boardType);
			boardDAO.addReviewCnt(vo.getPostId(),1);
			result = true;
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	public boolean update(ReviewVO vo) {
		boolean result = false;
		try {
			Document document = setDocument(vo);
			collection.updateOne(Filters.eq("_id", new ObjectId(vo.getReviewId())), new Document("$set",document));
			result = true;
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	public boolean delete(String ReviewId) {
		boolean result = false;
		try {
			Document document = collection.findOneAndDelete(Filters.eq("_id",new ObjectId(ReviewId)));
			String json = document.toJson();
			JSONParser parser = new JSONParser();
			JSONObject jsonObj = (JSONObject)parser.parse(json);
			String postId = (String)jsonObj.get("postId");
			
			BoardDAOImpl boardDAO = new BoardDAOImpl(boardType);
			boardDAO.addReviewCnt(postId,-1);
			result = true;
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	public boolean deleteMany(String postId) {
		boolean result = false;
		try {
			collection.deleteMany(Filters.eq("postId", postId));
			result = true;
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	public Document setDocument(ReviewVO vo) {
		Document document = new Document();
		document.put("postId", vo.getPostId());
		document.put("id", vo.getId());
		document.put("targetId",vo.getTargetId());
		document.put("comment", vo.getComment());
		document.put("date",vo.getDate());
		document.put("rate", vo.getRate());
		
		return document;
	}
}
