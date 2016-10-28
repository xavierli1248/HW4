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
                <div class="wrap">
            
            <%@ include file="includes/header.jsp" %>
            <hr/>
            <%@ include file="includes/menu.jsp" %>
            <hr/>
        
            <div class="main">
        <h1>NBA Basketball Players</h1>
        <%= table %>
        
        </div>
        <hr/>
        <%@ include file="includes/footer.jsp" %>
        
        </div>
    </body>
</html>
