<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Checkout Page</title>
        <link rel="stylesheet" href="styles.css">
    </head>

    <body>
        <h1 align="center">Checkout Page</h1>
        <%@include file="/WEB-INF/jspf/navbar.jspf" %>
        <h3 align="center">Order: </h3>
        <form action="#" method="Post">
            <table width="100%">
                <thead>
                    <tr>
                        <th width="20%">Title</th>
                        <th width="20%">Genre</th>
                        <th width="20%">Release Date</th>
                        <th width="20%">Price</th>
                        <th width="20%">Amount</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>title</td>
                        <td>genre</td>
                        <td>releaseDate</td>
                        <td>price</td>
                        <td><input name="amount_ID" type="number"  value="1" autocomplete="false" min="0" max="10"></td> <!- set max = available copies ->
                    </tr>
                </tbody>
            </table>
            <input type="submit" name="cancelOrder" value="Cancel Order">
            <input type="submit" name="placeOrder" value="Place Order">
        </form>
    </body>
</html>
