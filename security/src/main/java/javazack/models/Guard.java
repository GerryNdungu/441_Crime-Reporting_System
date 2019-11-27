package javazack.models;

public class Guard {
	Integer Number;
	

	String id;
	String fname;
	String lname;
	String phoneno;
	
	

	
	public Guard() {
		super();
	}
	public Guard(String id, String fname, String lname, String phoneno) {
		super();
		this.id = id;
		this.fname = fname;
		this.lname = lname;
		this.phoneno = phoneno;
	}
	
	public Integer getNumber() {
		return Number;
	}
	public void setNumber(Integer number) {
		Number = number;
	}
	
	
	public String getId() {
		return id;
	}
	public String getFname() {
		return fname;
	}
	public String getLname() {
		return lname;
	}
	public String getPhoneno() {
		return phoneno;
	}
	public void setId(String id) {
		this.id = id;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public void setLname(String lname) {
		this.lname = lname;
	}
	public void setPhoneno(String phoneno) {
		this.phoneno = phoneno;
	}
	
	@Override
	public String toString() {
		return "Guard [id=" + id + ", fname=" + fname + ", lname=" + lname + ", phoneno=" + phoneno + "]";
	}
	
	
	
	

}
