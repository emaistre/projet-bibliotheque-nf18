from gatherer.extractors import get_date, get_length, get_film_length, get_artist, get_actors

base_config = {
    'Directed by': 'realisateur',
    'Director': 'realisateur',
    'Edited by': 'editeur',
    'Editor': 'editeur',
    'Author': 'auteur',
    'Original release': ['date', get_date],
    'Release date': ['date', get_date],
    'Released': ['date', get_date],
    'Length': ['duree', get_length],
    'Running time': ['duree', get_film_length],
    'Publication date': ['date', get_date],
    'Published': ['date', get_date],
    'Starring': ['acteurs', get_actors],
    'Language': 'langue',
    'Genre': 'genre',
    'Album': ['interprete', get_artist],
}