package com.pbl;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Personal_details
 */
@WebServlet("/Personal_details")
public class Personal_details extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public Personal_details() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String s1=request.getParameter("fname");
		String s2=request.getParameter("lname");
		String s3=request.getParameter("phn_num");
		String s4=request.getParameter("email");
		String s5=request.getParameter("dob");
		String s6=request.getParameter("pincode");
		String s7=request.getParameter("gender");
		String s8=request.getParameter("smoke");
		String s9=request.getParameter("alcohol");
		String s10=request.getParameter("address");
		try {
			Database db=new Database();
			db.insertp(s1, s2, s3,s4,s5,s6,s7,s8,s9,s10);
			response.sendRedirect("income_details.jsp");
		} catch (Exception e) {
			System.out.println(e);
		}
	}

}
