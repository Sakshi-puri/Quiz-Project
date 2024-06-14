<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Quiz Page</title>
<%@ include file="allproperty.jsp" %>
<style>
  
    body {
    
     background-image: url('/image/stu7.avif');
     background-size: cover; /* Cover the entire container    stu7.avif */
    background-position: center; /* Center the background image */
    height: 100vh; /* Set the height of the container to be the height of the viewport */
    /*display: flex; /* Use flexbox to center content vertically */
    justify-content: center; /* Center content horizontally */
    align-items: center;
   /* Stretch image to cover the entire page */
    
  }
    
  

  .container {
    margin-top: 20px;
    width: 60%; /* Reduced width for smaller form */
    background:#e57373;
    padding: 10px;
    box-shadow: 8px 8px 10px rgba(8, 8, 8, 0.9);
    border-radius: 45px;
    margin-right: 350px;
    border: 3px solid #004d40;
    height: 85vh;
  }

  h1 {
    text-align: center;
    color:#4e342e;
    font-style: italic; 
    text-decoration:blink;
    text-shadow:olive;
   font-family:cursive;
   font-weight:bold;
    text-shadow: 8px 9px 8px rgba(0, 0, 6, 0.9);
  }

  .form-group {
    display: flex;
    align-items: center;
    margin-bottom: 10px;
  }

  .form-group label {
    width: 10%; 
    font-size: 20px;
    text-align: right;
    margin-right: 20px;
    font-weight: bold;
  }

  .form-group input,
  .form-group textarea {
    width: 70%; /* Adjusted input width for smaller form */
    padding: 10px;
    border: 1px solid black;
    border-radius: 15px;
    font-size: 18px;
    box-sizing: border-box;
     background-color:#cfd8dc;
     border: 3px solid #888;
  }
  .form-group input::placeholder, .form-group textarea::placeholder {
        color:black; /* Change this to your desired color */
       
        font-style: italic;
       
         text-decoration:blink;
          
    text-shadow:olive;
    }

  .form-group textarea {
    resize: vertical;
    width: 85%;
  }

  .options-group {
    display: flex;
    flex-wrap: wrap;
    justify-content: space-between;
  }

  .options-group input {
    width: 48%;
    margin-bottom: 15px;
  }

  button {
    padding: 10px;
    background-color: #006064;
    color: white;
    border: none;
   font-weight:bold;
    margin-left: 300px; /* Adjust as needed */
    border-radius: 10px;
    cursor: pointer;
    font-size: 18px;
    width: 30%;
  }

  button:hover {
    background-color: #009688;
  }
  .form-group input[id="rightAnswer"] {
    margin-bottom: 15px; 
}
.form-group input[id="category"] {
    margin-bottom: 15px; 
}
</style>
</head>
<body>
<div class="container1">
  <%@ include file="navbar.jsp" %>
</div>

<div class="container">
  <h1>Add Your Quiz</h1>
  <form action="/submitForm1" method="post">
    <div class="form-group">
      <label for="questionTitle">Question:</label>
      <textarea id="questionTitle" name="questionTitle" rows="4" placeholder="Write your question here" required></textarea>
    </div>

    <div class="form-group">
      <label>Options:</label>
      <div class="options-group">
        <input type="text" id="option1" name="option1" placeholder="Option 1" required>
        <input type="text" id="option2" name="option2" placeholder="Option 2" required>
        <input type="text" id="option3" name="option3" placeholder="Option 3" required>
        <input type="text" id="option4" name="option4" placeholder="Option 4" required>
      </div>
    </div>

    <div class="form-group">
      <label for="rightAnswer">Right Answer:</label>
      <input type="text" id="rightAnswer" name="rightAnswer" placeholder="Enter the correct option" required>
      <label for="category"  style="margin-right: 10px;">  Category</label>
      
      <input type="text" id="category" name="category" placeholder="Quiz Category" required>
    </div>

    <div class="form-group">
      
      <button type="submit">Submit</button>
    </div>
    </form>
    </div>
</body>