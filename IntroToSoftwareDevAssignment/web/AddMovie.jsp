<%-- 
    Document   : AddMovie
    Created on : 18/05/2019, 4:48:47 PM
    Author     : mcant
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Add Movie</h1>
        <form action="AddMovieAction.jsp" method="post">
            <table>                
                <tr><td><label>Title</label></td>
                    <td><input name="title" type="text" placeholder="Enter Title" required></td>
                </tr>
                <tr><td><label>Genre</label></td>
                    <td><div class="custom-select">
                            <select name="categories">
                                <option value="Action">Action</option>
                                <option value="Adventure">Adventure</option>
                                <option value="Comedy">Comedy</option>
                                <option value="Drama">Drama</option>
                                <option value="Fantasy">Fantasy</option>
                                <option value="Romance">Romance</option>
                                <option value="Scifi">SciFi</option>
                                <option value="Thriller">Thriller</option>
                            </select>
                        </div>
                    </td>
                </tr><br>
                <tr><td><label>Release Date</label></td>
                    <td><input name="date" type="text" placeholder="Release Date" required></td>
                </tr>
                <tr><td><label>Director</label></td>
                    <td><input name="director" type="text" placeholder="Director's Name" required></td>
                </tr>
                <tr><td><label>Synopsis</label></td>
                    <td><textarea name="synopsis" placeholder="Enter Brief Summary" style="height: 100px"></textarea></td>
                </tr>
                <tr><td><label>Price</label></td>
                    <td><input name="price" type="text" placeholder="Enter Price"></td>
                </tr>
                <tr><td><label>Copies</label></td>
                    <td><input name="copies" type="text" placeholder="Enter Number of Copies"></td>
                </tr>
                <tr><td></td>
                    <td><input class="button" type="submit" value="Post"></td>
                </tr>
            </table>   
        </form>        
    </body>
</html>
