# -*- coding: UTF-8 -*-

from flask import Flask, jsonify, abort, request, make_response, url_for
from flask_httpauth import HTTPBasicAuth
from datetime import datetime
import psycopg2, psycopg2.extras
import json

app = Flask(__name__, static_url_path = "")

connjson = psycopg2.connect(database='d3fkm1msg7kiub',user='wdtetudvoejjev',password='b7fefda1a504e80018b763ba3d8bcb94804c54dfff9a3372b4a70ee042dadf22', host='ec2-54-83-1-94.compute-1.amazonaws.com')
conjson = connjson.cursor()
conjson.execute("select * from Empresas;")
rowsjson = conjson.fetchall()
empresas= []

for row in rowsjson:
    empresas.append({"Empresa": row[1],"Sucursal": row[2],"fVigencia": row[3],"CantPrecio": row[4]})

tasks = empresas

conjson.close()    
connjson.close()

"""tasks = [
    {
        "Empresa": "XX",
        "Sucursal": "Resistencia",
        "fVigencia":  "02/10/10 18:24:00",     
        "CantPrecio": 100
    },     
    {
        "Empresa": "XY",
        "Sucursal": "Corrientes",
        "fVigencia": "26/12/17 00:00:00",
        "CantPrecio": 80
    }
]

tasks = [
    {
        'id': 1,
        'title': u'Buy groceries',
        'description': u'Milk, Cheese, Pizza, Fruit, Tylenol', 
        'done': False
    },
    {
        'id': 2,
        'title': u'Learn Python',
        'description': u'Need to find a good Python tutorial on the web', 
        'done': False
    }
]"""

@app.errorhandler(404)
def not_found(error):
    return make_response(jsonify( { 'error': 'Not found' } ), 404)

@app.route('/todo/api/v1.0/tasks', methods=['GET'])
def get_tasks():
    return jsonify({'tasks': tasks})

@app.route('/todo/api/v1.0/tasks', methods=['POST'])
def create_task():
    if not request.json:
        abort(400)
    task = {
        'Empresa': request.json["Empresa"],
        'Sucursal': request.json["Sucursal"],
        'fVigencia': request.json["fVigencia"],
        'CantPrecio': request.json["CantPrecio"]
    }
    tasks.append(task)
    return jsonify({'task': task}), 201

if __name__ == '__main__':
    app.run(debug = True)

#Hasta aca lo mio

#desde aca la prueba
"""from flask import Flask, jsonify
from flask import abort, make_response, request

app = Flask(__name__)

@app.errorhandler(404)
def not_found(error):
    return make_response(jsonify({'error': 'Not found'}), 404)

tasks = [
    {
        'id': 1,
        'title': u'Buy groceries',
        'description': u'Milk, Cheese, Pizza, Fruit, Tylenol', 
        'done': False
    },
    {
        'id': 2,
        'title': u'Learn Python',
        'description': u'Need to find a good Python tutorial on the web', 
        'done': False
    }
]

@app.route('/todo/api/v1.0/tasks', methods=['GET'])
def get_tasks():
    return jsonify({'tasks': tasks})

@app.route('/todo/api/v1.0/tasks/<int:task_id>', methods=['GET'])
def get_task(task_id):
    task = [task for task in tasks if task['id'] == task_id]
    if len(task) == 0:
        abort(404)
    return jsonify({'task': task[0]})

@app.route('/todo/api/v1.0/tasks', methods=['POST'])
def create_task():
    if not request.json or not "title" in request.json:
        abort(400)
    task = {
        'id': tasks[-1]["id"] + 1,
        'title': request.json["title"],
        'description': request.json.get("description", ""),
        'done': False
    }
    tasks.append(task)
    return jsonify({'task': task}), 201

if __name__ == '__main__':
    app.run(debug=True)"""

#hasta aca la prueba
