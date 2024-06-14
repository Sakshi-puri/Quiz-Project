<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Questions</title>
<%@ include file="allproperty.jsp" %>
<style>
    .center-table {
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh; /* This makes the div take the full height of the viewport */
    }
    table {
        border-collapse: collapse;
        width: 60%; 
       margin-right: 70px; /* This won't work as expected since margin doesn't apply to table cells */
        padding-right: 50px;
        border: 5px solid #fbe9e7; 
         border-radius: 20px; /* Add rounded corners to the table */
        overflow: hidden;
          box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /*8765 */
    }
    th, td {
     border: 2px solid #fbe9e7;
        padding: 8px 12px;
        text-align: left;
       /* border: 1px solid #ddd;*/
        font-weight: bold; /* Make the text bold */
        font-family: Arial, sans-serif; /* Add text styling */
        font-size: 14px; /* Adjust font size */
        background-color: #00bfa5;
         position: relative; /*8765 */
    }
     th {
        background-color: #00bfa5;
        color: #ad1457;
    }
    
    /*8765 */
     th::before, td::before {
        content: "";
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        box-shadow: inset 0 4px 8px rgba(0, 0, 0, 0.1); /* Add shadow to columns and rows */
        pointer-events: none; /* Prevent interference with cell content */
    }
    
    .pink-link {
        color: #33691e;
    }
    
    .pink-link:hover {
        text-decoration:blink; /* Add underline on hover for better UX */
    }
    .red-link {
        color: #b71c1c;
    }
    
     .red-link:hover {
        text-decoration:blink; /* Add underline on hover for better UX */
    }
   
     .filter-form {
        position:absolute; /* Position the form absolutely */
        top: 90px; /* Adjust the top position as needed */
        left:30px; /* Adjust the left position as needed */
        z-index: 10;
        margin-left: 0px;
    }
    .filter-form button {
        background-color: #ffc107; 
        color: black; /*  text */
        border: none; /* Remove border */
        padding: 10px 20px; /* Add padding */
        border-radius: 100px; /* Rounded corners */
        cursor: pointer; /* Pointer cursor on hover */
        font-size: 20px; /* Increase font size */
        font-family: Arial, sans-serif; /* Font styling */
        transition: background-color 0.3s, transform 0.3s; /* Smooth transitions */
    }
    .filter-form button:hover {
        background-color: #0056b3; /* Darker blue on hover */
        transform: scale(1.05); /* Slightly enlarge on hover */
    }
    
</style>

</head>
<body>
<div class="container1">

<%@ include file="navbar.jsp" %>

</div>
<div class="background-image "  >  


<div class="filter-form">
<form action="category" method="get">
<button type="submit"   > Filter Categories</button>
</form>
</div>



<div class="center-table">

<table border="1" style="border-collapse: collapse;  ">
 <colgroup>
            <col style="width: 5%;">
            <col style="width: 90%;">
            <col style="width: 10%;">
            <col style="width: 10%;">
            <col style="width: 10%;">
            <col style="width: 10%;">
            <col style="width: 10%;">
            <col style="width: 10%;">
            <col style="width: 5%;">
            <col style="width: 10%;">
        </colgroup>


<tr> 
<th>ID</th>
	<th>Question Title</th>
	<th>option1</th>
	<th>option2</th>
	<th>option3</th>
	<th>option4</th>
	<th>Right Answer</th>
	<th>Category</th>
		<!--  <th>Delete</th>-->
		<th>Update</th>

</tr>

<c:forEach var="emp" items="${e_data}" >
	
	<tr>
	<td>${emp.id}</td>
	<td>${emp.questionTitle}</td>
	<td>${emp.option1}</td>
	<td>${emp.option2}</td>
	<td>${emp.option3}</td>
	<td>${emp.option4}</td>
	<td>${emp.rightAnswer}</td>
	<td>${emp.category}</td>
	<!--  
	<td> <a href=" <c:url value='/Delete/${emp.id}'/>" class="red-link"> Delete </a>    </td> -->
	<td> <a href=" <c:url value='/${emp.id}'/>" class="pink-link"> Update </a> </td> 
	
	</tr>
	
	
	</c:forEach>


</table>


</div>
</div>
</body>
</html>