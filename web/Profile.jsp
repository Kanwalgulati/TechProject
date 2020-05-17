<%-- 
    Document   : Profile.jsp
    Created on : May 17, 2020, 1:09:44 PM
    Author     : kawal
--%>
<%@page import="com.tech.blog.entities.User"%>
<%@page errorPage="Error_Page.jsp"%>
<%
    User user=(User)session.getAttribute("currentUser");
    if(user==null)
    {
        response.sendRedirect("Login.jsp");
    }   
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
            <%= user.getName()%>
            <br>
            
            <%= user.getEmail()%>
            <br>
            <%= user.getAbout()%>
    </body>
</html>
