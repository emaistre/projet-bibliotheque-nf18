from sql import execute_sql
from tabulate import tabulate
import datetime
from utils import clear_screen, is_number, recherche
from auto_inserter.inserter import Inserter
from auto_inserter.creator import Creator
from menu import select_menu
import re


# === AFFICHAGE ===


def afficher_livres():
    q = """SELECT r.titre,concat(concat(c.nom,' '),c.prenom) as auteur, l.langue
        FROM  ressource r
        JOIN livre l ON r.code=l.code
        JOIN auteur a ON l.code=a.code
        JOIN contributeur c ON a.id=c.id
        ORDER BY r.titre;"""

    table = execute_sql(q)
    clear_screen()
    print(tabulate(table, headers=['Titre', 'Auteur', 'Langue']))
    print('Appuyez sur entrée pour retourner au Menu Principal.')
    input()


def afficher_films():
    q = """SELECT r.titre,concat(concat(c.nom,' '),c.prenom) as realisateur, f.langue
        FROM  ressource r
        JOIN film f ON r.code=f.code
        JOIN realisateur re ON f.code=re.code
        JOIN contributeur c ON re.id=c.id
        ORDER BY r.titre;"""
    table = execute_sql(q)
    clear_screen()
    print(tabulate(table, headers=['Titre', 'Réalisateur', 'Langue']))
    print('Appuyez sur entrée pour retourner au Menu Principal.')
    input()


def afficher_albums():
    q = """SELECT r.titre , CONCAT(ct.prenom, CONCAT(' ',ct.nom)) AS compositeur, m.duree, r.classification
                FROM ressource r
                INNER JOIN musique m ON m.code = r.code
                LEFT OUTER JOIN compositeur cp ON m.code=cp.code
                LEFT OUTER JOIN contributeur ct ON cp.id = ct.id
                INNER JOIN (SELECT * from exemplaire where dispo=TRUE) ex ON r.code = ex.code;
             """

    table = execute_sql(q)
    clear_screen()
    print(tabulate(table, headers=["Titre", "Compositeur", "Durée", "Classification"]))
    print('Appuyez sur entrée pour retourner au Menu Principal.')
    input()


# === AJOUT MANUEL ===

def ajouter_contributeur():
    p = input("Entrez le prénom du contributeur : ")
    no = input("Entrez le nom du contributeur : ")
    d = input("Entrez la date de naissance du contributeur dans le format YYYY-MM-DD: ")
    na = input("Entrez la nationalite du contributeur : ")
    q = f"""INSERT INTO contributeur (nom,prenom,naissance,nationalite) 
    VALUES ('{no}','{p}',TO_DATE('{d}','YYYY-MM-DD'),'{na}');"""
    execute_sql(q)
    return p, no


def ajouter_ressource():
    t = input("Entrez le titre: ")
    d = input("Entrez la date dans le format YYYY-MM-DD: ")
    e = input("Entrez l'editeur: ")
    g = input("Entrez le genre: ")
    c = input("Entrez la classification: ")
    q = f"""
    INSERT INTO ressource (titre, date, editeur, genre, classification) 
    VALUES ('{t}',TO_DATE('{d}','YYYY-MM-DD'),'{e}','{g}','{c}');
    """
    execute_sql(q)


def ajouter_livre():
    i = input("Entrez l'isbn du livre: ")
    r = input("Entrez le résumé du livre: ")
    l = input("Entrez les deux premières lettres de la langue: ")
    q = f"""
    INSERT INTO livre (code,isbn,resume,langue)
    VALUES ((select max(code) as last from ressource),'{i}','{r}','{l}');
    """
    execute_sql(q)


def ajouter_film():
    d = input("Entrez la duree du film: ")
    s = input("Entrez le synopsis du film: ")
    l = input("Entrez les deux premières lettres de la langue: ")
    q = f"""
    INSERT INTO film (code,duree,synopsis,langue)
    VALUES ((select max(code) as last from ressource),'{d}','{s}','{l}');
    """
    execute_sql(q)


def ajouter_musique():
    d = input("Entrez la duree de la musique: ")
    q = f"""INSERT INTO musique (code,duree) VALUES ((select max(code) as last from ressource),'{d}');"""
    execute_sql(q)


