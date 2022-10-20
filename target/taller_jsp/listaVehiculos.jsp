<%@ page language='java' contentType="text/html" %>

<%@page import="com.mpm.taller.Vehiculo"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>


<%@page session="true" %>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Vehiculos</title>

</head>
<body>
    <h1>Vehiculos</h1>
    <table border="5px">
        <tr>
            <th>Matricula</th>
            <th>Marca</th>
            <th>Modelo</th>
            <th>Color</th>
            
        </tr>
            <%

                List<Vehiculo> vehiculos = (List) session.getAttribute("vehiculos");

                for(Vehiculo vehiculo: vehiculos) {
                    out.print("<tr>");
                    out.print("<td>" + vehiculo.getMatricula() + "</td>");
                    out.print("<td>" + vehiculo.getMarca() + "</td>");
                    out.print("<td>" + vehiculo.getModelo() + "</td>");
                    out.print("<td>" + vehiculo.getColor() + "</td>");
                    out.print("<td>" + vehiculo.getRevisado() + "</td>");
                    out.print("<td><a href=\".jsp?isbn=" + vehiculo.getMatricula() + "\">revisar</a></td>");
                    out.print("<td><a href=\".jsp?isbn=" + vehiculo.getMatricula() + "\">editar</a></td>");
                    out.print("<td><a href=\".jsp?isbn=" + vehiculo.getMatricula() + "\">eliminar</a></td>");
                    out.print("</tr>");
                }
            %>
    </table>
</body>
</html>