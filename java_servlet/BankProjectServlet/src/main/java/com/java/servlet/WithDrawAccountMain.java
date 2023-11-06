package com.java.servlet;

import java.sql.SQLException;
import java.util.Scanner;

public class WithDrawAccountMain {
	public static void main(String[] args) {
		int accountNo, withdrawAmount;
		Scanner sc = new Scanner(System.in);
		System.out.println("Enter account no");
		accountNo = sc.nextInt();
		System.out.println("Enter withdraw amount");
		withdrawAmount = sc.nextInt();
		BankDAO dao = new BankDAOImpl();
		try {
			System.out.println(dao.withdrawAccountDao(accountNo, withdrawAmount));
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
}
