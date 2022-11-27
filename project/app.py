from flask import Flask
import psycopg2

app = Flask(__name__)
conn = psycopg2.connect(
    host="localhost",
    database="postgres",
    user="postgres",
    password="admin"
)


@app.route('/')
def hello_world():
    return 'Hello World!'


@app.route('/hello')
def hello_world1():
    curr = conn.cursor()
    print("PostgreSQL Database Version: ")
    curr.execute('SELECT * from recipe')
    db_version = curr.fetchone()
    print(db_version[3])
    return db_version[3]


if __name__ == '_main_':
    app.run()
