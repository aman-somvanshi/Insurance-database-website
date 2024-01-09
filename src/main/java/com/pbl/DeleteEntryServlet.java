package com.pbl;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class DeleteEntryServlet
 */
@WebServlet("/DeleteEntryServlet")
public class DeleteEntryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteEntryServlet() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		     try {
		         String infoId = request.getParameter("infoId");
		         Class.forName("com.mysql.cj.jdbc.Driver");
		         Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "aman1306");
		         PreparedStatement ps = con.prepareStatement("DELETE FROM info WHERE infoId = ?");
		         ps.setString(1, infoId);
		         int count = ps.executeUpdate();
		         if (count > 0) {
		             response.getWriter().write("Entry deleted successfully");
		         } else {
		             response.getWriter().write("Deletion failed");
		         }
		         con.close();
		     } catch (Exception e) {
		         response.getWriter().write("Error: " + e.getMessage());
		     }
		 }



}
