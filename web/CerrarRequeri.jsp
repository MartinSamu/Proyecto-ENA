<%-- 
    Document   : CerrarRequeri
    Created on : 15-06-2018, 16:04:10
    Author     : abdon_g401
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form method="post" action="insert.jsp">
            <p>Gerencia.:   <select name="SelectGere">
                            <option value=""></option>
                            </select></p>
            <p>Depto.: <select name="SelectDepto">
                       <option value=""></option>
                       </select></p>
            <p>Asignar a: <select name="SelectAsig">
                          <option value=""></option>
                          </select><br>
                          <input name="txtAsi" id="admin" type="text" required/></p>
            </form>
              <%
                String = request.getParameter("SelectGere");
                String Gerencia = request.getParameter("SelectGere");
                String Depto = request.getParameter("SelectDepto");
                String Asignar = request.getParameter("SelectAsig");
                String Encargado = request.getParameter("SelectEncar");
                String Requerimiento = request.getParameter("Reque");
                
                out.println("<table>");
                out.println("<th>Gerencia</th>");
                out.println("<th>Depto</th>");
                out.println("<th>Asignar</th>");
                out.println("<th>Encargado</th>");
                out.println("<th>Requerimiento</th>");
                
                    out.println("<form method=\"post\" action=\"editar.jsp\">");
                    out.println("<tr>");
                    out.println("<td>"+Id+"</td>");
                    out.println("<td>"+Gerencia+"</td>");
                    out.println("<td>"+Depto+"</td>");
                    out.println("<td>"+Asignar+"</td>");
                    out.println("<td>"+Encargado+"</td>");
                    out.println("<td>"+Requerimiento+"</td>");
                    out.println("<td><a href=\"ver.jsp?id=\">Cerrar</a></td>");
                    out.println("</tr>");
                
                out.println("</form>");
                out.println("</table>");
                %>
                <a href="menuprincipal.jsp">Volver al menú</a>
    </body>
</html>
