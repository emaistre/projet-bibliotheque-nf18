# Note de Clarification

Le but du projet *Biblio* est de modéliser la base de données d'une bibliothèque, et de créer un programme permettant d'y accéder.

## consignes

le système doit pouvoir gérer le catalogage les consultations la gestion des utilisateurs et les prêts de la bibliothèque. la bibliothèque possède des livres, des films et des enregistrements musicaux.

## datatypes

 - \<\<compte\>\>: login, mdp

## classes

 - **Contributeur**: id {key}, nom, prenom, naissance, nationalite;
 - **Ressource**: code {key}, titre, contributeurs, date, editeur, genre, classification;
    - **Livre**: ISBN, resume, langue; *(fille de Ressource)*
    - **Film**: langue, duree, synopsis; *(fille de Ressource)*
    - **Musique**: duree; *(fille de Ressource)*
 - **Personne**: nom, prénom, \<\<compte\>\> {key}, adresse, email;
    - **Adhérent**: carte {unique}, naissance, tel;*(fille de Personne)*
    - **Membre**; role employé;*(fille de Personne)*
 - **Exemplaire**: num {local key}, etat, dispo;
 - **Suspension**: date, type, actif;

## liens

 - Ressource est composée d'Exemplaires (1..\*)
 - un livre (\*) est écrit par des contributeurs (1..\*)
 - un film (\*) est réalisé  par des contributeurs (1..\*)
 - un film (\*) est joué par des contributeurs (1..\*)
 - une musique (\*) est composée(musicalement) par des contributeurs (1..\*)
 - une musique (\*) est interprétée par des contributeurs (1..\*)
 - un **Pret**: date, duree, estRendu; est une entité association entre Adhérent (0..1) et Exemplaire (0..6)
 - un Adhérent (1) est suspendu par des Suspensions (\*) 


## commentaires additionnels

la possibilité de mettre un adhérent sur liste noire ou d'attendre un paiement est gérée par la classe Suspension, qui possède un type enum(date, blacklist, paiment)

dans le logiciel, on renseignera des paramètres de base: 
 - nombre max de documents empruntés simultanément = 6
 - durée max d'un emprunt = 21 (jours)

