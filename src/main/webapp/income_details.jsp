<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Income details</title>
    <link rel="stylesheet" href="income_details.css">
    <link rel="stylesheet" href="header_navbar.css">
    <link rel="stylesheet" href="sidebar.css">
    <!-- script tag to get icons from fontawesome.com -->
    <script src="https://kit.fontawesome.com/c4254e24a8.js" crossorigin="anonymous"></script>

    <script src="demo.js" defer></script>
</head>
<header>
    <nav class="head-nav">
        <div class="head-ctn">
            <h2>Insurance Agent's Portal</h2>

            <div class="search-bar">
                <img src="search-icon.png" id="search-icon">
                <input type="search" placeholder="Search...">
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
    
    <div id="main-container" style="margin-left: 10%;">
        <div class="form-heading">Income Details
            <div class="side-icon"><img src="share.png"><img src="whatsapp.png"></div>
        </div>

    
    <!-- //progressbar code -->

    <div class="probar" id="income"  step="2">
        <div class="progress-bar">
            <div class="circle completed">1</div>
            <div class="thread completed"></div>
            <div class="circle completed">2</div>
            <div class="thread"></div>
            <div class="circle">3</div>
            <div class="thread"></div>
            <div class="circle">4</div>
          </div>
        
          <div class="progress-bar" style="text-align:center ;">
            <div class="label">Personal Details</div>
            <div class="label">Income Details</div>
            <div class="label">Documents</div>
            <div class="label">Quotation</div>
          </div>
        </div>    
  

        <form action="Income_details" method="post">
            <div class="card-details">
                <div class="card-box">
                    <span class="details">Annual Income</span><br>
                    <input type="number" placeholder="Enter annual income" name="aincome" id="aincome">
                </div>
            </div>
    
            <div class="card-details">
                <div class="card-box">
                    <span class="details">Government Rebate</span><br>
                    <input type="number" placeholder="Enter Government Rebate" name="grebate" id="aincome">
                </div>
            </div>
    
            <div class="card-details">
                <div class="card-box">
                    <span class="details">Tax Rebate</span><br>
                    <input type="number" placeholder="Enter Tax Rebate" name="trebate" id="aincome">
                </div>
            </div>
            
            <div class="alcoholic-form">
                <span class="alcoholic-title">Submit before clicking next.</span>
                <div class="category">
                    <button class="yes-btn" type="submit">Submit</button>
                </div>
            </div>
        </form>
    </div>
</body>

<footer>
    <div><button id="income-back" class="back-btn">Back</button></div>
    <div><button id="income-next" class="next-btn" type="submit">Next</button></div>
</footer>

</html>