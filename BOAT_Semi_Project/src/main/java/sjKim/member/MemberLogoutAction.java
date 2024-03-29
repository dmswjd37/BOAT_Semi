package sjKim.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class MemberLogoutAction implements Action {
	@Override
	public ActionForward execute (HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
				
		ActionForward forward = new ActionForward();
		HttpSession session = request.getSession();
		session.invalidate();
		forward.setPath("mainPage.net");
		forward.setRedirect(true);
		
		return forward ;
	}	
}
