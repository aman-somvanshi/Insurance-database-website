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
    <link rel="stylesheet" href="header_navbar.css">
    <link rel="stylesheet" href="footer.css">
    <!-- script tag to get icons from fontawesome.com -->
    <script src="https://kit.fontawesome.com/c4254e24a8.js" ></script>
    <link rel="stylesheet" href="sidebar.css">

    <script src="demo.js" defer></script>
    <script>
    
    function deleteEntry(infoId) {
        console.log("Deleting entry with infoId: " + infoId);

        if (confirm("Are you sure you want to delete this entry?")) {
            var xhr = new XMLHttpRequest();
            xhr.open("GET", "DeleteEntryServlet?infoId=" + infoId, true);
            xhr.onreadystatechange = function () {
                if (xhr.readyState == 4) {
                    console.log("Response from server: " + xhr.responseText);
                    if (xhr.status == 200) {
                        // Reload the page after deletion
                        location.reload();
                    } else {
                        console.error("Failed to delete entry");
                    }
                }
            };
            xhr.send();
        }
    }
    
    function updateEntry(infoId) {
        window.location.href = "updatePage.jsp?infoId=" + infoId;
    }
    </script>
   
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

<body  style="background-color: #f0f0f0;background: linear-gradient(rgba(255, 255, 255, 0.7), rgba(255, 255, 255, 0.7)), url('Soil.jpeg') center / cover;">
		
		<div><h1 style="font-family: 'Kaushan Script', cursive; text-align:center;color: black;letter-spacing:2px;">Insurers Details
		</h1></div>
		<br><br><br>
		
		<div style="font-family: 'Kaushan Script', cursive; text-align:center;color: blue;letter-spacing:2px;"> 
		<h3><a href="personal_details.jsp"  style="color: blue;" >Add New Insurer</a></h3>
		</div><br><br>
        
       
        <table border="1" style="border: 1px solid black; text-align:center;" >
            <tr>
            	<th>ID</th>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Phone Number</th>
                <th>E-mail</th>
                <th>Date of Birth</th>
                <th>Gender</th>
                <th>Smoking</th>
                <th>Alcohol</th>
                <th>Address</th>
            </tr>

            <%
            
            try {
                Class.forName("com.mysql.cj.jdbc.Driver"); // register driver class
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "aman1306");
                PreparedStatement ps = con.prepareStatement("select * from info");
                ResultSet rs = ps.executeQuery();

                while (rs.next()) {
            %>
            
            <tr>
            	<td><%= rs.getString("infoId") %></td>
                <td><%= rs.getString("fname") %></td>
                <td><%= rs.getString("lname") %></td>
                <td><%= rs.getString("phn_num") %></td>
                <td><%= rs.getString("email") %></td>
                <td><%= rs.getString("dob") %></td>
                <td><%= rs.getString("gender") %></td>
                <td><%= rs.getString("smoke") %></td>
                <td><%= rs.getString("alcohol") %></td>
                <td><%= rs.getString("address") %></td>
                <td><button onclick="deleteEntry('<%= rs.getString("infoId") %>')">Delete</button></td>
                <td><button onclick="updateEntry('<%= rs.getString("infoId") %>')">Update</button></td>
            </tr>
            <%
                } // while loop complete here
            } catch (Exception e) {
                e.printStackTrace(); // Print the stack trace for debugging
            }
            %>
        </table>
    
    
		
</body>
<footer>
    <div><button id="income-back" class="back-btn">Back</button></div>
    <div><button id="income-next" class="next-btn" type="submit">Next</button></div>
</footer>
</html>