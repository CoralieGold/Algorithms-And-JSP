<%@include file="index.jsp" %>
<%		

	String message = new String("Il n'y aura jamais de mauvais album de Nirvana. Nous tuerons le groupe avant.");

	String chaine = request.getParameter("a"); // je créé des chaînes de caractères pour réccupérer ce qui a été mis dans les zones de texte

	int tailleChaine = chaine.length();
	int tailleMessage = message.length();


	int i, j;

	i = 0;
	while (i < tailleMessage - tailleChaine) // on regarde dans le texte (en enlève la taille de la chaîne, car sinon on dépasserait le tableau)
	{
		j = 0;
		while (j < tailleChaine) // on parcourt le texte à rechercher
		{
			if (chaine.charAt(j) == message.charAt(i)) //on compare les lettres des deux chaînes de caractère
			{
				j = j + 1;
			}
			else
			{
				j = 0;
			}
		}
		i = i + 1;
	}
%>
