<%@ page language='java' contentType="text/html" %>

<%@page import="com.jaimecorg.taller.model.Vehiculo"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>


<%@page session="true" %>

<%
    
    List<Vehiculo> vehiculos = new ArrayList<Vehiculo>;

    session.setAttribute("vehiculos", vehiculos);

    response.sendRedirect("vehiculos.jsp");


%>


