package security;

import java.sql.*;

public class DataDao {
	
	private String url="jdbc:mysql://localhost:3306/security";
	private String dbUsrName="root";
	private String password="";
	
	private Connection con;
	private ResultSet rs;
	private PreparedStatement stmt;
	private Statement st;
	
	
		public Connection makeConections() {
				 
				try {
					Class.forName("com.mysql.jdbc.Driver"); 
					con=DriverManager.getConnection(url,dbUsrName,password);
					System.out.println("connection successful");
				} catch (SQLException e) {
					e.printStackTrace();
					System.out.println("connection unsuccessful");
				} catch (ClassNotFoundException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				return con;
				
			}
	
		public PreparedStatement insertToDB(String sql) {
			
			 con= makeConections();	
			 
			 try {
				 stmt=con.prepareStatement(sql);
					
			} catch (Exception e) {
				
				e.printStackTrace();
				System.out.println("i");
			}
			return stmt;
				
		}


				

	
								//read data from Database
	public  ResultSet readData(String sql) {
		
		 con= makeConections();	
		 try {
			st=con.createStatement();
			
			rs=st.executeQuery(sql);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return rs;
		
		 
		 
		
		
		
		
	}
								//edit databaseData
	
	public void editData() {
		
	}
	
	
	
	
									// delete record
	public void deleteRecord(int id) {
		
	}
	
}
