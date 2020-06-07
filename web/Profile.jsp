<%-- 
    Document   : Profile.jsp
    Created on : May 17, 2020, 1:09:44 PM
    Author     : kawal
--%>
<%@page import="com.tech.blog.entities.Catrgory"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.tech.blog.dao.ConnectionProvider"%>
<%@page import="com.tech.blog.dao.PostDao"%>
<%@page import="com.tech.blog.entities.Message"%>
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
                        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
               <script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
               <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
               <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
               <link href="css/mycss.css" rel="stylesheet" type="text/css"/>
               <script src="js/myjs.js" type="text/javascript"></script>
               <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

               
               
               <script>
                   $(document).ready(function ()
                   {
                       let editStatus=false;
                       $('#edit-profile-button').click(function(){

                            if(editStatus==false)
                            {
                                $("#profile-details").hide()
                                $("#profile-edit").show();
                                editStatus=true;
                                $(this).text("Back")
                            }
                            else
                            {
                                $("#profile-details").show()
                                $("#profile-edit").hide();
                                editStatus=false;
                                $(this).text("Edit")
                            }

////                          alert("button clicked")
//                            $("#profile-details").hide()
//                            $("#profile-edit").show();
                       });
                   });
                   
//                   Add Post Js

                    $(document).ready(function (e)
                    {
                        $("#add-post-form").on("submit",function (event) {
//                            This code gets called when code is submitted
                            event.preventDefault();
                            let form=new FormData(this);
                            //Now requesting to server
                            $.ajax({
                                url:"AddPostServlet",
                                type:'POST',
                                data:form,
                                success: function (data, textStatus, jqXHR) {
                                    console.log(data);
                        
                    },
                    error: function (jqXHR, textStatus, errorThrown) {
                        
                    },
                    processData: false,
                    contentType: false
                            })
                        })
                    })
               </script>


    </head>
    <body>
<!--        Navbar Start-->
        
            
          <nav class="navbar navbar-expand-lg navbar-dark primary-background">
      <a class="navbar-brand" href="index.jsp"><span class="fa fa-asterisk"></span>Tech Blog</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
               <li class="nav-item active">
                   <a class="nav-link" href="#"><span class="fa fa-bell-o"></span> LearnCode with Kawal <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item dropdown">
                   <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                       <span class="fa fa-check-square-o"></span>Categories
                   </a>
                   <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                       <a class="dropdown-item" href="#">Programming Language</a>
                       <a class="dropdown-item" href="#">Project Implementation</a>
                       <div class="dropdown-divider"></div>
                       <a class="dropdown-item" href="#">Data Structure</a>
                   </div>
                </li>
                
                <li class="nav-item">
                    <a class="nav-link" href="#"><span class="fa fa-address-book-o"></span>Contact</a>
                </li>
                
                <li class="nav-item">
                    <a class="nav-link" href="#" data-toggle="modal" data-target="#add-Post-Model"><span class="fa fa-asterisk"></span>Do Post</a>
                </li>
                
            </ul>
            <ul class="navbar-nav mr-right">
                
                <li class="nav-item">
                    <a class="nav-link" href="#!" data-toggle="modal" data-target="#profile_model"><span class=" fa fa-user-circle"></span><%= user.getName() %></a>
                </li>
                
                
                
                <li class="nav-item">
                    <a class="nav-link" href="LogoutServlet"><span class=" fa fa-user-plus"></span>logout</a>
                </li>
                
            </ul>
            
            
        </div>
    </nav>

<!--    Navbar End-->
<!--Start of Profile Model-->

<!-- Button trigger modal -->


<!-- Modal -->
  <%
                                
                                Message m=(Message) session.getAttribute("msg");
                                if(m!=null)
                                {
                            %>
                            <center>
                                <div class="alert <%=m.getCssClass() %>" role="alert">
                                <%= m.getContent() %>
                            </div>
                            </center>
                            <%
                                }
                                session.removeAttribute("msg");
                                    
                             %>


