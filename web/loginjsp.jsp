
<%@page import="jspbean.Users"%>
<%@page import="jspdao.UsersDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Login Form</title> 

        <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
        <style>
            @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap');
            *{
                margin: 0;
                padding: 0;
                box-sizing: border-box;
                font-family: 'Poppins',sans-serif;
            }
            body{
                background: #1b203d;
                overflow: hidden;
            }
            ::selection{
                background: rgba(26,188,156,0.3);
            }
            .container{
                max-width: 440px;
                padding: 0 20px;
                margin: 170px auto;
            }
            .wrapper{
                width: 100%;
                background: #fff;
                border-radius: 5px;
                box-shadow: 0px 4px 10px 1px rgba(0,0,0,0.1);
            }
            .wrapper .title{
                height: 90px;
                background: #fff;
                border-radius: 5px 5px 0 0;
                color: black;
                font-size: 30px;
                font-weight: 600;
                display: flex;
                align-items: center;
                justify-content: center;
            }
            .wrapper form{
                padding: 30px 25px 25px 25px;
            }
            .wrapper form .row{
                height: 45px;
                margin-bottom: 15px;
                position: relative;
            }
            .wrapper form .row input{
                height: 100%;
                width: 100%;
                outline: none;
                padding-left: 60px;
                border-radius: 5px;
                border: 1px solid lightgrey;
                font-size: 16px;
                transition: all 0.3s ease;
            }
            form .row input:focus{
                border-color: #16a085;
                box-shadow: inset 0px 0px 2px 2px rgba(26,188,156,0.25);
            }
            form .row input::placeholder{
                color: #999;
            }
            .wrapper form .row i{
                position: absolute;
                width: 47px;
                height: 100%;
                color: #fff;
                font-size: 18px;
                background: #272c4a;
                border: 1px solid #16a085;
                border-radius: 5px 0 0 5px;
                display: flex;
                align-items: center;
                justify-content: center;
            }
            .wrapper form .pass{
                margin: -8px 0 20px 0;
            }
            .wrapper form .pass a{
                color: #FD3F44;
                font-size: 17px;
                text-decoration: none;
            }
            .wrapper form .pass a:hover{
                text-decoration: underline;
            }
            .wrapper form .button input{
                color: #fff;
                font-size: 20px;
                font-weight: 500;
                padding-left: 0px;
                background: #32384F;
                border: 1px solid #16a085;
                cursor: pointer;
            }
            form .button input:hover{
                background: #202742;
            }
            .wrapper form .signup-link{
                text-align: center;
                margin-top: 20px;
                font-size: 17px;
            }
            .wrapper form .signup-link a{
                color: #FD3F44;
                text-decoration: none;
            }
            form .signup-link a:hover{
                text-decoration: underline;
            }
        </style>

    </head>

    <%

        

    %>
    <body>
        <div class="container">
            <div class="wrapper">
                <div class="title"><span>Login</span></div>
                <%
                    String notLogin = (String)session.getAttribute("not-login");
                    if(notLogin!=null){
                    %>
                    <div style="margin-left:90px;"><%= notLogin%></div>
                <%
                    session.removeAttribute("not-login");
                    }
                %>
                <form action="loginprocessjsp.jsp">
                    <div class="row">
                        <i class="fas fa-user"></i>
                        <input type="text" name="email" placeholder="Email or Phone" required>
                    </div>
                    <div class="row">
                        <i class="fas fa-lock"></i>
                        <input type="password" name="password" placeholder="Password" required>
                    </div>
                    <div class="pass"><a href="#">Forgot password?</a></div>
                    <div class="row button">
                        <input type="submit" value="Login">
                    </div>
                    <div class="signup-link">Not a member? <a href="registerjsp.jsp">Register</a></div>
                </form>
            </div>
        </div>


          </body>

</html>