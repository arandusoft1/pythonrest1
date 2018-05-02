<html>
    <head>
    	<title>Tabla de vigencias</title>
	<link rel="icon" type="image/png" href="https://github.com/arandusoft1/pythonrest1/blob/master/favicon.png?raw=true" />
	
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
	    
	    table .foot {
	            width: 750px;
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
                     
                
              {% if elemento['color'] == "V": %}
                  <tr class="verde">
                    <td>{{elemento['Empresa']}}</td> 
                    <td>{{elemento['Sucursal']}}</td> 
                    <td>{{elemento['fVigencia']}}</td> 
                    <td>{{elemento['CantPrecio']}}</td> 
                  </tr>           
               {% endif %}
            
		
                        
            {% endfor %} 
            
        </table>
	<table style="width:80%; border: hidden;" align="center" class="foot" >
		<tr style="text-align:left; border: hidden;">
			<th style="text-align:left; border: hidden">&nbsp</th>
            	</tr>
		<tr style="text-align:left; border: hidden;">
			<th style="text-align:left; border: hidden"><font color="#cece1e">■</font> Vigencia menor a 24 hs</th>
            	</tr>		
		<tr style="border: hidden">
			<td style="border: hidden">◄&nbsp<a href="/index">volver a tabla completa</a></td>
		</tr>
		
         </table>
    </body>
</html>
