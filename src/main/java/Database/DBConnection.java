package Database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {
	public static Connection connection;
	public DBConnection() {
		if (connection==null) {
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");// Đăng ký trình điều khiển JDBC cho MySQL
				/**
				 * "jdbc:mysql://localhost:3306/shopdb": URL thiết lập kết nối đến cơ sở dữ liệu MySQL
				 * "root": tên người dùng
				 * "nhv21092003@": mật khẩu.
				 * **/
				connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/shopdb", "root", "quynhlieu01#");
//				System.out.println(connection);
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
}
