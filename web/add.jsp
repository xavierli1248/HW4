<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add A New Player</title>
        <link rel="stylesheet" type="text/css" href="style.css" />
    </head>
    <body>
        <h1>Add A New Player</h1>
        <hr/>
        <a href="index.jsp" id="current">Home</a>
        <br><br>
        <form name="addForm" action="addPlayer" method="get">
            
            <label>Player Name:</label>
            <input type="text" name="name" value="" />
            <br>
            <label>Age:</label>
            <input type="text" name="age" value="" />
            <br>
            <label>Team:</label>
            <input type="text" name="team" value="" />
            <br>
            <label>Jersey Number:</label>
            <input type="text" name="jnumber" value="" />
            <br>
            <input type="reset" name="reset" value="Clear" />
            <input type="submit" name="submit" value="Submit" />
        </form>
        <hr>
        <%@ include file="includes/footer.jsp" %>
    </body>
</html>
