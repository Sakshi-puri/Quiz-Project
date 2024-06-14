<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>signin page </title>
<%@ include file="allproperty.jsp" %>

<style type="text/css">

  h1 {
        margin-top: 20px;
        text-decoration:blink; /* Add underline */
        text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5);
         
      
        
    }
    
</style>
</head>
<body>

<div class="container1">

<%@ include file="navbar.jsp" %>

</div>
<div class="background-image" >

<div class="my-container">

<img src="/image/ch2.png" alt="Image" class="left-image">

<div class="form-box">

<h1> <b> Admin Sign-In </b> </h1>

<form action="/adlog" method="post">  <!-- /qui  mapp -->

<b style="font-size: 20px;">Enter name:</b> <input type="text" id="name" name="name"> <br> <br>
<b style="font-size: 20px;">Enter Password: </b> <input type="password" id="password" name="password"> <br> <br>

<b style="font-size: 20px;">Enter Email: </b><input type="text" id="email" name="email"> <br> <br>




<input  class="submit-button" type="submit" value="signin" >


</form>

<!--  
<form action="/play" method="post">

<input  class="submit-button" type="submit" value="play quize" >

</form>
-->

<div>

<h1> <b> Already Registerd?? </b> </h1>
<form action="/dilog" method="post">
<input  class="submit-button" type="submit" value="Login" >
</form>
</div>
</div>
</div>
</div>
</body>
</html>