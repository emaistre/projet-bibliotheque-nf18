/*
    Ceci est un fichier généré procéduralement par le script '../python/main.py'.
    Les commandes SQL ci dessous font des insertions d'oeuvres culturelles dans la bd:
    films, livres et musiques.
    Chacune de ces oeuvres culturelles est générée aléatoirement.
    Les failles principales de ce programme sont les suivantes:
     - les titres sont peu convaincants
     - les synopsis / résumés sont peu convaincants
     - les dates ne sont pas cohérentes: un acteur né en 2020 peut jouer dans un film sorti en 2006.
*/
INSERT INTO ressource (titre, date, editeur, genre, classification) VALUES ('ramasser', TO_DATE('1975-09-17','YYYY-MM-DD'), 'Thomas Le David', 'science-fiction', 'F-NG');
INSERT INTO exemplaire (code, etat, dispo) VALUES ((select max(code) from ressource), TRUE, TRUE);
INSERT INTO film (code, duree, synopsis, langue) VALUES ((select max(code) from ressource), '101', 'Printemps plaire relever énergie compagnon lutter aide. Valeur marché vite.
Un marier charger départ conseil droite jeu. Désir autre l''un simplement fatigue.', 'fr');
INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Moreno', 'Gilles', TO_DATE('2003-03-02','YYYY-MM-DD'), 'fr');
INSERT INTO acteur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Hardy', 'Constance', TO_DATE('2021-01-31','YYYY-MM-DD'), 'fr');
INSERT INTO acteur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Raymond de Germain', 'Aurélie', TO_DATE('1975-11-27','YYYY-MM-DD'), 'fr');
INSERT INTO acteur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Nguyen-Benoit', 'Arnaude', TO_DATE('1980-06-29','YYYY-MM-DD'), 'fr');
INSERT INTO realisateur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));

INSERT INTO ressource (titre, date, editeur, genre, classification) VALUES ('briller vision cher', TO_DATE('2006-09-04','YYYY-MM-DD'), 'Isaac-Xavier Leclercq', 'polar', 'L-LE');
INSERT INTO exemplaire (code, etat, dispo) VALUES ((select max(code) from ressource), TRUE, TRUE);
INSERT INTO livre (code, isbn, resume, langue) VALUES ((select max(code) from ressource), '978-0-246-32395-8', 'Attaquer lisser en avouer plante moins exiger. Lèvre avoir douceur très silencieux regretter. Madame être exécuter clair partager.', 'fr');
INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Lecoq', 'Capucine-Capucine', TO_DATE('2014-07-07','YYYY-MM-DD'), 'fr');
INSERT INTO auteur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));

INSERT INTO ressource (titre, date, editeur, genre, classification) VALUES ('le saint', TO_DATE('1997-04-19','YYYY-MM-DD'), 'Guy Brun', 'classique', 'M-DE');
INSERT INTO exemplaire (code, etat, dispo) VALUES ((select max(code) from ressource), TRUE, TRUE);
INSERT INTO musique (code, duree) VALUES ((select max(code) from ressource), '52');
INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Bigot', 'Catherine', TO_DATE('1977-09-03','YYYY-MM-DD'), 'fr');
INSERT INTO interprete (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('de Gallet', 'Claude', TO_DATE('2015-03-14','YYYY-MM-DD'), 'fr');
INSERT INTO compositeur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));

INSERT INTO ressource (titre, date, editeur, genre, classification) VALUES ('rapporter blond', TO_DATE('2000-06-06','YYYY-MM-DD'), 'Maurice Briand', 'polar', 'L-DU');
INSERT INTO exemplaire (code, etat, dispo) VALUES ((select max(code) from ressource), TRUE, TRUE);
INSERT INTO livre (code, isbn, resume, langue) VALUES ((select max(code) from ressource), '978-1-189-13850-0', 'Étonner paysan cerveau trouver nuage appuyer. Gloire haute chef transformer vol retourner figurer large. Autre plan certainement nombre important céder résister. Trop fois or froid.', 'fr');
INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Durand-Allard', 'Thérèse', TO_DATE('1998-01-20','YYYY-MM-DD'), 'fr');
INSERT INTO auteur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));

INSERT INTO ressource (titre, date, editeur, genre, classification) VALUES ('voir', TO_DATE('2000-10-17','YYYY-MM-DD'), 'Henri Laine', 'horreur', 'L-TE');
INSERT INTO exemplaire (code, etat, dispo) VALUES ((select max(code) from ressource), TRUE, TRUE);
INSERT INTO livre (code, isbn, resume, langue) VALUES ((select max(code) from ressource), '978-1-299-21516-0', 'Certes revoir simplement ne. Comprendre aller faux autrement haine. Affaire direction accent trace sujet hiver enlever extraordinaire.', 'fr');
INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Teixeira', 'Marc', TO_DATE('1974-09-19','YYYY-MM-DD'), 'fr');
INSERT INTO auteur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));

INSERT INTO ressource (titre, date, editeur, genre, classification) VALUES ('rencontrer leur dominer', TO_DATE('1989-11-10','YYYY-MM-DD'), 'Thierry Ruiz-Leconte', 'horreur', 'F-HU');
INSERT INTO exemplaire (code, etat, dispo) VALUES ((select max(code) from ressource), TRUE, TRUE);
INSERT INTO film (code, duree, synopsis, langue) VALUES ((select max(code) from ressource), '73', 'Quel heureux absolu demande. Fruit complètement public construire réunir. Trembler poste visite anglais face haut saluer.', 'fr');
INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Bazin', 'Arnaude-Juliette', TO_DATE('2009-02-02','YYYY-MM-DD'), 'fr');
INSERT INTO acteur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Teixeira', 'Suzanne', TO_DATE('1978-09-11','YYYY-MM-DD'), 'fr');
INSERT INTO acteur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Launay', 'Danielle', TO_DATE('2011-11-19','YYYY-MM-DD'), 'fr');
INSERT INTO acteur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Hubert', 'Célina', TO_DATE('1973-01-22','YYYY-MM-DD'), 'fr');
INSERT INTO realisateur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));

INSERT INTO ressource (titre, date, editeur, genre, classification) VALUES ('dessus', TO_DATE('2004-02-20','YYYY-MM-DD'), 'Luc-Jérôme Martins', 'thriller', 'F-AR');
INSERT INTO exemplaire (code, etat, dispo) VALUES ((select max(code) from ressource), TRUE, TRUE);
INSERT INTO film (code, duree, synopsis, langue) VALUES ((select max(code) from ressource), '61', 'Arbre compagnon soirée ouvert considérer. Cheval mal adresser mentir répondre voilà désespoir.
Nu papa moins dehors respirer interroger moins. Offrir céder certainement troisième.', 'fr');
INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Langlois Le Pierre', 'Christine', TO_DATE('1993-02-10','YYYY-MM-DD'), 'fr');
INSERT INTO acteur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Seguin-Rodriguez', 'Luc', TO_DATE('1977-01-30','YYYY-MM-DD'), 'fr');
INSERT INTO acteur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Clément', 'Lucas-Daniel', TO_DATE('1990-04-28','YYYY-MM-DD'), 'fr');
INSERT INTO acteur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Boucher-Ledoux', 'François', TO_DATE('2003-11-25','YYYY-MM-DD'), 'fr');
INSERT INTO acteur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Poirier', 'Jean', TO_DATE('2008-06-19','YYYY-MM-DD'), 'fr');
INSERT INTO acteur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Arnaud Le Sanchez', 'Catherine', TO_DATE('1990-05-25','YYYY-MM-DD'), 'fr');
INSERT INTO realisateur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));

INSERT INTO ressource (titre, date, editeur, genre, classification) VALUES ('meilleur', TO_DATE('1993-09-22','YYYY-MM-DD'), 'William Barbier', 'historique', 'F-GI');
INSERT INTO exemplaire (code, etat, dispo) VALUES ((select max(code) from ressource), TRUE, TRUE);
INSERT INTO film (code, duree, synopsis, langue) VALUES ((select max(code) from ressource), '115', 'Besoin celui vide prison neuf. Bonheur peine fonder trésor officier. Volonté arbre banc poussière pur révolution paysan. Regarder saisir condition lentement parfois.', 'fr');
INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Diaz', 'Capucine', TO_DATE('2001-05-03','YYYY-MM-DD'), 'fr');
INSERT INTO acteur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Roche', 'Arthur', TO_DATE('1973-11-07','YYYY-MM-DD'), 'fr');
INSERT INTO acteur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Gilbert', 'Hugues', TO_DATE('1975-03-13','YYYY-MM-DD'), 'fr');
INSERT INTO realisateur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));

INSERT INTO ressource (titre, date, editeur, genre, classification) VALUES ('parler', TO_DATE('1982-10-21','YYYY-MM-DD'), 'Sophie Bourgeois de Blin', 'horreur', 'F-FA');
INSERT INTO exemplaire (code, etat, dispo) VALUES ((select max(code) from ressource), TRUE, TRUE);
INSERT INTO film (code, duree, synopsis, langue) VALUES ((select max(code) from ressource), '85', 'Continuer haute gouvernement. Auteur revenir rire prononcer accepter adresser. Tourner souffrance peser amour déposer.', 'fr');
INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Gérard', 'Sébastien', TO_DATE('2001-11-02','YYYY-MM-DD'), 'fr');
INSERT INTO acteur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('de Marie', 'Christelle', TO_DATE('2007-08-11','YYYY-MM-DD'), 'fr');
INSERT INTO acteur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Meunier', 'Suzanne', TO_DATE('1979-08-23','YYYY-MM-DD'), 'fr');
INSERT INTO acteur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Thierry', 'Thomas', TO_DATE('1984-07-15','YYYY-MM-DD'), 'fr');
INSERT INTO acteur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Faure', 'Antoine', TO_DATE('2019-08-28','YYYY-MM-DD'), 'fr');
INSERT INTO realisateur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));

INSERT INTO ressource (titre, date, editeur, genre, classification) VALUES ('oser', TO_DATE('2011-06-23','YYYY-MM-DD'), 'Michèle Da Costa', 'rap', 'M-GU');
INSERT INTO exemplaire (code, etat, dispo) VALUES ((select max(code) from ressource), TRUE, TRUE);
INSERT INTO musique (code, duree) VALUES ((select max(code) from ressource), '33');
INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Guillou', 'Jacqueline', TO_DATE('1991-03-08','YYYY-MM-DD'), 'fr');
INSERT INTO interprete (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));INSERT INTO compositeur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));

INSERT INTO ressource (titre, date, editeur, genre, classification) VALUES ('longtemps', TO_DATE('2018-11-28','YYYY-MM-DD'), 'Laurence Valentin', 'science-fiction', 'F-HU');
INSERT INTO exemplaire (code, etat, dispo) VALUES ((select max(code) from ressource), TRUE, TRUE);
INSERT INTO film (code, duree, synopsis, langue) VALUES ((select max(code) from ressource), '150', 'Aussi respirer par. Parole force déclarer.
Espèce dix chaîne chambre pauvre cou. Ignorer six dame forme.
Ordre réunir ailleurs de. Étranger abri même comment.', 'fr');
INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Coulon', 'Maggie', TO_DATE('1985-12-12','YYYY-MM-DD'), 'fr');
INSERT INTO acteur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Weber', 'Robert-Zacharie', TO_DATE('1983-09-27','YYYY-MM-DD'), 'fr');
INSERT INTO acteur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Collin', 'Matthieu-Édouard', TO_DATE('1996-06-12','YYYY-MM-DD'), 'fr');
INSERT INTO acteur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Delannoy', 'Christiane', TO_DATE('2009-02-16','YYYY-MM-DD'), 'fr');
INSERT INTO acteur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('de Godard', 'Marguerite', TO_DATE('1988-09-25','YYYY-MM-DD'), 'fr');
INSERT INTO acteur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Humbert', 'Benjamin', TO_DATE('1993-07-02','YYYY-MM-DD'), 'fr');
INSERT INTO realisateur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));

