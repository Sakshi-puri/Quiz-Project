<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title> edit questions  </title>
<%@ include file="allproperty.jsp" %>
   
        <style>
        .form-container {
            width: 400px; /* Adjust the width as needed */
            margin: 50px auto; /* Center the form horizontally */
            padding: 20px;
            border: 1px solid #ccc;
            background-color: #f9f9f9;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }
        .form-container p {
            font-size: 18px;
            font-weight: bold;
            margin-bottom: 20px;
        }
        .form-container label {
            display: inline-block;
            width: 150px;
            text-align: right;
            margin-right: 20px;
        }
        .form-container input[type="text"],
        .form-container textarea {
            width: calc(50% - 180px); /* Full width with some padding inside */
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 16px;
        }
        .form-container .submit-button {
        width: 20%;
        margin: 20px auto; /* Center the button horizontally */
        padding: 10px;
        background-color: #4CAF50;
        color: white;
        border: none;
        border-radius: 4px;
        cursor: pointer;
        font-size: 18px;
        display: block; 
        }
        .form-container .submit-button:hover {
            background-color: #45a049;
        }
    </style>
       
</head>
<body>
<div class="container1">

<%@ include file="navbar.jsp" %>

</div>

<div class="background-image" >

 <div class="form-container">
    <form action="edit/${data.id}" method="post">
        <p>${data.id}</p>

        <label for="questionTitle" ></label>
        <textarea id="questionTitle" name="questionTitle" rows="4" cols="50">${data.questionTitle}</textarea><br><br>

        <label for="option1" >Option 1:</label>
        <input id="option1" type="text" name="option1" value="${data.option1}">
        
        <label for="option2">Option 2:</label>
        <input id="option2" type="text" name="option2" value="${data.option2}">
        
        <label for="option3">Option 3:</label>
        <input id="option3" type="text" name="option3" value="${data.option3}">
        
        <label for="option4">Option 4:</label>
        <input id="option4" type="text" name="option4" value="${data.option4}">
        
        <label for="rightAnswer">Right Answer:</label>
        <input id="rightAnswer" type="text" name="rightAnswer" value="${data.rightAnswer}">
        
        <label for="category">Category:</label>
        <input id="category" type="text" name="category" value="${data.category}"><br>

        <input class="submit-button" type="submit" value="Edit">
    </form>
</div>
</div>

</body>
</html>
     