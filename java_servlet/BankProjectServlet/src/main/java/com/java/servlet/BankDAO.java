package com.java.servlet;

import java.sql.SQLException;

public interface BankDAO {
	String createAccount(Bank bank) throws ClassNotFoundException, SQLException;
	Bank searchAccountDao(int accountNo) throws ClassNotFoundException, SQLException;
	String closeAccountDao(int accountNO) throws ClassNotFoundException, SQLException;
	String depositeAccountDao(int accountNo, int depositeAmount) throws ClassNotFoundException, SQLException;
	String withdrawAccountDao(int accountNo, int withdrawAmount) throws ClassNotFoundException, SQLException;
}
