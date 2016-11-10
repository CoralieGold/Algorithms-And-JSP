<%@include file="index.jsp" %>
<%
	String nombre1 = request.getParameter("a"); // je créé des chaînes de caractères pour réccupérer ce qui a été mis dans les zones de textes
	int a = Integer.parseInt(nombre1); // je transforme les chaînes de caractères en entier, car il s'agit de nombres
	
	String nombre2 = request.getParameter("b");
	int b = Integer.parseInt(nombre2);

	int q = 0; //on initialise le quotient à 0

	out.println("<div id='resultat'>Le reste de la division euclidienne de " + a + " et " + b + " est : ");

	while (a >= b)
	{
		a = a - b; // on met le reste dans a
		q = q + 1; // on incrémente le quotient
	}
	out.println(a + " ; Et le quotient est : " + q + "<br /><br /><br /></div>");
%>