def ajouter_exemplaires(n):
    q = """INSERT INTO exemplaire (code, etat, dispo) 
    VALUES ((select max(code) as last from ressource), TRUE, TRUE);""" * n
    execute_sql(q)


def lier(contributeur, table):
    q = f"INSERT INTO {table} (code, id) VALUES ((select max(code) as last from ressource),{contributeur});"
    execute_sql(q)


def lier_auteur_nouveau():
    q = """
    INSERT INTO auteur (code,id) 
    VALUES ((select max(code) as last from ressource),((select max(id) as last from contributeur)));
    """
    execute_sql(q)


def choisir_contributeur():
    q = "SELECT prenom,nom FROM contributeur;"
    tableau = execute_sql(q)
    t = [ligne[0] + " " + ligne[1] for ligne in tableau]
    m = select_menu("Contributeurs", ["Créer un nouveau contributeur"] + t)
    choix = m.start()
    if choix == "Créer un nouveau contributeur":
        prenom, nom = ajouter_contributeur()
    else:
        prenom, nom = choix.split(" ")
    q2 = f"SELECT id from contributeur WHERE prenom='{prenom}' AND nom='{nom}';"
    return execute_sql(q2)


def selection_contributeur(type_contributeur):
    continuer = True
    print(f"Selectionner un {type_contributeur}")
    while continuer:
        c = choisir_contributeur()
        lier(c[0][0], f"{type_contributeur}")
        choix = select_menu(f"Continuer à rentrer des {type_contributeur}s", ["Oui", "Non"])
        if choix == "Non":
            continuer = False


def inserer_livre():
    ajouter_ressource()
    ajouter_livre()
    selection_contributeur("auteur")
    n = int(input("Entrez le nombre d'exemplaire à créer: "))
    ajouter_exemplaires(n)


def inserer_film():
    ajouter_ressource()
    ajouter_film()
    selection_contributeur("realisateur")
    selection_contributeur("acteur")
    n = int(input("Entrez le nombre d'exemplaire à créer: "))
    ajouter_exemplaires(n)


def inserer_musique():
    ajouter_ressource()
    ajouter_musique()
    selection_contributeur("compositeur")
    selection_contributeur("interprete")
    n = int(input("Entrez le nombre d'exemplaire à créer: "))
    ajouter_exemplaires(n)


# === PRET D'UNE RESSOURCE ===


def verifuser(compte):
    query = f"""SELECT s.date,s.type,s.actif,s.id
            FROM adherent a INNER JOIN suspension s ON s.compte = a.compte
            WHERE a.compte ='{compte}';
            """
    t = execute_sql(query)
    for line in t:
        if line[1] == 'date':
            if line[0] > datetime.date.today():
                return False
        else:
            if line[2]:
                return False
    return True
            
        
