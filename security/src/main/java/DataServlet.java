

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import javazack.models.Dao_Accessors;
import javazack.models.DataModel;

/**
 * Servlet implementation class DataServlet
 */
public class DataServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DataServlet() {
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
		
		String fname=request.getParameter("fname");
		String lname=request.getParameter("lname");
		String regno=request.getParameter("regno");
		String date_of_occurance=request.getParameter("date");
		String time_of_occurance=request.getParameter("time");
		String place_of_occurance=request.getParameter("place");
		String category=request.getParameter("category");
		String occurance=request.getParameter("nature");
		
		   
		
		if(fname.length()==0||lname.length()==0||regno.length()==0||date_of_occurance.length()==0||time_of_occurance.length()==0||place_of_occurance.length()==0||category.length()==0||occurance.length()==0){
			String url="/ReportCase.jsp";
			
			RequestDispatcher dispatcher= getServletContext().getRequestDispatcher(url);
			dispatcher.forward(request, response);
			
			
		}
		else {
			
			DataModel caseData=new DataModel(fname,lname,regno,date_of_occurance,time_of_occurance,place_of_occurance,category,occurance);
			
			System.out.println(caseData.toString());
			Dao_Accessors test= new Dao_Accessors();
		
			test.getModelData(caseData);
			
			String url="/OB.jsp"; 
			
			
			// selecting saved data from the database
			DataModel from_db=new DataModel();
			from_db=test.selectFromDatabase();
			
			 
			  
			 	
		      
			 
			 
			request.setAttribute("from_db", from_db);
			
			 HttpSession session = request.getSession();
		     session.setAttribute("case_session",fname);
		     
		    
			
			
			String message="Records successfully stored in the database";
			
			request.setAttribute("message",message);
			RequestDispatcher dispatcher= getServletContext().getRequestDispatcher(url);
			dispatcher.forward(request, response);
			
		}
	
		
	}

}
