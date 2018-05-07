def ultiact():
		
	conn = psycopg2.connect(database='d3fkm1msg7kiub',user='wdtetudvoejjev',password='b7fefda1a504e80018b763ba3d8bcb94804c54dfff9a3372b4a70ee042dadf22', host='ec2-54-83-1-94.compute-1.amazonaws.com')
	con = conn.cursor()
	con.execute("select * from Empresas;")
	rows = con.fetchall()	
	fmt = '%d/%m/%y %H:%M:%S'
	ultact = "01/01/01 00:00:00"
	d2 = datetime.strptime(ultact,fmt)
	
	for row in rows:		
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
        
	return ultact
