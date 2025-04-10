from auto_inserter.creator import Creator


class Inserter:
    def __init__(self):
        self.creator = Creator()
        self.inserters = {
            'livre': self.insert_book,
            'film': self.insert_film,
            'musique': self.insert_musique
        }

    def insert_artwork(self, type, artwork):
        artwork = self.creator.fill_in_gaps(type, artwork)
        return self.inserters[type](artwork)

    def insert_book(self, artwork):
        out = ""
        out += f"INSERT INTO ressource (titre, date, editeur, genre, classification) VALUES ('{artwork['titre']}', TO_DATE('{artwork['date']}','YYYY-MM-DD'), '{artwork['editeur']}', '{artwork['genre']}', '{artwork['classification']}');\n"
        out += f"INSERT INTO exemplaire (code, etat, dispo) VALUES ((select max(code) from ressource), TRUE, TRUE);\n"
        out += f"INSERT INTO livre (code, isbn, resume, langue) VALUES ((select max(code) from ressource), '{artwork['isbn']}', '{artwork['resume']}', '{artwork['langue']}');\n"
        out += f"INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('{artwork['auteur']['nom']}', '{artwork['auteur']['prenom']}', TO_DATE('{artwork['auteur']['naissance']}','YYYY-MM-DD'), '{artwork['auteur']['nationalite']}');\n"
        out += f"INSERT INTO auteur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));"

        return out

    def insert_film(self, artwork):
        out = ""
        out += f"INSERT INTO ressource (titre, date, editeur, genre, classification) VALUES ('{artwork['titre']}', TO_DATE('{artwork['date']}','YYYY-MM-DD'), '{artwork['editeur']}', '{artwork['genre']}', '{artwork['classification']}');\n"
        out += f"INSERT INTO exemplaire (code, etat, dispo) VALUES ((select max(code) from ressource), TRUE, TRUE);\n"
        out += f"INSERT INTO film (code, duree, synopsis, langue) VALUES ((select max(code) from ressource), '{artwork['duree']}', '{artwork['synopsis']}', '{artwork['langue']}');\n"
        for acteur in artwork['acteurs']:
            out += f"INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('{acteur['nom']}', '{acteur['prenom']}', TO_DATE('{acteur['naissance']}','YYYY-MM-DD'), '{acteur['nationalite']}');\n"
            out += f"INSERT INTO acteur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));"
        out += f"INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('{artwork['realisateur']['nom']}', '{artwork['realisateur']['prenom']}', TO_DATE('{artwork['realisateur']['naissance']}','YYYY-MM-DD'), '{artwork['realisateur']['nationalite']}');\n"
        out += f"INSERT INTO realisateur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));"

        return out

    def insert_musique(self, artwork):
        out = ""
        out += f"INSERT INTO ressource (titre, date, editeur, genre, classification) VALUES ('{artwork['titre']}', TO_DATE('{artwork['date']}','YYYY-MM-DD'), '{artwork['editeur']}', '{artwork['genre']}', '{artwork['classification']}');\n"
        out += f"INSERT INTO exemplaire (code, etat, dispo) VALUES ((select max(code) from ressource), TRUE, TRUE);\n"
        out += f"INSERT INTO musique (code, duree) VALUES ((select max(code) from ressource), '{artwork['duree']}');\n"
        out += f"INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('{artwork['interprete']['nom']}', '{artwork['interprete']['prenom']}', TO_DATE('{artwork['interprete']['naissance']}','YYYY-MM-DD'), '{artwork['interprete']['nationalite']}');\n"
        out += f"INSERT INTO interprete (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));"
        if artwork['interprete'] != artwork['compositeur']:
            out += f"INSERT INTO contributeur (nom, prenom, naissance, nationalite) VALUES ('{artwork['compositeur']['nom']}', '{artwork['compositeur']['prenom']}', TO_DATE('{artwork['compositeur']['naissance']}','YYYY-MM-DD'), '{artwork['compositeur']['nationalite']}');\n"
        out += f"INSERT INTO compositeur (code, id) VALUES ((select max(code) from ressource), (select max(id) from contributeur));"

        return out
