# -*- coding: UTF-8 -*-

from flask import Flask, jsonify, abort, request, make_response, url_for, render_template
from flask_httpauth import HTTPBasicAuth
from datetime import datetime
import psycopg2, psycopg2.extras
import json
##from app import app
##from sys import argv


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

#####################################################################################################################################

@app.errorhandler(404)
def not_found(error):
    return make_response(jsonify( { 'error': 'Not found' } ), 404)

#####################################################################################################################################

@app.route('/index')
@app.route('/')
def index():
	
	conn = psycopg2.connect(database='d3fkm1msg7kiub',user='wdtetudvoejjev',password='b7fefda1a504e80018b763ba3d8bcb94804c54dfff9a3372b4a70ee042dadf22', host='ec2-54-83-1-94.compute-1.amazonaws.com')
	con = conn.cursor()
	con.execute("select * from Empresas;")
	rows = con.fetchall()
	empresas= []
	fmt = '%d/%m/%y %H:%M:%S'
	ultact = "01/01/01 00:00:00"
	d2 = datetime.strptime(ultact,fmt)
	
	for row in rows:
		empresas.append({"Empresa": row[1],"Sucursal": row[2],"fVigencia": row[3],"CantPrecio": row[4]})
		#fvig.append({"fVigencia": row[3]})
		d1 = datetime.strptime(row[3],fmt)		
		diffhora= ((d1-d2).seconds)/3600.0
		diffdias= (d1-d2).days
		
		if diffdias > 0:
			d2 = d1
			ultact = row[3]
		elif diffdias == 0:
			if diffhora > 0:
				d2 = d1
				ultact = row[3]
				
	#d1 = datetime.strptime(ultact,fmt) #Ultima vigencia
	cont = 0	
	
	for elemento in empresas:
				
		if elemento["fVigencia"] == ultact:
			empresas[cont]["color"] = "V"
			
		cont = cont + 1
		
	#return repr(fvig)
	
	##leer = {"Empresas":  empresas , "UltAct": [{"fVigencia": ultact }]}		
	
	#leer = json.loads(open('locales.json').read())	
	return render_template('tabla.tpl', ultact=ultact,empresas=empresas)
	##return template('tabla.tpl', leer)
#####################################################################################################################################

@app.route('/todo/api/v1.0/tasks', methods=['GET'])
def get_tasks():
    return jsonify({'tasks': tasks})

######################################################################################################################################

@app.route('/todo/api/v1.0/tasks/<task_nom>', methods=['GET'])
def get_task(task_nom):
    task = [task for task in tasks if task['Empresa'] == task_nom]
    if len(task) == 0:
        abort(404)
    return jsonify({'task': task})

######################################################################################################################################

"""@app.route('/todo/api/v1.0/tasks/<task_nom>/<task_suc>', methods=['GET'])
def get_task(task_nom, task_suc):
    task = [task for task in tasks if (task['Empresa'] == task_nom and task['Sucursal'] == task_suc) ]
    if len(task) == 0:
        abort(404)
    return jsonify({'task': task[0]})"""

######################################################################################################################################
@app.route('/todo/api/v1.0/tasks', methods=['POST'])
def create_task():
    if not request.json or not 'Empresa' in request.json or not 'Sucursal' in request.json or not 'fVigencia' in request.json or not 'CantPrecio' in request.json:
        abort(400)
        
    nom = request.json["Empresa"]
    suc = request.json["Sucursal"]
    fVig = request.json["fVigencia"]
    canpro = request.json["CantPrecio"]
    
    task = {
        'Empresa': nom,
        'Sucursal': suc,
        'fVigencia': fVig,
        'CantPrecio': canpro
    }    
    tasks.append(task)
    
    conn = psycopg2.connect(database='d3fkm1msg7kiub',user='wdtetudvoejjev',password='b7fefda1a504e80018b763ba3d8bcb94804c54dfff9a3372b4a70ee042dadf22', host='ec2-54-83-1-94.compute-1.amazonaws.com')
    
    cur = conn.cursor()
    
    try:    
        cur.execute("insert into Empresas (nombre,Sucursal,fVigencia,CantPrecio) values ('%s','%s','%s',%d);" % (nom,suc,fVig,canpro))
        conn.commit()
    except:
        conn.rollback()
        
    cur.close()
    conn.close()
    
    return jsonify({'task': task}), 201

#######################################################################################################################################

@app.route('/todo/api/v1.0/tasks', methods=['PUT'])   # original /<task_nom>', methods=['PUT'])
def update_task(): #task_nom):
    if not request.json:
        abort(400)
    """if 'fVigencia' in request.json and type(request.json['fVigencia']) != unicode:
        abort(400)"""
    if 'CantPrecio' in request.json and type(request.json['CantPrecio']) != int:
        abort(400)
    if not 'Sucursal' in request.json or not 'Empresa' in request.json :
        abort(400)
        
        
    nom = request.json["Empresa"] ## original task_nom
    suc = request.json["Sucursal"]
    
    task = [task for task in tasks if ( task['Empresa'] == nom and task['Sucursal'] == suc )]
    
    if len(task) == 0:
        abort(404)
        
    task[0]['fVigencia'] = request.json.get('fVigencia', task[0]['fVigencia'])    
    task[0]['CantPrecio'] = request.json.get('CantPrecio', task[0]['CantPrecio'])    
    #task[0]['done'] = request.json.get('done', task[0]['done'])
    
    fVig = task[0]['fVigencia']
    canpro = task[0]['CantPrecio']  
    
    conn = psycopg2.connect(database='d3fkm1msg7kiub',user='wdtetudvoejjev',password='b7fefda1a504e80018b763ba3d8bcb94804c54dfff9a3372b4a70ee042dadf22', host='ec2-54-83-1-94.compute-1.amazonaws.com')
    
    cur = conn.cursor()        
    
    try:
        cur.execute("update Empresas set fVigencia='%s', CantPrecio=%d where nombre='%s' and sucursal ='%s' ;" % (fVig,canpro,nom,suc))
        conn.commit() 
    except(Exception, psycopg2.DatabaseError) as error:
        conn.rollback()
    
    cur.close()
    
    conn.close()
    
    return jsonify({'task': task[0]})
#######################################################################################################################################

@app.route('/todo/api/v1.0/tasks/<task_nom>', methods=['DELETE'])
def delete_task(task_nom):
    task = [task for task in tasks if task['Empresa'] == task_nom]
    if len(task) == 0:
        abort(404)
    tasks.remove(task[0])
    return jsonify({'result': True})

#######################################################################################################################################

if __name__ == '__main__':
    app.run(debug = True)

#Hasta aca lo mio
