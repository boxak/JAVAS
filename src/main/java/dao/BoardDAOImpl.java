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

import vo.BoardVO;

@Repository
public class BoardDAOImpl implements BoardDAO{
	MongoClientURI uri = null;
	MongoClient mongoClient = null;
	MongoDatabase mongodb = null;
	MongoCollection<Document> collection = null;
	MongoCursor<Document> cursor = null;
	String boardType;
	
	public BoardDAOImpl() {}
	
	public BoardDAOImpl(String boardType){
		this.boardType = boardType;
		try {
			uri = new MongoClientURI(
				"mongodb://boxak:Second142857%21@exercise-shard-00-00-atylc.mongodb.net:27017,exercise-shard-00-01-atylc.mongodb.net:27017,exercise-shard-00-02-atylc.mongodb.net:27017/test?ssl=true&replicaSet=Exercise-shard-0&authSource=admin&retryWrites=true&w=majority"
			);
			mongoClient = new MongoClient(uri);
			mongodb = mongoClient.getDatabase("JavasDB");
			collection = mongodb.getCollection(boardType+"Info");
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	public boolean insert(BoardVO vo) {
		boolean result = false;
		System.out.println("Title : "+vo.getTitle());
		try {
			Document document = setDocument(vo);
			collection.insertOne(document);
			result = true;
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	public boolean update(BoardVO vo) {
		boolean result = false;
		try {
			Document document = setDocument(vo);
			collection.findOneAndUpdate(Filters.eq("_id",new ObjectId(vo.getPostId())), new Document("$set",document));
			result = true;
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	public boolean delete(String postId) {
		boolean result = false;
		try {
			collection.deleteOne(Filters.eq("_id", new ObjectId(postId)));
			ReviewDAOImpl reviewDAO = new ReviewDAOImpl(boardType);
			reviewDAO.deleteMany(postId);
			result = true;
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	public int getCount() {
		int count = 0;
		try {
			count = (int)collection.countDocuments();
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return count;
	}
	
	public int getCount(String key,String type) {
		int count = 0;
		try {
			count = (int)collection.countDocuments(Filters.eq(type, key));
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return count;
	}
	
	public String getPageLinkList(int curPage,String linkStr,int size) {
		PagingControl page = new PagingControl(9,5,size,curPage);
		StringBuilder buffer = new StringBuilder();
		if(page.isPreData()) {
			buffer.append("<a href='/javas/board/"+boardType+"?pgNum=");
			buffer.append((page.getPageStart()-1)+linkStr+"'>");
			buffer.append("<img src='/javas/resoures/images/left.png' width='45'></a>");
		}
		for(int i=page.getPageStart();i<=page.getPageEnd();i++) {
			if(i==curPage) {
				buffer.append("<a href='/javas/board/"+boardType+"?pgNum="+i+linkStr+"'"+" style='font-weight:bold;font-size:45px;'>"+i+"</a> &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp");
			}
			else {
				buffer.append("<a href='/javas/board/"+boardType+"?pgNum="+i+linkStr+"'"+" style='font-weight:bold;font-size:45px;'>"+i+"</a> ");
			}
		}
		if(page.isNextData()) {
			buffer.append("<a href='/javas/board/"+boardType+"?pgNum=");
			buffer.append((page.getPageEnd()+1)+linkStr+"'>");
			buffer.append(" <img src='/javas/resources/images/right.png' width='45'></a>");
		}
		return buffer.toString();
	}
	
	public List<BoardVO> listAll(int curPage){
		List<BoardVO> list = new ArrayList<>();
		try {
			cursor = collection.find().sort(new Document("date",-1)).skip(9*(curPage-1)).limit(9).cursor();
			while(cursor.hasNext()) {
				String json = cursor.next().toJson();
				System.out.println(json);
				Gson gson = new Gson();
				BoardVO vo = gson.fromJson(json, BoardVO.class);
				
				JSONParser parser = new JSONParser();
				JSONObject jsonObj = (JSONObject)parser.parse(json);
				jsonObj = (JSONObject)parser.parse(jsonObj.get("_id").toString());
				
				System.out.println(jsonObj.get("$oid"));
				vo.setPostId(jsonObj.get("$oid").toString());
				list.add(vo);
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public List<BoardVO> search(String key,String type,int curPage){
		List<BoardVO> list = new ArrayList<>();
		try {
			if(type.equals("title_content")) {
				cursor = collection.find(Filters.or(Filters.regex("title", key),Filters.regex("content",key))).sort(new Document("date",-1)).skip((curPage-1)*9).limit(9).cursor();
			}
			else cursor = collection.find(Filters.regex(type, key)).sort(new Document("date",-1)).skip((curPage-1)*9).limit(9).cursor();
			while(cursor.hasNext()) {
				String json = cursor.next().toJson();
				System.out.println(json);
				Gson gson = new Gson();
				BoardVO vo = gson.fromJson(json, BoardVO.class);
				
				JSONParser parser = new JSONParser();
				JSONObject jsonObj = (JSONObject)parser.parse(json);
				jsonObj = (JSONObject)parser.parse(jsonObj.get("_id").toString());
				
				System.out.println(jsonObj.get("$oid"));
				vo.setPostId(jsonObj.get("$oid").toString());
				list.add(vo);
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public List<BoardVO> listWriter(String id,int curPage){
		List<BoardVO> list = new ArrayList<>();
		try {
			cursor = collection.find(Filters.eq("id", id)).sort(new Document("date",-1)).skip((curPage-1)*9).limit(9).cursor();
			while(cursor.hasNext()) {
				String json = cursor.next().toJson();
				System.out.println(json);
				Gson gson = new Gson();
				BoardVO vo = gson.fromJson(json, BoardVO.class);
				
				JSONParser parser = new JSONParser();
				JSONObject jsonObj = (JSONObject)parser.parse(json);
				jsonObj = (JSONObject)parser.parse(jsonObj.get("_id").toString());
				
				System.out.println(jsonObj.get("$oid"));
				vo.setPostId(jsonObj.get("$oid").toString());
				list.add(vo);
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public BoardVO listOne(String postId) {
		BoardVO vo = new BoardVO();
		try {
			Document document = collection.find(Filters.eq("_id",new ObjectId(postId))).first();
			String json = document.toJson();
			Gson gson = new Gson();
			vo = gson.fromJson(json, BoardVO.class);
			vo.setHit(vo.getHit()+1);
			vo.setPostId(postId);
			update(vo);
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return vo;
	}
	
	public boolean addReviewCnt(String postId,int cnt) {
		boolean result = false;
		try {
			Document document = collection.find(Filters.eq("_id",new ObjectId(postId))).first();
			String json = document.toJson();
			Gson gson = new Gson();
			BoardVO vo = gson.fromJson(json, BoardVO.class);
			System.out.println("Before : "+vo.getReviewCnt());
			vo.setReviewCnt(vo.getReviewCnt()+cnt);
			System.out.println("After : "+vo.getReviewCnt());
			vo.setPostId(postId);
			update(vo);
			result = true;
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	private Document setDocument(BoardVO vo) {
		Document document = new Document();
		document.put("id", vo.getId());
		document.put("name", vo.getName());
		document.put("title", vo.getTitle());
		document.put("content", vo.getContent());
		document.put("date", vo.getDate());
		document.put("hit", vo.getHit());
		document.put("reviewCnt", vo.getReviewCnt());
		return document;
	}
}