INSERT INTO ressource (titre, date, editeur, genre, classification) VALUES ('année argent', TO_DATE('1997-11-17','YYYY-MM-DD'), 'Adélaïde Bigot', 'horreur', 'L-LE');
INSERT INTO exemplaire (code, etat, dispo) VALUES ((select max(code) from ressource), TRUE, TRUE);
INSERT INTO livre (code, isbn, resume, langue) VALUES ((select max(code) from ressource), '978-0-05-434536-4', 'Principe fixer midi installer point caractère vague. Glisser terrain fonder acheter suffire former mine oeuvre. Changer politique inconnu suivre comme double.', 'fr');
INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Legrand Le Peron', 'Gabrielle', TO_DATE('1988-10-09','YYYY-MM-DD'), 'fr');
INSERT INTO auteur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));

INSERT INTO ressource (titre, date, editeur, genre, classification) VALUES ('gauche fusil toile', TO_DATE('1995-10-10','YYYY-MM-DD'), 'Étienne Allain', 'horreur', 'F-GI');
INSERT INTO exemplaire (code, etat, dispo) VALUES ((select max(code) from ressource), TRUE, TRUE);
INSERT INTO film (code, duree, synopsis, langue) VALUES ((select max(code) from ressource), '60', 'Maître moyen souffrir discussion examiner trop. Phrase tandis que terrain aspect.
Voyage jouer lumière. Peu cesser hôtel joli. Sourire cacher haïr plus croire membre.', 'fr');
INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('De Sousa', 'Anastasie', TO_DATE('2019-07-14','YYYY-MM-DD'), 'fr');
INSERT INTO acteur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Louis', 'Lorraine', TO_DATE('1994-12-22','YYYY-MM-DD'), 'fr');
INSERT INTO acteur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Gimenez', 'Geneviève', TO_DATE('2016-07-11','YYYY-MM-DD'), 'fr');
INSERT INTO realisateur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));

INSERT INTO ressource (titre, date, editeur, genre, classification) VALUES ('table confiance', TO_DATE('1984-11-29','YYYY-MM-DD'), 'Emmanuelle Le Goff', 'science-fiction', 'F-GU');
INSERT INTO exemplaire (code, etat, dispo) VALUES ((select max(code) from ressource), TRUE, TRUE);
INSERT INTO film (code, duree, synopsis, langue) VALUES ((select max(code) from ressource), '135', 'Joli lieu exemple rue.
Extraordinaire signe troubler pourtant fenêtre renoncer extraordinaire travailler. Peser devenir étrange roman fin parfois.', 'fr');
INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Garcia', 'Marine', TO_DATE('1978-07-08','YYYY-MM-DD'), 'fr');
INSERT INTO acteur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Dufour', 'Michelle', TO_DATE('2003-06-11','YYYY-MM-DD'), 'fr');
INSERT INTO acteur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Antoine', 'Agathe', TO_DATE('2019-07-29','YYYY-MM-DD'), 'fr');
INSERT INTO acteur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Guillou', 'Aimé', TO_DATE('1995-07-29','YYYY-MM-DD'), 'fr');
INSERT INTO acteur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Diaz', 'Julie', TO_DATE('2021-04-14','YYYY-MM-DD'), 'fr');
INSERT INTO acteur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Guillet-Navarro', 'Monique', TO_DATE('1993-03-23','YYYY-MM-DD'), 'fr');
INSERT INTO realisateur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));

INSERT INTO ressource (titre, date, editeur, genre, classification) VALUES ('maladie aucun personne', TO_DATE('1975-12-29','YYYY-MM-DD'), 'Jean de la Marchal', 'thriller', 'L-MA');
INSERT INTO exemplaire (code, etat, dispo) VALUES ((select max(code) from ressource), TRUE, TRUE);
INSERT INTO livre (code, isbn, resume, langue) VALUES ((select max(code) from ressource), '978-1-109-71804-1', 'Succès certain étrange sac folie hier. Sec déchirer quitter de commencement fuir lorsque.
Comment tourner user foule certainement paupière port.', 'fr');
INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Marie', 'Anouk', TO_DATE('1971-01-05','YYYY-MM-DD'), 'fr');
INSERT INTO auteur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));

INSERT INTO ressource (titre, date, editeur, genre, classification) VALUES ('rayon', TO_DATE('2014-09-15','YYYY-MM-DD'), 'Franck Masson', 'science-fiction', 'F-DO');
INSERT INTO exemplaire (code, etat, dispo) VALUES ((select max(code) from ressource), TRUE, TRUE);
INSERT INTO film (code, duree, synopsis, langue) VALUES ((select max(code) from ressource), '130', 'Vieil odeur gris entrer hier oublier soulever.
Certes exister terrain midi. Chance présent puissant indiquer cri lueur.
Réel aujourd''hui décrire mari race essayer. Pouvoir note trois demander.', 'fr');
INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Morel de Colas', 'Claire', TO_DATE('1986-05-07','YYYY-MM-DD'), 'fr');
INSERT INTO acteur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Gillet', 'Gérard-Julien', TO_DATE('2020-04-01','YYYY-MM-DD'), 'fr');
INSERT INTO acteur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Vidal', 'Émilie', TO_DATE('1973-01-04','YYYY-MM-DD'), 'fr');
INSERT INTO acteur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Dos Santos', 'Antoine', TO_DATE('1985-06-30','YYYY-MM-DD'), 'fr');
INSERT INTO realisateur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));

INSERT INTO ressource (titre, date, editeur, genre, classification) VALUES ('autant odeur juste', TO_DATE('1980-08-28','YYYY-MM-DD'), 'Julie Fernandes', 'rap', 'M-RO');
INSERT INTO exemplaire (code, etat, dispo) VALUES ((select max(code) from ressource), TRUE, TRUE);
INSERT INTO musique (code, duree) VALUES ((select max(code) from ressource), '47');
INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Royer', 'Auguste-Richard', TO_DATE('1987-08-04','YYYY-MM-DD'), 'fr');
INSERT INTO interprete (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));INSERT INTO compositeur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));

INSERT INTO ressource (titre, date, editeur, genre, classification) VALUES ('attirer inquiétude paysage', TO_DATE('2010-12-13','YYYY-MM-DD'), 'Marianne Boyer-Sauvage', 'rock', 'M-CO');
INSERT INTO exemplaire (code, etat, dispo) VALUES ((select max(code) from ressource), TRUE, TRUE);
INSERT INTO musique (code, duree) VALUES ((select max(code) from ressource), '39');
INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Cordier', 'Henri', TO_DATE('2017-10-13','YYYY-MM-DD'), 'fr');
INSERT INTO interprete (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));INSERT INTO compositeur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));

INSERT INTO ressource (titre, date, editeur, genre, classification) VALUES ('secret surprendre', TO_DATE('1986-02-02','YYYY-MM-DD'), 'Timothée Lefebvre de Clerc', 'pop', 'M-PA');
INSERT INTO exemplaire (code, etat, dispo) VALUES ((select max(code) from ressource), TRUE, TRUE);
INSERT INTO musique (code, duree) VALUES ((select max(code) from ressource), '37');
INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Payet-Delattre', 'Brigitte', TO_DATE('1981-12-23','YYYY-MM-DD'), 'fr');
INSERT INTO interprete (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));INSERT INTO compositeur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));

INSERT INTO ressource (titre, date, editeur, genre, classification) VALUES ('répéter', TO_DATE('2015-04-07','YYYY-MM-DD'), 'Paul Buisson', 'rap', 'M-LE');
INSERT INTO exemplaire (code, etat, dispo) VALUES ((select max(code) from ressource), TRUE, TRUE);
INSERT INTO musique (code, duree) VALUES ((select max(code) from ressource), '43');
INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Lenoir', 'Patrick', TO_DATE('2019-04-04','YYYY-MM-DD'), 'fr');
INSERT INTO interprete (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));INSERT INTO compositeur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));

INSERT INTO ressource (titre, date, editeur, genre, classification) VALUES ('voyager', TO_DATE('2014-07-10','YYYY-MM-DD'), 'Nicolas Lebreton', 'rap', 'M-CL');
INSERT INTO exemplaire (code, etat, dispo) VALUES ((select max(code) from ressource), TRUE, TRUE);
INSERT INTO musique (code, duree) VALUES ((select max(code) from ressource), '49');
INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Clerc-Petitjean', 'Charlotte', TO_DATE('1993-05-11','YYYY-MM-DD'), 'fr');
INSERT INTO interprete (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));INSERT INTO compositeur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));

INSERT INTO ressource (titre, date, editeur, genre, classification) VALUES ('pourtant', TO_DATE('1979-10-05','YYYY-MM-DD'), 'Dorothée Rousseau', 'rap', 'M-GO');
INSERT INTO exemplaire (code, etat, dispo) VALUES ((select max(code) from ressource), TRUE, TRUE);
INSERT INTO musique (code, duree) VALUES ((select max(code) from ressource), '50');
INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Gonzalez', 'Thierry', TO_DATE('1982-07-25','YYYY-MM-DD'), 'fr');
INSERT INTO interprete (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));INSERT INTO compositeur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));

INSERT INTO ressource (titre, date, editeur, genre, classification) VALUES ('alors pitié nu', TO_DATE('1986-07-19','YYYY-MM-DD'), 'Susanne Laine', 'science-fiction', 'F-PI');
INSERT INTO exemplaire (code, etat, dispo) VALUES ((select max(code) from ressource), TRUE, TRUE);
INSERT INTO film (code, duree, synopsis, langue) VALUES ((select max(code) from ressource), '92', 'Rompre détruire rendre rencontre remettre oeil. Chance pauvre moitié oh avenir journal prévenir. Sommet retomber désirer retenir printemps coûter cheveu.', 'fr');
INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Pascal', 'Alexandrie', TO_DATE('2016-01-02','YYYY-MM-DD'), 'fr');
INSERT INTO acteur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Guyon', 'Geneviève-Chantal', TO_DATE('2010-04-16','YYYY-MM-DD'), 'fr');
INSERT INTO acteur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Martin', 'Marthe', TO_DATE('1973-04-10','YYYY-MM-DD'), 'fr');
INSERT INTO acteur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Clerc', 'Alexandria-Brigitte', TO_DATE('1991-08-05','YYYY-MM-DD'), 'fr');
INSERT INTO acteur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Pinto', 'Odette', TO_DATE('2017-10-17','YYYY-MM-DD'), 'fr');
INSERT INTO realisateur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));

INSERT INTO ressource (titre, date, editeur, genre, classification) VALUES ('cacher chasser', TO_DATE('1977-02-25','YYYY-MM-DD'), 'Roger-Roland Garnier', 'comédie', 'F-VA');
INSERT INTO exemplaire (code, etat, dispo) VALUES ((select max(code) from ressource), TRUE, TRUE);
INSERT INTO film (code, duree, synopsis, langue) VALUES ((select max(code) from ressource), '149', 'Long charge peine fenêtre réduire. Discuter travailler salut seul dix nature.
Avec devant salut. Différent montagne sentiment leur mari noir.', 'fr');
INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('du Samson', 'Timothée', TO_DATE('1977-04-26','YYYY-MM-DD'), 'fr');
INSERT INTO acteur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Aubert de la Bousquet', 'Michel', TO_DATE('2020-03-21','YYYY-MM-DD'), 'fr');
INSERT INTO acteur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Vaillant', 'Victor', TO_DATE('2005-07-04','YYYY-MM-DD'), 'fr');
INSERT INTO realisateur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));

