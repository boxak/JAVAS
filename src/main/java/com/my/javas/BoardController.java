package com.my.javas;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import dao.BoardDAOImpl;
import vo.BoardVO;

@Controller
public class BoardController {
	@RequestMapping("/board/{boardType}")
	public ModelAndView list(@PathVariable String boardType,
							@RequestParam(value="action",required=false)String action,
							@RequestParam(defaultValue="1")int pgNum,
							@RequestParam(value="key",required=false)String key,
							@RequestParam(value="type",required=false)String type,
							HttpSession session) {
		ModelAndView mav = new ModelAndView();
		List<BoardVO> list = new ArrayList<>();
		int count = 0;
		String linkStr = "";
		BoardDAOImpl dao = new BoardDAOImpl(boardType);
		session.setAttribute("key", key);
		session.setAttribute("type", type);
		session.setAttribute("pgNum", pgNum);
		session.setAttribute("boardType", boardType);
		if(action==null) {
			list = dao.listAll(pgNum);
			mav.addObject("pgNum", pgNum);
			mav.addObject("msg", boardType.equals("jobad") ? "구인 게시판" : "구직 게시판");
			if(list!=null && list.size()!=0) {
				mav.addObject("list", list);
				count = dao.getCount();
			}
		}
		else {
			if(type.equals("id")) {
				list = dao.listWriter(key, pgNum);
			}
			else {
				list = dao.search(key, type, pgNum);
			}
			if(list!=null && list.size()!=0) {
				mav.addObject("msg", key+"을(를) 포함하는 글 리스트");
				mav.addObject("list",list);
				count = dao.getCount(key, type);
				linkStr = "&type="+type+"&key="+key+"&action=search";
			}
			else {
				mav.addObject("nullErrorMsg", key+"을(를) 포함하는 검색글이 없습니다.");
			}
		}
		
		mav.addObject("totalCount", count);
		mav.addObject("pagelist",new BoardDAOImpl(boardType).getPageLinkList(pgNum, linkStr, count));
		System.out.println("pagelist : "+new BoardDAOImpl(boardType).getPageLinkList(pgNum, linkStr, count));
		System.out.println("count : "+count);
		mav.addObject("pgNum", pgNum);
		mav.setViewName("boardView");
		return mav;
	}
	
	@RequestMapping("/board/{boardType}/listOne")
	public ModelAndView listOne(String postId,
								@PathVariable String boardType,
								HttpSession session) {
		BoardDAOImpl dao = new BoardDAOImpl(boardType);
		BoardVO vo = dao.listOne(postId);
		ModelAndView mav = new ModelAndView();
		session.setAttribute("postId", postId);
		session.setAttribute("boardType", boardType);
		System.out.println("vo : "+vo);
		if(vo!=null) {
			session.setAttribute("listOne", vo);
			mav.addObject("vo", vo);
			mav.addObject("msg",boardType.equals("jobad") ? "구인 내용" : "구직 내용");
		}
		mav.setViewName("boardView");
		return mav;
	}
	
	@RequestMapping("/board/{boardType}/{action}Form")
	public String insertForm(@PathVariable String boardType,
							 @PathVariable String action) {
		return "board"+action+"Form";
	}
	
	@RequestMapping("/board/{boardType}/delete")
	public ModelAndView delete(String postId,
						 @PathVariable String boardType) {
		BoardDAOImpl dao = new BoardDAOImpl(boardType);
		ModelAndView mav = new ModelAndView();
		boolean result = dao.delete(postId);
		String msg = result ? "삭제에 성공했습니다." : "삭제에 실패했습니다.";
		mav.addObject("msg",msg);
		mav.setViewName("noticeResult");
		return mav;
	}
	
	@RequestMapping(value="/board/{boardType}/post",method=RequestMethod.POST)
	public ModelAndView doPost(String action,
						 @ModelAttribute("vo") BoardVO vo,
						 @PathVariable String boardType) {
		BoardDAOImpl dao = new BoardDAOImpl(boardType);
		ModelAndView mav = new ModelAndView();
		boolean result = false;
		if(action.equals("insert")) {
			result = dao.insert(vo);
		}
		else {
			result = dao.update(vo);
		}
		String str1 = action.equals("insert") ? "삽입" : "수정";
		String str2 = result ? "성공" : "실패";
		String msg = str1+"에 "+str2+"하였습니다.";
		mav.addObject("msg", msg);
		mav.setViewName("noticeResult");
		return mav;
	}
}
