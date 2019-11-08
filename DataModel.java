package security;

public class DataModel {
	
	private String category,name,id,date,time,place,nature;
	
	
	
	public String getId() {
		return id;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public DataModel() {
		super();
	}

	public DataModel(String category, String name, String id, String date, String time, String place, String nature) {
		super();
		this.category = category;
		this.name = name;
		this.id = id;
		this.date = date;
		this.time = time;
		this.place = place;
		this.nature = nature;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public String getPlace() {
		return place;
	}

	public void setPlace(String place) {
		this.place = place;
	}

	public String getNature() {
		return nature;
	}

	public void setNature(String nature) {
		this.nature = nature;
	}

	public void setId(String id) {
		this.id = id;
	}

	
	
	

	public String getCategory() {
		return category;
	}

	
	

	@Override
	public String toString() {
		return "DataModel [category=" + category + ", name=" + name + ", id=" + id + ", date=" + date + ", time=" + time
				+ ", place=" + place + ", nature=" + nature + "]";
	}

	

	

	
}
