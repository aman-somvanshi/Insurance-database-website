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
@WebServlet("/Income_details")
public class Income_details extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public Income_details() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String s1=request.getParameter("aincome");
		String s2=request.getParameter("grebate");
		String s3=request.getParameter("trebate");

		try {
			Database db=new Database();
			db.inserti(s1, s2, s3);
			response.sendRedirect("documents.html");
		} catch (Exception e) {
			System.out.println(e);
		}
	}

}
