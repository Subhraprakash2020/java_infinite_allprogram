package com.java.servlet;

import java.sql.SQLException;
import java.util.Scanner;

public class DepositeAccountMain {
	public static void main(String[] args) {
		int accountNo, depositeAmount;
		Scanner sc = new Scanner(System.in);
		System.out.println("Enter account no ");
		accountNo = sc.nextInt();
		System.out.println("Enter deposite amount");
		depositeAmount =sc.nextInt();
		BankDAO dao = new BankDAOImpl();
		try {
			System.out.println(dao.depositeAccountDao(accountNo, depositeAmount));
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
