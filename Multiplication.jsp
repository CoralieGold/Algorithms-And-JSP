<%@include file="index.jsp" %>
<%
	int i, resultat;
	String nombre = request.getParameter("a"); // je créé des chaînes de caractères pour réccupérer ce qui a été mis dans les zones de textes
	int a = Integer.parseInt(nombre); // je transforme les chaînes de caractères en entier, car il s'agit de nombres

	out.println("<div id='resultat'>");
	for (i=0; i<=10; i = i + 1)
	{
		resultat = i * a;
		out.println(i + "*" + a + "=" + resultat + "<br />");
	}
	out.println("<br /><br /><br /></div>");
%>
