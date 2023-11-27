package controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Map;

import Database.DBConnection;
import Model.User;
import Utils.BCrypt;
import Utils.CountRowSQL;

/**
 * Servlet implementation class Login
 */
@WebServlet("/login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Login() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.getRequestDispatcher("/pages/login.jsp").forward(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession(true);
		String user_name_phone = request.getParameter("username");
		String password = request.getParameter("password");

		try {
			String sql = "select * from customer where email=? or phone=?";
			PreparedStatement statement = DBConnection.connection.prepareStatement(sql,ResultSet.TYPE_SCROLL_SENSITIVE, 
                    ResultSet.CONCUR_UPDATABLE);
			statement.setString(1, user_name_phone);
			statement.setString(2, user_name_phone);

			ResultSet result = statement.executeQuery();
			
			CountRowSQL countRow = new CountRowSQL(result);

			if (countRow.getRow() == 0) {
				request.setAttribute("status", "failed");
				request.setAttribute("username", user_name_phone);
				request.setAttribute("password", password);
				doGet(request, response);
				return;
			}
			
			String hashPass="";
	
			if(result.next()) {
				
				hashPass = result.getString("passwd");
				
				result.previous();
			}
			

			if (!BCrypt.checkpw(password, hashPass)) {
				request.setAttribute("status", "failed");
				request.setAttribute("username", user_name_phone);
				request.setAttribute("password", password);
				doGet(request, response);
				return;
			}
			
			User user = null;
			
			while (result.next()) {

				user = new User(
						result.getString("first_name"),
						result.getString("last_name"),
						result.getString("email"),
						result.getString("phone"),
						null,
						result.getDate("dob")
						);

			}

			session.setAttribute("user", user);
			
			response.sendRedirect("home");
		} catch (SQLException e) {
			// TODO: handle exception
			e.printStackTrace();
		}

	}

}
