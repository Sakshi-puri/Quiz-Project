<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Category Filter</title>
<%@ include file="allproperty.jsp" %>

<style type="text/css">

  h1 {
  text-overflow:ellipsis;
  text-decoration:overline;
  font-family:cursive;
  font-size:30px;
  text-transform: uppercase;
        margin-top: 10px;
        text-decoration:blink; /* Add underline */
        text-shadow: 4px 8px 8px rgba(0, 0, 0, 0.9);
         position: absolute; /* Position the h1 absolutely */
    top: 20%; /* Position it 50% from the top of the container */
    left: 50%; /* Position it 50% from the left of the container */
    transform: translate(-50%);
         
      
        
    }
    </style>

</head>
<body>

<div class="container1">

<%@ include file="navbar.jsp" %>

</div>
<div class="background-image" >
<div>
<h1> ENTER CATEGORY <br> TO  SHOW QUESTION BASED ON CATEGORY</h1>
</div>
<div class="hed">

 <div class="button-container">
<form action="/categories" method="get">
   <b style="font-size: 20px;">Enter Question Category: </b><input type="text" name="category" placeholder="Enter category">
    <br>
    <button type="submit"  class="button" style="margin-top: 20px;  background-color: #009688;  color: black;">Show</button>
</form>
</div>
</div>
</div>
</body>
</html>