<div class="modal fade" id="profile_model" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header primary-background text-white text-center">
        <h5 class="modal-title" id="exampleModalLabel">TechBlog</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
          <div class="container text-center">
              <img src="pics/<%= user.getProfile()%>" class="img-fluid" style="border-radius: 50%;max-width: 150px">
              <br>
            <h5 class="modal-title mt-3" id="exampleModalLabel"><%=user.getName() %></h5>
            <!--Details-->
            
            <div id="profile-details">
            <table class="table">
               <tbody>
                   <tr>
                       <th scope="row">ID : </th>
                       <td><%= user.getId()%></td>
                   </tr>
                   <tr>
                       <th scope="row">Email : </th>
                       <td><%= user.getEmail() %></td>
                   </tr>
                   <tr>
                      <th scope="row">Gender : </th>
                      <td><%= user.getGender() %></td>
                   </tr>
                   <tr>
                      <th scope="row">Status : </th>
                      <td><%= user.getAbout() %></td>
                   </tr> 
                   
                   <tr>
                      <th scope="row">Registered Date : </th>
                      <td><%= user.getDatetime() %></td>
                   </tr> 
               </tbody>
            </table>
            </div>
            <!--Profile Edit-->
            <div id="profile-edit" style="display: none">
                
                <h3 class="mt-2">Please Edit Carefully</h3>
                <form action="EditServlet" method="post" enctype="multipart/form-data">
                    <table class="table">
                        <tr>
                            <td>ID : </td>
                            <td> <%=user.getId() %></td>
                        </tr>
                        <tr>
                            <td>Email : </td>
                            <td> <input type="email" name="user_email" value="<%=user.getEmail() %>"></td>
                        </tr>
                        <tr>
                            <td>Name : </td>
                            <td> <input type="text" name="user_name" value="<%=user.getName() %>"></td>
                        </tr>
                        <tr>
                            <td>Password : </td>
                            <td> <input type="password" name="user_password" value="<%=user.getPassword() %>"></td>
                        </tr>
                        <tr>
                            <td>Gender : </td>
                            <td> <%=user.getGender().toUpperCase() %></td>
                        </tr>
                        <tr>
                            <td>About : </td>
                            <td>
                                <textarea rows="5" class="form-control" name="user_about"><%=user.getAbout()%> 
                                </textarea>
                                
                            </td>
                        </tr>
                        <tr>
                            <td>Change Profile</td>
                            <td>
                                <input type="file" name="image" class="form-control">
                            </td>
                        </tr>
                    </table>
                                <div class="container">
                                    <button type="submit" class="btn btn-outline-primary">Save</button>
                                </div>
                                    
                </form>
                
            </div>   
                   
            <!--Details Ended-->
          </div>
      </div>
      <div class="modal-footer">
        <button type="button"  class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" id="edit-profile-button" class="btn btn-primary">Edit</button>
      </div>
    </div>
  </div>
</div>

<!--End Of Profile Model-->


<!-- Do Post modal -->
<!-- Modal -->
<div class="modal fade" id="add-Post-Model" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Provide Post Details</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
          <form id="add-post-form" action="AddPostServlet" method="post">
              <div class="form-group">
                  <select class="form-control" name="cid">
                      <option selected disabled>---Select Category---</option>
                      <%
                        PostDao postdao=new PostDao(ConnectionProvider.getConnection());
                        ArrayList<Catrgory> list = postdao.getAllCategories();
                        for(Catrgory c:list)
                        {
                      
                      %>
                            <option value="<%=c.getCid() %>"><%=c.getName()%></option>
                      <%
                        }
                      %>
                  </select>
              </div>
              
              <div class="form-group">
                  <input name="post_title" type="text" placeholder="Enter Post Title" class="form-control" name="post-name">
              </div>    
              <div class="form-group">
                  <textarea name="post_content" class="form-control" style="height :200px" placeholder="Enter Your Content"></textarea>
              </div>
              
              <div class="form-group">
                  <textarea name="post_code" class="form-control" style="height :200px" placeholder="Enter Your Code(If Any)"></textarea>
              </div>
              <div class="form-group">
                  <label>Select Your Pic</label><br>
                  <input name="post_pic" type="file">
                  
              </div>
                  <div class="container text-center">
                      <button type="submit" class="btn btn-outline-primary">Post</button>
                  </div>
          </form>
      </div>
      
    </div>
  </div>
</div>
<!--End Of Do Post Model-->
    </body>
</html>
