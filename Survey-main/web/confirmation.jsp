<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Confirmation</title>
        <link rel="stylesheet" href="styles/survey.css">
    </head>
    <body>
        <img src="images/murachlogo.jpg" alt="Murach Logo">
        <h1>Thank you for filling out the survey!</h1>
        
        <div class="confirmation-container">
            <h2>Your Information:</h2>
            <div class="info-row">
                <span class="info-label">First Name:</span>
                <span class="info-value"><%= request.getParameter("firstName") %></span>
            </div>
            <div class="info-row">
                <span class="info-label">Last Name:</span>
                <span class="info-value"><%= request.getParameter("lastName") %></span>
            </div>
            <div class="info-row">
                <span class="info-label">Email:</span>
                <span class="info-value"><%= request.getParameter("email") %></span>
            </div>
            <div class="info-row">
                <span class="info-label">Gender:</span>
                <span class="info-value"><%= request.getParameter("gender") %></span>
            </div>
            <div class="info-row">
                <span class="info-label">Date of Birth:</span>
                <span class="info-value"><%= request.getParameter("dateOfBirth") %></span>
            </div>
            
            <hr>
            
            <h2>How did you hear about us?</h2>
            <div class="info-row">
                <span class="info-value-full"><%= request.getParameter("heardFrom") %></span>
            </div>
            
            <hr>
            
            <h2>Announcements:</h2>
            <div class="info-row">
                <span class="info-label">Wants Updates:</span>
                <span class="info-value"><%= request.getParameter("wantsUpdates") != null ? "Yes" : "No" %></span>
            </div>
            <div class="info-row">
                <span class="info-label">Email Announcements:</span>
                <span class="info-value"><%= request.getParameter("emailOK") != null ? "Yes" : "No" %></span>
            </div>
            
            <hr>
            
            <h2>Preferred contact method:</h2>
            <div class="info-row">
                <span class="info-value-full"><%= request.getParameter("contactVia") %></span>
            </div>
        </div>
    </body>
</html>