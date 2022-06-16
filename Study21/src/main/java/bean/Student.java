package bean;

public class Student {
	private String name;
	private int age;
	String address;
	public Student() {
		
	}
	
	public void setName(String n) {
		name=n;
	}
	public String getName() {
		return name;
	}
	public void setAge(int i) {
		this.age=i;
	}
	public int getAge() {
		return age;
	}
	public void setAddress(String n) {
		address=n;
	}
	public String getAddress() {
		return address;
	}
	
	public Student(String a, int i, String b){
		setName(a);
		setAge(i);
		setAddress(b);
	}
	public void setStudent(String a,int b, String c) {
		this.name=a;
		this.age=b;
		//''
	}
	
	
}

