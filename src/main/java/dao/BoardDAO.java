package dao;

import java.util.List;

import vo.BoardVO;

public interface BoardDAO {
	public boolean insert(BoardVO vo);
	public boolean update(BoardVO vo);
	public boolean delete(String postId);
	public int getCount();
	public int getCount(String key,String type);
	public String getPageLinkList(int curPage,String linkStr,int size);
	public List<BoardVO> listAll(int curPage);
	public List<BoardVO> search(String key,String type,int curPage);
	public BoardVO listOne(String postId);
}
