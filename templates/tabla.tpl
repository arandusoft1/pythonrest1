<html>
    <head>
    	<title>Tabla de vigencias</title>
	
        <style>
	    	    
            table, th, td {
                border: 2px solid black;
                border-collapse: collapse;
            }
            th, td {
                padding: 5px;
                font-weight: bold;
                color: #000;
            }           
            th {
                text-align: center;;
            }
            table .rojo {
                background-color:#bf5858;
            }
            table .amarillo {
                background-color:#cece1e;
            }
            table .verde {
                background-color:#118c11;
            }
            table td:first-child {
                width: 200px;
            }
 
            table td:nth-child(2) {
	            width: 150px;
            }
 
            table td:nth-child(3) {
	            width: 250px;
            }
 
            table td:last-child {
	            width: 150px;
            }
            
        </style>
    </head>
    <body bgcolor=#f1f1c1>
    
    		
	<div align="left"><IMG src="https://github.com/arandusoft1/pythonrest1/blob/master/friarlogo.png?raw=true" border=0 width="220" height="61"></div>
	
	<div align="center">
		<h1>La ultima vigencia es {{ultact}} </h1>
	</div>
		
        <table style="width:80%" align="center">
            <tr>
                <th>Empresa</th>
                <th>Sucursal</th> 
                <th>Fecha de Vigencia</th>
                <th>Cantidad de Precios</th>
            </tr>
                        
            {% for elemento in empresas: %}
                     
                {% if elemento['color'] == "R": %} 
                    <tr class="rojo">
                        <td>{{elemento['Empresa']}}</td> 
                        <td>{{elemento['Sucursal']}}</td> 
                        <td>{{elemento['fVigencia']}}</td> 
                        <td>{{elemento['CantPrecio']}}</td> 
                    </tr>
                {% else: %}
			{% if elemento['color'] == "V": %}
			    <tr class="verde">
				<td>{{elemento['Empresa']}}</td> 
				<td>{{elemento['Sucursal']}}</td> 
				<td>{{elemento['fVigencia']}}</td> 
				<td>{{elemento['CantPrecio']}}</td> 
			    </tr>             
			{% else: %}
			    <tr class="amarillo">
				<td>{{elemento['Empresa']}}</td> 
				<td>{{elemento['Sucursal']}}</td> 
				<td>{{elemento['fVigencia']}}</td> 
				<td>{{elemento['CantPrecio']}}</td> 
			    </tr>
			 {% endif %}
		 {% endif %}
		
                        
            {% endfor %} 
            
        </table>
	
	<div align="center">
		<p ><font color="#118c11">■</font> Ultima vigencia</p>
		<p ><font color="#cece1e">■</font> Mas de 12 hs sin actualizar</p>
		<p ><font color="#bf5858">■</font> Mas de 24 hs sin actualizar</p>
        </div>

    </body>
</html>
