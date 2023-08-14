<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<% String activePage = (String) request.getAttribute("activePage"); %>
<%@ page import="java.util.*" %>
<%@ page import="java.math.BigDecimal" %>
<%@ page import="com.sumit.playjava.model.*" %>

<!DOCTYPE html>
<html>
<head>
    <title>Reservation</title>
    
    <link rel="stylesheet" type="text/css" href="/resources/static/css/portPage.css" />
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

<%
String PNR = request.getParameter("PNR");

List<FetchedReservation> reservations = (List<FetchedReservation>)request.getAttribute("reservationList");
%>
<div class="reservation-list">
    
    <%
        java.math.BigDecimal totalPrice=new BigDecimal("0.00");
            if (reservations.isEmpty()) {
        %>
        <p>No reservations found.</p>
    <%
    } else {
    %>
    <h2 class="showPNR">PNR:  <%=reservations.get(0).getPnr()%> </h2>
        <%
        for (FetchedReservation reservation : reservations) {
        %>
        
            <div class="reservation-item">
                <table>
    <thead>
        <tr>
            <th colspan="7">Flight Info</th>
            <th colspan="5">Passenger Info</th>
            <th colspan="1">Price</th>
            <th colspan="1">Status</th>
        </tr>
    </thead>
    <tbody>
        <tr>
        	<td><%=  reservation.getFlightNo() %></td>
            <td><%=  reservation.getFlightDate() %></td>
            <td><%=  reservation.getFlightTime() %></td>
            <td><%=  reservation.getCompany() %></td>
            <td><%=  reservation.getFromPort() %></td>
            <td><%=  reservation.getToPort() %></td>
             <td><%=  reservation.getFlightClass() %></td>
            
            <td><%=  reservation.getName() %></td>
            <td><%=  reservation.getSurname() %></td>
            <td><%=  reservation.getBirthDate() %></td>
            <td><%=  reservation.getGender().toUpperCase() %></td>
            <td><%=  reservation.getCategory().toUpperCase() %></td>
            
            <td>$ <%=  reservation.getPrice() %></td>
            
            <td><%=  reservation.getPayment() %></td>
            
        </tr>

    </tbody>

</table>
 <% totalPrice = totalPrice.add(new BigDecimal(reservation.getPrice().toString())); %>
            <% } %>
            <div class="totalPrice">
                <h2 class="totalPrice">Total Price: $<%= totalPrice %></h2>
            </div>
            <% if (reservations.get(0).getPayment().equals("pending")) { %>
                <div class="payment-method">
                    <p class="paymenttext">Payment Method:</p>
                    <input type="radio" name="paymentMethod" value="Card"> Card
                    <input type="radio" name="paymentMethod" value="Cash"> Cash
                    <button type="button" onclick="confirmPayment()">Pay</button>
                </div>
            <% } else if (reservations.get(0).getPayment().equals("paid")) { %>
                <div class="cancelPnr">
                    <button type="button" onclick="showCancelConfirmation()">Cancel</button>
                </div>
            <% } %>
        <% } %>
    </div>
<script>
    function confirmPayment() {
        var paymentMethod = document.querySelector('input[name="paymentMethod"]:checked').value;
        $.ajax({
            type: "POST",
            url: "confirmPayment",
            data: {
                paymentMethod: paymentMethod
            },
            success: function(response) {
                alert("Payment confirmed successfully!");
                location.reload();
            },
            error: function(error) {
                alert("An error occurred during payment confirmation.");
            }
        });
    }
    function showCancelConfirmation() {
        var confirmation = confirm("Are you sure you want to cancel this reservation?");
        if (confirmation) {
            $.ajax({
                type: "POST",
                url: "cancelReservation",
                success: function(response) {
                    alert("Reservation canceled successfully!");
                    location.reload();
                },
                error: function(error) {
                    alert("An error occurred while canceling the reservation.");
                }
            });
        }
        }
</script>
</body>
</html>