def pret_ressource():
    clear_screen()
    print('--------------------------')
    print('[1] Adhérent empruntant: ')
    print('[2] Ressource empruntée: ')
    print('[3] Durée de l\'emprunt: ')
    print('--------------------------')

    nom = input("Entrez le nom de l'utilisateur: ")
    query = """SELECT CONCAT(CONCAT(nom, ' '),prenom)as nom, compte
            FROM adherent a; 
            """
    res = execute_sql(query)
    comptes = {line[0]: line[1] for line in res}  # {nom complet: compte}
    choix = recherche(nom, comptes.keys())

    if choix == 'Exit':
        return

    t = [[comptes[choix]]]

    if t:
        ok = verifuser(t[0][0])
        if not ok:
            print("Erreur : le compte est suspendu !")
            print('Vous pouvez vous rendre dans le menu de gestion des suspensions pour avoir plus d\'informations.')
            print("appuyez sur entrée pour retourner au menu.")
            input()
            
        else:
            queryverif = f"""SELECT COUNT(*) as nb
                           FROM pret 
                           WHERE compte='{t[0][0]}' AND date+duree > '{datetime.date.today()}';
                        """
            tverif = execute_sql(queryverif)
            if tverif[0][0] >= 6:
                print("Emprunts impossible : limite max atteinte")
                print("appuyez sur entrée pour retourner au menu.")
                input()
                
            else:

                clear_screen()
                print('--------------------------')
                print('[1] Adhérent empruntant: '+choix)
                print('[2] Ressource empruntée: ')
                print('[3] Durée de l\'emprunt: ')
                print('--------------------------')
                titre = input("Recherche d'une ressource: ")
                sql = """
                    SELECT r.titre
                    FROM ressource r INNER JOIN exemplaire e 
                    ON r.code = e.code 
                    WHERE e.dispo = '1' AND e.etat = '1'
                    GROUP BY r.titre 
                    ORDER BY r.titre;
                """
                table = execute_sql(sql)
                clear_screen()
                titre_choisi = recherche(titre, [line[0] for line in table])
                query2 = f"""SELECT e.num
                            FROM ressource r INNER JOIN exemplaire e 
                            ON r.code = e.code
                            WHERE r.titre='{titre_choisi}' AND e.etat = '1' AND e.dispo = '1';
                            """
                t2 = execute_sql(query2)
                if t2:
                    query3 = f"""UPDATE exemplaire
                                SET dispo = '0'
                                WHERE num = '{t2[0][0]}';
                            """
                    clear_screen()
                    print('--------------------------')
                    print('[1] Adhérent empruntant: ' + choix)
                    print('[2] Ressource empruntée: ' + titre_choisi)
                    print('[3] Durée de l\'emprunt: ')
                    print('--------------------------')
                    duree = input("Entrez la duree de l'emprunt en jours: ")
                    while not re.match('^\d+$',duree) or int(duree) < 0:
                        duree = input("Entrez la duree de l'emprunt en jours: ")
                    duree = int(duree)
                    query4 = f"""
                    INSERT INTO pret (num, compte, date, duree, estRendu)
                    VALUES ('{t2[0][0]}','{t[0][0]}','{datetime.date.today()}','{duree}', FALSE);
                    """
                    execute_sql(query3)
                    execute_sql(query4)

                    clear_screen()
                    print('--------------------------')
                    print('[1] Adhérent empruntant: ' + choix)
                    print('[2] Ressource empruntée: '+ titre_choisi)
                    print('[3] Durée de l\'emprunt: '+ str(duree))
                    print('--------------------------')
                    print('Emprunt effectué ! appuyez sur entrée pour retourner au menu.')
                    input()
                    
                else:
                    print("Il n'y a pas d'exemplaire disponible, emprunt impossible !")
                    print("appuyez sur entrée pour retourner au menu.")
                    input()
                 
    else:
        print("L'etudiant recherche n'existe pas !")
        print("appuyez sur entrée pour retourner au menu.")
        input()


def rendre_exemplaire():
    clear_screen()
    nom = input("Entrez le nom de l'utilisateur: ")
    query = """SELECT CONCAT(CONCAT(nom, ' '),prenom)as nom, compte
            FROM adherent a; 
            """
    res = execute_sql(query)
    comptes = {line[0]: line[1] for line in res}  # {nom complet: compte}
    choix = recherche(nom, comptes.keys())

    if choix == 'Exit':
        return

    clear_screen()

    sql = f"""
        SELECT r.titre, p.date, p.num, p.duree, e.num
        FROM ressource r 
        INNER JOIN exemplaire e ON r.code = e.code 
        INNER JOIN pret p ON p.num = e.num
        WHERE e.dispo = '0' AND p.estRendu = '0' AND p.compte = '{comptes[choix]}' 
        ORDER BY r.titre;
    """
    table = execute_sql(sql)

    titre_ligne = {f'{line[0]} [emprunté le {line[1]}]': line for line in table}
    titre_choisi = select_menu("Choisissez un prêt à rendre:", titre_ligne.keys())
    if titre_choisi == 'Exit':
        return
    pret_choisi = titre_ligne[titre_choisi]

    if pret_choisi[1] + datetime.timedelta(days=pret_choisi[3]) >= datetime.date.today():
        etat = '2'
        while etat != '0' and etat != '1':
            etat = input("Entrez l'etat de l'exemplaire (bon : 1, mauvais : 0): ")
        if etat == '1':
            query3 = f"""UPDATE exemplaire
                        SET dispo = TRUE
                        WHERE num = {pret_choisi[4]};
                    """
            query4 = f"""
            UPDATE pret 
            SET estRendu = TRUE
            WHERE num = {pret_choisi[2]};
            """
            execute_sql(query3 + query4)
            print("L'exemplaire est rendu !")
        else:
            query4 = f"""INSERT INTO suspension (compte, date, type, actif)
                        VALUES ('{comptes[choix]}',
                                TO_DATE('{datetime.datetime.today().strftime('%Y-%m-%d')}','YYYY-MM-DD'),
                                'paiement','1');
                    """
            execute_sql(query4)
            query6 = f"""UPDATE exemplaire
                        SET etat = '0', dispo = '1'
                        WHERE num = {pret_choisi[4]};
            """
            query7 = f"""
                UPDATE pret 
                SET estRendu = TRUE
                WHERE num = {pret_choisi[2]};
            """
            execute_sql(query6 + query6)
            print("L'exemplaire a bien été rendu et une suspension d'utilisateur en attente de paiement a été appliquée")

    else:
        duree = datetime.date.today() - (pret_choisi[1] + datetime.timedelta(days=pret_choisi[3]))
        query5 = f"""
            INSERT INTO suspension
            VALUES  ('{comptes[choix]}','{datetime.date.today() + duree}','date',TRUE);
        """
        execute_sql(query5)
        query7 = f"""
            UPDATE exemplaire
            SET dispo = '1'
            WHERE num = {pret_choisi[4]};
        """
        query8 = f"""
            UPDATE pret
            SET estRendu = TRUE
            WHERE num = {pret_choisi[2]};
        """
        execute_sql(query7 + query8)
        print("L'exemplaire a bien ete rendu et une suspension utilisateur de temps a lieu")

    print('appuyez sur entrée pour retourner au menu.')
    input()


