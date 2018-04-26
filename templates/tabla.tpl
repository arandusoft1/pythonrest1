<html>
	<head>
		<h1 align="center">Estado de Vigencia de Empresas</h1>
		<h1 align="center">La ultima vigencia es {{ultact}} </h1>    
    	
	</head>
	
    	<body bgcolor=#f1f1c1>
    
        
		{% for elemento in empresas: %}
                
               
				<div>{{elemento['Empresa']}}</div> 
				<div>{{elemento['Sucursal']}}</div>
				<div>{{elemento['fVigencia']}}</div>
				<div>{{elemento['CantPrecio']}}</div> 
			   
                        
            	{% endfor %}
            
        

	</body>
</html>