INSERT INTO ressource (titre, date, editeur, genre, classification) VALUES ('parfaitement', TO_DATE('1996-03-16','YYYY-MM-DD'), 'Charles-Robert Picard', 'rap', 'M-BR');
INSERT INTO exemplaire (code, etat, dispo) VALUES ((select max(code) from ressource), TRUE, TRUE);
INSERT INTO musique (code, duree) VALUES ((select max(code) from ressource), '52');
INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Breton', 'René', TO_DATE('1994-08-27','YYYY-MM-DD'), 'fr');
INSERT INTO interprete (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));INSERT INTO compositeur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));

INSERT INTO ressource (titre, date, editeur, genre, classification) VALUES ('loi erreur', TO_DATE('1983-10-05','YYYY-MM-DD'), 'Alphonse Leduc', 'horreur', 'L-FE');
INSERT INTO exemplaire (code, etat, dispo) VALUES ((select max(code) from ressource), TRUE, TRUE);
INSERT INTO livre (code, isbn, resume, langue) VALUES ((select max(code) from ressource), '978-1-77243-715-7', 'Succès dégager prendre pendre saison voir fine mal. Sol quel effet spectacle.', 'fr');
INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Fernandez de la Bruneau', 'Luc', TO_DATE('1997-01-05','YYYY-MM-DD'), 'fr');
INSERT INTO auteur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));

INSERT INTO ressource (titre, date, editeur, genre, classification) VALUES ('dieu', TO_DATE('1992-05-11','YYYY-MM-DD'), 'Martine Diaz', 'science-fiction', 'L-GU');
INSERT INTO exemplaire (code, etat, dispo) VALUES ((select max(code) from ressource), TRUE, TRUE);
INSERT INTO livre (code, isbn, resume, langue) VALUES ((select max(code) from ressource), '978-1-80639-752-5', 'Droite vision cinquante. Habitant recevoir parent pencher.
Repas train plan eh. Asseoir règle camarade début donner devoir envoyer.', 'fr');
INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Guérin', 'Geneviève-Margaret', TO_DATE('2014-08-23','YYYY-MM-DD'), 'fr');
INSERT INTO auteur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));

INSERT INTO ressource (titre, date, editeur, genre, classification) VALUES ('soit patron serrer', TO_DATE('2001-09-04','YYYY-MM-DD'), 'Henri Denis Le Laine', 'historique', 'F-RA');
INSERT INTO exemplaire (code, etat, dispo) VALUES ((select max(code) from ressource), TRUE, TRUE);
INSERT INTO film (code, duree, synopsis, langue) VALUES ((select max(code) from ressource), '97', 'Émotion inventer arracher. Danger inventer barbe vendre.
Fauteuil jaune ici blanc importance rejeter jeunesse type. Bête prétendre couche lien clair puissant. En nous drame large endroit ordre froid.', 'fr');
INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Gallet', 'Marine', TO_DATE('1992-07-13','YYYY-MM-DD'), 'fr');
INSERT INTO acteur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('de la Colas', 'Manon', TO_DATE('1983-01-17','YYYY-MM-DD'), 'fr');
INSERT INTO acteur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Lucas', 'Colette', TO_DATE('2014-12-14','YYYY-MM-DD'), 'fr');
INSERT INTO acteur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Thomas de Thomas', 'Édith', TO_DATE('1995-02-12','YYYY-MM-DD'), 'fr');
INSERT INTO acteur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Raymond', 'Juliette', TO_DATE('1980-04-13','YYYY-MM-DD'), 'fr');
INSERT INTO realisateur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));

INSERT INTO ressource (titre, date, editeur, genre, classification) VALUES ('corps bord travail', TO_DATE('1977-04-09','YYYY-MM-DD'), 'Emmanuel Seguin', 'polar', 'L-PA');
INSERT INTO exemplaire (code, etat, dispo) VALUES ((select max(code) from ressource), TRUE, TRUE);
INSERT INTO livre (code, isbn, resume, langue) VALUES ((select max(code) from ressource), '978-0-8078-4538-7', 'Briser sans pleurer apparence regretter. Décider moi haut scène allumer chaud. Palais midi reculer lisser nuage route.', 'fr');
INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Paris', 'Victor', TO_DATE('1991-09-07','YYYY-MM-DD'), 'fr');
INSERT INTO auteur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));

INSERT INTO ressource (titre, date, editeur, genre, classification) VALUES ('résistance rêve pour', TO_DATE('1990-12-30','YYYY-MM-DD'), 'Eugène-Gilbert Charrier', 'science-fiction', 'F-AD');
INSERT INTO exemplaire (code, etat, dispo) VALUES ((select max(code) from ressource), TRUE, TRUE);
INSERT INTO film (code, duree, synopsis, langue) VALUES ((select max(code) from ressource), '73', 'Paupière crise fumée plaisir. Égal pousser seconde plaisir.
Bleu bas naissance accompagner nord poussière. Briser front champ prince savoir ensuite espace. Voir adresser tapis goutte.', 'fr');
INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Guyon', 'Robert-Emmanuel', TO_DATE('2006-01-01','YYYY-MM-DD'), 'fr');
INSERT INTO acteur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Buisson', 'Olivier', TO_DATE('1999-09-30','YYYY-MM-DD'), 'fr');
INSERT INTO acteur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Adam', 'Grégoire', TO_DATE('2018-07-16','YYYY-MM-DD'), 'fr');
INSERT INTO realisateur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));

INSERT INTO ressource (titre, date, editeur, genre, classification) VALUES ('que', TO_DATE('1979-01-16','YYYY-MM-DD'), 'André Delorme', 'thriller', 'L-FA');
INSERT INTO exemplaire (code, etat, dispo) VALUES ((select max(code) from ressource), TRUE, TRUE);
INSERT INTO livre (code, isbn, resume, langue) VALUES ((select max(code) from ressource), '978-1-61606-470-9', 'Goutte sujet bas grave continuer hasard. Lisser parole patron.
Accuser imposer pays principe. Service armer droit retourner défendre.', 'fr');
INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Faure', 'Philippine', TO_DATE('1996-11-06','YYYY-MM-DD'), 'fr');
INSERT INTO auteur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));

INSERT INTO ressource (titre, date, editeur, genre, classification) VALUES ('un', TO_DATE('1988-07-18','YYYY-MM-DD'), 'Bernard Perrot', 'classique', 'M-CH');
INSERT INTO exemplaire (code, etat, dispo) VALUES ((select max(code) from ressource), TRUE, TRUE);
INSERT INTO musique (code, duree) VALUES ((select max(code) from ressource), '47');
INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Barthelemy', 'Matthieu', TO_DATE('1991-04-06','YYYY-MM-DD'), 'fr');
INSERT INTO interprete (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Chartier', 'Timothée', TO_DATE('1996-04-29','YYYY-MM-DD'), 'fr');
INSERT INTO compositeur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));

INSERT INTO ressource (titre, date, editeur, genre, classification) VALUES ('dessus secours fuir', TO_DATE('1982-12-02','YYYY-MM-DD'), 'Timothée Hernandez', 'classique', 'M-DE');
INSERT INTO exemplaire (code, etat, dispo) VALUES ((select max(code) from ressource), TRUE, TRUE);
INSERT INTO musique (code, duree) VALUES ((select max(code) from ressource), '36');
INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Brunet', 'Philippe', TO_DATE('2006-11-19','YYYY-MM-DD'), 'fr');
INSERT INTO interprete (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('de Guillon', 'Christine', TO_DATE('1973-02-07','YYYY-MM-DD'), 'fr');
INSERT INTO compositeur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));

INSERT INTO ressource (titre, date, editeur, genre, classification) VALUES ('exécuter', TO_DATE('1979-12-10','YYYY-MM-DD'), 'Gérard Bigot', 'rap', 'M-DE');
INSERT INTO exemplaire (code, etat, dispo) VALUES ((select max(code) from ressource), TRUE, TRUE);
INSERT INTO musique (code, duree) VALUES ((select max(code) from ressource), '39');
INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('de la Samson', 'Édouard', TO_DATE('2003-01-26','YYYY-MM-DD'), 'fr');
INSERT INTO interprete (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));INSERT INTO compositeur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));

INSERT INTO ressource (titre, date, editeur, genre, classification) VALUES ('vue fruit diriger', TO_DATE('1983-02-26','YYYY-MM-DD'), 'Chantal Costa-Devaux', 'thriller', 'F-LE');
INSERT INTO exemplaire (code, etat, dispo) VALUES ((select max(code) from ressource), TRUE, TRUE);
INSERT INTO film (code, duree, synopsis, langue) VALUES ((select max(code) from ressource), '131', 'Réveiller content marcher décider ensemble sentiment croix problème. Me sujet désormais leur attirer libre rang. Danser visage satisfaire social foule.', 'fr');
INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Benoit-Buisson', 'Hortense', TO_DATE('2006-08-24','YYYY-MM-DD'), 'fr');
INSERT INTO acteur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Berger', 'Élise', TO_DATE('2012-08-15','YYYY-MM-DD'), 'fr');
INSERT INTO acteur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Grondin', 'Inès', TO_DATE('2007-01-07','YYYY-MM-DD'), 'fr');
INSERT INTO acteur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Nguyen', 'Agathe', TO_DATE('2009-06-26','YYYY-MM-DD'), 'fr');
INSERT INTO acteur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Petitjean', 'René', TO_DATE('2002-12-31','YYYY-MM-DD'), 'fr');
INSERT INTO acteur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Le Roux', 'Richard', TO_DATE('2017-01-14','YYYY-MM-DD'), 'fr');
INSERT INTO realisateur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));

INSERT INTO ressource (titre, date, editeur, genre, classification) VALUES ('assurer juste tenir', TO_DATE('1978-01-16','YYYY-MM-DD'), 'Julien Leclercq du Vallet', 'rock', 'M-PA');
INSERT INTO exemplaire (code, etat, dispo) VALUES ((select max(code) from ressource), TRUE, TRUE);
INSERT INTO musique (code, duree) VALUES ((select max(code) from ressource), '55');
INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Paris', 'Arthur', TO_DATE('2007-04-08','YYYY-MM-DD'), 'fr');
INSERT INTO interprete (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));INSERT INTO compositeur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));

INSERT INTO ressource (titre, date, editeur, genre, classification) VALUES ('habitude', TO_DATE('2009-08-04','YYYY-MM-DD'), 'Bertrand Simon', 'science-fiction', 'F-LÉ');
INSERT INTO exemplaire (code, etat, dispo) VALUES ((select max(code) from ressource), TRUE, TRUE);
INSERT INTO film (code, duree, synopsis, langue) VALUES ((select max(code) from ressource), '69', 'Cuisine bas direction passé argent partout. Importer liberté prix pur approcher.
Joue discussion fuir rentrer falloir goût. Recommencer quitter ça suite éclairer geste espoir.', 'fr');
INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Besnard de la Devaux', 'Thérèse', TO_DATE('1982-03-10','YYYY-MM-DD'), 'fr');
INSERT INTO acteur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('De Oliveira', 'Georges', TO_DATE('2009-10-28','YYYY-MM-DD'), 'fr');
INSERT INTO acteur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Lévy du Fontaine', 'Bernard', TO_DATE('1981-03-20','YYYY-MM-DD'), 'fr');
INSERT INTO realisateur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));

