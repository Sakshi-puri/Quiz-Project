<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Feed Page</title>
<%@ include file="allproperty.jsp" %>

<style type="text/css">
    body {
        font-family: Arial, sans-serif;
        background-color: #f0f8ff;
        margin: 0;
        padding: 0;
    }

    .container1 {
        width: 100%;
        background-color:  #607d8b;
        color: #fff;
        padding: 10px 0;
        height: 55px; /* Adjusted height */
        line-height: 10px; 
        text-align: center;
    }

    .background-image {
       background-image: url('/image/stu7.avif');
    background-size: cover; /* Cover the entire container    stu7.avif */
    background-position: center; /* Center the background image */
    height: 100vh; /* Set the height of the container to be the height of the viewport */
    /*display: flex; /* Use flexbox to center content vertically */
    justify-content: center; /* Center content horizontally */
    align-items: center; /* Center content vertically */
    /*color: #ffffff; /* Set te
       
    }
     
       
    
   
    

   
</style>
</head>
<body>
<div class="container1">
    <%@ include file="navbar.jsp" %>
</div>
<div class="background-image">

  
 
      <div style="text-align: center; font-size: 36px; padding: 20px;   text-shadow: 8px 4px 8px rgba(0, 0, 0, 0.9); text-transform: uppercase;">
  <h1 style="margin-top: 30px">Quiz Result</h1>
  <p style="margin-top: 50px">Total questions: ${totalQuestions}</p>
  <p>You answered <b>  ${right} </b> questions correctly.</p>
  <form action="/play">
  <button  style=" padding: 10px 20px;
    font-size: 16px;
    font-weight: bold;
    text-align: center;
    text-decoration: none;
    cursor: pointer;
    border: 2px;
    border-radius: 20px;
    color: white;
    background-color: #0056b3;
    transition: background-color 0.3s, color 0.3s;"  type="submit" > Play Again</button>
  </form>
</div>
    
        
       
    </div>

</body>
</html>
