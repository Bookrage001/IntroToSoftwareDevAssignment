<html>
    <title>Remove Movie</title>
    <%@include file="WEB-INF/Modules/header.jspf" %>
    
    <body>
        <div>
        <% 
        Cart cart = (Cart) session.getAttribute("cart");
        DBManager db = (DBManager) session.getAttribute("manager");
        if (request.getParameter("movieId") != null) {
            int movieId = Integer.parseInt(request.getParameter("movieId"));
            Movie movie = db.getMovieDetails(movieId);
            cart.removeOrder(movie);
            Thread.sleep(1000); 
        %>
            <h1> You have removed <%=movie.getTitle()%>
            <%
        } else {
            %>
            <h1>There was an error please try again </h1>
            <%
        }
            %>
        </div>
    </body>
</html>
