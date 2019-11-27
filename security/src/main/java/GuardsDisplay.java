

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
 * Servlet implementation class GuardsDisplay
 */
public class GuardsDisplay extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GuardsDisplay() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
 GuardsDaO data_from_db= new GuardsDaO();
		
		//view to display the data
		String url="/ViewGuards.jsp";
		//getting the page number from url
		
		 int pageid=Integer.parseInt(request.getParameter("page"));
		
	       System.out.println(pageid);
	       int total=20;
	       if(pageid==1) {
	    	     
	       }
	       else {
	    	   pageid=pageid-1;
	    	   pageid=pageid*total+1;
	    	   
	       }
	        List<Guard> result;
	        
			 result = data_from_db.reading(pageid,total);
			 
			 System.out.println(result);
			 
			 HttpSession session = request.getSession();
		   
		     session.setAttribute("display",  result);
		     
		 	RequestDispatcher dispatcher= getServletContext().getRequestDispatcher(url);
			dispatcher.forward(request, response);
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
