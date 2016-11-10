<%@include file="index.jsp" %>
<%
	//initialisation valeurs du tableau

	int tab[] = new int[30];

	String jour1 = request.getParameter("1"); // je créé des chaînes de caractères pour réccupérer ce qui a été mis dans les zones de textes
	tab[0] = Integer.parseInt(jour1); // je transforme les chaînes de caractères en entier, car il s'agit de nombres
	
	String jour2 = request.getParameter("2");
	tab[1] = Integer.parseInt(jour2);

	String jour3 = request.getParameter("3");
	tab[2] = Integer.parseInt(jour3);

	String jour4 = request.getParameter("4");
	tab[3] = Integer.parseInt(jour4);

	String jour5 = request.getParameter("5");
	tab[4] = Integer.parseInt(jour5);

	String jour6 = request.getParameter("6");
	tab[5] = Integer.parseInt(jour6);

	String jour7 = request.getParameter("7");
	tab[6] = Integer.parseInt(jour7);

	String jour8 = request.getParameter("8");
	tab[7] = Integer.parseInt(jour8);

	String jour9 = request.getParameter("9");
	tab[8] = Integer.parseInt(jour9);

	String jour10 = request.getParameter("10");
	tab[9] = Integer.parseInt(jour10);

	String jour11 = request.getParameter("11");
	tab[10] = Integer.parseInt(jour11);

	String jour12 = request.getParameter("12");
	tab[11] = Integer.parseInt(jour12);

	String jour13 = request.getParameter("13");
	tab[12] = Integer.parseInt(jour13);

	String jour14 = request.getParameter("14");
	tab[13] = Integer.parseInt(jour14);

	String jour15 = request.getParameter("15");
	tab[14] = Integer.parseInt(jour15);

	String jour16 = request.getParameter("16");
	tab[15] = Integer.parseInt(jour16);

	String jour17 = request.getParameter("17");
	tab[16] = Integer.parseInt(jour17);

	String jour18 = request.getParameter("18");
	tab[17] = Integer.parseInt(jour18);

	String jour19 = request.getParameter("19");
	tab[18] = Integer.parseInt(jour19);

	String jour20 = request.getParameter("20");
	tab[19] = Integer.parseInt(jour20);

	String jour21 = request.getParameter("21");
	tab[20] = Integer.parseInt(jour21);

	String jour22 = request.getParameter("22");
	tab[21] = Integer.parseInt(jour22);

	String jour23 = request.getParameter("23");
	tab[22] = Integer.parseInt(jour23);

	String jour24 = request.getParameter("24");
	tab[23] = Integer.parseInt(jour24);

	String jour25 = request.getParameter("25");
	tab[24] = Integer.parseInt(jour25);

	String jour26 = request.getParameter("26");
	tab[25] = Integer.parseInt(jour26);

	String jour27 = request.getParameter("27");
	tab[26] = Integer.parseInt(jour27);

	String jour28 = request.getParameter("28");
	tab[27] = Integer.parseInt(jour28);

	String jour29 = request.getParameter("29");
	tab[28] = Integer.parseInt(jour29);

	String jour30 = request.getParameter("30");
	tab[29] = Integer.parseInt(jour30);




	out.println("<div id='resultat'>");


	//position

	String position = request.getParameter("position");
	int valeur = Integer.parseInt(position);

	for (int i = 0; i <= 29; i = i + 1)
	{
		if (tab[i] == valeur) // si la valeur de la case correspond à la valeur donnée par l'utilisateur, alors on affiche la case à laquelle elle est présente
		{
			out.println("La température " + valeur + " est présente à la case " + i + "<br />");
		}
	}





	//valeur max

	int max = tab[0]; // on met la valeur de la première case dans max, pour commencer
		
	for (int i = 0; i <= 29; i = i + 1)
	{
		if (max < tab[i]) // s'il existe une valeur plus grande, on la met dans max
		{
			max = tab[i];
		}
	}
	out.println("La température maximale est : " + max + "<br />");






	//valeur min

	int min = tab[0];
		
	for (int i = 0; i <= 29; i = i + 1)
	{
		if (min > tab[i])
		{
				min = tab[i];
		}
	}
	out.println("La valeur minimale est : " + min + "<br />");




	//Moyenne

	int moyenne, somme;

	somme = 0;
	moyenne = 0;
		
	for (int i = 0; i <= 29; i = i + 1) // on fait la somme de toutes les valeurs du tableau
	{
		somme = somme + tab[i];
	}
	moyenne = somme / 30; // on divise la somme par le nombre de cases
	out.println("La valeur moyenne des températures est : " + moyenne + "<br /><br /><br /><br />");







	//affichage barchart

	int i, j;
	int nb_temperature = 0; // on ajoute une variable qui permet de savoir combien de températures existent

	for (i = min; i <= max; i = i + 1) // on calcule cela en regardant le nombre entre min et max
	{
		nb_temperature = nb_temperature + 1;
	}
	char tab2[][] = new char[30][nb_temperature]; // nb_temperature permet d'initialiser le tableau sur 30 jours avec le bon nombre de colonnes

	for (j = 0; j <= 29; j = j + 1) // on remplit le tableau avec les #
	{
		for (i = min; i <= max ; i = i + 1) // on part de la valeur minimale jusqu'à la valeur à telle date
		{
			tab2[j][i] = ' '; // et on met un espace à chaque case
		}
	}
		
	for (j = 0; j <= 29; j = j + 1) // on remplit le tableau avec les #
	{
		for (i = min; i <= tab[j]; i = i + 1) // on part de la valeur minimale jusqu'à la valeur à telle date
		{
			tab2[j][i] = '#'; // et on met # à chaque case
		}
	}

	for (j = 0; j <= 29; j = j + 1) // on termine par afficher le tableau
	{
		for (i = min; i <= max; i = i + 1)
		{
			out.println(tab2[j][i]);
		}
		out.println("<br />");
	}



	out.println("<br /><br /><br /></div>");


%>
