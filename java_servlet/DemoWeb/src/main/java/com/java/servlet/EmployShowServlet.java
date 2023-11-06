package com.java.servlet;
import java.util.List;


import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.w3c.dom.stylesheets.LinkStyle;


/**
 * Servlet implementation class EmployShowServlet
 */
public class EmployShowServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EmployShowServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		EmployDAO dao = new EmployDAOImpl();
		
		List<Employ> employList;
		try {
			employList = dao.showEmployDao();
			for (Employ employ : employList) {
				out.println("Employ No" + employ.getEmpno()+"<br/>");
				out.println("Employ name "+ employ.getName()+"<br/>");
				out.println("Gender" +employ.getGender().toString()+"<br/>");
				out.println("Department "+ employ.getDept() + "<br/>");
				out.println("Designation" +employ.getDesig() + "<br/>" );
				out.println("Salary "+employ.getBasic()+"<br/>");
				out.println("--------------------------------"+ "<br/>");
				
			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
