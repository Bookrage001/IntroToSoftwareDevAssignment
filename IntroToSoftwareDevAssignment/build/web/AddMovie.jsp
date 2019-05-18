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
                <tr><td><label>Sympnosis</label></td>
                    <td><textarea name="sympnosis" placeholder="Enter Brief Summary" style="height: 100px"></textarea></td>
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

    <script>//reference: https://www.w3schools.com/howto/tryit.asp?filename=tryhow_custom_select
        var x, i, j, selElmnt, a, b, c;
        /*look for any elements with the class "custom-select":*/
        x = document.getElementsByClassName("custom-select");
        for (i = 0; i < x.length; i++) {
            selElmnt = x[i].getElementsByTagName("select")[0];
            /*for each element, create a new DIV that will act as the selected item:*/
            a = document.createElement("DIV");
            a.setAttribute("class", "select-selected");
            a.innerHTML = selElmnt.options[selElmnt.selectedIndex].innerHTML;
            x[i].appendChild(a);
            /*for each element, create a new DIV that will contain the option list:*/
            b = document.createElement("DIV");
            b.setAttribute("class", "select-items select-hide");
            for (j = 0; j < selElmnt.length; j++) {
                /*for each option in the original select element,
                 create a new DIV that will act as an option item:*/
                c = document.createElement("DIV");
                c.innerHTML = selElmnt.options[j].innerHTML;
                c.addEventListener("click", function (e) {
                    /*when an item is clicked, update the original select box,
                     and the selected item:*/
                    var y, i, k, s, h;
                    s = this.parentNode.parentNode.getElementsByTagName("select")[0];
                    h = this.parentNode.previousSibling;
                    for (i = 0; i < s.length; i++) {
                        if (s.options[i].innerHTML == this.innerHTML) {
                            s.selectedIndex = i;
                            h.innerHTML = this.innerHTML;
                            y = this.parentNode.getElementsByClassName("same-as-selected");
                            for (k = 0; k < y.length; k++) {
                                y[k].removeAttribute("class");
                            }
                            this.setAttribute("class", "same-as-selected");
                            break;
                        }
                    }
                    h.click();
                });
                b.appendChild(c);
            }
            x[i].appendChild(b);
            a.addEventListener("click", function (e) {
                /*when the select box is clicked, close any other select boxes,
                 and open/close the current select box:*/
                e.stopPropagation();
                closeAllSelect(this);
                this.nextSibling.classList.toggle("select-hide");
                this.classList.toggle("select-arrow-active");
            });
        }
        function closeAllSelect(elmnt) {
            /*a function that will close all select boxes in the document,
             except the current select box:*/
            var x, y, i, arrNo = [];
            x = document.getElementsByClassName("select-items");
            y = document.getElementsByClassName("select-selected");
            for (i = 0; i < y.length; i++) {
                if (elmnt == y[i]) {
                    arrNo.push(i)
                } else {
                    y[i].classList.remove("select-arrow-active");
                }
            }
            for (i = 0; i < x.length; i++) {
                if (arrNo.indexOf(i)) {
                    x[i].classList.add("select-hide");
                }
            }
        }
        /*if the user clicks anywhere outside the select box,
         then close all select boxes:*/
        document.addEventListener("click", closeAllSelect);
    </script>
</html>
