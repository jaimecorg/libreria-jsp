<%@ page language='java' contentType="text/html" %>

<%@page import="com.llvillar.libreria.model.Socio"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>


<%@page session="true" %>

<%

    int codigo = request.getParameter("codigo");
    
    List<Socio> socios = (List) session.getAttribute("socios");

    Socio socio = new Socio();
    socio.setCodigo(codigo);

    int index = socios.indexOf(socio);

    socio = socios.get(index);

%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Socio</title>
</head>
<body>

    <form action="modificarsocio.jsp" method="post">
        <label for="codigo">Codigo</label>
        <input type="number" name="codigo" id="codigo" value="<%= socio.getCodigo()%>">
        <label for="nombre">Nombre</label>
        <input type="text" name="nombre" id="nombre" value="<%= socio.getNombre()%>">
        <label for="apellidos">Apellidos</label>
        <input type="text" name="apellidos" id="apellidos" value="<%= socio.getApellidos()%>">
        <label for="dni">DNI</label>
        <input type="text" name="dni" id="dni" value="<%= socio.getDni()%>">
        <input type="submit" value="Modificar">
    </form>
    
</body>
</html>