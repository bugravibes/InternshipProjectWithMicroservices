<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>
    	<meta charset="UTF-8">
    	<title>crane</title>
    	<meta http-equiv="x-ua-compatible" content="ie=edge">
    	<meta name="viewport" content="width=device-width, initial-scale=1">
    	<link href="/resources/static/css/new2.css" rel="stylesheet" />
    	<link rel="icon" href="/resources/static/images/webicon.ico">
</head>
<body>
  <div class="wrapper">
  <svg xmlns="http://www.w3.org/2000/svg" class="site__logo" width="300" height="100">
                <defs>
                    <linearGradient id="a" x1="0%" y1="0%" y2="0%">
                        <stop offset="0%" stop-color="#8ceabb"/>
                        <stop offset="100%" stop-color="#378f7b"/>
                    </linearGradient>
                </defs>
                <image xlink:href="/resources/static/images/cranewhite.png" width="100%" height="100%" preserveAspectRatio="xMidYMid meet" />
            </svg>
    <form id="loginForm" action="/registerUser" method="post" class="form">
        <div class="input-field">
        <input type="text" name="name" placeholder="Name" onfocus="clearPlaceholder(this)" onblur="restorePlaceholder(this)">
        <label>Name</label>
      </div><div class="input-field">
        <input type="text" name="surname" placeholder="Surname" onfocus="clearPlaceholder(this)" onblur="restorePlaceholder(this)">
        <label>Surname</label>
      </div>
      <div class="input-field">
         <input type="text" name="phoneNumber" placeholder="Phone Number" onfocus="clearPlaceholder(this)" onblur="restorePlaceholder(this)">
        <label>Phone Number</label>
      </div>
        <div class="input-field">
        <input type="email" name="mail" placeholder="Email" onfocus="clearPlaceholder(this)" onblur="restorePlaceholder(this)">
        <label>E-mail</label>
      </div>
      <div class="input-field">
        <input type="password" name="password" placeholder="Password" onfocus="clearPlaceholder(this)" onblur="restorePlaceholder(this)">
        <label>Password</label>
      </div>
      <div class="input-field">
        <input type="password" name="confirmPassword" placeholder="Confirm Password" onfocus="clearPlaceholder(this)" onblur="restorePlaceholder(this)">
        <label>Confirm Password</label>
      </div>
     <div class="form__field">
                    <button type="submit" value="Sign Up" class="submit-button">Register</button>
                </div>
    </form>
  </div>

</body>
</html>