<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Start Quize</title>
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
    top: 15%; /* Position it 50% from the top of the container */
    left: 50%; /* Position it 50% from the left of the container */
    transform: translate(-50%);
    text-transform: uppercase;   
    }
    h2{
    
    text-overflow:ellipsis;
  text-decoration:overline;
  font-family:cursive;
  font-size:20px;
  text-transform: uppercase;
  text-decoration:blink; /* Add underline */
        text-shadow: 4px 8px 8px rgba(0, 0, 0, 0.9);
         
    
    }
    </style>


</head>
<body>
<div class="container1">

<%@ include file="navbar.jsp" %>

</div>
<div class="background-image" >

<div>
 <h1>Quiz Questions</h1>
</div>
    <c:if test="${not empty errorMessage}">
        <p>${errorMessage}</p>
    </c:if>

<div class="hed">

    <c:if test="${not empty questions}">
    <img src="/image/quiz.png" alt="Quiz Image" style="width: 200px; height: auto;">
        
    
        <form action="/submit/${id}" method="post">
      <!--   <p >User ID: ${id}</p>--> 
    <c:forEach var="question" items="${questions}" varStatus="status">
        <div class="question" id="question_${status.index}" style="display: none;">
            <h2>Question No: ${question.id}</h2>
           <p><span style="color: #1a237e; font-size: 50px;"><b>${question.questionTitle}</b></span></p>
           
            <ul class="styled-list">
                <li>${question.option1}</li>
                <li>${question.option2}</li>
                <li>${question.option3}</li>
                <li>${question.option4}</li>
            </ul>
         <b style="font-size: 20px;"> Your Answer: </b><input type="text" name="ans_${question.id}"  placeholder="type your answer" >
            <br>
            <br>
        </div>
    </c:forEach>
    <button type="button"    id="prevBtn" onclick="showPrevQuestion()" style="display: none;" class="submit-button">Previous</button>
    <button type="button"  id="nextBtn" onclick="showNextQuestion()" class="submit-button">Next</button>
    <input type="submit" value="Submit" style="display: none;" id="submitBtn" class="submit-button">
</form>
    </c:if>





</div>
</div> <!--  img div-->





<script>
    let currentQuestion = 0;
    const questions = document.getElementsByClassName('question');
    const prevBtn = document.getElementById('prevBtn');
    const nextBtn = document.getElementById('nextBtn');
    const submitBtn = document.getElementById('submitBtn');

    function showQuestion(index) {
        for (let i = 0; i < questions.length; i++) {
            questions[i].style.display = 'none';
        }
        questions[index].style.display = 'block';

        // Show or hide navigation buttons
        prevBtn.style.display = index > 0 ? 'inline-block' : 'none';
        nextBtn.style.display = index < questions.length - 1 ? 'inline-block' : 'none';
        submitBtn.style.display = index === questions.length - 1 ? 'inline-block' : 'none';
    }

    function showNextQuestion() {
        if (currentQuestion < questions.length - 1) {
            currentQuestion++;
            showQuestion(currentQuestion);
        }
    }

    function showPrevQuestion() {
        if (currentQuestion > 0) {
            currentQuestion--;
            showQuestion(currentQuestion);
        }
    }

    // Show the first question first
    showQuestion(currentQuestion);
</script>

</body>
</html>