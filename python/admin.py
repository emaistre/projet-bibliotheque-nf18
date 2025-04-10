from menu import CursesMenu
import curses
from utils import flush_input
from functions import *
import sys
import psycopg2



menu_affichage = ['Affichage', {
    'Afficher tous les films': afficher_films,
    'Afficher tous les livres': afficher_livres,
    'Afficher tous les albums': afficher_albums,
}]
menu_recherche = ['Recherche', {
    'Rechercher un film': afficher_films,
    'Rechercher un livre': afficher_livres,
    'Rechercher un album': afficher_albums,
}]

menu_insertion_manuelle = ['insertion manuelle', {
    'Insérer un livre': inserer_livre,
    'Insérer un film': inserer_livre,
    'Insérer un album': inserer_musique
}]

menu_insertion_automatique = ['insertion automatique', {
    'Insérer des livres': inserer_faux_livres,
    'Insérer des films': inserer_faux_films,
    'Insérer des albums': inserer_faux_albums
}]

menu_insertion = ['Insertion', [
    menu_insertion_manuelle,
    menu_insertion_automatique
]]


menu_ressources = ['Gestion des Ressources', [
    menu_affichage,
    menu_insertion,
    menu_recherche
]]

menu_suspensions = ['Gestion des suspensions', {
    'Ajouter un adhérent à la liste noire': inserer_blacklist,
    'Retirer un adhérent de la liste noire': retirer_blacklist,
    'Info/régler suspension': info_suspension
}]

menu_adherents = ['Gestion des Adhérents', {
    'Afficher tous les adhérents': afficher_adherents,
    'Rechercher un adhérent': recherche_adherent,
    'Ajouter un adhérent': inserer_adherent
}]

menu_prets = ['Gestion des prêts', {
    'Faire un prêt': pret_ressource,
    'Rendre un exemplaire': rendre_exemplaire
}]

menu_personnel = ['Gestion du personnel', {
    'Afficher tous les personnels': afficher_personnels,
    'Rechercher un personnel': recherche_personnel,
    'Ajouter un personnel': inserer_personnel
}]

menu_principal = ['Accueil', [
    menu_ressources,
    menu_adherents,
    menu_suspensions,
    menu_prets,
    menu_personnel
]]


def create_menu_1(menu_list, hist):
    menu = {
        'title': menu_list[0],
        'subtitle': '',
        'type': 'menu',
    }
    if type(menu_list[1]) == list:
        menu['options'] = [{'title': page[0], 'type': 'selection'} for page in menu_list[1]]
    else:
        menu['options'] = [{'title': page, 'type': 'selection'} for page in menu_list[1]]
    if len(hist):
        m = CursesMenu(menu, parent=hist[-1][0])
    else:
        m = CursesMenu(menu)
    return m


def main_menu():
    current_menu = menu_principal
    hist = []
    on = True
    while on:
        menu = create_menu_1(current_menu, hist)
        selected_name = menu.display()
        if selected_name['type'] != 'exitmenu':
            for item in current_menu[1]:
                if item[0] == selected_name['title']:
                    hist.append(current_menu)
                    current_menu = item
                if item == selected_name['title']:
                    try:
                        current_menu[1][item]()
                    except psycopg2.OperationalError:
                        print("Erreur de connexion à la base de données.")
                        print("appuyez sur entrée pour retourner au menu.")
                        input()
        else:
            if len(hist) == 0:
                on = False
            else:
                current_menu = hist.pop()


if __name__ == '__main__':
    main_menu()
    flush_input()
