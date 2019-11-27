

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import javazack.models.Guard;

/**
 * Servlet implementation class GuardsServlet
 */
public class GuardsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GuardsServlet() {
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
		
		String id= request.getParameter("id");
		String fname=request.getParameter("fname");
		String lname=request.getParameter("lname");
		String phoneno=request.getParameter("phoneno");
		
		System.out.println(id+fname+lname+phoneno);
		
		Guard data=new Guard(id,fname,lname,phoneno);
		
		
		System.out.println(data);
		GuardsDaO guards=new GuardsDaO();
		
		guards.create(data);
		
		
		RequestDispatcher dispatcher= getServletContext().getRequestDispatcher("/GuardsDisplay?page=1");
		dispatcher.forward(request, response);
		
		
		
		
		
		
		
		
		
	}

}
