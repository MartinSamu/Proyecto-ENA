<%@page import="java.sql.*;"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Insert</title>
    </head>
    <body>
        <h1>¡Ya estás registrado!</h1>
        <a href="index.jsp">Volver a login</a>
        <%
            String username=request.getParameter("txtUs");
                String password=request.getParameter("txtPas");
                String name=request.getParameter("txtNa");
                String lastname=request.getParameter("txtLN");
                String sexo=request.getParameter("txtSe");
                String direccion=request.getParameter("txtDi");
                String correo=request.getParameter("txtCE");
                try{
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/jueves10","root","");
                String query = "SELECT * FROM user WHERE username='"+username+"' and correo='"+correo+"'";
                Statement st=conn.createStatement();
                ResultSet rs=st.executeQuery(query);
                if(!rs.next()){ 
                    response.sendRedirect("errorregis.jsp");
                /*if(!request.getParameter("txtPas").equals(request.getParameter("txtRPas"))){
                    response.sendRedirect("errorpas.jsp");
                }else{
                if(request.getParameter("txtUs").equals(rs.getString("username"))){
                    response.sendRedirect("errorus.jsp");
                }else{
                if(request.getParameter("txtCE").equals(rs.getString("correo"))){
                    response.sendRedirect("errorco.jsp");*/  
                }}catch(Exception ex){
            throw new SQLException(ex);
            }
                try{
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/jueves10","root","");
                String query = "SELECT * FROM user WHERE username='"+username+"' and correo='"+correo+"'";
                Statement st=conn.createStatement();
                ResultSet rs=st.executeQuery(query);
                if(!rs.next()){ 
                    response.sendRedirect("errorregis.jsp");
                }}catch(Exception ex){
            throw new SQLException(ex);
            }
            try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/jueves10","root","");
            String query="INSERT INTO user (username,password,name,lastname,sexo,direccion,correo) VALUES ('"+username+"','"+password+"','"+name+"','"+lastname+"','"+sexo+"','"+direccion+"','"+correo+"');";
            Statement st= conn.createStatement();
            st.executeUpdate(query);
            conn.close();
            }catch(SQLException ex){
            throw new SQLException(ex);
            }
        %>
        <a href="cerrarsesion.jsp">Cerrar Sesion</a>
    </body>
</html>
