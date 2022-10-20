<%@ page language='java' contentType="text/html" %>

<%@page import="com.mpm.taller.Vehiculo"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>


<%@page session="true" %>

<%
    String matricula = request.getParameter("matricula");
    String marca = request.getParameter("marca");
    String modelo = request.getParameter("modelo");
    String color = request.getParameter("color");

    Vehiculo vehiculo = new Vehiculo(matricula, marca, modelo, color);

    List<Vehiculo> vehiculos = (List) session.getAttribute("vehiculos");

    vehiculos.add(vehiculo);
    session.setAttribute("vehiculos", vehiculos);

    response.sendRedirect("listaVehiculos.jsp");

%>