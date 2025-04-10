from faker import Faker
import random
import re


class Creator:
    def __init__(self, faker_lang='fr_FR'):
        self.faker = Faker(faker_lang)

        self.artwork_fakers = {
            'livre': self.create_fake_book,
            'film': self.create_fake_film,
            'musique': self.create_fake_music
        }

        self.gap_fillers = {
            'livre': self.fill_in_gaps_book,
            'film': self.fill_in_gaps_film,
            'musique': self.fill_in_gaps_music
        }

        self.info_fakers = {
            'titre': lambda: ' '.join([self.faker.word() for c in range(random.randint(1, 3))]).replace("'", "''"),
            'date': lambda: self.faker.date(),
            'editeur': lambda: self.faker.name().replace("'", "''")
        }

    def create_fake_artwork(self, artwork_type=None):
        if artwork_type is None:
            artwork_type = random.choice(['livre', 'film', 'musique'])
        return self.artwork_fakers[artwork_type]()

    def create_fake_contributor(self):
        full_name = self.faker.name().replace("'", "''")
        nom = ' '.join(full_name.split(' ')[1:])
        prenom = full_name.split(' ')[0]
        naissance = self.faker.date()
        nationalite = 'fr'
        return {'nom': nom, 'prenom': prenom, 'naissance': naissance, 'nationalite': nationalite}

    def create_fake_book(self):
        book = {}
        for info in self.info_fakers:
            if info in self.info_fakers:
                book[info] = self.info_fakers[info]()

        book['genre'] = random.choice(['science-fiction', 'polar', 'historique', 'thriller', 'horreur'])
        book['auteur'] = self.create_fake_contributor()
        book['isbn'] = self.faker.isbn13()
        book['resume'] = self.faker.text().replace("'", "''")
        book['langue'] = 'fr'
        book['classification'] = 'L-' + book['auteur']['nom'][:2].upper()
        return book

    def create_fake_film(self):
        film = {}
        for info in self.info_fakers:
            if info in self.info_fakers:
                film[info] = self.info_fakers[info]()

        film['genre'] = random.choice(['science-fiction', 'comédie', 'historique', 'thriller', 'horreur'])
        film['duree'] = random.randint(60, 150)
        film['synopsis'] = self.faker.text().replace("'", "''")
        film['langue'] = 'fr'
        film['acteurs'] = [self.create_fake_contributor() for _ in range(random.randint(2, 5))]
        film['realisateur'] = self.create_fake_contributor()
        film['classification'] = 'F-' + film['realisateur']['nom'][:2].upper()

        return film

    def create_fake_music(self):
        music = {}
        for info in self.info_fakers:
            if info in self.info_fakers:
                music[info] = self.info_fakers[info]()

        music['genre'] = random.choice(['rap', 'classique', 'rock', 'pop'])
        music['duree'] = random.randint(30, 60)
        music['interprete'] = self.create_fake_contributor()
        if music['genre'] == 'classique':
            music['compositeur'] = self.create_fake_contributor()
        else:
            music['compositeur'] = music['interprete']
        music['classification'] = 'M-' + music['compositeur']['nom'][:2].upper()
        return music

    def fill_in_gaps(self, type, artwork):
        for info in self.info_fakers:
            if info not in artwork:
                artwork[info] = self.info_fakers[info]()
        if not re.match(artwork['date'], '^\\d\\d/\\d\\d/\\d\\d\\d\\d$'):
            artwork['date'] = self.info_fakers['date']()
        return self.gap_fillers[type](artwork)

    def fill_in_gaps_book(self, artwork):
        specific_fakers = {
            'genre': lambda: random.choice(['science-fiction', 'polar', 'historique', 'thriller', 'horreur']),
            'auteur': lambda: self.create_fake_contributor(),
            'isbn': lambda: self.faker.isbn13(),
            'resume': lambda: self.faker.text().replace("'", "''"),
            'langue': lambda: 'fr',
        }

        for info in specific_fakers:
            if info not in artwork:
                artwork[info] = specific_fakers[info]()

        if 'classification' not in artwork:
            artwork['classification'] = 'L-' + artwork['auteur']['nom'][:2].upper()

        return artwork

    def fill_in_gaps_film(self, artwork):
        specific_fakers = {
            'genre': lambda: random.choice(['science-fiction', 'comédie', 'historique', 'thriller', 'horreur']),
            'duree': lambda: random.randint(60, 150),
            'acteurs': lambda: [self.create_fake_contributor() for _ in range(random.randint(2, 5))],
            'synopsis': lambda: self.faker.text().replace("'", "''"),
            'langue': lambda: 'fr',
            'realisateur': lambda: self.create_fake_contributor()
        }

        for info in specific_fakers:
            if info not in artwork:
                artwork[info] = specific_fakers[info]()

        if 'classification' not in artwork:
            artwork['classification'] = 'F-' + artwork['realisateur']['nom'][:2].upper()
        return artwork

    def fill_in_gaps_music(self, artwork):
        specific_fakers = {
            'genre': lambda: random.choice(['rap', 'classique', 'rock', 'pop']),
            'duree': lambda: random.randint(30, 60),
            'interprete': lambda: self.create_fake_contributor(),
        }

        for info in specific_fakers:
            if info not in artwork:
                artwork[info] = specific_fakers[info]()

        if 'compositeur' not in artwork:
            if artwork['genre'] == 'classique':
                artwork['compositeur'] = self.create_fake_contributor()
            else:
                artwork['compositeur'] = artwork['interprete']

        if 'classification' not in artwork:
            artwork['classification'] = 'F-' + artwork['realisateur']['nom'][:2].upper()
        return artwork
