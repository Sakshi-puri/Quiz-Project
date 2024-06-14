<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Categorycal Questions</title>
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
<div class="background-image "  > 

<div>
<!--  
<h1<b>Questions for Category: ${category}<b></h1> -->
<h1><b>Questions based on your entered category</b></h1>

</div>

<div class="center-table">
 

    <c:if test="${empty questionsByCategory}">
        <p>No questions found for this category.</p>
    </c:if>

<c:if test="${not empty questionsByCategory}">
<table border="1" style="border-collapse: collapse;" >
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

<c:forEach var="que" items="${questionsByCategory}" >

<tr>
	<td>${que.id}</td>
	<td>${que.questionTitle}</td>
	<td>${que.option1}</td>
	<td>${que.option2}</td>
	<td>${que.option3}</td>
	<td>${que.option4}</td>
	<td>${que.rightAnswer}</td>
	<td>${que.category}</td>
	<!--  
	<td> <a href=" <c:url value='/Delete/${que.id}'/>" class="red-link"> Delete </a>    </td>-->
	<td> <a href=" <c:url value='/${que.id}'/>" class="pink-link"> Update </a> </td> 
	
	</tr>
	


</c:forEach>

</table>
  </c:if>
   
</div>
</div>
</body>
</html>