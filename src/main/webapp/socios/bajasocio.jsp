<%@ page language='java' contentType="text/html" %>

<%@page import="com.llvillar.libreria.model.Socio"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>


<%@page session="true" %>

<%
    int codigo = request.getParameter("codigo");

    Socio socio = new Socio();
    socio.setCodigo(codigo);


    List<Socio> socios = (List) session.getAttribute("socios");

    socios.remove(socio);

    session.setAttribute("socios", socios);

    response.sendRedirect("socios.jsp");

%>