INSERT INTO ressource (titre, date, editeur, genre, classification) VALUES ('qualité religion tel', TO_DATE('1973-12-25','YYYY-MM-DD'), 'Gabriel Delmas-Vallet', 'thriller', 'F-LA');
INSERT INTO exemplaire (code, etat, dispo) VALUES ((select max(code) from ressource), TRUE, TRUE);
INSERT INTO film (code, duree, synopsis, langue) VALUES ((select max(code) from ressource), '80', 'Vous autre voix. Tout nombre machine lourd durer fruit. Général partager tôt ou inutile.
Vivre souffrance société dépasser. Fuir prier elle direction durant. Fumée visible prince mille.', 'fr');
INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('de la Carpentier', 'Anne', TO_DATE('1979-09-03','YYYY-MM-DD'), 'fr');
INSERT INTO acteur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Le Boucher', 'Martine', TO_DATE('2016-05-20','YYYY-MM-DD'), 'fr');
INSERT INTO acteur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Bertrand', 'Colette', TO_DATE('1980-06-12','YYYY-MM-DD'), 'fr');
INSERT INTO acteur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Lacombe', 'Anne', TO_DATE('2000-05-04','YYYY-MM-DD'), 'fr');
INSERT INTO realisateur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));

INSERT INTO ressource (titre, date, editeur, genre, classification) VALUES ('cesser avant', TO_DATE('2008-11-17','YYYY-MM-DD'), 'Aimée Vincent Le Mallet', 'horreur', 'F-PI');
INSERT INTO exemplaire (code, etat, dispo) VALUES ((select max(code) from ressource), TRUE, TRUE);
INSERT INTO film (code, duree, synopsis, langue) VALUES ((select max(code) from ressource), '120', 'Premier surveiller compter extraordinaire naturellement impression. Agiter autorité respecter attendre.
Mauvais passage taille obéir ne recueillir professeur. Éclater même pas.', 'fr');
INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Lecomte', 'Aimé', TO_DATE('1986-12-04','YYYY-MM-DD'), 'fr');
INSERT INTO acteur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Gérard', 'Célina', TO_DATE('2001-04-12','YYYY-MM-DD'), 'fr');
INSERT INTO acteur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('de Pruvost', 'Maggie', TO_DATE('2017-08-16','YYYY-MM-DD'), 'fr');
INSERT INTO acteur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Gaudin', 'Émile', TO_DATE('1997-03-01','YYYY-MM-DD'), 'fr');
INSERT INTO acteur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Pierre', 'Marcelle', TO_DATE('1976-01-16','YYYY-MM-DD'), 'fr');
INSERT INTO realisateur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));

INSERT INTO ressource (titre, date, editeur, genre, classification) VALUES ('journal', TO_DATE('1993-04-17','YYYY-MM-DD'), 'Colette-Suzanne Fontaine', 'thriller', 'F-BO');
INSERT INTO exemplaire (code, etat, dispo) VALUES ((select max(code) from ressource), TRUE, TRUE);
INSERT INTO film (code, duree, synopsis, langue) VALUES ((select max(code) from ressource), '93', 'Ou fil honte. Matin ramener aspect rester sourire relation malade.
Chacun parent pensée te argent. Mine pencher mon bête auteur froid changer chemise.', 'fr');
INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Letellier Le Couturier', 'Dorothée', TO_DATE('1988-06-11','YYYY-MM-DD'), 'fr');
INSERT INTO acteur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Roux Le Collin', 'Thierry', TO_DATE('1978-04-04','YYYY-MM-DD'), 'fr');
INSERT INTO acteur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Jourdan', 'Isaac', TO_DATE('1983-05-24','YYYY-MM-DD'), 'fr');
INSERT INTO acteur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Bonneau de la Pineau', 'Thierry', TO_DATE('2010-10-10','YYYY-MM-DD'), 'fr');
INSERT INTO realisateur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));

INSERT INTO ressource (titre, date, editeur, genre, classification) VALUES ('grâce silence', TO_DATE('1986-10-29','YYYY-MM-DD'), 'Gabrielle Coulon', 'polar', 'L-GA');
INSERT INTO exemplaire (code, etat, dispo) VALUES ((select max(code) from ressource), TRUE, TRUE);
INSERT INTO livre (code, isbn, resume, langue) VALUES ((select max(code) from ressource), '978-1-320-29070-8', 'Porter ça fusil nuage. Lisser écarter conclure apparaître vite tourner contraire.
Séparer prévenir mort article principe prix. Mot besoin planche contenir. Mouvement cuisine etc science dépasser.', 'fr');
INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Gaillard', 'Laurent', TO_DATE('2018-03-31','YYYY-MM-DD'), 'fr');
INSERT INTO auteur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));

INSERT INTO ressource (titre, date, editeur, genre, classification) VALUES ('premier dépasser mouvement', TO_DATE('1997-08-05','YYYY-MM-DD'), 'Jules Gosselin', 'science-fiction', 'F-LE');
INSERT INTO exemplaire (code, etat, dispo) VALUES ((select max(code) from ressource), TRUE, TRUE);
INSERT INTO film (code, duree, synopsis, langue) VALUES ((select max(code) from ressource), '114', 'Angoisse monsieur réussir hiver paquet remercier doux taire. Chanter qui former soirée.
Prouver seuil sou coeur exiger juger monsieur entrer. Premier tard lutter conseil demi triste.', 'fr');
INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Joly', 'Maggie', TO_DATE('2003-01-11','YYYY-MM-DD'), 'fr');
INSERT INTO acteur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Bourdon', 'Paul', TO_DATE('2006-09-02','YYYY-MM-DD'), 'fr');
INSERT INTO acteur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Le Leroux', 'Bernard', TO_DATE('1978-04-05','YYYY-MM-DD'), 'fr');
INSERT INTO acteur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Le Guérin', 'Aimé', TO_DATE('1976-12-16','YYYY-MM-DD'), 'fr');
INSERT INTO realisateur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));

INSERT INTO ressource (titre, date, editeur, genre, classification) VALUES ('arrière contre paupière', TO_DATE('2010-05-27','YYYY-MM-DD'), 'Aimé Techer', 'thriller', 'L-DU');
INSERT INTO exemplaire (code, etat, dispo) VALUES ((select max(code) from ressource), TRUE, TRUE);
INSERT INTO livre (code, isbn, resume, langue) VALUES ((select max(code) from ressource), '978-1-69194-798-0', 'Brusquement train grain réflexion matière devoir. Moindre erreur rare chasser saint ni. Réduire double chute énorme durant façon presser.', 'fr');
INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('du Bonnet', 'Adrien', TO_DATE('2007-08-11','YYYY-MM-DD'), 'fr');
INSERT INTO auteur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));

INSERT INTO ressource (titre, date, editeur, genre, classification) VALUES ('selon aventure voir', TO_DATE('1999-06-27','YYYY-MM-DD'), 'Aurore Marion-Denis', 'science-fiction', 'F-RO');
INSERT INTO exemplaire (code, etat, dispo) VALUES ((select max(code) from ressource), TRUE, TRUE);
INSERT INTO film (code, duree, synopsis, langue) VALUES ((select max(code) from ressource), '117', 'Cesse fort juge loup nuit commander surtout asseoir.
Nourrir remonter chaque chemin causer. Déchirer partie secours étouffer carte humide. Aucun maladie jamais si vague rang recueillir surprendre.', 'fr');
INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Gallet', 'Stéphane', TO_DATE('2018-11-16','YYYY-MM-DD'), 'fr');
INSERT INTO acteur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Leclercq', 'Margaux', TO_DATE('2012-12-27','YYYY-MM-DD'), 'fr');
INSERT INTO acteur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Jourdan de la Martin', 'Gérard', TO_DATE('1988-05-13','YYYY-MM-DD'), 'fr');
INSERT INTO acteur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Didier-Guyot', 'Éric', TO_DATE('2001-06-24','YYYY-MM-DD'), 'fr');
INSERT INTO acteur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Gillet-Lecoq', 'Daniel', TO_DATE('2013-08-03','YYYY-MM-DD'), 'fr');
INSERT INTO acteur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Rousseau', 'Jules', TO_DATE('2006-06-12','YYYY-MM-DD'), 'fr');
INSERT INTO realisateur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));

INSERT INTO ressource (titre, date, editeur, genre, classification) VALUES ('toi mouvement discours', TO_DATE('2014-05-24','YYYY-MM-DD'), 'Philippine Blanchard-Benard', 'classique', 'M-PO');
INSERT INTO exemplaire (code, etat, dispo) VALUES ((select max(code) from ressource), TRUE, TRUE);
INSERT INTO musique (code, duree) VALUES ((select max(code) from ressource), '36');
INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Wagner', 'Guy-Frédéric', TO_DATE('1985-08-06','YYYY-MM-DD'), 'fr');
INSERT INTO interprete (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Poirier-Meyer', 'Martin', TO_DATE('1994-04-25','YYYY-MM-DD'), 'fr');
INSERT INTO compositeur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));

INSERT INTO ressource (titre, date, editeur, genre, classification) VALUES ('rendre tête paraître', TO_DATE('1987-10-12','YYYY-MM-DD'), 'Nathalie Pinto-Durand', 'horreur', 'F-HA');
INSERT INTO exemplaire (code, etat, dispo) VALUES ((select max(code) from ressource), TRUE, TRUE);
INSERT INTO film (code, duree, synopsis, langue) VALUES ((select max(code) from ressource), '74', 'Neuf quand planche lisser oser sembler soudain. Remercier emmener remettre colère rouge entrée. Être reposer étoile droite beau pensée.', 'fr');
INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Parent', 'Olivie-Adélaïde', TO_DATE('2013-10-11','YYYY-MM-DD'), 'fr');
INSERT INTO acteur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Delattre', 'Guillaume', TO_DATE('2020-03-24','YYYY-MM-DD'), 'fr');
INSERT INTO acteur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Weiss-Da Silva', 'Maryse', TO_DATE('1990-07-21','YYYY-MM-DD'), 'fr');
INSERT INTO acteur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Ollivier', 'Diane', TO_DATE('1978-11-07','YYYY-MM-DD'), 'fr');
INSERT INTO acteur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Hamon', 'Philippe', TO_DATE('1993-06-11','YYYY-MM-DD'), 'fr');
INSERT INTO realisateur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));

INSERT INTO ressource (titre, date, editeur, genre, classification) VALUES ('fatigue simple', TO_DATE('1974-10-27','YYYY-MM-DD'), 'Émilie de la Rey', 'polar', 'L-PA');
INSERT INTO exemplaire (code, etat, dispo) VALUES ((select max(code) from ressource), TRUE, TRUE);
INSERT INTO livre (code, isbn, resume, langue) VALUES ((select max(code) from ressource), '978-1-4310-9160-7', 'Noire pièce pencher fixer garder traîner. Fait distance défaut intelligence coin être impossible.
Toujours disposer ensuite jambe. Bras valeur premier feu étudier.', 'fr');
INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Payet Le Cordier', 'William', TO_DATE('2007-10-01','YYYY-MM-DD'), 'fr');
INSERT INTO auteur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));

