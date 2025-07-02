
<%
    if(session.getAttribute("user")==null){
        out.print("you nedd to loged in!");
        return;
    }
    String[] question=new String[3];
    question[0]="what is the capital city of japan";
    question[1]="who is the current president of nepal";
    question[2]="In which continent turkey lies?";
    String[] correct=new String[3];
    correct[0]="tokyo";
    correct[1]="Ram chandra Paudel";
    correct[2]="Europe";
    String[][] ans=new String[3][4];
    ans[0][0]="kathmandu";
    ans[0][1]="tokyo";
    ans[0][2]="beijing";
    ans[0][3]="seoul";

    ans[1][0]="KULdip";
    ans[1][1]="Sumit";
    ans[1][2]="Ram chandra Paudel";
    ans[1][3]="Kalyan";

    ans[2][0]="Asia";
    ans[2][1]="AFRICA";
    ans[2][2]="Europe";
    ans[2][3]="America";

    String num=request.getParameter("numb");
    int numb=0;
    if(num==null){
        numb=0;
    }else{
        numb=Integer.parseInt(num);
    }
%>
<html>
    <head>
        <title>Question</title>
    </head>
    <body>
        <table border="0">
            <form >
                <tr>
                    <th ><h1>Quiz App</h1></th>
                </tr>
                <tr>
                    <td><h4><%= question[numb] %></h4></td>
                </tr>
                <tr>
                    <td>
                        <input type="radio" name="place" value="<%= ans[numb][0] %>"><%= ans[numb][0] %> <br>
                        <input type="radio" name="place" value="<%= ans[numb][1] %>"><%= ans[numb][1] %> <br>
                        <input type="radio" name="place" value="<%= ans[numb][2] %>"><%= ans[numb][2] %>  <br>
                        <input type="radio" name="place" value="<%= ans[numb][3] %>"><%= ans[numb][3] %>  <br>
                    </td>
                    <input type="hidden" name="numb" value="<%= ++numb %>" >
                </tr>
                <tr>
                    <td><button type="submit">Next</button></td>
                </tr>
            </form>
        </table>
    </body>
</html>