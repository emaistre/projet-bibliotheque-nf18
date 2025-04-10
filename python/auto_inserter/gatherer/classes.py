import wikipedia
from gatherer.config import base_config
from gatherer.utils import *
import json


def search_for_artwork(query):
    pages = wikipedia.search(query)
    for pageName in pages[:5]:
        page = wikipedia.page(pageName, auto_suggest=False)
        html = page.html().replace('&#160;', ' ')
        if '<table' in html:
            return page
    return None


def get_infobox(page):
    html = page.html().replace('&#160;', ' ')
    table = html.split('<table class="infobox')[1].split('</table>')[0]
    rows = table.split('<tr>')
    return rows


def get_info(rows, data, silent=True):
    info = {}
    for i, row in enumerate(rows):
        if not silent:
            print(f'\rextracting info from row {i}...', end='')
        for key, value in data.items():
            if key in row:
                if type(value) == str:
                    values = get_values_from_tags(row.split('<td')[1].split('/td>')[0])
                    if type(values) == list:
                        values = [e for e in values if ';' not in e]
                        new_values = []
                        for v in values:
                            v_split = v.replace(' ,', ',').split(',')
                            for chunk in v_split:
                                if re.search('[\w]', chunk):
                                    new_values.append(chunk.strip())
                        values = new_values
                        if len(values) == 1:
                            values = values[0]
                    info[value] = values
                else:
                    info[value[0]] = value[1](row)
    if not silent:
        print('')
    return info


class Gatherer:

    def __init__(self, config=base_config):
        self.config = config

    def single_query(self, query, silent=True):
        if not silent:
            print('recherche de l\'oeuvre ' + query + ' ...')
        page = search_for_artwork(query)
        if page is None:
            if not silent:
                print('aucune oeuvre portant ce nom n\'a été trouvée.')
            exit()

        if not silent:
            print('page wikipédia trouvée: ' + page.title)
            print('getting infobox information...')
        rows = get_infobox(page)
        if not silent:
            print(f'found {len(rows)} table rows in infobox')

        info = get_info(rows, self.config, silent)

        if not silent:
            print(f'extracted {len(info.keys())} infos from infobox')

        # ajout du tite
        info['titre'] = page.title.split('(')[0].strip()

        # ajout du synopsis
        if 'Plot' in page.sections:
            info['synopsis'] = page.section('Plot')
        if 'Plot summary' in page.sections:
            info['resume'] = page.section('Plot summary')

        # ajout du type
        if 'date de publication' in info:
            info['type'] = 'livre'
        elif 'artiste' in info:
            info['type'] = 'musique'
        elif 'realisateur' in info:
            info['type'] = 'film'

        return info

    def recursive_query(self, query, silent=True):
        first = self.single_query(query)
        if 'acteurs' in first:
            acteurs = []
            for nom_acteur in first['acteurs']:
                acteurs.append(self.person_query(nom_acteur))

        return self.single_query(query)

    def from_file(self, file_name, out_file='out.json', recursive=False):
        data = []

        with open(file_name, 'r') as file:
            raw = file.read()
        for line in raw.split('\n'):
            print(f'gathering info for {line}...')
            if recursive:
                data.append(self.recursive_gather(line))
            else:
                data.append(self.single_query(line))

        with open(out_file, 'w', encoding='utf8') as file:
            json.dump(data, file, ensure_ascii=False, indent=2)
