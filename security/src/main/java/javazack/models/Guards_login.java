package javazack.models;

public class Guards_login {
	
	
	private String id;
	private String password;
	
	
	

	
	public Guards_login() {
		super();
	}


	public Guards_login(String id, String password) {
		super();
		this.id = id;
		this.password = password;
	}
	
	
	public String getId() {
		return id;
	}
	public String getPassword() {
		return password;
	}
	public void setId(String id) {
		this.id = id;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	@Override
	
	public String toString() {
		return "Guards_login [id=" + id + ", password=" + password + "]";
	}
}
