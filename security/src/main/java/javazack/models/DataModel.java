package javazack.models;

public class DataModel {
	private int id;
	private String fname,lname,regno,date_of_occurance,time_of_occurance,place_of_occurance,category,occurance,date_reported,updated_at;
	private String AssignedGuard;
	
	public String getAssignedGuard() {
		return AssignedGuard;
	}

	public void setAssignedGuard(String assignedGuard) {
		AssignedGuard = assignedGuard;
	}

	public String getUpdated_at() {
		return updated_at;
	}

	public void setUpdated_at(String updated_at) {
		this.updated_at = updated_at;
	}

	private boolean Status;
	
	
	
	public boolean isStatus() {
		return Status;
	}

	public void setStatus(boolean status) {
		Status = status;
	}

	public DataModel() {
		super();
	}

	public DataModel(String fname, String lname, String regno, String date_of_occurance, String time_of_occurance,
			String place_of_occurance, String category, String occurance) {
		super();
		this.fname = fname;
		this.lname = lname;
		this.regno = regno;
		this.date_of_occurance = date_of_occurance;
		this.time_of_occurance = time_of_occurance;
		this.place_of_occurance = place_of_occurance;
		this.category = category;
		this.occurance = occurance;
	}

	public String getDate_reported() {
		return date_reported;
	}

	public void setDate_reported(String date_reported) {
		this.date_reported = date_reported;
	}

	public String getFname() {
		return fname;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getLname() {
		return lname;
	}

	public void setFname(String fname) {
		this.fname = fname;
	}

	public void setLname(String lname) {
		this.lname = lname;
	}

	public String getRegno() {
		return regno;
	}

	public String getDate_of_occurance() {
		return date_of_occurance;
	}

	public String getTime_of_occurance() {
		return time_of_occurance;
	}

	public String getPlace_of_occurance() {
		return place_of_occurance;
	}

	public String getCategory() {
		return category;
	}

	public String getOccurance() {
		return occurance;
	}

	public void setRegno(String regno) {
		this.regno = regno;
	}

	public void setDate_of_occurance(String date_of_occurance) {
		this.date_of_occurance = date_of_occurance;
	}

	public void setTime_of_occurance(String time_of_occurance) {
		this.time_of_occurance = time_of_occurance;
	}

	public void setPlace_of_occurance(String place_of_occurance) {
		this.place_of_occurance = place_of_occurance;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public void setOccurance(String occurance) {
		this.occurance = occurance;
	}

	@Override
	public String toString() {
		return "DataModel [id=" + id + ", fname=" + fname + ", lname=" + lname + ", regno=" + regno
				+ ", date_of_occurance=" + date_of_occurance + ", time_of_occurance=" + time_of_occurance
				+ ", place_of_occurance=" + place_of_occurance + ", category=" + category + ", occurance=" + occurance
				+ ", date_reported=" + date_reported + ", updated_at=" + updated_at + ", AssignedGuard=" + AssignedGuard
				+ ", Status=" + Status + "]";
	}

	

	

	
}
