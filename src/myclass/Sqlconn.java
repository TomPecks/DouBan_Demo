package myclass;

import java.sql.*;

public class Sqlconn {

	String url = "jdbc:sqlserver://127.0.0.1:1433;DatabaseName=";

	public Connection myconn()
			throws InstantiationException, IllegalAccessException, ClassNotFoundException, SQLException {
		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver").newInstance();
		url = url + "DouBan";
		Connection conn = null;
		try {
			conn = DriverManager.getConnection(url, "sa", "sa123");
		} catch (Exception e) {
			System.out.print(e.toString());
		}
		return conn;
	}

	public String recordCount(String sqltext) {
		Connection conn = null;
		try {
			conn = myconn();
			Statement stm = conn.createStatement();
			ResultSet rs = stm.executeQuery(sqltext);
			rs.next();
			String count = rs.getString(1);
			rs.close();
			stm.close();
			conn.close();
			return count;
		} catch (Exception e) {
			System.out.print(e.toString());
			return "error";
		}
	}
}
