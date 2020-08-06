package dao;

import vo.UserVO;

public interface UserDAO {
	public boolean insert(UserVO vo);
	public boolean update(UserVO vo);
	public boolean delete(String id);
	public boolean hasId(String id);
	public UserVO loginCheck(String id,String password);
}
