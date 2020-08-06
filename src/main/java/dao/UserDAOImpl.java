package dao;

import org.bson.Document;
import org.bson.conversions.Bson;
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

import vo.UserVO;

@Repository
public class UserDAOImpl implements UserDAO{
	MongoClientURI uri = null;
	MongoClient mongoClient = null;
	MongoDatabase mongodb = null;
	MongoCollection<Document> collection = null;
	MongoCursor<Document> cursor = null;
	
	public UserDAOImpl(){
		try {
			uri = new MongoClientURI(
				"mongodb://boxak:Second142857%21@exercise-shard-00-00-atylc.mongodb.net:27017,exercise-shard-00-01-atylc.mongodb.net:27017,exercise-shard-00-02-atylc.mongodb.net:27017/test?ssl=true&replicaSet=Exercise-shard-0&authSource=admin&retryWrites=true&w=majority"
			);
			mongoClient = new MongoClient(uri);
			mongodb = mongoClient.getDatabase("JavasDB");
			collection = mongodb.getCollection("UserInfo");
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	public boolean insert(UserVO vo) {
		boolean result = false;
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
	
	public boolean update(UserVO vo) {
		boolean result = false;
		try {
			Document document = setDocument(vo);
			collection.updateOne(Filters.eq("id",vo.getId()), new Document("$set",document));
			result = true;
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	public boolean delete(String id) {
		boolean flag = false;
		try {
			collection.deleteOne(Filters.eq("id",id));
			flag = true;
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return flag;
	}
	
	public boolean hasId(String id) {
		int cnt = 0;
		System.out.println("id : "+id);
		try {
			cnt = (int)collection.countDocuments(Filters.eq("id",id));
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return cnt==0 ? false : true;
	}
	
	public UserVO loginCheck(String id,String password) {
		UserVO vo = null;
		try {
			Document document = collection.find(Filters.and(Filters.eq("id", id),Filters.eq("password", password))).first();
			String json = document.toJson();
			Gson gson = new Gson();
			vo = gson.fromJson(json, UserVO.class);
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return vo;
	}
	
	public String findIdCheck(String name,String phone) {
		int cnt1 = 0;
		int cnt2 = 0;
		String message = "";
		try {
			cnt1 = (int)collection.countDocuments(Filters.eq("name", name));
			if(cnt1==0) {
				message = "noName";
			}
			else {
				cnt2 = (int)collection.countDocuments(Filters.and(Filters.eq("name", name),Filters.eq("phone",phone)));
				if(cnt2==0) {
					message = "notMatchedPhone";
				}
				else {
					Document document = collection.find(Filters.and(Filters.eq("name",name),Filters.eq("phone", phone))).first();
					String json = document.toJson();
					JSONParser parser = new JSONParser();
					JSONObject jsonObj = (JSONObject)parser.parse(json);
					message = (String)jsonObj.get("id");
				}
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return message;
	}
	
	public String findPwCheck(String id,String name,String email) {
		String result="";
		try {
			Bson filters = Filters.and(
					Filters.eq("id", id),
					Filters.eq("name",name),
					Filters.eq("email",email));
			Document document = collection.find(filters).first();
			if(document==null) {
				result = "fail";
			}
			else {
				result = "success";
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	public boolean resetPw(String email,String password) {
		boolean result = false;
		try {
			Bson filter = Filters.eq("email", email);
			Document document = new Document("password",password);
			System.out.println("email : "+email);
			System.out.println("password : "+password);
			collection.updateOne(filter, new Document("$set",document));
			result = true;
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	private Document setDocument(UserVO vo) {
		Document document = new Document();
		document.put("id", vo.getId());
		document.put("password",vo.getPassword());
		document.put("name", vo.getName());
		document.put("email", vo.getEmail());
		document.put("birthday", vo.getBirthday());
		document.put("sex", vo.getSex());
		document.put("phone", vo.getPhone());
		document.put("address", vo.getAddress());
		document.put("date", vo.getDate());
		document.put("isEmployer", vo.getIsEmployer());
		
		return document;
	}
	
}
