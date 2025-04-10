CREATE TABLE ressource (
	code SERIAL PRIMARY KEY,
	titre VARCHAR NOT NULL,
	date DATE NOT NULL,
	editeur VARCHAR,
	genre VARCHAR NOT NULL,
	classification VARCHAR NOT NULL
);

CREATE TABLE livre (
	code INT PRIMARY KEY REFERENCES ressource(code),
	isbn VARCHAR NOT NULL,
	resume VARCHAR NOT NULL,
	langue VARCHAR NOT NULL
);

CREATE TABLE film (
	code INT PRIMARY KEY REFERENCES ressource(code),
	duree INT NOT NULL CHECK (duree>0),
	synopsis TEXT NOT NULL,
	langue VARCHAR NOT NULL
);

CREATE TABLE musique (
	code INT PRIMARY KEY REFERENCES ressource(code),
	duree INT NOT NULL CHECK (duree>0)
);

CREATE TABLE contributeur(
  id SERIAL PRIMARY KEY,
  nom VARCHAR NOT NULL,
  prenom VARCHAR NOT NULL,
  naissance DATE NOT NULL,
  nationalite VARCHAR NOT NULL
);

CREATE TABLE exemplaire (
	num SERIAL PRIMARY KEY,
	code INT NOT NULL REFERENCES ressource(code),
	etat BOOLEAN NOT NULL,
	dispo BOOLEAN NOT NULL
);

/* PERSONNES */
CREATE TABLE compte (
  login VARCHAR PRIMARY KEY, 
  mdp VARCHAR NOT NULL
);

CREATE TABLE adherent (
  compte VARCHAR REFERENCES Compte(login) PRIMARY KEY,
  carte VARCHAR NOT NULL UNIQUE,
  naissance DATE NOT NULL,
  tel INT NOT NULL,
  nom VARCHAR NOT NULL,
  prenom VARCHAR NOT NULL,
  adresse VARCHAR NOT NULL,
  email VARCHAR NOT NULL
);

CREATE TABLE membre (
  compte VARCHAR REFERENCES Compte(login) PRIMARY KEY,
  nom VARCHAR NOT NULL,
  prenom VARCHAR NOT NULL,
  adresse VARCHAR NOT NULL,
  email VARCHAR NOT NULL,
  role_employe VARCHAR NOT NULL
);

CREATE TYPE type_suspension AS ENUM ('date', 'blacklist', 'paiement');

CREATE TABLE suspension(
  id SERIAL PRIMARY KEY,
  compte VARCHAR REFERENCES adherent(compte) NOT NULL,
  date DATE,
  type type_suspension NOT NULL,
  actif BOOLEAN NOT NULL
);
/* RELATIONS */

CREATE TABLE interprete (
  code INT,
  id INT,
  FOREIGN KEY (code) REFERENCES musique(code),
  FOREIGN KEY (id) REFERENCES contributeur(id),
  PRIMARY KEY (code, id)
);

CREATE TABLE compositeur (
  code INT,
  id INT,
  FOREIGN KEY (code) REFERENCES musique(code),
  FOREIGN KEY (id) REFERENCES contributeur(id),
  PRIMARY KEY (code, id)
);

CREATE TABLE auteur (
  code INT,
  id INT,
  FOREIGN KEY (code) REFERENCES livre(code),
  FOREIGN KEY (id) REFERENCES contributeur(id),
  PRIMARY KEY (code, id)
);

CREATE TABLE realisateur (
  code INT,
  id INT,
  FOREIGN KEY (code) REFERENCES film(code),
  FOREIGN KEY (id) REFERENCES contributeur(id),
  PRIMARY KEY (code, id)
);

CREATE TABLE acteur (
  code INT,
  id INT,
  FOREIGN KEY (code) REFERENCES film(code),
  FOREIGN KEY (id) REFERENCES contributeur(id),
  PRIMARY KEY (code, id)
);

CREATE TABLE pret (
    id SERIAL PRIMARY KEY,
    num INT NOT NULL,
    compte VARCHAR NOT NULL,
    date DATE NOT NULL,
    duree INT NOT NULL,
    estRendu BOOLEAN NOT NULL,
    FOREIGN KEY (num) REFERENCES exemplaire(num),
    FOREIGN KEY (compte) REFERENCES adherent(compte)
);
