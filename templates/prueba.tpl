<html>
    <head>
    	<title>Tabla de vigencias</title>
	<link rel="icon" type="image/png" href="https://github.com/arandusoft1/pythonrest1/blob/master/favicon.png?raw=true" />
	
        <style>
	    	    
            body {
              margin: 0;
            }
            ul {
                list-style-type: none;
                margin: 0;
                padding: 0;
                width: 25%;
                background-color: #333333;
                position: fixed;
                height: 100%;
                overflow: auto;
	    	max-width: 223px;
	    	min-width: 223px;
	    	top: 71px;
	    }
            
            li a {
                display: block;
                color: #fffff0;
                padding: 8px 16px;
                text-decoration: none;
		font-weight: bold;
            }
            
            li a.active {
                background-color: #e14314;
                color: white;
		font-weight: bold;
            }
            
            li a:hover {
                background-color: #111;
                color: white;
            }
            
	    
            table, th, td {
                border: 2px solid black;
                border-collapse: collapse;
            }
            th, td {
                padding: 5px;
                font-weight: bold;
            }
	    #principal td {
                color: #000;
            }   	    
            #principal th {
                text-align: center;;
	    	color: #fff;
		background-color:#e14314;
            }
	    #customers th, #customers td {
                border: 1px solid #ddd;
                border-collapse: collapse;
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
	    
	    
	    
	    div.sticky {
	    	    position: -webkit-sticky;
	    	    position: sticky;
	    	    top: 0;
	    	    padding: 5px;
	    	    background-color: #ffffff;
	    	    border: 0px solid #ffffff;
            }
	  
        </style>
    </head>
    <body bgcolor=#fffff>
      <div class="sticky">
      	<IMG src="https://github.com/arandusoft1/pythonrest1/blob/master/friarlogo.png?raw=true" border=0 width="220" height="61">
      </div>
      
      <div>
      <ul>
        <li><a class="active" href="/index">Tabla completa</a></li>
        <li><a href="/UltimaVigencia">Ultima vigencia</a></li>
        <li><a href="/vigenciamenora24hs">Vigencia menor a 24 hs</a></li>
        <li><a href="/vigenciamayora24hs">Vigencia mayor a 24 hs</a></li>
      </ul>

      <div style="margin-left:192;padding:1px 16px;height:1000px;">
        
        <div align="center">
          <h1>La ultima vigencia es {{ultact}} </h1>
	      </div>
        
        <table style="width:90%" align="center" id="principal">
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
        <table style="width:90%; border: hidden;" align="center" class="foot" >
          <tr style="text-align:left; border: hidden;">
            <th style="text-align:left; border: hidden">&nbsp</th>
          </tr>
          <tr style="text-align:left; border: hidden;">
            <th style="text-align:left; border: hidden"><font color="#118c11">■</font>&nbspUltima vigencia</th>
          </tr>
          <tr style="border: hidden">
            <td style="border: hidden"><font color="#cece1e">■</font>&nbspVigencia menor a 24 hs sin actualizar</td>
          </tr>
          <tr style="border: hidden">
            <td style="border: hidden"><font color="#bf5858">■</font>&nbspVigencia mayor a 24 hs sin actualizar</td>
          </tr>
          
        </table>
        
        
      </div>
      </div>
      
    </body>
</html>
