package interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Component;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import vo.UserVO;

@Component
public class LoginInterceptor extends HandlerInterceptorAdapter {
	@Override
	public boolean preHandle(HttpServletRequest request,
							 HttpServletResponse response,
							 Object handler) throws Exception{
		HttpSession session = request.getSession();
		UserVO vo = (UserVO)session.getAttribute("loginVO");
		if(vo!=null) {
			response.sendRedirect("/javas/login/fail");
			return false;
		}
		else {
			return true;
		}
	}
	
	@Override
	public void postHandle(HttpServletRequest request,
						   HttpServletResponse response,
						   Object handler,
						   ModelAndView mav) throws Exception{
		super.postHandle(request, response, handler, mav);
	}
	
	@Override
	public void afterCompletion(HttpServletRequest request,
								HttpServletResponse response,
								Object handler,Exception ex) throws Exception{
		super.afterCompletion(request, response, handler, ex);
	}
	
	
}
