<%@ page language='java' contentType="text/html" %>

<%@page import="com.llvillar.libreria.model.Libro"%>
<%@page import="com.llvillar.libreria.model.Socio"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>


<%@page session="true" %>

<%

  Libro libro = new Libro();
  libro.setIsbn("1");
  libro.setAutor("Miguel de cervantes");
  libro.setTitulo("El quijote");

  Libro libro1 = new Libro();
  libro1.setIsbn("2");
  libro1.setAutor("JJ Tolkins");
  libro1.setTitulo("El señor de los anillos");

  Libro libro3 = new Libro();
  libro3.setIsbn("3");
  libro3.setAutor("Elvira Lindo");
  libro3.setTitulo("Manolito Gafotas");

  List<Libro> libros = new ArrayList<Libro>();
  libros.add(libro);
  libros.add(libro1);
  libros.add(libro3);

  session.setAttribute("libros", libros);


  Socio socio = new Socio();
  socio.setCodigo(1);
  socio.setNombre("Miguel Angel");
  socio.setApellidos("Vasco Herrera");
  socio.setDni("52688475Z");


  Socio socio1 = new Socio();
  socio1.setCodigo(2);
  socio1.setNombre("Jose María");
  socio1.setApellidos("Belmonte Ronaldo");
  socio1.setDni("85856475Y");

  Socio socio2 = new Socio();
  socio2.setCodigo(3);
  socio2.setNombre("Andrés");
  socio2.setApellidos("Lionel Robinho");
  socio2.setDni("78546935X");

  List<Socio> socios = new ArrayList<Socio>();
  socios.add(socio);
  socios.add(socio1);
  socios.add(socio2);

  session.setAttribute("socios", socios);
%>


<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Libreria</title>
</head>
<body>

<h1>Menu principal</h1>
<p><a href="libros/libros.jsp">Libros</a></p>
<p><a href="socios/socios.jsp">Socios</a></p>

</body>
</html>