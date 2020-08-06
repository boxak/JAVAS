package dao;

import java.util.List;

import vo.ReviewVO;

public interface ReviewDAO {
	public List<ReviewVO> listAll(String postId);
	public String myReview(String targetId);
	public boolean insert(ReviewVO vo);
	public boolean delete(String reviewId);
	public boolean update(ReviewVO vo);
}
