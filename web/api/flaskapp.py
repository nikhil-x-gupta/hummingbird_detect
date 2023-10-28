import os
from flask import Flask, request

app = Flask(__name__)

@app.route('/')
def hello_world():
    return 'Hello from Flask!'

@app.route('/bye')
def bye_world():
    return 'Bye from Flask!' + request.args.get('name')

if __name__ == '__main__':
    app.run()
