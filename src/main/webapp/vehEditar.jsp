<%@ page language='java' contentType="text/html" %>

<%@page import="com.mpm.taller.Vehiculo"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>


<%@page session="true" %>

<%

    String matricula = request.getParameter("matricula");
    
    List<Vehiculo> vehiculos = (List) session.getAttribute("vehiculos");
    
    
%>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Vehiculo</title>
</head>
<body>
    <h1>Editar vehiculo</h1>
    <form action="vehMod.jsp" method="post">
            <label for="matricula">Matricula: </label>
            <input type="text" name="matricula" id="matricula" value="<%= vehMod.getMatricula()%>" required autofocus>
            <input type="hidden" name="matriculaVieja" value="<%= vehMod.getMatricula()%>">
            <br>
            <label for="autor">Marca: </label>
            <input type="text" name="marca" id="marca" value="<%= vehMod.getMarca()%>" required>
            <br>
            <label for="autor">Modelo: </label>
            <input type="text" name="modelo" id="modelo" value="<%= vehMod.getModelo()%>" required>
            <br>
            <label for="color">Color: </label>
            <input type="text" name="color" id="color" value="<%= vehMod.getColor()%>" required>
            <br>
            <input type="submit" value="editar">
    </form>
    
</body>
</html>