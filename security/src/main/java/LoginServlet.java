

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.cj.Session;

import javazack.models.Guards_login;

/**
 * Servlet implementation class LoginServlet
 */
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uname=request.getParameter("username");
		String pass=request.getParameter("password");
		
		LogInDao dao=new LogInDao();
		Guards_login data=new Guards_login(uname,pass);
		Boolean AutheResult;
		
		AutheResult=dao.authenticate(data);
		
		if (AutheResult==true) {
		String	url="/ReportCase.jsp";
		
		HttpSession session=request.getSession();
		session.setAttribute("user",uname);
		
		RequestDispatcher dispatcher= getServletContext().getRequestDispatcher(url);
		dispatcher.forward(request, response);
		}
		else {
			String	url="/login.jsp";
			 dao=null;
			
			HttpSession session=request.getSession();
			session.setAttribute("messages",uname);
			
			RequestDispatcher dispatcher= getServletContext().getRequestDispatcher(url);
			dispatcher.forward(request, response);
		}
		
		
	}

}
