<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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

<div class="dead" style="margin-top: 0px;">
<div style="margin-top: 10px;">
<img src="/image/ad.png" alt="Image" style="width: 150px; height: auto; margin-top: 5px;"> 

</div>

<h1><b> your  Question is added!!</b> </h1>




 <div class="button-container" style="margin-top: 150px;" >
 
 <form action="/fetch" method="post">
 <button type="submit" class="submit-button"  style="margin-right: 50px;  background-color:#004d40; color: white;">Show ADDED QUESTIONS</button>
 </form>
  
</div>


</div>
</div>
</body>
</html>