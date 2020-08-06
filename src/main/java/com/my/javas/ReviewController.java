package com.my.javas;

import java.io.IOException;

import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.ObjectMapper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import dao.ReviewDAOImpl;
import vo.ReviewVO;

@Controller
public class ReviewController {
	@ResponseBody
	@RequestMapping(value="/review/{boardType}",produces="application/json; charset=UTF-8",
					method=RequestMethod.POST)
	public String reviewList(String postId,
							 @PathVariable String boardType) throws JsonMappingException,JsonGenerationException,IOException
	{
		ReviewDAOImpl dao = new ReviewDAOImpl(boardType);
		return new ObjectMapper().writeValueAsString(dao.listAll(postId));
	}
	
	@ResponseBody
	@RequestMapping(value="/review/{boardType}/insert",produces="application/json; charset=UTF-8",
					method=RequestMethod.POST)
	public String insert(@PathVariable String boardType,
						 ReviewVO vo) {
		ReviewDAOImpl dao = new ReviewDAOImpl(boardType);
		boolean result = dao.insert(vo);
		return result ? "success" : "fail";
	}
	
	@ResponseBody
	@RequestMapping(value="/review/{boardType}/update",produces="application/json; charset=UTF-8",
					method=RequestMethod.POST)
	public String update(@PathVariable String boardType,
						 ReviewVO vo) {
		ReviewDAOImpl dao = new ReviewDAOImpl(boardType);
		boolean result = dao.update(vo);
		return result ? "success" : "fail";
	}
	
	@ResponseBody
	@RequestMapping(value="/review/{boardType}/delete",produces="application/json; charset=UTF-8",
					method=RequestMethod.POST)
	public String delete(@PathVariable String boardType,
						 String reviewId) {
		ReviewDAOImpl dao = new ReviewDAOImpl(boardType);
		boolean result = dao.delete(reviewId);
		return result ? "success" : "fail";
	}
}
