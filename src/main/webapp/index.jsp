<%@ page language='java' contentType="text/html" %>

<%@page import="com.jaimecorg.taller.model.Vehiculo"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>


<%@page session="true" %>

<%

  Vehiculo vehiculo = new Vehiculo();
  vehiculo.setMatricula("1");
  vehiculo.setMarca("Miguel de cervantes");
  vehiculo.setModelo("El quijote");
  vehiculo.setColor("Miguel de cervantes");
  vehiculo.setRevisado("El quijote");

 

  List<Vehiculo> vehiculos = new ArrayList<Vehiculo>();
  vehiculos.add(vehiculo);


  session.setAttribute("vehiculos", vehiculos);


  
%>


<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Taller</title>
</head>
<body>

<h1>Menu principal</h1>
<p><a href="vehiculos/vehiculos.jsp">Vehiculos</a></p>

</body>
</html>