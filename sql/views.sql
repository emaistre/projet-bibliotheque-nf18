/* affiche l'emplacement des livres fançais dans la bibliothèque */
CREATE VIEW classification_fr AS
SELECT classification
FROM ressource r
INNER JOIN livre l ON r.code = l.code
WHERE langue='fr';

/* affiche tous les films rangés par date de sortie */
CREATE VIEW vue_date_film AS
SELECT titre, date
FROM film
INNER JOIN ressource ON film.code=ressource.code
ORDER BY date DESC;

/*selectionne tous les auteurs par ordre alphabetique*/
SELECT prenom,nom
FROM contributeur
INNER JOIN auteur ON contributeur.id = auteur.id
ORDER BY nom;

/*selectionne l'etat des ouvrages avec les nom et le prenom de l'auteur (si c'est un livre) ordonner par les id des auteurs*/
SELECT c.prenom AS Prenom, c.nom AS Nom, e.etat AS Etat
FROM exemplaire e
LEFT JOIN auteur a ON a.code = e.code
LEFT JOIN contributeur c ON c.id = a.id
ORDER BY c.id;

/* affiche la durée moyenne d'un film */
CREATE VIEW duree_moyenne_film AS
SELECT ROUND(AVG(duree))
FROM film;

/*compte le nombre d'ouvrage par auteur*/
CREATE VIEW nombre_ouvrages AS
SELECT  prenom, nom, COUNT(code) AS nombreouvrage
FROM contributeur c JOIN auteur a ON c.id=a.id
GROUP BY c.id;

/*compte le nombre de contributions de manière générale*/
CREATE VIEW nombre_contributions AS
SELECT prenom, nom, coalesce(COUNT(i.code)+COUNT(a.code)+COUNT(ac.code)+COUNT(r.code)+COUNT(com.code), COUNT(i.code), COUNT(a.code), COUNT(ac.code),COUNT(r.code),COUNT(com.code),0) AS nombre_contribution
FROM contributeur c LEFT JOIN auteur a ON c.id=a.id LEFT JOIN interprete i ON i.id=c.id LEFT JOIN acteur ac ON ac.id=c.id LEFT JOIN realisateur r ON r.id=c.id LEFT JOIN compositeur com ON com.id=c.id
GROUP BY c.id
HAVING COUNT(i.code)+COUNT(a.code)+COUNT(ac.code)+COUNT(r.code)+COUNT(com.code) <> 0;
