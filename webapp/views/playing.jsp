<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>playing </title>
</head>
<body>

 <h1> play Quiz Questions</h1>
    <c:forEach var="question" items="${questions}">
    <div>
        <h3>${question.questionTitle}</h3>
        <p>${question.option1}</p>
        <p>${question.option2}</p>
        <p>${question.option3}</p>
        <p>${question.option4}</p>
    </div>
</c:forEach>
    


</body>
</html>