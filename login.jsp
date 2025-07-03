<html>
    <head><title>Quiz App</title></head>
    <body>
        <%
        String myuser=request.getParameter("User");
        String mypass=request.getParameter("Pass");
        out.print("you have entered\t" + myuser);
        if(myuser!=null&&mypass!=null){
            if(myuser.equals("admin")&&mypass.equals("nepal123")){
                response.sendRedirect("quiz.jsp");
                session.setAttribute("user","admin");
                session.setAttribute("score","0");
            }else{
                out.print("login failed???");
            }
        }
        %>
        <table border="0" align="center">
            <form action="login.jsp">
            <tr>
                <th colspan="2"><h1>Quiz APP</h1></th>
            </tr>
            <tr>
                <td><label >User:</label></td>
                <td><input type="text" name="User"></td>
            </tr>
            <tr>
                <td><label >Pass:</label></td>
                <td><input type="password" name="Pass"></td>
            </tr>
            <tr>
                <td></td>
                <td ><button type="submit">Login</button></td>
            </tr>
        </form>
        </table>
    </body>
</html>