<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Search Players</title>
        <link rel="stylesheet" type="text/css" href="style.css" />
    </head>
    <body>
        <h1>Search Players</h1>
        <hr>
        <a href="index.jsp" id="current">Home</a>
        <br><br>

        <form name="searchForm" action="search" method="get">
            
            <input type="text" name="searchVal" value="" />
            
            <br>
            
            <input type="submit" name="submit" value="Search" />
            
        </form>
        <hr>
        <%@ include file="includes/footer.jsp" %>
    </body>
</html>
