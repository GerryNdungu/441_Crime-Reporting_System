import java.sql.*;

import daoLayer.DataDao;
import javazack.models.Guards_login;

public class LogInDao {
	private Connection con;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	DataDao datadao=new DataDao();
	boolean boolAuthen;
	
	
	public boolean authenticate(Guards_login details) {

		 String sql="select * from guards where uname=? and password=?";
		con=datadao.makeConections();
		try {
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, details.getId());
			pstmt.setString(2, details.getPassword());
			rs=pstmt.executeQuery();
			
			if(rs.next()) {
				boolAuthen=true;	
			}
			else{
				boolAuthen=false;
			}
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		return boolAuthen;
		
	}

}
