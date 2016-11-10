<%@include file="index.jsp" %>
<%
	String nombre1 = request.getParameter("a"); // je créé des chaînes de caractères pour réccupérer ce qui a été mis dans les zones de textes
	int a = Integer.parseInt(nombre1); // je transforme les chaînes de caractères en entier, car il s'agit de nombres
	
	String nombre2 = request.getParameter("b");
	int b = Integer.parseInt(nombre2);

	int somme = 0; // on initialise la somme à 0

	out.println("<div id='resultat'>Le résultat de la multiplication égyptienne de " + a + " et " + b + " est : ");

		while (b >= 1)
		{
			if(b % 2 == 0) // on vérifie si b est pair
			{
				a = a + a; // si il est pair, on ajoute a à a et on divise b par 2
				b = b / 2;
			}
			else // si b est impair
			{
				somme = somme + a; // on ajoute a à la somme
				b = b - 1; // et on décrémente b
			}
		}
		out.println(somme + "<br /><br /><br /></div>");
%>
