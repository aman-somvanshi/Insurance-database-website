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
 * Servlet implementation class UpdateEntryServlet
 */
@WebServlet("/UpdateEntryServlet")
public class UpdateEntryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateEntryServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			String infoId = request.getParameter("infoId");
            String fname = request.getParameter("fname");
            String lname = request.getParameter("lname");
            String phn_num = request.getParameter("phn_num");
            String email = request.getParameter("email");
            String dob = request.getParameter("dob");
            String pincode = request.getParameter("pincode");
            String gender = request.getParameter("gender");
            String smoke = request.getParameter("smoke");
            String alcohol = request.getParameter("alcohol");
            String address = request.getParameter("address");
            
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "aman1306");
            PreparedStatement ps = con.prepareStatement("UPDATE info SET fname = ?, lname = ?, phn_num = ?, email = ?, dob = ?, pincode = ?, gender = ?, smoke = ?, alcohol = ?, address = ? WHERE infoId = ?");
            ps.setString(1, fname);
            ps.setString(2, lname);
            ps.setString(3, phn_num);
            ps.setString(4, email);
            ps.setString(5, dob);
            ps.setString(6, pincode);
            ps.setString(7, gender);
            ps.setString(8, smoke);
            ps.setString(9, alcohol);
            ps.setString(10, address);
            ps.setString(11, infoId);
            int count = ps.executeUpdate();

            if (count > 0) {
                response.getWriter().write("Entry updated successfully");
            } else {
                response.getWriter().write("Update failed");
            }

            con.close();
        } catch (Exception e) {
            response.getWriter().write("Error: " + e.getMessage());
        }
    }
	}

