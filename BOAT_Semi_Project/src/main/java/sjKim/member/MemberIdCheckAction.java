package sjKim.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import sjKim.db.MemberDAO;

public class MemberIdCheckAction implements Action {
	@Override
	public ActionForward execute (HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		MemberDAO dao = new MemberDAO();
		int result = dao.isEmpno(request.getParameter("empno"));
		response.getWriter().print(result);
		System.out.println(result);
		return null;
		
	}
}
