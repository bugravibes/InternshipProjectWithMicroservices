<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<% String activePage = (String) request.getAttribute("activePage"); %>
<%@ page import="com.sumit.playjava.*" %>
<%@ page import="java.util.*" %>

<!DOCTYPE html>
<html>
<head>
    <title>Passenger Info</title>
    
    
     <link rel="stylesheet" type="text/css" href="/resources/static/css/flightCard.css" />
     <link rel="stylesheet" type="text/css" href="/resources/static/css/glassmorphism.css" />
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
    


<form class="selectorMain3" action="SubmitPassengerInfo" method="POST">
    <% for (int i = 1; i <= (Integer) request.getAttribute("adultCount"); i++) { %>
        <div class="passenger-details">
                    
            <h3>Adult <%= i %></h3>
            
            <label for="nameAdult<%= i %>">Name:</label>
            <input type="text" id="nameAdult<%= i %>" name="nameAdult<%= i %>" required>

            <label for="surnameAdult<%= i %>">Surname:</label>
            <input type="text" id="surnameAdult<%= i %>" name="surnameAdult<%= i %>" required>


            <label for="passportAdult<%= i %>">Passport No:</label>
            <input type="text" id="passportAdult<%= i %>" name="passportAdult<%= i %>" required>

            <label for="birthDateAdult<%= i %>">Birth Date:</label>
            <input type="date" id="birthDateAdult<%= i %>" name="birthDateAdult<%= i %>" required>
            <script>
            flatpickr("#birthDateAdult<%= i %>", {});
        </script>

            <label for="genderAdult<%= i %>">Gender:</label>
            <select id="genderAdult<%= i %>" name="genderAdult<%= i %>" required>
                <option value="male">Male</option>
                <option value="female">Female</option>
            </select>
        </div>
    <% } %>


    <% for (int i = 1; i <= (Integer) request.getAttribute("childCount"); i++) { %>
        <div class="passenger-details">
            <h3>Child <%= i %></h3>
            <label for="nameChild<%= i %>">Name:</label>
            <input type="text" id="nameChild<%= i %>" name="nameChild<%= i %>" required>

            <label for="surnameChild<%= i %>">Surname:</label>
            <input type="text" id="surnameChild<%= i %>" name="surnameChild<%= i %>" required>

            <label for="passportChild<%= i %>">Passport No:</label>
            <input type="text" id="passportChild<%= i %>" name="passportChild<%= i %>" required>

            <label for="birthDateChild<%= i %>">Birth Date:</label>
            <input type="date" id="birthDateChild<%= i %>" name="birthDateChild<%= i %>" required>
                        <script>
            flatpickr("#birthDateChild<%= i %>", {});
        </script>

            <label for="genderChild<%= i %>">Gender:</label>
            <select id="genderChild<%= i %>" name="genderChild<%= i %>" required>
                <option value="male">Male</option>
                <option value="female">Female</option>
            </select>

        </div>
    <% } %>


    <% for (int i = 1; i <= (Integer) request.getAttribute("infantCount"); i++) { %>
        <div class="passenger-details">
            <h3>Infant <%= i %></h3>
            <label for="nameInfant<%= i %>">Name:</label>
            <input type="text" id="nameInfant<%= i %>" name="nameInfant<%= i %>" required>

            <label for="surnameInfant<%= i %>">Surname:</label>
            <input type="text" id="surnameInfant<%= i %>" name="surnameInfant<%= i %>" required>

            <label for="passportInfant<%= i %>">Passport No:</label>
            <input type="text" id="passportInfant<%= i %>" name="passportInfant<%= i %>" required>

            <label for="birthDateInfant<%= i %>">Birth Date:</label>
            <input type="date" id="birthDateInfant<%= i %>" name="birthDateInfant<%= i %>" required>
                        <script>
            flatpickr("#birthDateInfant<%= i %>", {});
        </script>
        
            <label for="genderInfant<%= i %>">Gender:</label>
            <select id="genderInfant<%= i %>" name="genderInfant<%= i %>" required>
                <option value="male">Male</option>
                <option value="female">Female</option>
            </select>
        </div>
    <% } %>

        <input type="hidden" name="flightId" value="<%= request.getAttribute("flightId") %>">
        <input type="hidden" name="classValue" value="<%= request.getAttribute("classValue") %>">
        <input type="hidden" name="adultCount" value="<%= request.getAttribute("adultCount") %>">
        <input type="hidden" name="childCount" value="<%= request.getAttribute("childCount") %>">
        <input type="hidden" name="infantCount" value="<%= request.getAttribute("infantCount") %>">
        <button class="continueButton2" type="submit">Submit</button>
    </form>





</body>
</html>
