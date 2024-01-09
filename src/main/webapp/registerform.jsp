<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Source Code Of Login & Registration Form</title>
    <link rel="stylesheet" href="style.css">
    <script src="https://unpkg.com/ionicons@4.5.10-0/dist/ionicons.js"></script>
    <style >
    @charset "UTF-8";
@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;500&display=swap');

*{
    padding: 0;
    margin: 0;
    box-sizing: border-box;
    font-family:'Times New Roman', Times, serif;
    font-size: 14px;
}
.container{
    display: flex;
    justify-content: center;
    align-items: center;
    min-height: 100vh;
    width: 100%;
    background-image:linear-gradient(rgb(255, 255, 255),rgb(196, 224, 255)),url(find.jpg);
    background-position: center;
    background-size: cover;
    transition: 0.5s ease;
    transform-style: preserve-3d;
    perspective: 1000px;
}
.form_box{
    width: 380px;
    height: 550px;
    margin: 6% auto;
    padding: 5px;
    color: #fff;
    border: 1px solid rgba(255, 255, 255, 0.3);
    background:rgba(255, 255, 255, 0.2);
    border-radius: 16px;
    box-shadow: 0 4px 30px rgba(0, 0, 0, 0.1);
    backdrop-filter: blur(5px);
    overflow: hidden;
}
.btn_box{
    width: 220px;
    margin: 35px auto;
    position: relative;
    box-shadow: 0 0 20px 9px #1b1f2955;
    border-radius: 30px;
}
.toggle_btn{
    padding: 10px 30px;
    cursor: pointer;
    background: transparent;
    border: 0;
    outline: none;
    position: relative;
    transition: 2s;
    font-weight: 600;
}
.toggle_btn:hover{
    color: rgb(255, 255, 128);
}
#btn{
    top: 0;
    left: 0;
    position: absolute;
    width: 110px;
    height: 100%;
    border-radius: 30px;
    background: rgb(128, 128, 255);
    transition: 0.5s;
    font-weight: 600;
}
.social_icons{
    text-align: center;
}
.social_icons .icon{
    width: 20px;
    height: 20px;
    margin: 0 12px;
    box-shadow: 0 0 20px 9px #1b1f2955;
    cursor: pointer;
    border-radius: 50%;
    color: #000;
    padding: 5px;
    background: transparent;
    transition: 0.2s;
}
.social_icons .icon:hover{
    background: rgb(255, 0, 128);
    color: #fff;
}
.form_div{
    width: 100%;
    margin-top: 10px;
    position: relative;
    height: 48px;
    margin-bottom: 1.5rem;
}
.input_group{
    top: 180px;
    position: absolute;
    width: 280px;
    transition: 0.5s;
}
.form_input{
    font-size: 1rem;
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    border: none;
    box-shadow: 0 0 20px 9px #1b1f2955;
    border-radius: .5rem;
    outline: none;
    padding: 1rem;
    background: transparent;
    z-index: 1;
    transition: 0.3s;
}
.form_label{
    position: absolute;
    left: 1rem;
    top: 1rem;
    padding: 0 0.25rem;
    background-color: transparent;
    color: #000;
    font-size: 1rem;
    transition: 0.3s;
}
.form_input:focus + .form_label{
    top: -0.5rem;
    left: 0.8rem;
    color: #fff;
    font-size: 0.75rem;
    font-weight: 500;
    z-index: 10;
    background-color: #f66335;
    border-radius: 10px;
    padding: 0 5px;
}
.form_input:not(:placeholder-shown).form_input:not(:focus)+ .form_label{
    top: -0.5rem;
    left: 0.8rem;
    font-size: 0.75rem;
    font-weight: 500;
    background-color: #f66335;
    border-radius: 10px;
    color: #fff;
    z-index: 10;
}
.form_input:focus{
    border: 1.5px solid #f66335;
}
.submit_btn{
    width: 85%;
    padding: 10px 30px;
    cursor: pointer;
    display: block;
    margin: auto;
    background-color: transparent;
    box-shadow: 0 0 20px 9px #1b1f2955;
    border: 0;
    outline: none;
    font-weight: 600;
    border-radius: 30px;
    transition: 0.5s;
}
.submit_btn:hover{
    color: #fff;
    background-color: #f66335;
}
span{
    color: #000;
    font-size: 12px;
    bottom: 68px;
    position: absolute;
}
#login{
    left: 50px;
}
#register{
    left: 450px;
}

    
    </style>