INSERT INTO ressource (titre, date, editeur, genre, classification) VALUES ('chat cacher', TO_DATE('2011-06-11','YYYY-MM-DD'), 'André Hubert Le Rémy', 'classique', 'M-LE');
INSERT INTO exemplaire (code, etat, dispo) VALUES ((select max(code) from ressource), TRUE, TRUE);
INSERT INTO musique (code, duree) VALUES ((select max(code) from ressource), '49');
INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Mary', 'Roger', TO_DATE('1982-11-25','YYYY-MM-DD'), 'fr');
INSERT INTO interprete (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Lemaître', 'Stéphanie', TO_DATE('1992-03-10','YYYY-MM-DD'), 'fr');
INSERT INTO compositeur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));

INSERT INTO ressource (titre, date, editeur, genre, classification) VALUES ('tombe hors nourrir', TO_DATE('2016-06-26','YYYY-MM-DD'), 'Édouard-Roger Auger', 'historique', 'L-RÉ');
INSERT INTO exemplaire (code, etat, dispo) VALUES ((select max(code) from ressource), TRUE, TRUE);
INSERT INTO livre (code, isbn, resume, langue) VALUES ((select max(code) from ressource), '978-1-306-22219-8', 'Ville confier pencher est. Douceur fixer de.
Pouvoir dégager seconde de. Journal nous titre secret obtenir âgé. Plein sous souffrance bataille.', 'fr');
INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Rémy-Rossi', 'Gilbert', TO_DATE('1995-02-07','YYYY-MM-DD'), 'fr');
INSERT INTO auteur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));

INSERT INTO ressource (titre, date, editeur, genre, classification) VALUES ('recommencer nez', TO_DATE('2000-04-20','YYYY-MM-DD'), 'Benoît Delattre', 'horreur', 'L-PO');
INSERT INTO exemplaire (code, etat, dispo) VALUES ((select max(code) from ressource), TRUE, TRUE);
INSERT INTO livre (code, isbn, resume, langue) VALUES ((select max(code) from ressource), '978-0-681-55723-9', 'Portier mince presque frais odeur retour verser fine. Tendre anglais non société émotion.', 'fr');
INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Pons du Leblanc', 'Marcelle', TO_DATE('1992-08-03','YYYY-MM-DD'), 'fr');
INSERT INTO auteur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));

INSERT INTO ressource (titre, date, editeur, genre, classification) VALUES ('absence très terrible', TO_DATE('1970-05-19','YYYY-MM-DD'), 'Marcel Launay', 'horreur', 'F-BE');
INSERT INTO exemplaire (code, etat, dispo) VALUES ((select max(code) from ressource), TRUE, TRUE);
INSERT INTO film (code, duree, synopsis, langue) VALUES ((select max(code) from ressource), '113', 'Fille inviter exister réussir. Raconter président prévoir est sauter employer. Lueur fou village tirer. Compter avec précipiter quoi.
Remettre animal après noir demi. Révéler dernier robe loin.', 'fr');
INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Marie de Legendre', 'Xavier', TO_DATE('1978-01-07','YYYY-MM-DD'), 'fr');
INSERT INTO acteur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Leconte', 'Camille', TO_DATE('1996-10-24','YYYY-MM-DD'), 'fr');
INSERT INTO acteur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Moulin-Delahaye', 'Alexandre', TO_DATE('1989-11-06','YYYY-MM-DD'), 'fr');
INSERT INTO acteur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Gimenez', 'Nicolas', TO_DATE('1978-07-20','YYYY-MM-DD'), 'fr');
INSERT INTO acteur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Gaudin', 'Virginie', TO_DATE('2019-01-30','YYYY-MM-DD'), 'fr');
INSERT INTO acteur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Bernier de Cohen', 'Frédéric', TO_DATE('2021-01-02','YYYY-MM-DD'), 'fr');
INSERT INTO realisateur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));

INSERT INTO ressource (titre, date, editeur, genre, classification) VALUES ('enfance général barbe', TO_DATE('1990-08-04','YYYY-MM-DD'), 'Paul Blanchard', 'historique', 'L-BA');
INSERT INTO exemplaire (code, etat, dispo) VALUES ((select max(code) from ressource), TRUE, TRUE);
INSERT INTO livre (code, isbn, resume, langue) VALUES ((select max(code) from ressource), '978-1-344-74926-8', 'Imposer personne nombreux cerveau table intention supérieur. Raconter prêter intention juge façon pendant. Folie dans noir françois endormir.', 'fr');
INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Bazin', 'Georges', TO_DATE('2014-09-29','YYYY-MM-DD'), 'fr');
INSERT INTO auteur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));

INSERT INTO ressource (titre, date, editeur, genre, classification) VALUES ('long même violent', TO_DATE('2013-06-18','YYYY-MM-DD'), 'Gérard Girard', 'thriller', 'L-BE');
INSERT INTO exemplaire (code, etat, dispo) VALUES ((select max(code) from ressource), TRUE, TRUE);
INSERT INTO livre (code, isbn, resume, langue) VALUES ((select max(code) from ressource), '978-1-5159-4265-8', 'Maison confier oreille certain groupe combien. Votre de énorme pendant tout face. Douleur rond projet.', 'fr');
INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Besson', 'Raymond', TO_DATE('1994-11-11','YYYY-MM-DD'), 'fr');
INSERT INTO auteur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));

INSERT INTO ressource (titre, date, editeur, genre, classification) VALUES ('grâce reste commun', TO_DATE('2002-09-01','YYYY-MM-DD'), 'Denis Giraud', 'rock', 'M-JE');
INSERT INTO exemplaire (code, etat, dispo) VALUES ((select max(code) from ressource), TRUE, TRUE);
INSERT INTO musique (code, duree) VALUES ((select max(code) from ressource), '55');
INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Jean', 'Juliette', TO_DATE('1970-04-04','YYYY-MM-DD'), 'fr');
INSERT INTO interprete (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));INSERT INTO compositeur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));

INSERT INTO ressource (titre, date, editeur, genre, classification) VALUES ('parti crainte', TO_DATE('2009-01-26','YYYY-MM-DD'), 'Catherine-Geneviève Hubert', 'classique', 'M-DE');
INSERT INTO exemplaire (code, etat, dispo) VALUES ((select max(code) from ressource), TRUE, TRUE);
INSERT INTO musique (code, duree) VALUES ((select max(code) from ressource), '40');
INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Maillot', 'Benoît-Jean', TO_DATE('2000-05-02','YYYY-MM-DD'), 'fr');
INSERT INTO interprete (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Denis', 'Frédéric', TO_DATE('1994-08-09','YYYY-MM-DD'), 'fr');
INSERT INTO compositeur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));

INSERT INTO ressource (titre, date, editeur, genre, classification) VALUES ('perte suivant drame', TO_DATE('1972-05-09','YYYY-MM-DD'), 'Théodore Ramos de Leroy', 'rap', 'M-MI');
INSERT INTO exemplaire (code, etat, dispo) VALUES ((select max(code) from ressource), TRUE, TRUE);
INSERT INTO musique (code, duree) VALUES ((select max(code) from ressource), '57');
INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Millet', 'Nathalie', TO_DATE('2001-05-12','YYYY-MM-DD'), 'fr');
INSERT INTO interprete (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));INSERT INTO compositeur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));

INSERT INTO ressource (titre, date, editeur, genre, classification) VALUES ('ciel essayer', TO_DATE('1998-04-24','YYYY-MM-DD'), 'Martine Bertrand', 'rock', 'M-BA');
INSERT INTO exemplaire (code, etat, dispo) VALUES ((select max(code) from ressource), TRUE, TRUE);
INSERT INTO musique (code, duree) VALUES ((select max(code) from ressource), '45');
INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Barthelemy', 'Brigitte', TO_DATE('2004-08-06','YYYY-MM-DD'), 'fr');
INSERT INTO interprete (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));INSERT INTO compositeur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));

INSERT INTO ressource (titre, date, editeur, genre, classification) VALUES ('recueillir année aujourd''hui', TO_DATE('1999-08-01','YYYY-MM-DD'), 'Robert Hervé', 'pop', 'M-BE');
INSERT INTO exemplaire (code, etat, dispo) VALUES ((select max(code) from ressource), TRUE, TRUE);
INSERT INTO musique (code, duree) VALUES ((select max(code) from ressource), '51');
INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Benoit', 'Colette-Sylvie', TO_DATE('2019-03-25','YYYY-MM-DD'), 'fr');
INSERT INTO interprete (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));INSERT INTO compositeur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));

INSERT INTO ressource (titre, date, editeur, genre, classification) VALUES ('devenir regard chef', TO_DATE('1983-06-21','YYYY-MM-DD'), 'Élodie Roussel', 'pop', 'M-DA');
INSERT INTO exemplaire (code, etat, dispo) VALUES ((select max(code) from ressource), TRUE, TRUE);
INSERT INTO musique (code, duree) VALUES ((select max(code) from ressource), '36');
INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('David', 'Claude', TO_DATE('2000-07-17','YYYY-MM-DD'), 'fr');
INSERT INTO interprete (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));INSERT INTO compositeur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));

INSERT INTO ressource (titre, date, editeur, genre, classification) VALUES ('arme but', TO_DATE('1988-04-24','YYYY-MM-DD'), 'Étienne Carre de Mercier', 'classique', 'M-DE');
INSERT INTO exemplaire (code, etat, dispo) VALUES ((select max(code) from ressource), TRUE, TRUE);
INSERT INTO musique (code, duree) VALUES ((select max(code) from ressource), '54');
INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Guillot', 'Odette', TO_DATE('1984-12-14','YYYY-MM-DD'), 'fr');
INSERT INTO interprete (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Delattre', 'Antoinette', TO_DATE('1987-07-03','YYYY-MM-DD'), 'fr');
INSERT INTO compositeur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));

INSERT INTO ressource (titre, date, editeur, genre, classification) VALUES ('riche', TO_DATE('2002-06-04','YYYY-MM-DD'), 'Nathalie Léger', 'pop', 'M-RO');
INSERT INTO exemplaire (code, etat, dispo) VALUES ((select max(code) from ressource), TRUE, TRUE);
INSERT INTO musique (code, duree) VALUES ((select max(code) from ressource), '49');
INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Rodriguez', 'Olivier', TO_DATE('2001-05-04','YYYY-MM-DD'), 'fr');
INSERT INTO interprete (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));INSERT INTO compositeur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));

INSERT INTO ressource (titre, date, editeur, genre, classification) VALUES ('fixe éclat', TO_DATE('1995-12-17','YYYY-MM-DD'), 'Joseph de la Carlier', 'horreur', 'F-MA');
INSERT INTO exemplaire (code, etat, dispo) VALUES ((select max(code) from ressource), TRUE, TRUE);
INSERT INTO film (code, duree, synopsis, langue) VALUES ((select max(code) from ressource), '135', 'Pourquoi honneur courant vingt. Mariage conscience grand point chaque. Son minute demain promettre eh grâce.
Sien ville herbe composer tromper digne. Flamme grâce bonheur ou casser.', 'fr');
INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Chauveau', 'Alfred', TO_DATE('1993-11-22','YYYY-MM-DD'), 'fr');
INSERT INTO acteur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('du Monnier', 'Renée', TO_DATE('1978-02-01','YYYY-MM-DD'), 'fr');
INSERT INTO acteur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Valentin', 'Yves', TO_DATE('1979-05-21','YYYY-MM-DD'), 'fr');
INSERT INTO acteur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Mace', 'Aimé', TO_DATE('2010-12-08','YYYY-MM-DD'), 'fr');
INSERT INTO realisateur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));

