<%@page import="java.sql.*;"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form method="post" action="insert.jsp">
            <%
                try{
                String Gerencia = request.getParameter("SelectGere");
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/Requerimientos","root","");
                String query = "SELECT * FROM gerencia";
                Statement st=conn.createStatement();
                ResultSet rs=st.executeQuery(query);
                  out.println("<select name='gerencia'>");
                while(rs.next()){ 
                out.println("<option>"+rs.getString("nombre")+"</option>");
                 }
                  out.println("</select>");
                }catch(SQLException ex){
            throw new SQLException(ex);
            }
                %>
                
            <p>Depto.: <select name="SelectDepto">
                       <option value=""></option>
                       </select></p>
            <p>Asignar a: <select name="SelectAsig">
                          <option value=""></option>
                          </select><br>
                          
            <p>Ecargado: <select name="SelectEncar">
                         <option value=""></option>
                         </select></p>
            <p>Requerimientos: <input name="Reque" id="admin" type="text" required/></p>
            <p><input name="btnEnviar" type="submit" value="Guardar"></p><br>
            <a href="menuprincipal.jsp">Volver al menú</a>
       </form>
    </body>
</html>
