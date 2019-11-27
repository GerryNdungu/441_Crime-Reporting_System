package javazack.models;

import daoLayer.DataDao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;


public class Dao_Accessors {
	private int id;
	private String fname,lname,regno,date_of_occurance,time_of_occurance,place_of_occurance,category,occurance;
	private String sql="insert into users(fname,lname,regno,date,time,place,nature,category,Date_Reported,updated_at) values(?,?,?,?,?,?,?,?,?,?)";
	private PreparedStatement stmt;
	private ResultSet rs;
	private Connection con;
	private boolean status;
	
	
	
	
	DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss");
	LocalDateTime now = LocalDateTime.now();
	
	DataDao obj=new DataDao();
	DataModel db_data=new DataModel();
	
	
	public void getModelData(DataModel data)  {
		
		 status=true;
		 fname=data.getFname();
		 lname=data.getLname();
		 regno=data.getRegno();
		 date_of_occurance=data.getDate_of_occurance();
		 time_of_occurance=data.getTime_of_occurance();
		 place_of_occurance=data.getPlace_of_occurance();
		 category=data.getCategory();
		 occurance=data.getOccurance();
		 
		 String day_time=dtf.format(now);
		 
		 System.out.println(place_of_occurance);
		 System.out.println(day_time);
		
	 stmt= obj.insertToDB(sql);
	 try {
		 stmt.setString(1,fname);
		 stmt.setString(2,lname);
		 stmt.setString(3, regno);
		 stmt.setString(4,date_of_occurance);
		 stmt.setString(5, time_of_occurance);
		 stmt.setString(6, place_of_occurance);
		 stmt.setString(8, category);
		 stmt.setString(7, occurance);
		 stmt.setString(9, day_time);
		
		 stmt.setString(10, day_time);
		 
		 
		 stmt.executeUpdate();
	} catch (SQLException e) {
		
		e.printStackTrace();
		
	}
	
			
	}
	
	public DataModel selectFromDatabase() {
		
		String sql="select * from users";
		
		try {
			rs=obj.readData(sql);
			while (rs.next()){
				
				
				db_data.setId(rs.getInt("id_1"));
				db_data.setFname(rs.getString("fname"));
				db_data.setLname(rs.getString("lname"));
				db_data.setRegno(rs.getString("regno"));
				db_data.setDate_of_occurance(rs.getString("date"));
				db_data.setTime_of_occurance(rs.getString("time"));
				db_data.setCategory(rs.getString("category"));
				db_data.setOccurance(rs.getString("nature"));
				db_data.setDate_reported(rs.getString("Date_Reported"));
				//db_data.setStatus(rs.getBoolean("status"));
				db_data.setUpdated_at(rs.getString("updated_at"));
			
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return db_data;
		
	}
	// getting data from the database
	
	public List<DataModel> select(int start ,int total){
		 List<DataModel>result = new ArrayList<DataModel>();
		
		 try {
		
			 con=obj.makeConections();
			 stmt=con.prepareStatement("select *from users order by id_1 desc limit "+(start-1)+","+total); 
			 
			 rs=stmt.executeQuery();
			
			
			 while(rs.next()) {
				 
				 DataModel all_data=new DataModel();
				 int id=rs.getInt("id_1");
				 String fname=rs.getString("fname");
				 String lname=rs.getString("lname");
				 String regno=rs.getString("regno");
				 String date=rs.getString("date");
				 String time=rs.getString("time");
				 String category=rs.getString("category");
				 String place=rs.getString("place");
				 String nature=rs.getString("nature");
				 String dateReported=rs.getString("Date_Reported");
				 Boolean status=rs.getBoolean("status");
				 String updated_at=rs.getString("updated_at");
				 String assigedGuard=rs.getString("AssignedGuard");
				
				 all_data.setId(id);
				 all_data.setFname(fname);
				 all_data.setLname(lname);
				 all_data.setRegno(regno);
				 all_data.setDate_of_occurance(date);
				 all_data.setTime_of_occurance(time);
				 all_data.setCategory(category);
				 all_data.setOccurance(nature);
				 all_data.setPlace_of_occurance(place);
				 all_data.setDate_reported(dateReported);
				 all_data.setStatus(status);
				 all_data.setUpdated_at(updated_at); 
				 all_data.setAssignedGuard(assigedGuard);
				
				result.add(all_data);
			
			 }
			
					 
			
		} catch (Exception e) {
			// TODO: handle exception
			 return null;
		}
		 return result;		
	}
	
	//updating cases
	
	public  int update(DataModel cases) {
		String sqlUpdate="UPDATE users SET status = ?,updated_at = ?, AssignedGuard = ? WHERE id_1 = ?";
		 String day_time=dtf.format(now);
		 Boolean caseStart=true;
		 int result = 0;
		try {
			 con=obj.makeConections();
			 stmt = con.prepareStatement(sqlUpdate);
			 stmt.setBoolean(1, caseStart);
			 stmt.setString(2, day_time);
			 stmt.setString(3, cases.getAssignedGuard());
			 stmt.setInt(4,cases.getId());
			 result= stmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return result;
	}
	
	//find case by ID
	
	public DataModel FindById(int id) {
		
		String sql="select * from users where id_1=?";
		
		try {
			con=obj.makeConections();
			stmt=con.prepareStatement(sql);
			stmt.setInt(1, id);
			rs=stmt.executeQuery();
			
			while (rs.next()){
				
				
				db_data.setId(rs.getInt("id_1"));
				db_data.setFname(rs.getString("fname"));
				db_data.setLname(rs.getString("lname"));
				db_data.setRegno(rs.getString("regno"));
				db_data.setDate_of_occurance(rs.getString("date"));
				db_data.setTime_of_occurance(rs.getString("time"));
				db_data.setCategory(rs.getString("category"));
				db_data.setOccurance(rs.getString("nature"));
				db_data.setDate_reported(rs.getString("Date_Reported"));
				db_data.setStatus(rs.getBoolean("status"));
				db_data.setUpdated_at(rs.getString("updated_at"));
			
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return db_data;
		
	}
	// deleting a record
	public void delete(int id) {
		String deletesql="DELETE FROM User where id=?";
		con=obj.makeConections();
		try {
			stmt=con.prepareStatement(deletesql);
			stmt.setInt(1, id);
			stmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	
		
	}

}
