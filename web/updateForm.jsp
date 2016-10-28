<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Players"%>
<% Players player = (Players) request.getAttribute("player"); %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update A New Player</title>
        <link rel="stylesheet" type="text/css" href="style.css" />
    </head>
    <body>
        <h1>Update A New Player</h1>
        
        <form name="updateForm" action="updatePlayer" method="get">
            
            <label>Player ID:</label>
            <input type="text" name="name" value="<%= player.getPlayerID() %>" />
            <br>
            <label>Player Name:</label>
            <input type="text" name="name" value="<%= player.getPlayerName() %>" />
            <br>
            <label>Age:</label>
            <input type="text" name="age" value="<%= player.getAge() %>" />
            <br>
            <label>Team:</label>
            <input type="text" name="team" value="<%= player.getTeam() %>" />
            <br>
            <label>Jersey Number:</label>
            <input type="text" name="jnumber" value="<%= player.getJerseyNumber() %>" />
            <br>
            <input type="submit" name="submit" value="Update" />
        </form>
    </body>
</html>
