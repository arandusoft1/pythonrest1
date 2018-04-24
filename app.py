# -*- coding: UTF-8 -*-

from flask import Flask, jsonify, abort, request, make_response, url_for
from flask_httpauth import HTTPBasicAuth
from datetime import datetime
import psycopg2, psycopg2.extras

app = Flask(__name__, static_url_path = "")

@app.errorhandler(404)
def not_found(error):
    return make_response(jsonify( { 'error': 'Not found' } ), 404)




@app.route('/v1/tasks', methods = ['POST'])
def create_task():
    if not request.json:
        abort(400)   
        
    conn = psycopg2.connect(database='d3fkm1msg7kiub',user='wdtetudvoejjev',password='b7fefda1a504e80018b763ba3d8bcb94804c54dfff9a3372b4a70ee042dadf22', host='ec2-54-83-1-94.compute-1.amazonaws.com')
    
    for elemento in leer:
        nom = request.json['Empresa']
        suc = request.json['Sucursal']
        fVig = request.json['fVigencia']
        canpro = request.json['CantPrecio']
    
    rec = conn.cursor()
    rec.execute("select codigo from Empresas where nombre = %s and sucursal = %s",(nom,suc))
    rows = rec.fetchall()

    for row in rows:
        cod = row[0]
    
    rec.close()
    cur = conn.cursor()

    if cod > 0:
        try:
            print 'Actualizado'
            cur.execute("update Empresas set fVigencia='%s', CantPrecio=%d where codigo=%d;" % (fVig,canpro,cod))
            conn.commit() 
        except(Exception, psycopg2.DatabaseError) as error:
            print(error)
            conn.rollback()
    else:
        try:
            print 'Creado'
            cur.execute("insert into Empresas (nombre,Sucursal,fVigencia,CantPrecio) values ('%s','%s','%s',%d);" % (nom,suc,fVig,canpro))
            conn.commit()
        except:
            conn.rollback()

    cur.close()
    
    conn.close()

    return "hecho", 201
    








if __name__ == '__main__':
    app.run(debug = True)
