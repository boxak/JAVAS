package dao;

import org.junit.jupiter.api.Test;

import vo.BoardVO;

class DAOTest {

	@Test
	void test() {
		/*
		UserDAOImpl dao1 = new UserDAOImpl();
		UserVO vo = new UserVO();
		vo.setId("boxak123");
		vo.setPassword("13131");
		vo.setName("황지선");
		vo.setEmail("Jisoen@naver.com");
		vo.setBirthday("2000-01-01");
		vo.setSex("Female");
		vo.setPhone("010-4401-4401");
		vo.setAddress("창원시 의창구 동읍 용잠리 신안아파트 1동 1506호");
		vo.setDate("2020-01-01");
		vo.setEmployer(false);
		dao1.insert(vo);
		System.out.println(dao1.loginCheck("boxak123", "13131"));
		*/
		BoardDAOImpl dao = new BoardDAOImpl("jobad");
		BoardVO vo = new BoardVO();
		vo.setId("boxak123");
		vo.setName("황지선");
		vo.setDate("2020-01-01");
		vo.setReviewCnt(0);
		vo.setContent("반가워. 나는 지선이야!");
		vo.setTitle("자기소개");
		vo.setHit(0);
		dao.insert(vo);
		System.out.println(dao.listOne("5f2272fab2d0db0b1e2893d8"));
	}

}
