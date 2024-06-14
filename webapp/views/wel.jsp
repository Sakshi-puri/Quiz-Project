<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>welcome page </title>
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

<div class="dead">
<div>
<img src="/image/log1.png" alt="Image" style="width: 150px; height: auto; margin-top: 90px;"> 

</div>



<h1><b>WELCOME ${name} <br> YOU CAN START NOW!!</b></h1>
<br><br>
<!-- 
<div style="margin-left: 1px;">
<form action="/qui" method="post">

<input  class="submit-button" type="submit" value="Add Quize"  style="text-transform: uppercase;">


</form>
</div>
 -->
<br> <br>
<div>
<form action="/play" method="post">

<input style="margin-left: 60px; margin-bottom: 80px;text-transform: uppercase;" class="submit-button" type="submit" value="play quize"  >

</form>
</div>
</div>
</div>
</body>
</html>