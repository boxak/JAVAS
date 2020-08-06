package com.my.javas;

import java.io.File;
import java.io.FileOutputStream;
import java.util.HashMap;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import dao.UserDAOImpl;
import vo.UserVO;

@Controller
public class UserController {
	@Autowired
	UserDAOImpl dao;
	
	@RequestMapping("/signForm")
	public String signForm() {
		return "signForm";
	}
	@RequestMapping(value="/signin.do",method=RequestMethod.POST)
	public ModelAndView insert(UserVO vo,MultipartFile photo,
							   HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		boolean result = dao.insert(vo);
		uploadPhoto(vo.getId(),photo,request);
		if(result) {
			mav.addObject("msg", "회원가입 되었습니다.");
		}
		else {
			mav.addObject("msg", "Error : 회원가입 실패했습니다.");
		}
		mav.setViewName("sign.result");
		return mav;
	}
	
	@RequestMapping("deleteUser")
	public ModelAndView deleteUser(String id) {
		ModelAndView mav = new ModelAndView();
		boolean result = dao.delete(id);
		if(result) {
			mav.addObject("msg","탈퇴되었습니다.");
		}
		else {
			mav.addObject("msg", "Error : 탈퇴실패");
		}
		mav.setViewName("sign.result");
		return mav;
	}
	
	@ResponseBody
	@RequestMapping(value="/idCheck",method=RequestMethod.POST,produces="application/json; charset=utf-8")
	public HashMap<String,String> idCheck(String id){
		HashMap<String,String> map = new HashMap<>();
		Boolean result = new Boolean(dao.hasId(id));
		map.put("result", result.toString());
		return map;
	}
	
	private void uploadPhoto(String id,MultipartFile photo,HttpServletRequest request) {
		byte[] content = null;
		try {
			if(!photo.isEmpty()) {
				content = photo.getBytes();
				String path = request.getSession().getServletContext().getRealPath("/")+"resources/images2/"+id+".png";
				System.out.println(path);
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