INSERT INTO ressource (titre, date, editeur, genre, classification) VALUES ('glisser plaindre couper', TO_DATE('1976-12-14','YYYY-MM-DD'), 'Gilles Meunier', 'comédie', 'F-DU');
INSERT INTO exemplaire (code, etat, dispo) VALUES ((select max(code) from ressource), TRUE, TRUE);
INSERT INTO film (code, duree, synopsis, langue) VALUES ((select max(code) from ressource), '105', 'Depuis été plaire yeux revoir représenter. As perdre pluie porte cours emporter.
Début claire matin couche. Éloigner doute intelligence.
Acheter le justice cours. Ignorer obéir et juger famille.', 'fr');
INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Bègue', 'Franck', TO_DATE('1994-09-08','YYYY-MM-DD'), 'fr');
INSERT INTO acteur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Guérin', 'Timothée', TO_DATE('2007-02-05','YYYY-MM-DD'), 'fr');
INSERT INTO acteur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Martinez', 'Arnaude', TO_DATE('2020-10-07','YYYY-MM-DD'), 'fr');
INSERT INTO acteur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Dupuis de la Baron', 'Pierre', TO_DATE('2007-02-03','YYYY-MM-DD'), 'fr');
INSERT INTO realisateur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));

INSERT INTO ressource (titre, date, editeur, genre, classification) VALUES ('grand détruire après', TO_DATE('2002-01-30','YYYY-MM-DD'), 'Gabriel Aubert du Maury', 'historique', 'L-PI');
INSERT INTO exemplaire (code, etat, dispo) VALUES ((select max(code) from ressource), TRUE, TRUE);
INSERT INTO livre (code, isbn, resume, langue) VALUES ((select max(code) from ressource), '978-1-259-54690-7', 'Trait étrange est mourir. Étouffer enfoncer immobile ventre garder. Doigt arme chasse.
Tout force mer employer moment courant terme. Usage livre oui cacher payer.', 'fr');
INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Pineau', 'Suzanne', TO_DATE('1975-09-04','YYYY-MM-DD'), 'fr');
INSERT INTO auteur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));

INSERT INTO ressource (titre, date, editeur, genre, classification) VALUES ('juste', TO_DATE('2005-05-10','YYYY-MM-DD'), 'Bernard Lamy', 'thriller', 'L-DU');
INSERT INTO exemplaire (code, etat, dispo) VALUES ((select max(code) from ressource), TRUE, TRUE);
INSERT INTO livre (code, isbn, resume, langue) VALUES ((select max(code) from ressource), '978-0-9542376-9-1', 'Puissant contre vaste suite roche ligne lui. Voler propre gris volonté.
Toute vieil secrétaire personne vieux. Masse apporter façon remettre fine dire. Avouer enfermer non mille.', 'fr');
INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('du Pasquier', 'Thierry', TO_DATE('1970-12-10','YYYY-MM-DD'), 'fr');
INSERT INTO auteur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));

INSERT INTO ressource (titre, date, editeur, genre, classification) VALUES ('jeu', TO_DATE('2009-04-06','YYYY-MM-DD'), 'Théodore Perez', 'science-fiction', 'F-GI');
INSERT INTO exemplaire (code, etat, dispo) VALUES ((select max(code) from ressource), TRUE, TRUE);
INSERT INTO film (code, duree, synopsis, langue) VALUES ((select max(code) from ressource), '146', 'Allumer cabinet poursuivre. Membre silence front long guerre coûter rappeler. Moindre considérer suivant nuit.
État oeil retour émotion. Un servir siècle sens rayon.', 'fr');
INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('du Alves', 'Sébastien', TO_DATE('2020-06-23','YYYY-MM-DD'), 'fr');
INSERT INTO acteur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Delorme', 'Anaïs-Noémi', TO_DATE('1977-04-08','YYYY-MM-DD'), 'fr');
INSERT INTO acteur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Giraud de la Berthelot', 'Simone', TO_DATE('2016-02-10','YYYY-MM-DD'), 'fr');
INSERT INTO realisateur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));

INSERT INTO ressource (titre, date, editeur, genre, classification) VALUES ('cause celui pouvoir', TO_DATE('2016-12-29','YYYY-MM-DD'), 'Alfred Roy-Roger', 'thriller', 'F-BE');
INSERT INTO exemplaire (code, etat, dispo) VALUES ((select max(code) from ressource), TRUE, TRUE);
INSERT INTO film (code, duree, synopsis, langue) VALUES ((select max(code) from ressource), '84', 'Croiser rassurer angoisse retirer celui battre. Genre avouer sec quand vérité entier. Détacher loup proposer que garde politique.', 'fr');
INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Grondin de la Mercier', 'Laurent', TO_DATE('1985-05-07','YYYY-MM-DD'), 'fr');
INSERT INTO acteur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Barthelemy', 'Zacharie-Tristan', TO_DATE('1975-07-13','YYYY-MM-DD'), 'fr');
INSERT INTO acteur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Dos Santos', 'Lucas', TO_DATE('1991-10-11','YYYY-MM-DD'), 'fr');
INSERT INTO acteur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Le Roux', 'Josette', TO_DATE('2014-01-18','YYYY-MM-DD'), 'fr');
INSERT INTO acteur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Perret', 'Aurélie', TO_DATE('2001-08-27','YYYY-MM-DD'), 'fr');
INSERT INTO acteur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Berthelot', 'Aurélie', TO_DATE('2001-01-16','YYYY-MM-DD'), 'fr');
INSERT INTO realisateur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));

INSERT INTO ressource (titre, date, editeur, genre, classification) VALUES ('trembler', TO_DATE('1993-02-19','YYYY-MM-DD'), 'Jeanne Rémy du Cordier', 'historique', 'F-CO');
INSERT INTO exemplaire (code, etat, dispo) VALUES ((select max(code) from ressource), TRUE, TRUE);
INSERT INTO film (code, duree, synopsis, langue) VALUES ((select max(code) from ressource), '120', 'Roi santé confondre acheter. Bas larme saluer arriver.
Guerre émotion immobile transformer recherche. Glisser jardin animal impossible auteur étonner annoncer servir.', 'fr');
INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Masson-Olivier', 'Gérard', TO_DATE('1975-02-23','YYYY-MM-DD'), 'fr');
INSERT INTO acteur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Marion de la Guillet', 'Céline', TO_DATE('1978-07-25','YYYY-MM-DD'), 'fr');
INSERT INTO acteur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('de Caron', 'Théophile', TO_DATE('1998-08-20','YYYY-MM-DD'), 'fr');
INSERT INTO acteur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Le Boulay', 'Christelle', TO_DATE('2003-02-23','YYYY-MM-DD'), 'fr');
INSERT INTO acteur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Coste', 'Valentine', TO_DATE('1984-12-20','YYYY-MM-DD'), 'fr');
INSERT INTO realisateur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));

INSERT INTO ressource (titre, date, editeur, genre, classification) VALUES ('éclairer', TO_DATE('2012-09-10','YYYY-MM-DD'), 'Claire-Arnaude Maillet', 'horreur', 'L-BE');
INSERT INTO exemplaire (code, etat, dispo) VALUES ((select max(code) from ressource), TRUE, TRUE);
INSERT INTO livre (code, isbn, resume, langue) VALUES ((select max(code) from ressource), '978-0-87037-097-7', 'Frais douze occasion plusieurs médecin. Prétendre voilà deux attacher. Sou peine content assez sec sombre.
Grâce chair côte frais inviter. Sorte loup précieux proposer saisir content patron.', 'fr');
INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Bernier', 'Charlotte', TO_DATE('1983-06-01','YYYY-MM-DD'), 'fr');
INSERT INTO auteur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));

INSERT INTO ressource (titre, date, editeur, genre, classification) VALUES ('nombreux devoir', TO_DATE('2017-05-24','YYYY-MM-DD'), 'Aimée Jacob', 'thriller', 'F-LE');
INSERT INTO exemplaire (code, etat, dispo) VALUES ((select max(code) from ressource), TRUE, TRUE);
INSERT INTO film (code, duree, synopsis, langue) VALUES ((select max(code) from ressource), '112', 'Lisser vieil dessus veille pitié pauvre. Taille parole dire lueur terrible entier. Eaux présent douceur recherche.', 'fr');
INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('de Nguyen', 'Alix', TO_DATE('1985-06-08','YYYY-MM-DD'), 'fr');
INSERT INTO acteur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Blanchard', 'Paulette', TO_DATE('1988-03-09','YYYY-MM-DD'), 'fr');
INSERT INTO acteur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Renard', 'François', TO_DATE('1999-03-05','YYYY-MM-DD'), 'fr');
INSERT INTO acteur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Le Hamel', 'Patrick', TO_DATE('2004-06-29','YYYY-MM-DD'), 'fr');
INSERT INTO realisateur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));

INSERT INTO ressource (titre, date, editeur, genre, classification) VALUES ('condamner debout', TO_DATE('1996-07-11','YYYY-MM-DD'), 'Jérôme Briand', 'classique', 'M-DE');
INSERT INTO exemplaire (code, etat, dispo) VALUES ((select max(code) from ressource), TRUE, TRUE);
INSERT INTO musique (code, duree) VALUES ((select max(code) from ressource), '58');
INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Mathieu', 'Caroline', TO_DATE('1991-10-14','YYYY-MM-DD'), 'fr');
INSERT INTO interprete (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Delannoy', 'Alice', TO_DATE('1986-05-20','YYYY-MM-DD'), 'fr');
INSERT INTO compositeur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));

INSERT INTO ressource (titre, date, editeur, genre, classification) VALUES ('journal', TO_DATE('1976-11-08','YYYY-MM-DD'), 'Patricia Schneider', 'polar', 'L-MA');
INSERT INTO exemplaire (code, etat, dispo) VALUES ((select max(code) from ressource), TRUE, TRUE);
INSERT INTO livre (code, isbn, resume, langue) VALUES ((select max(code) from ressource), '978-1-58160-090-2', 'Retomber docteur embrasser. Français dire fin contraire sous.
Toujours tard mesure jour veiller groupe. Abandonner voici quitter étoile victime lumière fixer.', 'fr');
INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Martel', 'Danielle-Gabrielle', TO_DATE('1982-05-13','YYYY-MM-DD'), 'fr');
INSERT INTO auteur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));

INSERT INTO ressource (titre, date, editeur, genre, classification) VALUES ('chaque attaquer certainement', TO_DATE('2003-06-06','YYYY-MM-DD'), 'Gérard Lambert', 'pop', 'M-MA');
INSERT INTO exemplaire (code, etat, dispo) VALUES ((select max(code) from ressource), TRUE, TRUE);
INSERT INTO musique (code, duree) VALUES ((select max(code) from ressource), '50');
INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Maillet de la Rodrigues', 'Timothée', TO_DATE('1973-04-12','YYYY-MM-DD'), 'fr');
INSERT INTO interprete (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));INSERT INTO compositeur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));

INSERT INTO ressource (titre, date, editeur, genre, classification) VALUES ('avec', TO_DATE('2001-09-13','YYYY-MM-DD'), 'Céline Henry de Besnard', 'thriller', 'L-DE');
INSERT INTO exemplaire (code, etat, dispo) VALUES ((select max(code) from ressource), TRUE, TRUE);
INSERT INTO livre (code, isbn, resume, langue) VALUES ((select max(code) from ressource), '978-1-71838-764-5', 'Vivre patron valoir. Rejeter papa morceau autant espace victime.
Doute absolu fond. Par là fixe. Escalier confier faveur sûr intention couper ce.', 'fr');
INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Devaux', 'Éric', TO_DATE('1999-09-07','YYYY-MM-DD'), 'fr');
INSERT INTO auteur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));

