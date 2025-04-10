import re

months = {
    'January': '01',
    'February': '02',
    'March': '03',
    'April': '04',
    'May': '05',
    'June': '06',
    'July': '07',
    'August': '08',
    'September': '09',
    'October': '10',
    'November': '11',
    'December': '12'
}


def standardize_date(str_date):
    if len(str_date) <= 4:
        return str_date
    chunks = str_date.replace(',', '').split(' ')
    day = ''
    month = ''
    year = ''
    for chunk in chunks:
        if re.match('^\\d$', chunk):
            day = '0'+chunk
        elif re.match('^\\d\\d$', chunk):
            day = chunk
        elif chunk in months:
            month = months[chunk]
        elif re.match('\\d{4}', chunk):
            year = chunk
    return '/'.join([day, month, year])


def get_values_from_tags(line):
    values = []
    for i, char in enumerate(line):
        if char == '>' and i < len(line)-1 and line[i+1] != '<':
            v = line[i+1:].split('<')[0]
            if re.search('[\\w]', v) is not None:
                values.append(v)

    if len(values) == 1:
        values = values[0]
    return values
