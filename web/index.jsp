<%-- 
    Document   : index
    Created on : May 14, 2020, 3:36:26 PM
    Author     : kawal
--%>

<%@page import="com.tech.blog.dao.ConnectionProvider"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page  import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>            
               
        <style>
            .banner-background
            {
                clip-path: polygon(30% 0%, 70% 0%, 100% 0, 100% 85%, 74% 95%, 35% 91%, 0 94%, 0 0);
            }
        </style>
                <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
               <script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
               <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
               <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
               <link href="css/mycss.css" rel="stylesheet" type="text/css"/>
               <script src="js/myjs.js" type="text/javascript"></script>
               <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
                   
    </head>
    <body>
        <%@include file="NavBar.jsp" %>    
        
        <div class="container-fluid p-0 m-0">
            
            <div class="jumbotron primary-background text-white banner-background">
                <div class="container">
                    <h3 class="display-3">Welcome to TechBlog</h3>
                    <p>
                        Welcome to Technical Blog , World of Technology. A programming language is a formal language, which comprises a set of instructions that produce various kinds of output.
                        Programming languages are used in computer programming to implement algorithms.
                    </p>
                    <p>
                        Most programming languages consist of instructions for computers.
                        There are programmable machines that use a set of specific instructions, rather than general programming languages
                    </p>
                    <a href="Register_Page.jsp" class="btn btn-outline-light btn-lg"><span class="fa fa-handshake-o " ></span>   Start! Its Free</a>
                    <a href="Login.jsp" class="btn btn-outline-light btn-lg"><span class=" fa fa-user fa-spin " ></span>   Login</a>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row mb-2">
                <div class="col-md-4">                    
                   <div class="card" style="width: 18rem; ">
                      <div class="card-body">
                        <h5 class="card-title">Java Programming</h5>
                        <p class="card-text">Java is a high-level programming language originally developed by Sun Microsystems and released in 1995.</p>
                        <a href="#" class="btn primary-background text-white">Read More</a>
                      </div>
                    </div>  
                </div>
                
                <div class="col-md-4">                    
                   <div class="card" style="width: 18rem;">
                      <div class="card-body">
                        <h5 class="card-title">Data Structure</h5>
                        <p class="card-text">A data structure is a particular way of organizing data in a computer so that it can be used effectively &  efficiently</p>
                        <a href="#" class="btn primary-background text-white">Read More</a>
                      </div>
                    </div>  
                </div>
                
                <div class="col-md-4">                    
                   <div class="card" style="width: 18rem;">
                      <div class="card-body">
                        <h5 class="card-title">Spring Boot</h5>
                        <p class="card-text">open source Java-based framework used to create a micro Service.It is used to build stand-alone spring applications</p>
                        <a href="#" class="btn primary-background text-white">Read More</a>
                      </div>
                    </div>  
                </div>
            </div>
            
                <div class="row">
                <div class="col-md-4">                    
                   <div class="card" style="width: 18rem;">
                      <div class="card-body">
                        <h5 class="card-title">JDBC</h5>
                        <p class="card-text">Java Database Connectivity is an application programming interfacewhich defines how a client may access a database.</p>
                        <a href="#" class="btn primary-background text-white">Read More</a>
                      </div>
                    </div>  
                </div>
                
                <div class="col-md-4">                    
                   <div class="card" style="width: 18rem;">
                      <div class="card-body">
                        <h5 class="card-title">C Programming</h5>
                        <p class="card-text"> C programming is a general-purpose, procedural, imperative computer programming language developed in 1972</p>
                        <a href="#" class="btn primary-background text-white">Read More</a>
                      </div>
                    </div>  
                </div>
                
                <div class="col-md-4">                    
                   <div class="card" style="width: 18rem;">
                      <div class="card-body">
                        <h5 class="card-title"> SQL</h5>
                        <p class="card-text">SQL is used to communicate with a database.It is the standard language for relational database management systems</p>
                        <a href="#" class="btn primary-background text-white">Read More</a>
                      </div>
                    </div>  
                </div>
            </div>
        </div>
    </body>
</html>