INSERT INTO ressource (titre, date, editeur, genre, classification) VALUES ('prononcer même circonstance', TO_DATE('1976-12-05','YYYY-MM-DD'), 'Manon Becker', 'thriller', 'F-MA');
INSERT INTO exemplaire (code, etat, dispo) VALUES ((select max(code) from ressource), TRUE, TRUE);
INSERT INTO film (code, duree, synopsis, langue) VALUES ((select max(code) from ressource), '128', 'Rare jeu cas écouter par son déchirer.
Peine satisfaire mensonge défendre faux bureau enfance. Verser quinze pour désirer.
Sol connaissance bientôt en banc. Bientôt chemise jamais quitter joie.', 'fr');
INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Lemoine', 'Étienne-Hugues', TO_DATE('2018-10-25','YYYY-MM-DD'), 'fr');
INSERT INTO acteur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Garnier de Caron', 'Alain', TO_DATE('1995-05-02','YYYY-MM-DD'), 'fr');
INSERT INTO acteur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Hebert', 'Noémi-Diane', TO_DATE('1978-10-30','YYYY-MM-DD'), 'fr');
INSERT INTO acteur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Bouvier', 'Raymond', TO_DATE('2013-03-28','YYYY-MM-DD'), 'fr');
INSERT INTO acteur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Picard', 'Étienne', TO_DATE('1980-01-08','YYYY-MM-DD'), 'fr');
INSERT INTO acteur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Mace', 'Eugène', TO_DATE('1975-06-01','YYYY-MM-DD'), 'fr');
INSERT INTO realisateur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));

INSERT INTO ressource (titre, date, editeur, genre, classification) VALUES ('verser', TO_DATE('1997-01-26','YYYY-MM-DD'), 'Luce Alexandre', 'rap', 'M-VE');
INSERT INTO exemplaire (code, etat, dispo) VALUES ((select max(code) from ressource), TRUE, TRUE);
INSERT INTO musique (code, duree) VALUES ((select max(code) from ressource), '49');
INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Verdier', 'Arnaude', TO_DATE('1998-09-08','YYYY-MM-DD'), 'fr');
INSERT INTO interprete (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));INSERT INTO compositeur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));

INSERT INTO ressource (titre, date, editeur, genre, classification) VALUES ('souhaiter instinct passé', TO_DATE('1999-12-10','YYYY-MM-DD'), 'Olivie Germain', 'pop', 'M-PE');
INSERT INTO exemplaire (code, etat, dispo) VALUES ((select max(code) from ressource), TRUE, TRUE);
INSERT INTO musique (code, duree) VALUES ((select max(code) from ressource), '46');
INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Perez', 'Martin', TO_DATE('1982-04-08','YYYY-MM-DD'), 'fr');
INSERT INTO interprete (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));INSERT INTO compositeur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));

INSERT INTO ressource (titre, date, editeur, genre, classification) VALUES ('six prétendre', TO_DATE('2015-04-27','YYYY-MM-DD'), 'Pénélope de la Berthelot', 'rap', 'M-RO');
INSERT INTO exemplaire (code, etat, dispo) VALUES ((select max(code) from ressource), TRUE, TRUE);
INSERT INTO musique (code, duree) VALUES ((select max(code) from ressource), '44');
INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Rousset', 'Isaac', TO_DATE('1990-05-06','YYYY-MM-DD'), 'fr');
INSERT INTO interprete (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));INSERT INTO compositeur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));

INSERT INTO ressource (titre, date, editeur, genre, classification) VALUES ('briser encore', TO_DATE('1996-08-05','YYYY-MM-DD'), 'Odette Barre', 'science-fiction', 'L-TU');
INSERT INTO exemplaire (code, etat, dispo) VALUES ((select max(code) from ressource), TRUE, TRUE);
INSERT INTO livre (code, isbn, resume, langue) VALUES ((select max(code) from ressource), '978-0-595-38385-6', 'Tirer discours apercevoir métier non. Immobile as peu pas rester.
Dès général trait doute. Retirer oreille désespoir justice être simple. Obliger enfant sable mais saint chambre.', 'fr');
INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Turpin', 'Adélaïde', TO_DATE('1972-05-19','YYYY-MM-DD'), 'fr');
INSERT INTO auteur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));

INSERT INTO ressource (titre, date, editeur, genre, classification) VALUES ('baisser', TO_DATE('2016-04-08','YYYY-MM-DD'), 'Jules-Marc Guilbert', 'science-fiction', 'L-PA');
INSERT INTO exemplaire (code, etat, dispo) VALUES ((select max(code) from ressource), TRUE, TRUE);
INSERT INTO livre (code, isbn, resume, langue) VALUES ((select max(code) from ressource), '978-0-566-23060-8', 'Sans ainsi vous frais exister. Côte nature intéresser chasse pays part oser. Trop apparaître jeter drôle route médecin pauvre.', 'fr');
INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Pasquier', 'Daniel', TO_DATE('2003-06-25','YYYY-MM-DD'), 'fr');
INSERT INTO auteur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));

INSERT INTO ressource (titre, date, editeur, genre, classification) VALUES ('intérieur pauvre jeune', TO_DATE('2021-03-18','YYYY-MM-DD'), 'Jeanne Gaillard', 'pop', 'M-RI');
INSERT INTO exemplaire (code, etat, dispo) VALUES ((select max(code) from ressource), TRUE, TRUE);
INSERT INTO musique (code, duree) VALUES ((select max(code) from ressource), '56');
INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Richard de Lopez', 'Claire', TO_DATE('1999-02-24','YYYY-MM-DD'), 'fr');
INSERT INTO interprete (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));INSERT INTO compositeur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));

INSERT INTO ressource (titre, date, editeur, genre, classification) VALUES ('vêtement parfois', TO_DATE('2021-03-03','YYYY-MM-DD'), 'Olivier Millet-Leleu', 'thriller', 'F-LÉ');
INSERT INTO exemplaire (code, etat, dispo) VALUES ((select max(code) from ressource), TRUE, TRUE);
INSERT INTO film (code, duree, synopsis, langue) VALUES ((select max(code) from ressource), '133', 'Sonner réalité fier vide présenter bon. Reprendre social âge.
Leur danger franc. Sou couvrir on profondément remercier autant parent. Couler être aucun large.', 'fr');
INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Lemaître', 'Véronique', TO_DATE('2014-08-17','YYYY-MM-DD'), 'fr');
INSERT INTO acteur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Marie', 'Marcel', TO_DATE('1970-10-28','YYYY-MM-DD'), 'fr');
INSERT INTO acteur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Legros', 'Dominique', TO_DATE('2019-09-22','YYYY-MM-DD'), 'fr');
INSERT INTO acteur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Louis', 'Luce', TO_DATE('1973-10-06','YYYY-MM-DD'), 'fr');
INSERT INTO acteur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Ramos', 'Charles', TO_DATE('2015-06-12','YYYY-MM-DD'), 'fr');
INSERT INTO acteur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Léger', 'Xavier', TO_DATE('1981-08-17','YYYY-MM-DD'), 'fr');
INSERT INTO realisateur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));

INSERT INTO ressource (titre, date, editeur, genre, classification) VALUES ('trouver porter', TO_DATE('1998-06-14','YYYY-MM-DD'), 'Thierry Lamy', 'historique', 'L-GR');
INSERT INTO exemplaire (code, etat, dispo) VALUES ((select max(code) from ressource), TRUE, TRUE);
INSERT INTO livre (code, isbn, resume, langue) VALUES ((select max(code) from ressource), '978-1-5242-6128-3', 'Sujet occuper intelligence réduire quart.
Champ appartement grave nuit robe. Claire vent ni étage.
Sable mer mieux religion notre dame. Toi voiture bon espèce. Fonder violence oiseau de jeunesse.', 'fr');
INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Gros', 'Théodore', TO_DATE('2016-08-21','YYYY-MM-DD'), 'fr');
INSERT INTO auteur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));

INSERT INTO ressource (titre, date, editeur, genre, classification) VALUES ('humide chanter', TO_DATE('1971-08-09','YYYY-MM-DD'), 'Gilles Diaz', 'science-fiction', 'L-PO');
INSERT INTO exemplaire (code, etat, dispo) VALUES ((select max(code) from ressource), TRUE, TRUE);
INSERT INTO livre (code, isbn, resume, langue) VALUES ((select max(code) from ressource), '978-1-328-33978-2', 'Égal lever oreille peur. Volonté dur certainement comment ensemble d''autres haut. En hésiter emporter.
Cerveau révéler rouler fou. Croiser froid conseil sauter repousser effort.', 'fr');
INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Pons', 'Roger', TO_DATE('2006-07-13','YYYY-MM-DD'), 'fr');
INSERT INTO auteur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));

INSERT INTO ressource (titre, date, editeur, genre, classification) VALUES ('premier veille', TO_DATE('1988-01-17','YYYY-MM-DD'), 'Juliette Le Potier', 'historique', 'F-GA');
INSERT INTO exemplaire (code, etat, dispo) VALUES ((select max(code) from ressource), TRUE, TRUE);
INSERT INTO film (code, duree, synopsis, langue) VALUES ((select max(code) from ressource), '81', 'Course demi dehors terrain nommer. Égal véritable couper éteindre côté voici couler.
Offrir comment exemple causer. Préférer comprendre dresser. Nommer employer prétendre importer faute avis bruit.', 'fr');
INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Rousseau', 'Alain', TO_DATE('2014-03-06','YYYY-MM-DD'), 'fr');
INSERT INTO acteur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Godard', 'Patrick', TO_DATE('1995-02-28','YYYY-MM-DD'), 'fr');
INSERT INTO acteur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Gay-Maillet', 'Aimée', TO_DATE('1994-02-20','YYYY-MM-DD'), 'fr');
INSERT INTO realisateur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));

INSERT INTO ressource (titre, date, editeur, genre, classification) VALUES ('recommencer', TO_DATE('1979-11-10','YYYY-MM-DD'), 'Roger Martin du Garnier', 'horreur', 'F-LE');
INSERT INTO exemplaire (code, etat, dispo) VALUES ((select max(code) from ressource), TRUE, TRUE);
INSERT INTO film (code, duree, synopsis, langue) VALUES ((select max(code) from ressource), '107', 'Désigner amuser action doigt autre lieu. Histoire accomplir tour il nu après.
Cabinet aller goutte. Sous quart tour beau inventer précis quel.', 'fr');
INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Gay', 'Guillaume', TO_DATE('1972-10-05','YYYY-MM-DD'), 'fr');
INSERT INTO acteur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Bertrand', 'Gabriel', TO_DATE('2003-06-29','YYYY-MM-DD'), 'fr');
INSERT INTO acteur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Lévy', 'Robert', TO_DATE('1996-07-15','YYYY-MM-DD'), 'fr');
INSERT INTO acteur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Duval Le Barre', 'Laurent', TO_DATE('1999-07-27','YYYY-MM-DD'), 'fr');
INSERT INTO acteur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Lebon', 'Anne', TO_DATE('1976-11-03','YYYY-MM-DD'), 'fr');
INSERT INTO realisateur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));

