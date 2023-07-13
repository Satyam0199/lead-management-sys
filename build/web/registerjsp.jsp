<%-- 
    Document   : registerjsp
    Created on : 11-Jul-2023, 3:34:21 pm
    Author     : Lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Registration or Sign Up form in HTML CSS | CodingLab </title> 
        <style>

            @import url('https://fonts.googleapis.com/css?family=Poppins:400,500,600,700&display=swap');
            *{
                margin: 0;
                padding: 0;
                box-sizing: border-box;
                font-family: 'Poppins', sans-serif;
            }
            body{
                min-height: 100vh;
                display: flex;
                align-items: center;
                justify-content: center;
                background: #1b203d;
            }
            .wrapper{
                position: relative;
                max-width: 430px;
                width: 100%;
                background: #fff;
                padding: 34px;
                border-radius: 6px;
                box-shadow: 0 5px 10px rgba(0,0,0,0.2);
            }
            .wrapper h2{
                position: relative;
                font-size: 22px;
                font-weight: 600;
                color: #333;
            }
            .wrapper h2::before{
                content: '';
                position: absolute;
                left: 0;
                bottom: 0;
                height: 3px;
                width: 28px;
                border-radius: 12px;
                background:#202742;
            }
            .wrapper form{
                margin-top: 30px;
            }
            .wrapper form .input-box{
                height: 52px;
                margin: 18px 0;
            }
            form .input-box input{
                height: 100%;
                width: 100%;
                outline: none;
                padding: 0 15px;
                font-size: 17px;
                font-weight: 400;
                color: #333;
                border: 1.5px solid #C7BEBE;
                border-bottom-width: 2.5px;
                border-radius: 6px;
                transition: all 0.3s ease;
            }
            .input-box input:focus,
            .input-box input:valid{
                border-color: #272c4a;
            }
            form .policy{
                display: flex;
                align-items: center;
            }
            form h3{
                color: #707070;
                font-size: 14px;
                font-weight: 500;
                margin-left: 10px;
            }
            .input-box.button input{
                color: #fff;
                letter-spacing: 1px;
                border: none;
                background: #32384F;
                cursor: pointer;
            }
            .input-box.button input:hover{
                background: #202742;
            }
            form .text h3{
                color: #333;
                width: 100%;
                text-align: center;
            }
            form .text h3 a{
                color: #4070f4;
                text-decoration: none;
            }
            form .text h3 a:hover{
                text-decoration: underline;
            }
        </style>

    </head>

    <body>
        <div class="wrapper">
            <h2>Registration</h2>
            <form action="Userprocess.jsp">
                <%
                    String notSame = (String)session.getAttribute("not-same");
                    if(notSame!=null){
                     %>
                     <div><%= notSame %></div>
                   <% 
                       session.removeAttribute("not-same");
                               }
                %>
                <div class="input-box">
                    <input type="text" placeholder="Enter your name" required name="name">
                </div>
                <div class="input-box">
                    <input type="text" placeholder="Enter your email" required name="email">
                </div>
                <div class="input-box">
                    <input type="password" placeholder="Create password" required name="password">
                </div>
                <div class="input-box">
                    <input type="password" placeholder="Confirm password" required name="cfpassword">
                </div>
                <div class="policy">
                    <input type="checkbox">
                    <h3>I accept all terms & condition</h3>
                </div>
                <div class="input-box button">
                    <input type="Submit" value="Register Now" href='index.html'>
                </div>
            
            </form>
        </div>
    </body>
</html>
