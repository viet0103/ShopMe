package Login;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Login
 * @param <E>
 */

@WebServlet("/register")
public class Login<E> extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connect = DriverManager.getConnection("jdbc:mysql://localhost:3306/employee_directory", "root", "nhv21092003@");

			PreparedStatement statement = connect.prepareStatement("select * from employee");
			ResultSet res = statement.executeQuery();
			while (res.next()) {

				ResultSetMetaData rsmd = res.getMetaData();
				int columnCount = rsmd.getColumnCount();


				for (int i = 1; i <= columnCount; i++) {

					String columnName = rsmd.getColumnName(i);
					System.out.println(columnName + ": ");
					System.out.println(res.getString(columnName));
				}

			}

		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setAttribute("status", "failed");
		RequestDispatcher dispatcher = request.getRequestDispatcher("registration.jsp");
		dispatcher.include(request, response);
	}

}
