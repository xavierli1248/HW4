<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>NBA Basketball Players</title>
        <link rel="stylesheet" type="text/css" href="style.css" />
    </head>
    
    <% String table = (String) request.getAttribute("table"); %>
    
    <body>
        <h1>NBA Basketball Players</h1>
        <%= table %>
        
        <br><br>
        
        <a href ="add">Add A New Player</a>
        <br><br>
        <a href="search.jsp">Search Players</a>
    </body>
</html>