# === AJOUT AUTOMATIQUE ===


def inserer_faux_livres():
    clear_screen()
    print("attention, cette fonction crée de faux livres de toutes pièces. voulez-vous continuer ?")
    r = input('(o/n): ')
    while r not in ['o', 'n']:
        r = input('(o/n): ')
    if r == 'n':
        return

    print("combien de livres voulez-vous insérer ?")
    n = input('> ')
    while not is_number(n):
        n = input('> ')
    i = Inserter()
    c = Creator()
    sql = ""
    for _ in range(int(n)):
        sql += i.insert_book(c.create_fake_book())
    execute_sql(sql)
    print(f'{n} livres insérés.')


def inserer_faux_films():
    clear_screen()
    print("attention, cette fonction crée de faux films de toutes pièces. voulez-vous continuer ?")
    r = input('(o/n): ')
    while r not in ['o', 'n']:
        r = input('(o/n): ')
    if r == 'n':
        return

    print("combien de films voulez-vous insérer ?")
    n = input('> ')
    while not is_number(n):
        n = input('> ')
    i = Inserter()
    c = Creator()
    sql = ""
    for _ in range(int(n)):
        sql += i.insert_film(c.create_fake_film())
    execute_sql(sql)
    print(f'{n} films insérés.')


def inserer_faux_albums():
    clear_screen()
    print("attention, cette fonction crée de faux albums de toutes pièces. voulez-vous continuer ?")
    r = input('(o/n): ')
    while r not in ['o', 'n']:
        r = input('(o/n): ')
    if r == 'n':
        return

    print("combien d'albums voulez-vous insérer ?")
    n = input('> ')
    while not is_number(n):
        n = input('> ')
    i = Inserter()
    c = Creator()
    sql = ""
    for _ in range(int(n)):
        sql += i.insert_musique(c.create_fake_music())
    execute_sql(sql)
    print(f'{n} albums insérés.')
    print('appuyez sur entrée ')

# === SUSPENSIONS ===

        
def inserer_blacklist():
    clear_screen()
    q1 = """
            SELECT s.compte
            FROM suspension s
            WHERE s.type = 'blacklist' AND s.actif = TRUE
            GROUP BY s.compte
    """
    query = f"""
            SELECT CONCAT(CONCAT(nom, ' '),prenom) as nom, a.compte
            FROM adherent a
            WHERE a.compte NOT IN ({q1});
    """
    nom_compte = {line[0]:line[1] for line in execute_sql(query)}  # {nom: compte, ...}
    liste_de_noms = nom_compte.keys()  # [ nom , ...]
    user_input = input("recherchez un comte: ")
    choix = recherche(user_input, liste_de_noms)  # nom choisi

    if choix == 'Exit':
        return
    query_insert = f"""
                    INSERT INTO suspension (compte, type, date, actif)
                    VALUES ('{nom_compte[choix]}', 'blacklist', '%s', '1');
                    """%(datetime.date.today())
    execute_sql(query_insert)
    print(f"{choix} est désormais sur liste noire.")
    print('appuyez sur entrée pour retourner au menu.')
    input()


