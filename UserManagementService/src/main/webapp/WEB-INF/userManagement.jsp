<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<% String activePage = (String) request.getAttribute("activePage"); %>
<%@ page import="com.sumit.playjava.*" %>
<%@ page import="com.sumit.playjava.model.*" %>
<%@ page import="java.util.*" %>

<!DOCTYPE html>
<html>
<head>
    <title>User Management</title>
    
     <link rel="stylesheet" type="text/css" href="/resources/static/css/flightCard.css" />
     <link rel="stylesheet" type="text/css" href="/resources/static/css/glassmorphism.css" />
     <link rel="stylesheet" type="text/css" href="/resources/static/css/portPage.css" />
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
    
        
    <div class="management">
        <h2>User Management</h2>
         <form action="/addUser" method="post" class="selectorMain3">
                    <input type="email" name="mailAdress" placeholder="Email" onfocus="clearPlaceholder(this)" onblur="restorePlaceholder(this)">
                    <input type="password" name="password" placeholder="Password" onfocus="clearPlaceholder(this)" onblur="restorePlaceholder(this)">
                    <input type="password" name="password2" placeholder="Confirm Password" onfocus="clearPlaceholder(this)" onblur="restorePlaceholder(this)">
                    <input type="submit" value="Add User" class="submit-button">
                	<input type="hidden" name="action" value="addUser">
         </form>

            
            <form action="/deleteUser" method="post" class="selectorMain3">
                <div class="form__field">
                    <input type="email" name="mailAdress" placeholder="Email" onfocus="clearPlaceholder(this)" onblur="restorePlaceholder(this)">
                </div>
                <div class="form__field">
                    <input type="submit" value="Delete User" class="submit-button">
                </div>
                <input type="hidden" name="action" value="deleteUser">
            </form>
             </div>
             <% 
            request.getSession().removeAttribute("signupResult");

            %>
<div id="responseMessage"></div>
</body>
</html>
