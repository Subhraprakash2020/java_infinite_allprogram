package com.java.servlet;

import java.sql.SQLException;
import java.util.Scanner;

public class CreateAccountMain {
	public static void main(String[] args) {
		Bank bank = new Bank();
		Scanner sc = new Scanner(System.in);
		System.out.println("Enter first name");
		bank.setFirstName(sc.next());
		System.out.println("Enter last name");
		bank.setLastName(sc.next());
		System.out.println("Enter city");
		bank.setCity(sc.next());
		System.out.println("Enter state");
		bank.setState(sc.next());
		System.out.println("Enter amount ");
		bank.setAmount(sc.nextInt());
		System.out.println("Enter cheqFacil(Yes/No)");
		bank.setCheqFacil(sc.next());
		System.out.println("Enter account rype ");
		bank.setAccountType(sc.next());
		BankDAO dao = new BankDAOImpl();
		try {
			System.out.println(dao.createAccount(bank));
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
