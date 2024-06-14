<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin login</title>
<%@ include file="allproperty.jsp" %>
<style type="text/css">

  h1 {
        margin-top: 50px;
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
<div class="dead">


<h1> <b> ${name} WELCOME TO  LOGIN PAGE!!</b>  </h1>
<div class="my-container">

<img src="/image/log2.png" alt="Image" class="left-image" style="margin-bottom: 50px;">

<div class="form-box"  style="margin-top: 70px;">

<form action="/adfetch" method="get">


<b style="font-size: 20px;">Email:</b><input type="email" name=email>
<br>
<br>
<b style="font-size: 20px;">Password:</b><input type="password" name=password>
<br>
<br>

<button type="submit"  class="submit-button"> Login</button>

</form>

</div>
</div>
</div>

</div>
</body>
</html>