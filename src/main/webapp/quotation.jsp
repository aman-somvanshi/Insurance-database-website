<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Quotation</title>
    <link rel="stylesheet" href="quotation.css">
    <link rel="stylesheet" href="header_navbar.css">
    <link rel="stylesheet" href="sidebar.css">   
    <!-- script tag to get icons from fontawesome.com -->
    <script src="https://kit.fontawesome.com/c4254e24a8.js" crossorigin="anonymous"></script>

    <script src="demo.js" defer></script>
    <!-- <script src="service.js" defer></script> -->
</head>
<header>
    <nav class="head-nav">
        <div class="head-ctn">
            <h2>Insurance Agent's Portal</h2>

            <div class="search-bar">
                <img src="search-icon.png" id="search-icon">
                <input type="search" placeholder="Search !!">
            </div>

            <div class="head-icons">
                <img src="bell-iconpng.png">
                <img src="profile.png">
            </div>
        </div>
    </nav>
</header>

<body>
    <nav class="header">
        <div class="side-nav">
            <ul class="nav-links">
                <li><a href="#"><i class="fa-solid fa-house-user"></i><p>Dashboard</p></a></li>
                <li><a href="#"><i class="fa-solid fa-message"></i><p>Messages</p></a></li>
                <li><a href="#"><i class="fa-solid fa-heart-pulse"></i><p>Checkup</p></a></li>
                <li><a href="#"><i class="fa-solid fa-arrow-rotate-left"></i><p>Renewal</p></a></li>
                <li><a href="reports.jsp"><i class="fa-solid fa-file"></i><p>Reports</p></a></li>
                <li><a href="#"><i class="fa-solid fa-circle-question"></i><p>FAQ List</p></a></li>
                <li><a href="registerform.jsp"><i class="fa-solid fa-right-from-bracket"></i><p>Log Out</p></a></li>
                <div class="active"></div>
            </ul>
        </div>
    </nav>  

    <div id="main-container">
        <div class="container-heading">Quotation Page
        </div>

        <div class="probar" id="income" step="2">
            <div class="progress-bar">
                <div class="circle completed">1</div>
                <div class="thread completed"></div>
                <div class="circle completed">2</div>
                <div class="thread completed"></div>
                <div class="circle completed">3</div>
                <div class="thread completed"></div>
                <div class="circle completed">4</div>
            </div>

            <div class="progress-bar">
                <div class="label">Personal Details</div>
                <div class="label">Income Details</div>
                <div class="label">Documents</div>
                <div class="label">Quotation</div>
            </div>
        </div>

        <div class="quotation">
            <table class="details">
                <tr>
                    <td ><label style="color:rgb(131, 127, 127) ;">Quotation Reference:  </label> <span id="quotationRef" ></span></td>
                    <td><label style="color:rgb(131, 127, 127) ;">Premium: $  </label><span id="premium"></span> per week</td>
                </tr>
                <tr>
                    <td><label style="color:rgb(131, 127, 127) ;">Product:  </label><span id="product"></span></td>
                    <td><label style="color:rgb(131, 127, 127) ;">Sum Insured:  </label><span id="sumInsured"></span></td>
                <tr>
                    <td><button id="view-benifits" class="benifits">View Benefits</button></td>
                    <td >      
                        <div class="side-icon"><img src="share.png" style="margin-left:150px ;"><img src="whatsapp.png"></div>
                    </td>
                </tr>
            </table>
        </div>
    </div>
</body>

<footer>
    <div><button id="quotation-back" class="back-btn">Back</button></div>
    <div><button id="quotation-nxt" class="next-btn" type="submit">Send Payment Link</button></div>
</footer>

</html>
