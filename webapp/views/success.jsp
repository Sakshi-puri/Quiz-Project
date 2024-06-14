<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>show quize play</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
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
<img src="/image/loged1.png" alt="Image" style="width: 150px; height: auto; margin-top: 90px;"> 

</div>

<h1><b>YOU LOGGED SUCCESSFULLY!!</b> </h1>


<div>
<form action="fetch" method="get">

<button type="submit" class="button" >Show All Questions</button>

</form>




</div> 

<div style="margin-left: 1px;">
<form action="/qui" method="post">

<input  class="button" type="submit" value="Add Quize"  style="text-transform: uppercase;">


</form>
</div>


<!--  
<div>
<form action="category" method="get">
<button type="submit"  class="button">Category Filter</button>
</form>
</div>
-->
</div>
</div>
</body>
</html>