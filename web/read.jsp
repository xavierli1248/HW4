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
            
            <%@ include file="includes/menu.jsp" %>
        
            <div class="main">
        <h1>NBA Basketball Players</h1>
        <%= table %>
        
        </div>
        
        <%@ include file="includes/footer.jsp" %>
        
        </div>
    </body>
</html>
