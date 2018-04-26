<html>
    <head>
        <h1 align="center">Estado de Vigencia de Empresas</h1>
	<h1 align="center">La ultima vigencia es {{ultact}} </h1>
	
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

    </body>
</html>
