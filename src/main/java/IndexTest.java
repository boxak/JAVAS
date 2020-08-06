import org.bson.Document;

import com.mongodb.MongoClient;
import com.mongodb.MongoClientURI;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoCursor;
import com.mongodb.client.MongoDatabase;

public class IndexTest {

	public static void main(String[] args) {
		MongoClientURI uri = null;
		MongoClient mongoClient = null;
		MongoDatabase mongodb = null;
		MongoCollection<Document> collection = null;
		MongoCursor<Document> cursor = null;
		
		uri = new MongoClientURI(
				"mongodb://boxak:Second142857%21@exercise-shard-00-00-atylc.mongodb.net:27017,exercise-shard-00-01-atylc.mongodb.net:27017,exercise-shard-00-02-atylc.mongodb.net:27017/test?ssl=true&replicaSet=Exercise-shard-0&authSource=admin&retryWrites=true&w=majority"
			);
			mongoClient = new MongoClient(uri);
			mongodb = mongoClient.getDatabase("MyProject");
			collection = mongodb.getCollection("UserInfo");
			cursor = collection.find().skip(1).limit(10).cursor();
			while(cursor.hasNext()) {
				System.out.println(cursor.next().toJson());
			}
			System.out.println("Finish");
			mongoClient.close();
	}

}
