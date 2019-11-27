

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import javazack.models.Dao_Accessors;
import javazack.models.DataModel;

/**
 * Servlet implementation class CaseHandling
 */
public class CaseHandling extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CaseHandling() {
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
	
		String assignedGuard=request.getParameter("selected_guard");
		int z;
		
		HttpSession session=request.getSession();
		DataModel add_guard=(DataModel)session.getAttribute("individual_case");
		add_guard.setAssignedGuard(assignedGuard);
		
		System.out.println(add_guard);
		
		Dao_Accessors update_db=new Dao_Accessors();
		z=update_db.update(add_guard);
		
		RequestDispatcher dispatcher= getServletContext().getRequestDispatcher("/CSO_Display?page=1");
		dispatcher.forward(request, response);
		
		
		
	}

}
