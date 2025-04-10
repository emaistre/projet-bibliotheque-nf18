from creator import Creator
from inserter import Inserter
from gatherer.classes import Gatherer
from pprint import pprint
import random


def main():
    c = Creator()
    i = Inserter()

    header = """/*
    Ceci est un fichier généré procéduralement par le script '../python/main.py'.
    Les commandes SQL ci dessous font des insertions d'oeuvres culturelles dans la bd:
    films, livres et musiques.
    Chacune de ces oeuvres culturelles est générée aléatoirement.
    Les failles principales de ce programme sont les suivantes:
     - les titres sont peu convaincants
     - les synopsis / résumés sont peu convaincants
     - les dates ne sont pas cohérentes: un acteur né en 2020 peut jouer dans un film sorti en 2006.
*/\n"""
    sql = ""
    for _ in range(100):
        t = random.choice(['livre', 'film', 'musique'])
        artwork = c.create_fake_artwork(artwork_type=t)
        sql += i.insert_artwork(t, artwork)
        sql += "\n\n"

    with open('../../sql/insert_fake.sql', 'w', encoding='utf-8') as file:
        file.write(header+sql)

    # g = Gatherer()
    # c = Creator()
    # i = Inserter()
    # res = g.single_query("star wars: the phantom menace")
    # pprint(res)
    # # print(i.insert_artwork(res['type'], c.fill_in_gaps(res['type'], res)))


if __name__ == '__main__':
    main()
