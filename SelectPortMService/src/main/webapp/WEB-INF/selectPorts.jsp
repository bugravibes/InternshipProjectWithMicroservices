<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<% String activePage = (String) request.getAttribute("activePage");
if (activePage == null) {
    activePage = "selectPorts";
} %>

<!DOCTYPE html>
<html>
<head>
    <title>Select Port</title>
    
    <link rel="stylesheet" type="text/css" href="/resources/static/css/glassmorphism.css" />
    <link rel="stylesheet" href="/resources/static/css/style.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/flatpickr/dist/flatpickr.min.css">
    <link rel="icon" href="/resources/static/images/webicon.ico">
    <script src="https://cdn.jsdelivr.net/npm/flatpickr"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
   
    
    <script>
        $(document).ready(function() {
            $("#fromPort").change(function() {
                var selectedDeparturePort = $(this).val();
                $("#toPort option").each(function() {
                    var arrivalPort = $(this).val();
                    if (selectedDeparturePort === arrivalPort) {
                        $(this).prop("disabled", true);
                    } else {
                        $(this).prop("disabled", false);
                    }
                });
            });
        });
        $(document).ready(function() {
            $("#toPort").change(function() {
                var selectedArrivalPort = $(this).val();
                $("#fromPort option").each(function() {
                    var departurePort = $(this).val();
                    if (selectedArrivalPort === departurePort) {
                        $(this).prop("disabled", true);
                    } else {
                        $(this).prop("disabled", false);
                    }
                });
            });
        });
    </script>
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




<form action="/fetchFlights" method="post">

<div class="SelectionCard">
    <div>
        <label>
            <input type="radio" name="flightType" value="oneWay"> One Way
            <input type="radio" name="flightType" value="roundTrip"> Round Trip
        </label>
    </div>

<div class="inline">
    <label for="fromPort">Departure Port:</label>
    <select id="fromPort" name="fromPort" class="selectorMain">
        <option value="" disabled selected>Select Departure Port</option>
<option value="Istanbul">Istanbul</option>
<option value="Amsterdam Schiphol">Amsterdam Schiphol</option>
<option value="London Heathrow">London Heathrow</option>
<option value="Hartsfield-Jackson Atlanta">Hartsfield-Jackson Atlanta</option>
<option value="Guangzhou Baiyun">Guangzhou Baiyun</option>
<option value="Charles de Gaulle">Charles de Gaulle</option>
<option value="Denver International">Denver International</option>
<option value="Dallas/Fort Worth">Dallas/Fort Worth</option>
<option value="Dubai International">Dubai International</option>
<option value="Frankfurt am Main">Frankfurt am Main</option>
<option value="Tokyo Haneda">Tokyo Haneda</option>
<option value="Incheon International">Incheon International</option>
<option value="John F. Kennedy International">John F. Kennedy International</option>
<option value="Los Angeles International">Los Angeles International</option>
<option value="Madrid Barajas">Madrid Barajas</option>
<option value="Munich Airport">Munich Airport</option>
<option value="Chicago O'Hare">Chicago O'Hare</option>
<option value="Beijing Capital">Beijing Capital</option>
<option value="Singapore Changi">Singapore Changi</option>
<option value="Sydney Kingsford-Smith">Sydney Kingsford-Smith</option>

    </select>
</div>

<div class="inline">
    <label for="toPort">Arrival Port:</label>
    <select id="toPort" name="toPort" class="selectorMain">
        <option value="" disabled selected>Select Arrival Port</option>
<option value="Istanbul">Istanbul</option>
<option value="Amsterdam Schiphol">Amsterdam Schiphol</option>
<option value="London Heathrow">London Heathrow</option>
<option value="Hartsfield-Jackson Atlanta">Hartsfield-Jackson Atlanta</option>
<option value="Guangzhou Baiyun">Guangzhou Baiyun</option>
<option value="Charles de Gaulle">Charles de Gaulle</option>
<option value="Denver International">Denver International</option>
<option value="Dallas/Fort Worth">Dallas/Fort Worth</option>
<option value="Dubai International">Dubai International</option>
<option value="Frankfurt am Main">Frankfurt am Main</option>
<option value="Tokyo Haneda">Tokyo Haneda</option>
<option value="Incheon International">Incheon International</option>
<option value="John F. Kennedy International">John F. Kennedy International</option>
<option value="Los Angeles International">Los Angeles International</option>
<option value="Madrid Barajas">Madrid Barajas</option>
<option value="Munich Airport">Munich Airport</option>
<option value="Chicago O'Hare">Chicago O'Hare</option>
<option value="Beijing Capital">Beijing Capital</option>
<option value="Singapore Changi">Singapore Changi</option>
<option value="Sydney Kingsford-Smith">Sydney Kingsford-Smith</option>
    </select>
</div>

    <div>
        <label for="flightDate">Flight Date:</label>
        <input class= "flight-date-container" type="text" id="flightDate" name="flightDate" placeholder="Select Date" />
        <script>
            flatpickr("#flightDate", {});
        </script>
    </div>

    <div class="form-row">
        <div>
        <label for="adultCount" title="12+ years">Adult Count:</label>
            <select id="adultCount" name="adultCount" class="selectorMain2">
                <option value="1">1</option>
                <option value="2">2</option>
                <option value="3">3</option>
                <option value="4">4</option>
                <option value="5">5</option>
            </select>
        </div>
<div>
    <label for="childCount" title="2 - 12 years">Child Count:</label>
    <select id="childCount" name="childCount" class="selectorMain2" >
        <option value="0" disabled selected>0</option>
        <option value="1">1</option>
        <option value="2">2</option>
        <option value="3">3</option>
        <option value="4">4</option>
        <option value="5">5</option>
    </select>
</div>

        <div>
            <label for="infantCount" title="0 - 2 years">Infant Count:</label>
            <select id="infantCount" name="infantCount" class="selectorMain2">
            <option value="0" disabled selected>0</option>
                <option value="1">1</option>
                <option value="2">2</option>
                <option value="3">3</option>
                <option value="4">4</option>
                <option value="5">5</option>
            </select>
        </div>
        
    </div>
    <div class="search-button">
            <input type="submit" value="Search" />
        </div>
    </div>
</form>


</body>
</html>
