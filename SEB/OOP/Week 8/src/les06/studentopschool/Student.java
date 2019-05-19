package les06.studentopschool;

public class Student {
	public String naam;
	public int nummer;
	public School school;

	public Student(String naam, int nummer, String school) {
		// TODO Auto-generated constructor stub
		this.naam  = naam;
	    this.nummer = nummer;
	    this.school = new School(school);
	}
}
