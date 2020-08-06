package vo;

public class BoardVO {
	private String postId;
	private String id;
	private String name;
	private String title;
	private String content;
	private String date;
	private int hit;
	private int reviewCnt;
	public String getPostId() {
		return postId;
	}
	public void setPostId(String postId) {
		this.postId = postId;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public int getHit() {
		return hit;
	}
	public void setHit(int hit) {
		this.hit = hit;
	}
	public int getReviewCnt() {
		return reviewCnt;
	}
	public void setReviewCnt(int reviewCnt) {
		this.reviewCnt = reviewCnt;
	}
	@Override
	public String toString() {
		return "BoardVO [postId=" + postId + ", id=" + id + ", name=" + name + ", title=" + title + ", content="
				+ content + ", date=" + date + ", hit=" + hit + ", reviewCnt=" + reviewCnt + "]";
	}
}
