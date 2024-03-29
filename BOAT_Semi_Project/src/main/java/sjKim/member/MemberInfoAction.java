package sjKim.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import sjKim.db.Member;
import sjKim.db.MemberDAO;

public class MemberInfoAction implements Action {
	public ActionForward execute (HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
				
		ActionForward forward = new ActionForward();
		String empno = request.getParameter("empno");
		MemberDAO mdao = new MemberDAO();
		Member m = mdao.member_info(empno);
		
		if(m==null) {
			forward.setPath("error/error.jsp");
			forward.setRedirect(false);
			request.setAttribute("message", "아이디에 해당하는 정보가 없습니다.");
			return forward;
		}
		
		forward.setPath("sjKim/boat/memberInfo.jsp");
		forward.setRedirect(false);
		request.setAttribute("memberinfo", m);
		return forward;

	}

}
