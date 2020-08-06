package com.my.javas;

import java.io.File;
import java.io.FileOutputStream;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import dao.ReviewDAOImpl;
import dao.UserDAOImpl;
import vo.UserVO;

@Controller
public class MypageController {
	@Autowired
	ServletContext context;
	
	@RequestMapping("/mypage")
	public ModelAndView mypage(HttpSession session) {
		ModelAndView mav = new ModelAndView();
		UserVO vo = (UserVO)session.getAttribute("loginVO");
		mav.addObject("loginVO", vo);
		mav.setViewName("mypage");
		return mav;
	}
	
	@RequestMapping("/meminfomodify")
	public ModelAndView modifymeminfo(HttpSession session) {
		ModelAndView mav = new ModelAndView();
		UserVO vo = (UserVO)session.getAttribute("loginVO");
		mav.addObject("loginVO", vo);
		mav.setViewName("meminfomodify");
		return mav;
	}
	
	@RequestMapping("/meminfoupdate")
	public String meminfoupdate(UserVO vo,
								@RequestParam(value="photo",required=false)MultipartFile photo,
							    HttpSession session) {
		UserDAOImpl dao = new UserDAOImpl();
		boolean result = dao.update(vo);
		if(result) {
			uploadPhoto(vo.getId(),photo);
			session.setAttribute("msg1", "수정되었습니다.");
			session.setAttribute("loginVO", vo);
		}
		else {
			return "modifyError";
		}
		return "mypage";
	}
	
	@ResponseBody
	@RequestMapping(value="/myreviews",produces="application/json; charset=UTF-8")
	public String myreviews(HttpSession session,HttpServletResponse response) {
		UserVO vo = (UserVO)session.getAttribute("loginVO");
		String boardType = vo.getIsEmployer()==1 ? "jobad" : "wantad";
		ReviewDAOImpl dao = new ReviewDAOImpl(boardType);
		
		String result = dao.myReview(vo.getId());
		
		return result;
	}
	
	private void uploadPhoto(String id,MultipartFile photo) {
		byte[] content = null;
		try {
			if(!photo.isEmpty()) {
				content = photo.getBytes();
				String path = context.getRealPath("/")+"resources/images2/";
				File f = new File(path);
				FileOutputStream fos = new FileOutputStream(f);
				fos.write(content);
				fos.close();
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	}
}