</head>
<body>

<%
    // Retrieve the error parameter from the request
    String error = request.getParameter("error");
    if (error != null && error.equals("InvalidCredentials")) {
%>
    <div style="color: red; font-size: 40px; justify-content: center; align-items: center;">Invalid credentials. Please try again.</div>
<%
    }
%>

    <div class="container">
        <div class="form_box">
            <div class="btn_box">
                <div id="btn"></div>
                <button type="button" class="toggle_btn" onclick="login()">Log in</button>
                <button type="button" class="toggle_btn" onclick="register()">Register</button>
            </div>
            <div class="social_icons">
                <a href=""><ion-icon class="icon" name="logo-google"></ion-icon></a>
                <a href=""><ion-icon class="icon" name="logo-facebook"></ion-icon></a>
                <a href=""><ion-icon class="icon" name="logo-twitter"></ion-icon></a>
            </div>
            <form id="login" class="input_group" action="login" method="post" onsubmit="return validateLoginForm()">
                <div class="form_div">
                    <input type="text" id="loginUsername" class="form_input" placeholder=" " name="loginUsername">
                    <label for="" class="form_label">User Name</label>
                </div>
                <div class="form_div">
                    <input type="password" id="loginPassword" class="form_input" placeholder=" " name="loginPassword">
                    <label for="" class="form_label">Password</label>
                </div>
                
                <button type="submit" class="submit_btn">Log in</button>
            </form>
            <form id="register" class="input_group" action="register" method="post" onsubmit="return validateRegisterForm()">
                <div class="form_div">
                    <input type="text" id="registerUsername" class="form_input" placeholder=" " name="registerUsername">
                    <label for="" class="form_label">User Name</label>
                </div>
                <div class="form_div">
                    <input type="password" id="registerPassword" class="form_input" placeholder=" " name="registerPassword">
                    <label for="" class="form_label">Password</label>
                </div>
                <div class="form_div">
                    <input type="email" id="registerEmail" class="form_input" placeholder=" " name="registerEmail">
                    <label for="" class="form_label">Email</label>
                </div>

              
                <button type="submit" class="submit_btn">Register</button>
            </form>
        </div>
    </div>
    <script>
    var log = document.getElementById("login");
    var reg = document.getElementById("register");
    var btn = document.getElementById("btn");

    function register(){
        log.style.left = "-400px";
        reg.style.left = "50px";
        btn.style.left = "110px";
        
    }

    function login(){
        log.style.left = "50px";
        reg.style.left = "450px";
        btn.style.left = "0";
        
    }

    function validateLoginForm() {
        const loginUsername = document.getElementById('loginUsername').value;
        const loginPassword = document.getElementById('loginPassword').value;

        const usernameRegex = /^[a-zA-Z0-9]+$/;
        const passwordRegex = /^[a-zA-Z0-9]+$/;

        if (!usernameRegex.test(loginUsername) || !passwordRegex.test(loginPassword)) {
            alert('Username and Password cannot contain any specail symbol');
            return false;
        }
        return true;
    }
    function validateRegisterForm() {
        const registerUsername = document.getElementById('registerUsername').value;
        const registerEmail = document.getElementById('registerEmail').value;
        const registerPassword = document.getElementById('registerPassword').value;

        const usernameRegex = /^[a-zA-Z0-9]+$/;
        const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
        const passwordRegex = /^[a-zA-Z0-9]+$/;
        if( registerPassword.length < 6){
            alert( "Password should be at least 6 characters long");
            return false;

        }

        if (!usernameRegex.test(registerUsername) || !emailRegex.test(registerEmail) || !passwordRegex.test(registerPassword)) {
            alert('Please enter valid details for registration.');
            return false;
        }
        return true;
    }
    </script>
</body>
</html>
