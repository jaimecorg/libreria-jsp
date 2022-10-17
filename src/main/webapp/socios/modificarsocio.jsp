<%@ page language='java' contentType="text/html" %>

<%@page import="com.llvillar.libreria.model.Socio"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>


<%@page session="true" %>

<%
    int codigo = request.getParameter("codigo");
    String nombre = request.getParameter("nombre");
    String apellidos = request.getParameter("apellidos");
    String dni = request.getParameter("dni");

    Socio socio = new Socio();

    socio.setCodigo(codigo);
    socio.setNombre(nombre);
    socio.setApellidos(apellidos);
    socio.setDni(dni);

    List<Socio> socios = (List) session.getAttribute("socios");
    
    socios.remove(socio);
    socios.add(socio);

    session.setAttribute("socios", socios);

    response.sendRedirect("socios.jsp");
%>
