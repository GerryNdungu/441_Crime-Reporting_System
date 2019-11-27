

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import javazack.models.Dao_Accessors;
import javazack.models.DataModel;
import javazack.models.Guard;

/**
 * Servlet implementation class CSO_IndividualCase
 */
public class CSO_IndividualCase extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CSO_IndividualCase() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Integer ids=Integer.parseInt(request.getParameter("id"));
		String url="/IndividualCase.jsp";
		
		DataModel casebyID=new DataModel();
		
		Dao_Accessors object=new Dao_Accessors();
		GuardsDaO guards=new GuardsDaO();
		
		casebyID=object.FindById(ids);
//		System.out.println(casebyID);
		
		
		List<Guard>guards_from_db;
        
		guards_from_db = guards.reading();
		 
//		 System.out.println(guards_from_db);
		 
		 HttpSession session = request.getSession();
	   
	    session.setAttribute("guards_from_db", guards_from_db);
	     
	 	
		session.setAttribute("individual_case",casebyID);
//
//		System.out.println((DataModel)request.getAttribute("individual_case"));
		
		RequestDispatcher dispatcher= getServletContext().getRequestDispatcher(url);
		dispatcher.forward(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		

	}

}
