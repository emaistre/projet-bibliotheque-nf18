import curses
from cursesmenu import SelectionMenu
import sys
import os
import locale

locale.setlocale(locale.LC_ALL, "")


def select_menu(titre, liste):
    if len(liste) > 18:
        return liste[SelectionMenu.get_selection(liste, titre)]
    else:
        menu = {
            'title': titre,
            'type': 'menu',
            'subtitle': 'Choisissez dans la liste:',
            'options': []
        }
        for item in liste:
            option = {
                'title': item,
                'type': 'selection'
            }
            menu['options'].append(option)
        m = CursesMenu(menu)
        selected_action = m.display()
        if selected_action['type'] != 'exitmenu':
            return selected_action['title']
        else:
            return 'Exit'

class CursesMenu(object):

    INIT = {'type' : 'init'}

    def __init__(self, menu_options, parent=None):
        self.screen = curses.initscr()
        self.menu_options = menu_options
        self.selected_option = 0
        self._previously_selected_option = None
        self.running = True

        self.parent = parent

        #init curses and curses input
        curses.noecho()
        curses.cbreak()
        curses.start_color()
        curses.curs_set(0) #Hide cursor
        self.screen.keypad(True)

        #set up color pair for highlighted option
        curses.init_pair(1, curses.COLOR_BLACK, curses.COLOR_WHITE)
        self.hilite_color = curses.color_pair(1)
        self.normal_color = curses.A_NORMAL

    def prompt_selection(self, parent=None):
        if parent is None:
            lastoption = "Quitter"
        else:
            lastoption = "Retour ({})".format(parent)

        option_count = len(self.menu_options['options'])

        input_key = None

        ENTER_KEY = ord('\n')
        while input_key != ENTER_KEY:
            if self.selected_option != self._previously_selected_option:
                self._previously_selected_option = self.selected_option

            self.screen.border(0)
            self._draw_title()
            for option in range(option_count):
                if self.selected_option == option:
                    self._draw_option(option, self.hilite_color)
                else:
                    self._draw_option(option, self.normal_color)

            if self.selected_option == option_count:
                self.screen.addstr(5 + option_count, 4, "{:2} - {}".format(option_count+1,
                    lastoption), self.hilite_color)
            else:
                self.screen.addstr(5 + option_count, 4, "{:2} - {}".format(option_count+1,
                    lastoption), self.normal_color)

            max_y, max_x = self.screen.getmaxyx()
            if input_key is not None:
                self.screen.addstr(max_y-3, max_x - 5, "{:3}".format(self.selected_option))
            self.screen.refresh()


            input_key = self.screen.getch()
            down_keys = [curses.KEY_DOWN, ord('j')]
            up_keys = [curses.KEY_UP, ord('k')]
            exit_keys = [ord('q')]

            if input_key in down_keys:
                if self.selected_option < option_count:
                    self.selected_option += 1
                else:
                    self.selected_option = 0

            if input_key in up_keys:
                if self.selected_option > 0:
                    self.selected_option -= 1
                else:
                    self.selected_option = option_count

            if input_key in exit_keys:
                self.selected_option = option_count #auto select exit and return
                break

        return self.selected_option

    def _draw_option(self, option_number, style):
        self.screen.addstr(5 + option_number,
                           4,
                           "{:2} - {}".format(option_number+1, self.menu_options['options'][option_number]['title']),
                           style)

    def _draw_title(self):
        self.screen.addstr(2, 2, self.menu_options['title'], curses.A_STANDOUT)
        self.screen.addstr(4, 2, self.menu_options['subtitle'], curses.A_BOLD)

    def display(self):
        self.screen.clear()
        selected_option = self.prompt_selection(self.parent)
        self.screen.clear()
        self.screen.refresh()
        curses.echo()
        curses.nocbreak()
        self.screen.keypad(False)
        curses.curs_set(True)
        curses.endwin()
        i, _ = self.screen.getmaxyx()
        if selected_option < len(self.menu_options['options']):
            selected_opt = self.menu_options['options'][selected_option]
            self.running = False
            return selected_opt
        else:
            self.running = False
            return {'title': 'Exit', 'type': 'exitmenu'}
