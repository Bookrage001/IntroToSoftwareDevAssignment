<%-- 
    Document   : index
    Created on : 04/04/2019, 12:32:01 PM
    Author     : caleb
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html"%>
<%@ page import="java.io.*" %>
<% String msFilePath = application.getRealPath("WEB-INF");%>
<link  rel="stylesheet" href="css/stylesheet.css">
<script src="https://code.jquery.com/jquery-3.3.1.js" type="text/javascript"></script>
<html>
    <head>
        <title>index</title>
    <datalist id="Genres">
        <option value="Action">
        <option value="Sci-Fi">
        <option value="Horror">
        <option value="Comedy">
    </datalist>
</head>
<script>
$(document).ready(function () {
    $('.order tr').click(function (event) {
        if (event.target.type !== 'checkbox') {
                $(':checkbox', this).trigger('click');
            }
        });
        $("input[type='checkbox']").change(function (e) {
            if ($(this).is(":checked")) {
                $(this).closest('tr').addClass("highlight_row");
            } else {
                $(this).closest('tr').removeClass("highlight_row");
            }
        });
    });
</script>
<body class="body" align="center">
    <div id="Logo">
        <img src="Images/RaiMovieLogo.png" height="90" width="250">
    </div>
    
    <div id="Search">
        <%@include file="/Modules/search.jspf"%>
    </div>
    
    <div id="Navbar" align="center">
        <%@include file="/Modules/navbar.jspf" %>
    </div>
    
    <table id="CollectionTableContainer" cellspacing="0" cellpadding="0" align="center">
        <tr>
            <td id ="RefineSearch">
                <div>
                    <%@include file="/Modules/refignSearch.jspf" %>
                </div>
            </td>
            <td id="Movies">
                <div> Movies go here
                    
                    <%--dem movies Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent non euismod lectus. Donec placerat leo eget ipsum fermentum feugiat. Fusce a dapibus velit, interdum euismod ipsum. Nunc vitae consectetur orci, eget mollis lectus. In nec dui tristique, viverra ipsum sit amet, feugiat dui. Cras pulvinar nisl varius lorem gravida, et ultrices nulla dapibus. Nam feugiat, nulla at pretium efficitur, urna elit vulputate felis, a accumsan tellus ligula ut magna. Sed pulvinar, eros non auctor convallis, lacus arcu hendrerit odio, tempus ultrices purus sapien id dolor. Nunc ligula nulla, tristique eget quam ut, eleifend efficitur arcu.

                    Suspendisse potenti. Donec vulputate aliquet mauris, quis laoreet enim placerat non. Nulla eget turpis quam. Sed varius volutpat mi, ut lobortis turpis rhoncus vel. Mauris hendrerit volutpat ultricies. Nulla mollis, diam et molestie posuere, elit nisl sagittis nisl, in tempor lectus diam sit amet est. Nullam finibus turpis sit amet rhoncus laoreet. Vivamus tincidunt ac enim a pretium. Cras semper tortor id pretium sagittis.

                    Maecenas eu mollis nisi, id elementum sapien. Etiam porttitor elementum maximus. In risus odio, venenatis nec pretium tincidunt, commodo vel nibh. Etiam nec velit ultricies, placerat ante quis, viverra dui. Sed ut laoreet felis. Vivamus odio arcu, porttitor sit amet elit non, aliquam pretium lectus. Nulla a lacus vel sapien ultrices fringilla quis sed est. Aliquam et dictum mauris. Aenean vitae placerat nulla. Fusce ullamcorper leo lacus, nec interdum purus eleifend iaculis. Integer aliquam tempus auctor. Aenean vestibulum vulputate enim non dictum.

                    Aliquam euismod felis sed massa mollis fermentum. Vivamus ac velit et arcu maximus consequat at fringilla orci. Cras dapibus, risus laoreet gravida dapibus, mauris nisl laoreet odio, a molestie elit purus a tortor. Mauris tincidunt est in sagittis finibus. Mauris vitae dui vel nulla porta lacinia. Sed lorem ex, convallis nec tellus quis, feugiat aliquet dolor. Mauris nec quam dictum, vehicula libero vel, efficitur neque. Nam nec vestibulum dolor. Aliquam blandit libero non ultrices pulvinar. Nunc non vulputate leo, ut mattis libero. Nulla ut faucibus neque. Vestibulum sodales dolor dolor, ut sagittis est ornare eget. Vivamus iaculis, odio ac eleifend pretium, mauris augue convallis diam, eget rhoncus dolor risus in justo. In vulputate nunc quis elit bibendum convallis. Vivamus at leo viverra, placerat sapien id, volutpat risus. Suspendisse potenti.

                    Ut lacinia, augue ac finibus porta, neque lectus pharetra dui, maximus fringilla diam magna sit amet magna. Etiam egestas augue nec nunc hendrerit, vel egestas lorem posuere. Nulla fermentum nunc at ipsum efficitur, eget aliquam ipsum convallis. Etiam porta quam scelerisque ex rutrum viverra. Nulla facilisi. Donec in justo lorem. Sed sodales porttitor neque. Vestibulum lobortis, quam ac lobortis mollis, lectus eros aliquet dui, tincidunt sodales risus magna at arcu. Cras ac suscipit tortor. Sed condimentum cursus volutpat. Sed ipsum eros, scelerisque eget nunc eget, pulvinar sodales velit. Praesent elementum neque et odio pharetra, eu blandit orci vestibulum
                    <%--movies should apear here--%>
                    
                </div>
            </td>
        </tr>
   
    </table>
</body>
</html>
