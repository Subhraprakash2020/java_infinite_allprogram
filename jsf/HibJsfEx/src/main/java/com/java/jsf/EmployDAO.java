package com.java.jsf;

import java.util.*;
public interface EmployDAO {
	List<Employ> showEmployDao();
	String searchEmployDao(int empno);
	String addEmployDao(Employ employ);
	String deleteEmployDao(int empno);
	String updateEmployDao(Employ employUpdated);
}
