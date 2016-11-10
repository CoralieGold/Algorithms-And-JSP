<%@include file="index.jsp" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Iterator" %>
<%
	String infixe = request.getParameter("a"); // je créé des chaînes de caractères pour réccupérer ce qui a été mis dans les zones de textes

	for (int i = 0; i <= infixe.length() ; i = i + 1) // tant qu'on n'est pas arrivé à la fin de la notation on enlève les parenthèses quand on en trouve et on met les opérandes et les opérateurs dans des listes séparées, pour les remettre dans l'ordre postfixe à la fin
	{
		if (infixe.charAt(i) == '(')
		{
			String c1 = infixe.substring(0,i-1);
			String c2 = infixe.substring(i+1,infixe.length());
			infixe = c1 + c2;
		}
	}
	out.println("<div id='resultat'>" + infixe + "<br /><br /><br /></div>");
%>
