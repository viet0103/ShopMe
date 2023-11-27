package controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;

import com.mysql.cj.protocol.Resultset;
import com.mysql.cj.xdevapi.PreparableStatement;
import com.mysql.cj.xdevapi.Result;

import Database.DBConnection;
import Model.User;
import Utils.CountRowSQL;

/**
 * Servlet implementation class Comment
 */
@WebServlet("/comment")
public class Comment extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Comment() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());
		String id =  request.getParameter("product_id");
		request.getRequestDispatcher("/login?id="+id).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("user");
		String id =  request.getParameter("product_id");
		
		
		if(user == null) {
			doGet(request, response);
			return;
		}else {
			String valueStar = request.getParameter("rating");
			String content = request.getParameter("content-comment");
			SimpleDateFormat formatDate = new SimpleDateFormat("yyyy-MM-dd") ;
			String date = formatDate.format(new Date());
			try {
				
				PreparedStatement statement;
				String check_customer_id = "select id from customers where email=? or phone=?;";
				
				// Get customer_id
				statement = DBConnection.connection.prepareStatement(check_customer_id);
				statement.setString(1, user.getEmail());
				statement.setString(2, user.getPhone());
				ResultSet check_customer = statement.executeQuery();
				String customer_id = "";
				while(check_customer.next()) {
					customer_id = check_customer.getInt("id") +"";
				}
				
				// Moi user duoc binh luan 1 lan/1 san pham
				String check_comment_user = "select * from comment_tables where product_id=? and customer_id=?;";
				statement = DBConnection.connection.prepareStatement(check_comment_user,ResultSet.TYPE_SCROLL_SENSITIVE, 
				ResultSet.CONCUR_UPDATABLE);
				statement.setString(1, id);
				statement.setString(2, customer_id);
				ResultSet re_check_cmt = statement.executeQuery();
				CountRowSQL countRow = new CountRowSQL(re_check_cmt);
				// check cmt
				if (countRow.getRow() > 0) {
					
					request.getRequestDispatcher("products?id="+id+"&checkCmt=false").forward(request, response);
				}else {
				// add comment
				String insert_comment = "insert into comment_tables (customer_id, product_id, content, create_date, rate) values (?,?,?,?,?);";
				statement = DBConnection.connection.prepareStatement(insert_comment);
				statement.setString(1, customer_id);
				statement.setString(2, id);
				statement.setString(3, content);
				statement.setString(4, date);
				statement.setString(5, valueStar);
				
				int re_insert_commnet = statement.executeUpdate();
				
				
				response.sendRedirect("products?id="+id+"&checkCmt=true");	// ng dung cmt thanh cong: true
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
	
		
	}

}
