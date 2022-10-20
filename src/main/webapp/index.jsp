<%@ page language='java' contentType="text/html" %>

<%@page import="com.mpm.taller.Vehiculo"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>


<%@page session="true" %>

<%
  Vehiculo vehiculo = new Vehiculo("1234ABC","Seat","Leon","Blanco");
  List<Vehiculo> vehiculos = new ArrayList<Vehiculo>();
  vehiculos.add(vehiculo);
  session.setAttribute("vehiculos", vehiculos);

%>


<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>taller</title>
</head>
<body>
<h1>Taller<h1>
    <p>
        <a href="listaVehiculos.jsp">Vehiculos</a>
    </p>
</body>
</html>