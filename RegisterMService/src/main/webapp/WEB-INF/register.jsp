<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>crane</title>
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

</head>
<body class="align">
    <div class="grid align__item">
        <div class="register">
            <form id="loginForm" action="/registerUser" method="post" class="form">
                <div class="form__field">
                    <input type="text" name="name" placeholder="Name" onfocus="clearPlaceholder(this)" onblur="restorePlaceholder(this)">
                </div>
                <div class="form__field">
                    <input type="text" name="surname" placeholder="Surname" onfocus="clearPlaceholder(this)" onblur="restorePlaceholder(this)">
                </div>
                <div class="form__field">
                    <input type="email" name="mail" placeholder="Email" onfocus="clearPlaceholder(this)" onblur="restorePlaceholder(this)">
                </div>
                <div class="form__field">
                    <input type="text" name="phoneNumber" placeholder="Phone Number" onfocus="clearPlaceholder(this)" onblur="restorePlaceholder(this)">
                </div>
                <div class="form__field">
                    <input type="password" name="password" placeholder="Password" onfocus="clearPlaceholder(this)" onblur="restorePlaceholder(this)">
                </div>
                <div class="form__field">
                    <input type="password" name="confirmPassword" placeholder="Confirm Password" onfocus="clearPlaceholder(this)" onblur="restorePlaceholder(this)">
                </div>
                <div class="form__field">
                    <input type="submit" value="Sign Up" class="submit-button">
                </div>
            </form>

        </div>
    </div>
</body>
</html>
