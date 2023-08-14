<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<% String activePage = (String) request.getAttribute("activePage"); %>
<%@ page import="com.sumit.playjava.*" %>
<%@ page import="java.util.*" %>

<!DOCTYPE html>
<html>
<head>
    <title>Search By PNR</title>
    
     <link rel="stylesheet" type="text/css" href="/resources/static/css/flightCard.css" />
     <link rel="stylesheet" type="text/css" href="/resources/static/css/glassmorphism.css" />
     <link rel="stylesheet" href="/resources/static/css/style.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/flatpickr/dist/flatpickr.min.css">
    <link rel="icon" href="/resources/static/images/webicon.ico">
    <script src="https://cdn.jsdelivr.net/npm/flatpickr"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery-ui.min.js"></script>
    
    <style>
        .<%= activePage = "reservation"%> {
        background-color: #007bff;
    	}
    </style>
    <style>
    .tempDisplay {
        color: black;
    }
    </style>
</head>
<body>
      <header>
        <nav>
            <ul>
                <li><a href="http://localhost:8082">Reservation</a></li>
                <li><a href="http://localhost:8086">PNR Search</a></li>
            </ul>

            <a href="#">
                <img class="logo" src="/resources/static/images/craneonly.png" alt="Logo">
            </a>

            <ul>
                <li><a href="http://localhost:8088">User Management</a></li>
                <li><a href="http://localhost:8087">Profile</a></li>
            </ul>
        </nav>
    </header>
    

 <div class="passenger-info-container">
 <h2 class="passInf">Search Reservation</h2>
<div class="passenger-info" >


        <div class="reservation-details">
            <label for="pnr">PNR: </label>
            <input type="text" id="pnr" name="pnr" required>
        </div>

    <div class="search">
        <button type="button" onclick="processPayment()" >Search</button>
    </div>

    <script>
        function processPayment() {
            var pnr = document.getElementById("pnr").value; 
            
            if (pnr.trim() === '') {
                alert("Please enter a valid PNR.");
                return;
            }

            var url = "http://localhost:8085/?pnr=" + encodeURIComponent(pnr);
            window.location.href = url;
        }
    </script>
</div>
</div>

</body>
</html>
