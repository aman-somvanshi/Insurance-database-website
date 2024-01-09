package com.pbl;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/login")
public class Login extends HttpServlet {
    private static final long serialVersionUID = 1L;
    

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String username = request.getParameter("loginUsername");
        String password = request.getParameter("loginPassword");

        // Your authentication logic goes here
        AuthenticationService authService = new AuthenticationService();
        boolean isAuthenticated = false;
		try {
			isAuthenticated = authService.authenticateUser(username, password);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

        if (isAuthenticated) {
            // Redirect to a successful login page or perform further actions
        	System.out.println("User Logged in Successfully !!");
            response.sendRedirect("personal_details.jsp");
        } else {
            // Redirect back to the login page with an error message
            response.sendRedirect("registerform.jsp?error=InvalidCredentials");
        }
    }
}