def retirer_blacklist():
    clear_screen()
    query = f"""
            SELECT CONCAT(CONCAT(nom, ' '),prenom) as nom, s.id
            FROM adherent a
            INNER JOIN suspension s ON a.compte = s.compte
            WHERE s.type = 'blacklist' AND actif = TRUE;
            """
    nom_id = {line[0]: line[1] for line in execute_sql(query)}  # {nom: id, ...}
    liste_de_noms = nom_id.keys()  # [ nom , ...]
    user_input = input("recherchez un comte: ")
    choix = recherche(user_input, liste_de_noms)  # nom choisi
    if choix == 'Exit':
        return

    query_update = f"""UPDATE suspension SET actif = '0' WHERE id ='{nom_id[choix]}'"""
    execute_sql(query_update)
    print(f'le compte de {choix} a bien été retiré de la liste noire.')
    print('appuyez sur entrée pour retourner au menu.')
    input()


def info_suspension():
    clear_screen()
    query = f"""
            SELECT CONCAT(CONCAT(nom, ' '),prenom) as nom, a.compte
            FROM adherent a;
            """

    nom_compte = {line[0]: line[1] for line in execute_sql(query)}  # {nom: compte, ...}
    liste_de_noms = nom_compte.keys()  # [ nom , ...]
    user_input = input("recherchez un comte: ")
    choix = recherche(user_input, liste_de_noms)  # nom choisi
    if choix == 'Exit':
        return

    compte = nom_compte[choix]  # l'id choisi et son type

    query = f"""
        SELECT date, type, id
        FROM suspension 
        WHERE compte = '{compte}' AND actif = TRUE
        ORDER BY type;
    """
    suspensions = execute_sql(query)
    if suspensions:
        for suspension in suspensions:
            if suspension[1] == 'blacklist':
                print(f"Le profil de {choix} est sur liste noire depuis le {suspension[0]}.")

            if suspension[1] == 'paiement':
                print(f"Le profil de {choix} est suspendu jusqu\' au paiement de votre dette.")
                payer = input("Voulez vous payer maintenant ? (o/n) : ")
                while payer not in ['o', 'n']:
                    payer = input('(o/n): ')
                if payer == 'o':
                    query2 = f"""UPDATE suspension SET actif = '0' WHERE id = {suspension[2]};"""
                    execute_sql(query2)
                    print("Le paiement a bien été enregistré !")

            if suspension[1] == 'date':
                print(f"Le profil de {choix} est suspendu jusqu\'au {suspension[0]}")
    else:
        print(f'le compte de {choix} n\'est pas suspendu.')
    print('appuyez sur entrée pour retourner au menu.')
    input()


def afficher_adherents():
    q="""SELECT prenom,nom,naissance,tel,adresse,email
            FROM adherent ;"""
    table = execute_sql(q)
    clear_screen()
    print(tabulate(table, headers=["Prénom", "Nom", "Date de Naissance", "Téléphone","Adresse","E-mail"]))
    print('appuyez sur entrée pour retourner au menu.')
    input()


def _recherche_adherent(no, p):
    q = f"""SELECT prenom,nom,naissance,tel,adresse,email
                    FROM adherent 
                    WHERE prenom='{p}' AND nom='{no}';"""
    return execute_sql(q)

def recherche_adherent_nom(nom):
    q = f"""SELECT prenom,nom,naissance,tel,adresse,email
            FROM adherent ;"""

    return [line for line in execute_sql(q) if re.search(nom.lower(), line[1].lower())]


