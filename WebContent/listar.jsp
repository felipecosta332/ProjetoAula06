<%@ page import="aula06.Encontro" %>
<%@ page import="java.util.List" %>
<html>
	<head>
		<title>Lista de encontros</title>
	</head>
	<body>
		<h3>Lista de encontros:</h3>
		<table border="1">
		  <tr>
		     <td>Nome</td>
		     <td>Local</td>
		     <td>Motivo</td>
		     <td>Data</td>
		  </tr>
		<%
		List<Encontro> lista = (List<Encontro>) request.getAttribute("lista");
		for (Encontro encontro : lista) {
		%>
		  <tr>
		     <td><%= encontro.getNomePessoa() %></td>
		     <td><%= encontro.getLocal() %></td>
		     <td><%= encontro.getMotivo() %></td>
		     <td><%= encontro.getData().toLocaleString() %></td>
		  </tr>
		<%
		}
		%>
		</table>
		<BR><BR>
		<a href="ServletControlador">Voltar ao menu</a>
	</body>
</html>