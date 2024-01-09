<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Personal Details</title>
    <link rel="stylesheet" href="personal_details.css">
    <link rel="stylesheet" href="header_navbar.css">
    <link rel="stylesheet" href="footer.css">
    <!-- script tag to get icons from fontawesome.com -->
    <script src="https://kit.fontawesome.com/c4254e24a8.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="sidebar.css">

    <script src="demo.js" defer></script>
    <script src="personal_details.js" defer></script>
    <script>
    function redirectToIncomeDetails() {
        window.location.href = "income_details.jsp";
        return false;  // To prevent the form from submitting via the default action
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
        <div class="form-heading">Personal Details 
            <div class="side-icon"><img src="share.png"><img src="whatsapp.png"></div>
        </div>

            <!-- //progressbar code -->

        <div class="probar" id="income"  step="2">
            <div class="progress-bar">
                <div class="circle completed">1</div>
                <div class="thread"></div>
                <div class="circle">2</div>
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
  

        <form action="Personal_details" method="post" name="personal-details" onsubmit="redirectToIncomeDetails()">
            <div class="card-details">
                <div class="card-box">
                    <span class="details">First Name</span><br>
                    <input type="text" placeholder="Enter first name" id="fname" name="fname" required>
                    <b><span class="form-error"></span></b>
                </div>
            </div>

            <div class="card-details">
                <div class="card-box">
                    <span class="details">Last Name</span><br>
                    <input type="text" maxlength="50" placeholder="Enter last name" id="lname" name="lname" required>
                </div>
            </div>

            <div class="card-details">
                <div class="card-box">
                    <span class="details">Phone Number</span><br>
                    <input type="number" id="phn_num" name="phn_num" placeholder="Enter phone number" pattern="^\+\d{2}-\d{10}$" required>
                </div>
            </div>
            
            <div class="card-details">
                <div class="card-box">
                    <span class="details">Email Address</span><br>
                    <input type="email" placeholder="Enter your email" name="email">
                </div>
            </div>
            
            <div class="card-details">
                <div class="card-box">
                    <span class="details">Date of Birth</span><br>
                    <input type="date" placeholder="Enter date of birth" name="dob">
                </div>
            </div>
            
            <div class="card-details">
                <div class="card-box">
                    <span class="details">Pincode</span><br>
                    <input type="number" placeholder="Enter pincode" name="pincode">
                </div>
            </div>

            <div class="gender-form">
                <span class="gender-title">Gender</span>
                <div class="category">
                    <input type="radio" name="gender" value="Male">Male
                    <input type="radio" name="gender" value="Female" >Female
                    <input type="radio" name="gender" value="Trans">Trans
                </div>
            </div>

            <div class="smoker-form">
                <span class="smoker-title">Do you smoke?</span>
                <div class="category">
                    <input type="radio" name="smoke" value="Yes">Yes
                    <input type="radio" name="smoke" value="No" >No
                </div>
            </div>

            <div class="alcoholic-form">
                <span class="alcoholic-title">Do you consume alcohol?</span>
                <div class="category">
                   <input type="radio" name="alcohol" value="Yes">Yes
                    <input type="radio" name="alcohol" value="No" >No
                </div>
            </div>

            <div class="address-details">
                <div class="address-box">
                    <span class="details">Address</span><br>
                    <textarea name="address" class="address" rows="5" cols="40" placeholder="Enter your address here..."></textarea>
                </div>
            </div>

            <div class="dependents-details">
                <span class="details">Add Dependents</span>
                <div class="dependents-box" style="display: flex;">
                    
                    <button id="icon1"><img src="couple.png" type="submit"></button>
                    
                    <button id="icon2"><img src="mother.png" type="submit"></button>
                    
                    <button id="icon3"><img src="dad.png" type="submit"></button>
                    
                    <button id="icon4"><img src="baby.png" type="submit"></button>
                    
                    <button id="icon5"><img src="dots.png" type="submit"></button>
                </div>
                <div class="titles">
                    <label for="icon1">Spouse</label>
                    <label for="icon2">Mother</label>
                    <label for="icon3">Father</label>
                    <label for="icon4">Child</label>
                    <label for="icon5">Other</label>
                </div>
            </div>

            <div class="form-add-btn">
                <button class="add-btn" type="submit">+ ADD</button>
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
    <div><button class="back-btn" disabled="disabled">Back</button></div>
    <div><button id="personal-nxt" class="next-btn">Next</button></div>
</footer>
</html>