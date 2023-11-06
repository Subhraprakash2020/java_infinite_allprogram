package com.java.jsf;

import java.util.*;

public class EmployDAO {
	
	public List<String> getNames(){
		List<String> names = new ArrayList<String>();
		names.add("Rahul");
		names.add("Amit");
		names.add("Ansal");
		names.add("Subudhi");
		names.add("Satya");
		return names;
	}
	
	public List<Employ> showEmploy(){
		List<Employ> employList = new ArrayList<>();
		employList.add(new Employ(1, "Gaurav", "java", "Developer", 49782));
		employList.add(new Employ(2, "Swati", "j2eee", "Expert", 9797));
		employList.add(new Employ(3, "Subhra", "Mysql", "Programmer", 4325));
		employList.add(new Employ(4, "Ariz", "Angular", "Tester", 87998));
		employList.add(new Employ(5, "Amit", "React", "manager", 8768));
		return employList;
	}
}
