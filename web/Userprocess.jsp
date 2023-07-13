<%-- 
    Document   : Userprocess
    Created on : 11-Jul-2023, 11:02:47 am
    Author     : Lenovo
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
            String pass = request.getParameter("password").trim();
            String cpass = request.getParameter("cfpassword").trim();
    
//    System.out.println(UsersDao.getConnection());
   if(pass.equals(cpass)){
        Users ur=new Users();
         ur.setName(request.getParameter("name").trim());
         ur.setEmail(request.getParameter("email").trim());
         ur.setPassword(pass);
         ur.setCfpassword(cpass);
        int status=UsersDao.insertUser(ur);
        if(status>0)
        {
           response.sendRedirect("loginjsp.jsp");
        }
            else
             out.print("insert failed");
    }else{
        session.setAttribute("not-same", "Please enter same password");
        response.sendRedirect("registerjsp.jsp");
     }

%>
    </body>
</html>
