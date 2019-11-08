package security;


import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;


public class Dao_Accessors {
	
	private String category,name,id,date,time,place,nature;
	private String sql="insert into report(category,name,id,date,time,place,nature) values(?,?,?,?,?,?,?)";
	private PreparedStatement stmt;
	private ResultSet rs;
	
	DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss");
	LocalDateTime now = LocalDateTime.now();
	
	DataDao obj=new DataDao();
	DataModel db_data=new DataModel();
	

	public void getModelData(DataModel data)  {
		
		 category=data.getCategory();
		 name=data.getName();
		 id=data.getId();
		 date=data.getDate();
		 time=data.getTime();
		 place=data.getPlace();
		 nature=data.getNature();
		 
		 
		 String day_time=dtf.format(now);
		 
		 System.out.println(place);
		 System.out.println(day_time);
		
	 stmt= obj.insertToDB(sql);
	 try {
		 stmt.setString(1,category);
		 stmt.setString(2,name);
		 stmt.setString(3, id);
		 stmt.setString(4,date);
		 stmt.setString(5, time);
		 stmt.setString(6, place);
		 stmt.setString(7, nature);
		 

		 stmt.executeUpdate();
	} catch (SQLException e) {
		
		e.printStackTrace();
		
	}
	
			
	}
	
	public DataModel selectFromDatabase() {
		
		String sql="select * from report";
		
		try {
			rs=obj.readData(sql);
			while (rs.next()){
				
				
				db_data.setCategory(rs.getString("category"));
				db_data.setName(rs.getString("name"));
				db_data.setId(rs.getString("id"));
				db_data.setDate(rs.getString("date"));
				db_data.setTime(rs.getString("time"));
				db_data.setPlace(rs.getString("place"));
				
				db_data.setNature(rs.getString("nature"));
				
			
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return db_data;
		
	}

}
