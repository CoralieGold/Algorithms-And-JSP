<%@include file="index.jsp" %>
<%
	int i, j, x , y; // i correspond à une variable d'incrémentation pour remplir le tableau, j correspond aussi à une variable d'incrémentation mais pour le "barage" des nombres non premiers, x correspond à une variable d'incrémentation pour l'affiche des nombres premiers, y correspond à une variable d'incrémentation pour le "barage"
	String nombre = request.getParameter("n"); // je créé des chaînes de caractères pour réccupérer ce qui a été mis dans les zones de textes
	int n = Integer.parseInt(nombre); // je transforme les chaînes de caractères en entier, car il s'agit de nombres
		
	int tab[] = new int[n + 1];

	for (i = 0; i <= n; i = i + 1) // on remplit le tableau : si i = 0, on met 0 dans tab[0] par exemple, pour remplir de 0 au nombre choisi par l'utilsateur
	{
		tab[i] = i;
	}

	tab[1] = 0; // on met 0 à la place de 1
	j = 2; // on démarre le "barage" à 2, car 0 et 1 ne doivent pas être considérés
	y = 2;

	while (j <= n/2) // pour ne pas dépasser le tableau, on s'arrête à n / 2, tous les nombres non premiers étant de toute façon déjà "barrés" avant
	{
		if (tab [j] == 0) // on regarde chaque case et si la valeur est 0, on passe à la case suivante. On considère que 0 est la valeur permettant de savoir si un nombre est ou non "barrés"
		{
			j = j + 1;
		}
		else // si le nombre n'est pas encore barré, on barre tous ses multiples, puis on passe au nombre suivant en incrémentant j
		{
			while (y <= n)
			{
				tab[y + j] = 0;
				y = y + j;
			}
			j = j + 1;
		}
	}

	x = 2; // comme pour le "barage", on démarre à 2 pour l'affichage

	out.println("<div id='resultat'>");
	while (x <= n)
	{
		if (tab[x] == 0) // on n'affiche pas les nombres égaux à 0, c'est à dire les nombres "barrés"
		{
			x = x + 1;
		}
		else // on affiche uniquement les nombres qui sont premiers, et donc dont la valeur est différente de 0
		{
			out.println(tab[x]);
			x = x + 1;
		}
	}
	out.println("<br /><br /><br /></div>");
%>