INSERT INTO ressource (titre, date, editeur, genre, classification) VALUES ('éteindre', TO_DATE('1981-02-02','YYYY-MM-DD'), 'Marie Martel', 'pop', 'M-AL');
INSERT INTO exemplaire (code, etat, dispo) VALUES ((select max(code) from ressource), TRUE, TRUE);
INSERT INTO musique (code, duree) VALUES ((select max(code) from ressource), '32');
INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Allain', 'Noémi', TO_DATE('2009-07-11','YYYY-MM-DD'), 'fr');
INSERT INTO interprete (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));INSERT INTO compositeur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));

INSERT INTO ressource (titre, date, editeur, genre, classification) VALUES ('ensemble juger tombe', TO_DATE('2009-11-08','YYYY-MM-DD'), 'Isaac Munoz', 'pop', 'M-BO');
INSERT INTO exemplaire (code, etat, dispo) VALUES ((select max(code) from ressource), TRUE, TRUE);
INSERT INTO musique (code, duree) VALUES ((select max(code) from ressource), '44');
INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Bonnin', 'Charles', TO_DATE('1993-09-28','YYYY-MM-DD'), 'fr');
INSERT INTO interprete (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));INSERT INTO compositeur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));

INSERT INTO ressource (titre, date, editeur, genre, classification) VALUES ('l''une réflexion paysage', TO_DATE('1995-01-26','YYYY-MM-DD'), 'Théodore du Moreau', 'rock', 'M-KL');
INSERT INTO exemplaire (code, etat, dispo) VALUES ((select max(code) from ressource), TRUE, TRUE);
INSERT INTO musique (code, duree) VALUES ((select max(code) from ressource), '39');
INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Klein', 'Audrey', TO_DATE('1992-05-15','YYYY-MM-DD'), 'fr');
INSERT INTO interprete (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));INSERT INTO compositeur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));

INSERT INTO ressource (titre, date, editeur, genre, classification) VALUES ('foi phrase jaune', TO_DATE('1974-12-25','YYYY-MM-DD'), 'Laure Vasseur', 'classique', 'M-DU');
INSERT INTO exemplaire (code, etat, dispo) VALUES ((select max(code) from ressource), TRUE, TRUE);
INSERT INTO musique (code, duree) VALUES ((select max(code) from ressource), '40');
INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Rivière', 'Rémy', TO_DATE('1993-07-08','YYYY-MM-DD'), 'fr');
INSERT INTO interprete (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Dupuis', 'Élise', TO_DATE('2005-10-13','YYYY-MM-DD'), 'fr');
INSERT INTO compositeur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));

INSERT INTO ressource (titre, date, editeur, genre, classification) VALUES ('quarante pauvre', TO_DATE('1973-06-08','YYYY-MM-DD'), 'Sabine Dijoux', 'thriller', 'L-JA');
INSERT INTO exemplaire (code, etat, dispo) VALUES ((select max(code) from ressource), TRUE, TRUE);
INSERT INTO livre (code, isbn, resume, langue) VALUES ((select max(code) from ressource), '978-0-468-45592-5', 'Quelque embrasser aussitôt appuyer. Mur chant étendue désir billet commencement bleu. Poète public drame ruine début arriver.', 'fr');
INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Jacquot', 'Théophile', TO_DATE('2008-11-23','YYYY-MM-DD'), 'fr');
INSERT INTO auteur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));

INSERT INTO ressource (titre, date, editeur, genre, classification) VALUES ('mince gris', TO_DATE('1977-01-07','YYYY-MM-DD'), 'Margot Hoareau', 'horreur', 'F-BR');
INSERT INTO exemplaire (code, etat, dispo) VALUES ((select max(code) from ressource), TRUE, TRUE);
INSERT INTO film (code, duree, synopsis, langue) VALUES ((select max(code) from ressource), '126', 'Premier fils dernier bouche. Court offrir reculer étonner genou affaire rompre déposer. Colon ferme oeuvre rassurer salle appel confier. Pauvre rapidement autorité puisque pas partout ouvrir flot.', 'fr');
INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Mahe', 'Nicolas-Philippe', TO_DATE('1984-01-02','YYYY-MM-DD'), 'fr');
INSERT INTO acteur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Daniel', 'Stéphane', TO_DATE('2006-03-23','YYYY-MM-DD'), 'fr');
INSERT INTO acteur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Munoz', 'Patrick', TO_DATE('2009-09-29','YYYY-MM-DD'), 'fr');
INSERT INTO acteur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Brunel', 'Édith', TO_DATE('2002-05-21','YYYY-MM-DD'), 'fr');
INSERT INTO realisateur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));

INSERT INTO ressource (titre, date, editeur, genre, classification) VALUES ('observer sommeil', TO_DATE('1972-02-22','YYYY-MM-DD'), 'Véronique Pascal-Loiseau', 'thriller', 'L-DU');
INSERT INTO exemplaire (code, etat, dispo) VALUES ((select max(code) from ressource), TRUE, TRUE);
INSERT INTO livre (code, isbn, resume, langue) VALUES ((select max(code) from ressource), '978-0-614-63212-5', 'Aucun compte mauvais théâtre service entraîner lieu. Hiver attirer grâce jambe construire.
Manquer front rappeler maintenant. Dehors campagne plus porte.', 'fr');
INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('du Courtois', 'Lucy', TO_DATE('2004-04-19','YYYY-MM-DD'), 'fr');
INSERT INTO auteur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));

INSERT INTO ressource (titre, date, editeur, genre, classification) VALUES ('arracher soleil', TO_DATE('2006-09-12','YYYY-MM-DD'), 'Julie Thomas', 'historique', 'F-PO');
INSERT INTO exemplaire (code, etat, dispo) VALUES ((select max(code) from ressource), TRUE, TRUE);
INSERT INTO film (code, duree, synopsis, langue) VALUES ((select max(code) from ressource), '67', 'Franc sourire calme chute retrouver frapper nouveau. Chasse second transformer bout dehors. Livre rapidement remonter quoi poursuivre.', 'fr');
INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Menard', 'Alex', TO_DATE('1983-03-20','YYYY-MM-DD'), 'fr');
INSERT INTO acteur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Duhamel', 'Camille', TO_DATE('1998-10-13','YYYY-MM-DD'), 'fr');
INSERT INTO acteur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Poirier', 'Joséphine-Monique', TO_DATE('2005-06-30','YYYY-MM-DD'), 'fr');
INSERT INTO realisateur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));

INSERT INTO ressource (titre, date, editeur, genre, classification) VALUES ('valeur événement centre', TO_DATE('1989-08-13','YYYY-MM-DD'), 'Andrée de la Gillet', 'polar', 'L-MA');
INSERT INTO exemplaire (code, etat, dispo) VALUES ((select max(code) from ressource), TRUE, TRUE);
INSERT INTO livre (code, isbn, resume, langue) VALUES ((select max(code) from ressource), '978-1-7369507-5-3', 'Manquer je gauche français. Frapper que énorme cinquante. En maladie grâce science quatre tuer.
Cacher sous événement savoir. Instant drame dépasser spectacle dangereux.', 'fr');
INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Marchal', 'Maggie-Anne', TO_DATE('1993-06-17','YYYY-MM-DD'), 'fr');
INSERT INTO auteur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));

INSERT INTO ressource (titre, date, editeur, genre, classification) VALUES ('bas faire', TO_DATE('2006-05-02','YYYY-MM-DD'), 'Henri-Luc Foucher', 'historique', 'L-GR');
INSERT INTO exemplaire (code, etat, dispo) VALUES ((select max(code) from ressource), TRUE, TRUE);
INSERT INTO livre (code, isbn, resume, langue) VALUES ((select max(code) from ressource), '978-1-70722-143-1', 'Trop tel charge professeur. Couvrir tandis que théâtre y comme armer tombe emporter.
Résultat nu paysan. Ignorer gloire claire intelligence. Sol sentiment repousser souffrir triste faible.', 'fr');
INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Grondin-Bernier', 'Jean', TO_DATE('2009-11-14','YYYY-MM-DD'), 'fr');
INSERT INTO auteur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));

INSERT INTO ressource (titre, date, editeur, genre, classification) VALUES ('même action subir', TO_DATE('1981-10-14','YYYY-MM-DD'), 'Élisabeth Grenier', 'historique', 'L-LE');
INSERT INTO exemplaire (code, etat, dispo) VALUES ((select max(code) from ressource), TRUE, TRUE);
INSERT INTO livre (code, isbn, resume, langue) VALUES ((select max(code) from ressource), '978-1-930584-74-7', 'Tomber sourire rideau chair reposer oh. Taille âgé million vivant souvenir aujourd''hui.
Habitant puissance larme acte raison remettre. Joue fidèle essayer mêler. Vide certain vendre égal rideau.', 'fr');
INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Leclercq', 'Astrid', TO_DATE('1975-02-22','YYYY-MM-DD'), 'fr');
INSERT INTO auteur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));

INSERT INTO ressource (titre, date, editeur, genre, classification) VALUES ('femme lendemain jeune', TO_DATE('1977-04-16','YYYY-MM-DD'), 'Hélène Rossi', 'polar', 'L-FO');
INSERT INTO exemplaire (code, etat, dispo) VALUES ((select max(code) from ressource), TRUE, TRUE);
INSERT INTO livre (code, isbn, resume, langue) VALUES ((select max(code) from ressource), '978-0-08-421088-5', 'Journal abri boire prochain. Mien lever ça vide toute mer minute curiosité.
Voie tout de bras. Envelopper grain mieux. Tirer tracer aussitôt non.', 'fr');
INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Fournier', 'Pierre', TO_DATE('2004-09-11','YYYY-MM-DD'), 'fr');
INSERT INTO auteur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));

INSERT INTO ressource (titre, date, editeur, genre, classification) VALUES ('autre président', TO_DATE('1997-06-14','YYYY-MM-DD'), 'Alice Cousin', 'horreur', 'F-BR');
INSERT INTO exemplaire (code, etat, dispo) VALUES ((select max(code) from ressource), TRUE, TRUE);
INSERT INTO film (code, duree, synopsis, langue) VALUES ((select max(code) from ressource), '133', 'Taille fort projet. Relever situation cinquante absolu aider trop. Amour visite grâce précipiter envelopper camarade vous.', 'fr');
INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Perrot', 'Matthieu', TO_DATE('1993-03-22','YYYY-MM-DD'), 'fr');
INSERT INTO acteur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Hebert-Lagarde', 'Nathalie', TO_DATE('1976-04-26','YYYY-MM-DD'), 'fr');
INSERT INTO acteur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Aubert-Maréchal', 'Édouard', TO_DATE('2018-07-25','YYYY-MM-DD'), 'fr');
INSERT INTO acteur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Michel-Collet', 'Élise', TO_DATE('1983-01-25','YYYY-MM-DD'), 'fr');
INSERT INTO acteur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Brun du Carre', 'Henriette', TO_DATE('1980-01-14','YYYY-MM-DD'), 'fr');
INSERT INTO realisateur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));

INSERT INTO ressource (titre, date, editeur, genre, classification) VALUES ('prendre', TO_DATE('1990-05-26','YYYY-MM-DD'), 'Élise Blanchet', 'rock', 'M-DU');
INSERT INTO exemplaire (code, etat, dispo) VALUES ((select max(code) from ressource), TRUE, TRUE);
INSERT INTO musique (code, duree) VALUES ((select max(code) from ressource), '54');
INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('Duval', 'Jérôme', TO_DATE('1974-09-28','YYYY-MM-DD'), 'fr');
INSERT INTO interprete (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));INSERT INTO compositeur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));

