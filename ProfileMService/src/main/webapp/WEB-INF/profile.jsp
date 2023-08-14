<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<% String activePage = (String) request.getAttribute("activePage"); %>
<%@ page import="com.sumit.playjava.*" %>
<%@ page import="com.sumit.playjava.model.*" %>
<%@ page import="java.util.*" %>

<!DOCTYPE html>
<html>
<head>
    <title>Profile</title>
    
     <link rel="stylesheet" type="text/css" href="/resources/static/css/flightCard.css" />
     <link rel="stylesheet" type="text/css" href="/resources/static/css/glassmorphism.css" />
     <link rel="stylesheet" type="text/css" href="/resources/static/css/profile.css" />
     <link rel="stylesheet" href="/resources/static/css/style.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/flatpickr/dist/flatpickr.min.css">
    <link rel="icon" href="/resources/static/images/webicon.ico">
    <script src="https://cdn.jsdelivr.net/npm/flatpickr"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    
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
    
<% UserM user = (UserM) request.getAttribute("user"); %>
    
<div class="wrapper">
         <div class="card front-face">
            <img src="https://img.freepik.com/free-icon/user_318-644324.jpg">
         </div>
         <div class="card back-face">
            <img src="https://img.freepik.com/free-icon/user_318-644324.jpg">
            <div class="info">
               <div class="title">
                  <%= user.getName() + " " +user.getSurname() %>
               </div>
               <p>
                  <%= user.getMail() %><br><%= user.getPhoneNumber() %>
               </p>
            </div>
         </div>
      </div>
   </body>
</body>
</html>