def recherche_adherent():
    nom = input("Entrez le nom de l'adhérent à rechercher: ")
    table = recherche_adherent_nom(nom)
    clear_screen()
    if (len(table) != 0):
        print(tabulate(table, headers=["Prénom", "Nom", "Date de Naissance", "Téléphone", "Adresse", "E-mail"]))
    else:
        print('Aucun adhérent trouvé')
    print('appuyez sur entrée pour retourner au menu.')
    input()



def inserer_adherent():
    c = input("Entrez la carte de l'adhérent: ")
    na = input("Entrez la date de naissance de l'adhérent au format YYYY-MM-DD: ")
    t = input("Entrez le téléphone de l'adhérent: ")
    no = input("Entrez le nom de l'adhérent: ")
    p = input("Entrez le prénom de l'adhérent: ")
    a = input("Entrez l'adresse de l'adhérent: ")
    e = input("Entrez l'e-mail de l'adhérent: ")
    table = _recherche_adherent(no, p)
    clear_screen()
    choix = '1'
    print(table)
    if len(table) != 0:
        print(tabulate(table, headers=["Prénom", "Nom", "Date de Naissance", "Téléphone", "Adresse", "E-mail"]))
        choix = input("Cet adhérent existe déjà, tapez 1 si vous voulez quand même continuer, O pour arrêter: ")
        while choix not in ['0', '1']:
            choix = input('Veuillez entrez 0 ou 1 svp: ')
    if choix == '1':
        l = input("Entrez le login de l'adhérent: ")
        m = input("Entrez le mot de passe de l'adhérent: ")
        q2 = f"INSERT INTO compte VALUES ('{l}','{m}') ;"
        q3 = f"""INSERT INTO adherent VALUES ('{l}','{c}',TO_DATE('{na}','YYYY-MM-DD'),'{t}','{no}','{p}','{a}','{e}');"""
        execute_sql(q2 + q3)
        print('l\'adhérent a bien été ajouté.')
        print('appuyez sur entrée pour retourner au menu.')
        input()



# === GESTION ADHERENTS ===


def afficher_personnels():
    q = """SELECT prenom,nom,role_employe,adresse,email
            FROM membre ;"""
    table = execute_sql(q)
    clear_screen()
    print(tabulate(table, headers=["Prénom", "Nom", "Role de l'employé", "Adresse", "E-mail"]))
    print('appuyez sur entrée pour retourner au menu.')
    input()


def _recherche_personnel(no, p):
    q = f"""SELECT prenom,nom,role_employe,adresse,email
            FROM membre 
            WHERE prenom='{p}' AND nom='{no}';"""
    return execute_sql(q)


def recherche_personnel_nom(nom):
    q = f"""SELECT prenom,nom,role_employe,adresse,email
            FROM membre ;"""

    return [line for line in execute_sql(q) if re.search(nom.lower(), line[1].lower())]


def recherche_personnel():
    nom = input("Entrez le nom du membre à rechercher: ")
    table = recherche_personnel_nom(nom)
    clear_screen()
    if (len(table) != 0):
        print(tabulate(table, headers=["Prénom", "Nom", "Role de l'employé", "Adresse", "E-mail"]))
    else:
        print('Aucun membre trouvé')
    input()


def inserer_personnel():
    no = input("Entrez le nom du membre: ")
    p = input("Entrez le prénom du membre: ")
    a = input("Entrez l'adresse du membre: ")
    e = input("Entrez l'e-mail du membre: ")
    r = input("Entrez le rôle du membre: ")
    table = _recherche_personnel(no, p)
    choix = '1'
    if len(table) != 0:
        print(tabulate(table, headers=["Prénom", "Nom", "Role de l'employé", "Adresse", "E-mail"]))
        choix = input("Ce membre existe déjà, tapez 1 si vous voulez quand même continuer, O pour arrêter: ")
        while choix not in ['0', '1']:
            choix = input("Veuillez entrer 0 ou 1 svp: ")
    if choix == '1':
        l = input("Entrez le login du membre: ")
        m = input("Entrez le mot de passe du membre: ")
        q2 = f"INSERT INTO compte VALUES ('{l}','{m}') ;"
        q3 = f"""INSERT INTO membre VALUES ('{l}','{no}','{p}','{a}','{e}','{r}');"""
        execute_sql(q2 + q3)
        print("le membre a bien été ajouté. Appuyez sur entrée pour retourner au menu.")
        input()

