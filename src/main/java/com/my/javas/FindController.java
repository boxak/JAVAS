package com.my.javas;

import java.util.Properties;

import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import dao.UserDAOImpl;

@Controller
public class FindController {
	@Autowired
	UserDAOImpl dao;
	@RequestMapping("/findID/Form")
	public String findIdForm() {
		return "findIdForm";
	}
	
	@RequestMapping("/findPW/Form")
	public String findPwForm() {
		return "findPwForm";
	}
	
	@RequestMapping(value="/findID",method=RequestMethod.POST)
	public ModelAndView findID(String name,String phone) {
		ModelAndView mav = new ModelAndView();
		//id 있는지 체크
		String result = dao.findIdCheck(name,phone);
		if(result.equals("noName")) {
			mav.addObject("msg", "일치하는 이름이 없습니다!");
		}
		else if(result.equals("notMatchedPhone")) {
			mav.addObject("msg", "이름과 휴대폰 번호가 맞지 않습니다. 확인해주세요!");
		}
		else {
			mav.addObject("msg", "고객님의 아이디는 "+result+"입니다. 로그인 화면으로 돌아갑니다.");
		}
		mav.setViewName("findResult");
		return mav;
	}
	
	@RequestMapping(value="/findPW",method=RequestMethod.POST)
	public ModelAndView findPW(String id,String name,String email) {
		ModelAndView mav = new ModelAndView();
		String result = dao.findPwCheck(id,name,email);
		if(result.equals("fail")) {
			mav.addObject("msg", "일치하는 유저 정보를 찾을 수 없습니다!");
		}
		else {
			sendEmail(email);
			mav.addObject("msg","비밀번호를 메일로 보내드렸습니다.\\n\\메일함을 확인해주세요.");
		}
		mav.setViewName("findResult");
		return mav;
	}
	
	@RequestMapping("/resetPwForm")
	public ModelAndView resetPwForm(String email) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("email", email);
		mav.setViewName("resetPwForm");
		return mav;
	}
	
	@ResponseBody
	@RequestMapping(value="/resetPw",method=RequestMethod.POST)
	public String resetPw(String email,String password) {
		boolean result = dao.resetPw(email,password);
		String msg = "";
		if(result) msg = "success";
		else msg = "fail";
		return msg;
	}
	
	
	private void sendEmail(String email) {
		String host = "smtp.naver.com";
		final String username = "boxak";
		final String pw = "second10987";
		int port = 465;
		
		String recipient = email;
		String subject = "잉력시장입니다. 고객님의 비밀번호를 재설정하세요.";
		String body = "<h3>다음 링크를 클릭하시면 고객님의 비밀번호 재설정하는 화면으로 이동합니다.<h3>"
				+ "<div>"
				+ "<a href='http://localhost:8000/javas/resetPwForm?email="+email+"'>이동</a>"
				+ "</div>";
		try {
			Properties props = System.getProperties();
			
			props.put("mail.smtp.host", host);
			props.put("mail.smtp.port", port);
			props.put("mail.smtp.auth", "true");
			props.put("mail.smtp.ssl.enable", "true");
			props.put("mail.smtp.ssl.trust", host);
			
			Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
				String un=username;
				String userpw=pw;
				protected javax.mail.PasswordAuthentication getPasswordAuthentication() {  
	
					return new javax.mail.PasswordAuthentication(un, userpw);  
	
				}
			});
			session.setDebug(true);
			
			MimeMessage mimeMessage = new MimeMessage(session);
			mimeMessage.setFrom(new InternetAddress(username+"@naver.com"));
			mimeMessage.setRecipient(Message.RecipientType.TO, new InternetAddress(recipient));
			mimeMessage.setSubject(subject,"UTF-8");
			mimeMessage.setText(body, "UTF-8");
			mimeMessage.setHeader("content-Type", "text/html");
			Transport.send(mimeMessage);
		}
		catch(Exception e) {
			e.printStackTrace();
			System.out.println("메일 보내는 도중 오류 발생");
		}
	}
}
