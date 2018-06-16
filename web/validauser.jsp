<%-- 
    Document   : validauser
    Created on : 25-05-2018, 17:26:34
    Author     : abdon_g401
--%>
<%@page import="java.sql.*;"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Valida user</title>
    </head>
    <body>
        <%
                String username=request.getParameter("txtUs");
                String password=request.getParameter("txtPas");
                try{
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/Requerimientos","root","");
                String query = "SELECT * FROM user WHERE username='"+username+"' and password='"+password+"'";
                Statement st=conn.createStatement();
                ResultSet rs=st.executeQuery(query);
                if(rs.next()){ 
                    response.sendRedirect("menuprincipal.jsp");
                }else{
                    response.sendRedirect("error.jsp");
                }}catch(SQLException ex){
            throw new SQLException(ex);
            }
        %>
    </body>
</html>