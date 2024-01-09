package com.pbl;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Register
 */
@WebServlet("/register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Register() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String s1=request.getParameter("registerUsername");
		String s2=request.getParameter("registerPassword");
		String s3=request.getParameter("registerEmail");
		try {
			Database db=new Database();
			db.insert(s1, s2, s3);
			response.sendRedirect("personal_details.jsp");
		} catch (Exception e) {
			System.out.println(e);
		}
		
		
		
		

}
}
