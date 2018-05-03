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
                background-color: #333333;
                position: fixed;                
                overflow: auto;
	    	top: 71px;			    
	    }
	    
	    ul {
            	max-width: 223px;
            	min-width: 223px;
		width: 25%;
	    	height: 100%;
	    	border-radius: 0px 15px 0px 0px;
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
            
	    
            table {
                border: 2px solid black;
                border-collapse: collapse;
		font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
		min-width: 280px;
            }
            th, td {
	    	border: 2px solid black;
                border-collapse: collapse
                padding: 5px;
                font-weight: bold;
            }
	    #principal {
	    	font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
	    }
	    
	    #principal td {
                color: #000;
            }   	    
            #principal th {
                text-align: center;;
	    	color: #fff;
		background-color:#333333;
            }
	    #principal tr:hover {
	    	background-color: #ddd;
            }
	    
	    
            #fuente {
	    	font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
	    }
	    
	    
            table .rojo {
                background-color:#bf5858;
            }
            table .amarillo {
                background-color:#cece1e;
            }
            table .verde {
                background-color:#4caf50;
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
	    
	    div .a {
	    margin-left: 192px;
	    }
	    
	    div.sticky {
	    	position: -webkit-sticky;
	    	position: sticky;
	    	top: 0;
	    	padding: 5px;
	    	background-color: #ffffff;
	    	border: 0px solid #ffffff;
            }
	    
	    #logo table {
	    	border-collapse: collapse;
            	border: 0px solid black;
	    	width: 100%
	    }
	    #logo th {	
            	text-align: left;
	    	border: 0px solid black;
	    }
	    #logo img {
            	min-height:20px
	    }
	    
	    @media screen and (max-width: 600px) {
  	    	ul {
            		width: 100%;
			min-width: 305px;
			max-width: unset;
			height: 141px;
			border-radius: 15px 15px 0px 0px;
            	}
		li a {
			text-align: center;
		}
		div .a {
			margin-left: 0px;
			margin-top: 138px;
		}
            }

	 
	  
        </style>
    </head>
    <body bgcolor=#fffff>
      <div class="sticky">
      	<table id="logo" style="width: 100%;border: hidden;">
		<tr id="logo">
			<th id="logo" align="center" style="padding-right: 0px;width: 200px;"><img id="logo" src="https://github.com/arandusoft1/pythonrest1/blob/master/logofriarconpata.png?raw=true" alt="Norway" style="float:left;width="100px"; height: 62px;"></th>
			<th id="logo" style="padding-left: 0px; padding-right: 0px;"><img id="logo" src="https://github.com/arandusoft1/pythonrest1/blob/master/patafriar.png?raw=true" alt="Paris" style="float:left;width: 100%;margin-top: 41px;height: 120.703;height: 0px;"></th>
			<th id="logo" style="padding-left: 0px;width: 9px;"><img id="logo" src="https://github.com/arandusoft1/pythonrest1/blob/master/tapadepata.png?raw=true" alt="Paris" style="float:left;width: 9px;margin-top: 41px;height: 120.703;height: 20px;"></th>
		</tr>  
	</table>
      </div>
      
      <div>
      <ul id="fuente">
        <li><a class="active" href="/index">Tabla completa</a></li>
        <li><a href="/UltimaVigencia">Ultima vigencia</a></li>
        <li><a href="/vigenciamenora24hs">Vigencia menor a 12 hs</a></li>
        <li><a href="/vigenciamayora24hs">Vigencia mayor a 12 hs</a></li>
      </ul>

      <div style="padding:1px 16px;height:1000px;" class="a">
        
        <div align="center" id="fuente" style="min-width: 272px;">
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
        <table style="width:90%; border: hidden; color: darkslategrey;" align="center" class="foot" >
          <tr style="text-align:left; border: hidden;">
            <th style="text-align:left; border: hidden">&nbsp</th>
          </tr>
          <tr style="text-align:left; border: hidden;">
            <th style="text-align:left; border: hidden"><font color="#118c11">■</font>&nbspUltima vigencia</th>
          </tr>
          <tr style="border: hidden">
            <td style="border: hidden"><font color="#cece1e">■</font>&nbspVigencia menor a 12 hs sin actualizar</td>
          </tr>
          <tr style="border: hidden">
            <td style="border: hidden"><font color="#bf5858">■</font>&nbspVigencia mayor a 12 hs sin actualizar</td>
          </tr>
          
        </table>
        
        
      </div>
      </div>
    </body>
</html>
