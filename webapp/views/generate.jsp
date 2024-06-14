<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Quize Generate Page</title>
<%@ include file="allproperty.jsp" %>
<style type="text/css">

  h1 {
        margin-top: 50px;
        text-decoration:blink; /* Add underline */
        text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5);
         text-transform: uppercase;
      
        
    }
    
</style>

</head>
<body>

<div class="container1">

<%@ include file="navbar.jsp" %>

</div>
<div class="background-image" >
<div class="dead">

<h1> <b> you can generate your  quize here </b> </h1>

<div class="my-container">
<img src="/image/gen.png" alt="Image" class="left-image" style="margin-bottom: 50px;">

<div class="form-box"  style="margin-top: 70px;">

<form action="/gen" method="post">
<b style="font-size: 20px;">Question Category:</b> <input type="text" id="category" name="category" required><br> <br>
<b style="font-size: 20px;">Question Number:</b><input type="number" id="number" name="number" required><br> <br>

<button  type="submit" class="submit-button" >Generate</button>


</form>
</div>
</div>
</div>
</div>
</body>
</html>