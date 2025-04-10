import os
from menu import CursesMenu, select_menu
import re


def flush_input():
    try:
        import msvcrt
        while msvcrt.kbhit():
            msvcrt.getch()
    except ImportError:  # for linux/unix
        import sys
        import termios
        termios.tcflush(sys.stdin, termios.TCIOFLUSH)


def clear_screen(): os.system('cls' if os.name == 'nt' else 'clear')


def is_number(str):
    try:
        int(str)
        return True
    except ValueError:
        return False


def recherche(requete, liste):
    resultat = [i for i in liste if re.search(requete.lower(), i.lower())]
    choix = select_menu('résultats de recherche', resultat)
    clear_screen()
    return choix

