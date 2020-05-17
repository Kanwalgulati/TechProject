<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page isErrorPage="true" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Error Occured</title>
        
        
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
        
        <div class="container text-center">
            
            <img src="img/Error.png" height="400px" width="400px" class="img-fluid">
            <h3 class="display-3">Sorry! Something Went Wrong</h3>
            <%=exception %>
            <a href="index.jsp" class="btn primary-background btn-lg text-white mt-3">Home</button>
            
        </div>
        
    </body>
</html>
