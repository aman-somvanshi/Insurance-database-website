<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Insurer's Details</title>
    <link rel="stylesheet" href="personal_details.css">
    <link rel="stylesheet" href="sidebar.css">
    <link rel="stylesheet" href="header_navbar.css">
    <link rel="stylesheet" href="footer.css">
    <!-- script tag to get icons from fontawesome.com -->
    <script src="https://kit.fontawesome.com/c4254e24a8.js" ></script>
    
	<style>
   body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
            font-size:22px;
        }

        header {
            background-color: #333;
            color: #fff;
            padding: 10px;
            text-align: center;
        }

        .container {
            width: 70%;
            margin: auto;
            overflow: hidden;
        }

        form {
            background: #fff;
            padding: 20px;
            margin-top: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            margin-left:400px;
            
        }

        label {
            display: block;
            margin: 10px 0 5px;
        }

        input {
            width: 100%;
            padding: 8px;
            font-size:22px;
            margin-bottom: 10px;
            box-sizing: border-box;
        }

        input[type="submit"] {
            background: #333;
            color: #fff;
            cursor: pointer;
            width:262px;
            
        }

        input[type="submit"]:hover {
            background: #555;
        }
        
    </style>
    
    </head>
<header>
    <nav class="head-nav">
        <div class="head-ctn">
            <h2>Insurance Agent's Portal</h2>

            <div class="search-bar">
                <img src="search-icon.png" id="search-icon">
                <input type="search" placeholder="Search !">
            </div>

            <div class="head-icons">
                <img src="bell-iconpng.png">
                <img src="profile.png">
            </div>
        </div>
    </nav>
</header>
    <body>

<%
    // Retrieve infoId from request parameter
    String infoId = request.getParameter("infoId");

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "aman1306");

        // Fetch existing data based on infoId
        PreparedStatement ps = con.prepareStatement("SELECT * FROM info WHERE infoId = ?");
        ps.setString(1, infoId);
        ResultSet rs = ps.executeQuery();

        if (rs.next()) {
            // Retrieve existing data
            String fname = rs.getString("fname");
            String lname = rs.getString("lname");
            String phn_num = rs.getString("phn_num");
            String email = rs.getString("email");
            String dob = rs.getString("dob");
            String pincode = rs.getString("pincode");
            String gender = rs.getString("gender");
            String smoke = rs.getString("smoke");
            String alcohol = rs.getString("alcohol");
            String address = rs.getString("address");
%>
<div style="width:1450px;">
<form action="UpdateEntryServlet" method="post" style="background: #fff; padding: 20px; margin-top: 20px; border-radius: 10px; box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);">
    <input type="hidden" name="infoId" value="<%= infoId %>">
    <!-- Input fields for updating data -->
    <label for="fname" style="display: inline; ">First Name:</label>
    <input type="text" name="fname" value="<%= fname %> " style="height:40px;">

    <label for="lname">Last Name:</label>
    <input type="text" name="lname" value="<%= lname %>" style="height:40px;">

    <label for="phn_num">Phone Number:</label>
    <input type="text" name="phn_num" value="<%= phn_num %>" style="height:40px;">

    <label for="email">E-mail:</label>
    <input type="text" name="email" value="<%= email %>" style="height:40px;">

    <label for="dob">Date of Birth:</label>
    <input type="text" name="dob" value="<%= dob %>" style="height:40px;">

    <label for="pincode">Pincode:</label>
    <input type="text" name="pincode" value="<%= pincode %>" style="height:40px;">

    <label for="gender">Gender:</label>
    <input type="text" name="gender" value="<%= gender %>" style="height:40px;">

    <label for="smoke">Smoking:</label>
    <input type="text" name="smoke" value="<%= smoke %>" style="height:40px;">

    <label for="alcohol">Alcohol:</label>
    <input type="text" name="alcohol" value="<%= alcohol %>" style="height:40px;">

    <label for="address">Address:</label>
    <input type="text" name="address" value="<%= address %>" style="height:40px;">

    <input type="submit" value="Update" style="margin-left:350px; background: #333; color: #fff; cursor: pointer; font-size:25px; border-radius:20px">
</form>
</div>

<%
        } else {
            // Handle case where no data is found for the given infoId
            out.println("No data found for infoId: " + infoId);
        }

        con.close();
    } catch (Exception e) {
        out.println("Error: " + e.getMessage());
    }
%>

</body>
</html>