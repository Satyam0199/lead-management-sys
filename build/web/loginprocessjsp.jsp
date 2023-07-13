<%-- 
    Document   : loginprocessjsp
    Created on : 12-Jul-2023, 12:38:25 pm
    Author     : Satyam Raikwar
--%>

<%@page import="jspdao.UsersDao"%>
<%@page import="jspbean.Users"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%

    String email=(request.getParameter("email").trim());
    String password=(request.getParameter("password").trim());
    
    Users ur = new Users();
    ur.setEmail(email);
    ur.setPassword(password);
    boolean isValid = UsersDao.validate(ur);
    if(isValid){
        response.sendRedirect("homejsp.jsp");
           }else{
           session.setAttribute("not-login","Invalid Email And Password");
           response.sendRedirect("loginjsp.jsp");
           }
//request.setAttribute("list",list);
%>
  
/
  



    </body>
</html>
