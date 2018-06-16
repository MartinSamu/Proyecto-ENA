<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Autentificación</title>
    </head>
    <body><h1>Autentificación</h1>
       <form method="post" action="validauser.jsp">
            <p>Usuario: <input name="txtUs" id="admin" type="text"> </p>
            <p>Password: <input name="txtPas" id="admin" type="password"></p>
            <p><input type="checkbox" name="recordar" value="Bike"> Recordar<br></p>
            <p><input name="btnEnviar" type="submit" value="Ingresar"></p>
       </form>
    </body>
</html>
