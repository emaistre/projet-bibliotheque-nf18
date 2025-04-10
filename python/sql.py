#!/usr/bin/python3
import psycopg2

HOST = "tuxa.sme.utc"
USER = "nf18a001"
PASSWORD = "wWa9XF1y"
DATABASE = "dbnf18a001"


def execute_sql(query):
    conn = psycopg2.connect(f"host={HOST} dbname={DATABASE} user={USER} password={PASSWORD}")
    cur = conn.cursor()
    cur.execute(query)
    conn.commit()

    try:
        row = cur.fetchone()
    except psycopg2.ProgrammingError:
        return []

    table = []
    while row:
        table.append(row)
        row = cur.fetchone()

    conn.close()
    return table
