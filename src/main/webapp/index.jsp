<%@ page language='java' contentType="text/html" %>

<%@page import="com.jaimecorg.taller.model.Vehiculo"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>


<%@page session="true" %>

<%

  Vehiculo vehiculo = new Vehiculo();
  vehiculo.setIsbn("1");
  vehiculo.setAutor("Miguel de cervantes");
  vehiculo.setTitulo("El quijote");

 

  List<Libro> libros = new ArrayList<Libro>();
  libros.add(libro);
  libros.add(libro1);
  libros.add(libro3);

  session.setAttribute("libros", libros);


  
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
<p><a href="socios/socios.jsp">Socios</a></p>

</body>
</html>