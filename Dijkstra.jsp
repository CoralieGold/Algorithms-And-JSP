<%@ page import="java.util.Random" %>
<%@include file="index.jsp" %>
<%

	
	int i, j, x;
	String stockage;
	String nombre = request.getParameter("n"); // je créé des chaînes de caractères pour réccupérer ce qui a été mis dans les zones de textes
	int n = Integer.parseInt(nombre); // je transforme les chaînes de caractères en entier, car il s'agit de nombres
	String tab[] = new String[n];

	for (i = 0; i < n; i = i + 1) // on remplit le tableau avec les couleurs de cailloux
	{
		Random k = new Random();
		double d = k.nextDouble();
		if (d <= 0.3)
		{
			tab[i] = "bleu";
		}
		else
		{
			if (d > 0.3 && d <= 0.6)
			{
				tab[i] = "rouge";
			}
			else
			{
				tab[i] = "blanc";
			}
		}
	}
		
	i = -1; // correspond au dernier bleu
	j = n; // correspond au premier rouge
	x = 0; // variable de parcours
		
	while ( x < j)
	{
		if (tab[x].equals("bleu")) // on s'occupe du cas où un cailloux est bleu
		{
			stockage = tab[x]; // on sauvegarde la couleur
			tab[x] = tab[i + 1]; // on intervertit les cailloux
			tab[i + 1] = stockage;
			i = i + 1; // on incrémente
			x = x + 1;
		}
		else
		{
			if (tab[x].equals("rouge")) // comme pour le bleu, mais dans l'autre sens
			{
				stockage = tab[x];
				tab[x] = tab[j - 1];
				tab[j - 1] = stockage;
				j = j - 1;
			}
			else
			{
			 x = x + 1;
			}
		}
	}

	out.println("<div id='resultat'>");
	for ( x = 0; x < n; x = x + 1) // on affiche le tableau trié
	{
		if(tab[x].equals("bleu"))
		{
			out.println("<span class='ble'>"+tab[x]+"</span>");
		}
		else 
		{
			if(tab[x].equals("rouge"))
			{
				out.println("<span class='rou'>"+tab[x]+"</span>");
			}
			else
			{
				out.println("<span class='bla'>"+tab[x]+"</span>");
			}
		}
	}
	out.println("<br /><br /><br /></div>");
%>
