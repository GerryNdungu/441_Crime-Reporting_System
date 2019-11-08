package security;

import java.io.IOException;
import java.time.LocalDate;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Reportcase
 */
@WebServlet("/Reportcase")
public class Reportcase extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Reportcase() {
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
		// TODO Auto-generated method stub
		doGet(request, response);
		
		String category=request.getParameter("category");
		String uname=request.getParameter("name");
		String id =request.getParameter("regno");
		String date=request.getParameter("date");
		String time=request.getParameter("time");
		String place=request.getParameter("place");
		String nature=request.getParameter("nature");
		
		 System.out.println(uname);
		 
		 Date today=new Date();
      
		 LocalDate one=LocalDate.now();
			
			
  if(date==""||date.equals(null)||uname==""||uname.equals(null)||id==""||id.equals(null)||category==""||category.equals(null)||time==""||time.equals(null)||place==""||place.equals(null)||nature==""||nature.equals(null)) {
				
				request.setAttribute("Message","ONE OR ALL FIELDS ARE EMPTY ");
				getServletContext().getRequestDispatcher("/ReportCase.jsp").forward(request,response);
				
			}
			
		//	else if (Date.compareTo(one.toString())>0) {
				
				//request.setAttribute("Message","Enter today's or  past days :REPORT FAILED");
				//getServletContext().getRequestDispatcher("/ReportCase.jsp").forward(request,response);
				
				
			//}
			
			else {
				
				DataModel obj=new DataModel(category,uname,id,date,time,place,nature);
				
				Dao_Accessors test= new Dao_Accessors();
				test.getModelData(obj);
				
				String sql;
				
				
				
				
				
				
			}
			
			

		
	}

}
