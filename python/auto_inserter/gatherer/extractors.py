from gatherer.utils import *


def get_length(row):
    return get_values_from_tags(row.split('<td')[1].split('/td>')[0])[0]


def get_film_length(row):
    values = get_values_from_tags(row.split('<td')[1].split('/td>')[0])
    if type(values) == list:
        return values[0].split(' ')[0]
    return values.split(' ')[0]


def get_artist(row):
    return get_values_from_tags(row)[-1]


def get_actors(row):
    return get_values_from_tags(row.split('<td')[1].split('/td>')[0])


def get_date(row):
    if '<li' in row:
        return standardize_date(get_hard_date(row))
    return standardize_date(get_easy_date(row))


def get_easy_date(row):
    values = get_values_from_tags(row.split('<td')[1].split('/td>')[0])
    if type(values) == list:
        values = values[0]
    return values


def get_hard_date(row):
    return get_values_from_tags(row.split('<td')[1].split('/td>')[0])[0]
