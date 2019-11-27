import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import daoLayer.DataDao;
import javazack.models.DataModel;
import javazack.models.Guard;



public class GuardsDaO {
	
//	Integer id;
//	String fname;
//	String lname;
//	String phoneno;
	
	private Connection con;
	private PreparedStatement pstmt; 
	private Statement stmt;
	private ResultSet rs;
	DataDao datadao=new DataDao();
	
	
	
	private String insert="insert into Investigation_Guards(id,fname,lname,phoneno)values(?,?,?,?)";
	private String read="select * from Investigation_Guards";
	private String update="update  Investigation_Guards set id=?,fname=?,lname=?,phoneno=? where number=? ";
	private String delete ="delete from Investigation_Guards where number=?";
	
	
	public void create(Guard guard) {
		
		con=datadao.makeConections();
		
	 try {
		pstmt=con.prepareStatement(insert);
		pstmt.setString(1, guard.getId());
		pstmt.setString(2, guard.getFname());
		pstmt.setString(3, guard.getLname());
		pstmt.setString(4, guard.getPhoneno());
		pstmt.execute();
		
		System.out.println(guard.getPhoneno());
		
		
		
	} catch (SQLException e) {
		// TODO Auto-generated catch block
	
		System.out.println(" no Suceess");
	}

		
		
	
	}
	
    public List<Guard> reading(int start ,int total) {
		List <Guard> names=new ArrayList<Guard>();
		
		con=datadao.makeConections();
		
		 try {
			pstmt=con.prepareStatement("select * from Investigation_Guards order by number desc limit "+(start-1)+","+total);
			rs=pstmt.executeQuery();
			
			while(rs.next()){
				Guard guarddata=new Guard();
				guarddata.setNumber(rs.getInt("number"));
				guarddata.setId(rs.getString("id"));
				guarddata.setFname(rs.getString("fname"));
				guarddata.setLname(rs.getString("Lname"));
				guarddata.setPhoneno(rs.getString("phoneno"));
				
				names.add(guarddata);
				
				
			}
			
			
		 } catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
	
		
		return names;
		
	}
    
    public List<Guard> reading() {
		List <Guard> names=new ArrayList<Guard>();
		
		con=datadao.makeConections();
		
		 try {
			pstmt=con.prepareStatement("select * from Investigation_Guards");
			rs=pstmt.executeQuery();
			
			while(rs.next()){
				Guard guarddata=new Guard();
				guarddata.setNumber(rs.getInt("number"));
				guarddata.setId(rs.getString("id"));
				guarddata.setFname(rs.getString("fname"));
				guarddata.setLname(rs.getString("Lname"));
				guarddata.setPhoneno(rs.getString("phoneno"));
				
				names.add(guarddata);
				
				
			}
			
			
		 } catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
	
		
		return names;
		
	}
    
    
    public void updating() {
		
		
	}
    
    public void delete(Guard guard) {
    	
	}
    
    
    
	

}
