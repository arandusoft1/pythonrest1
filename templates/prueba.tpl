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
			min-width: auto;
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
	    
	    input[type=search] {
	    	border: 1px dotted #999;
	    	border-radius: 8px;
	    	-webkit-appearance: button-bevel;
	    	font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
	    	margin-left: 14px;
	    	margin-top: 7px;
	    	background-color: #333333;
	    	outline-color: #333333;
	    	color: ivory;
	    	font-size: 15px;
                font-weight: bolder;
		width: 129px;
	    }
	    
	    :not(.default)::-webkit-search-cancel-button {
    	    	-webkit-appearance: none;
	    }
	    
	    .ejemplo1::-webkit-search-cancel-button:after {
	    	content: '';
	    	display: block;
	    	
	    	
	    	width: 14px;
	    	height: 10px;
	    	
		
		background-image:url(data:image/png;base64,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)
	    	
	    	background-repeat: no-repeat;
	    	
	    	background-size: 10px;
	    	
	    	background-position: top left;
	    }
	    
	    
	    #Search{
		width:480px;height:49px; border:3px solid black;
		padding-left:48px;
		padding-top:1px;
		background-image:url('images/search.jpg');
		font-size:22px;color:blue;
		background-repeat:no-repeat;
		background-position:center;outline:0;
	   }

	   #Search::-webkit-search-cancel-button{
		    position:relative;
		    right:20px;  

		    -webkit-appearance: none;
		    height: 20px;
		    width: 20px;
		    content: 'del';
		    background: red;
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
        <li><a href="/vigenciamenora24hs">Vigencia menor a 24 hs</a></li>
        <li><a href="/vigenciamayora24hs">Vigencia mayor a 24 hs</a></li>
	<li>
		<form action="/action_page.php">
			<input class="ejemplo1" type="search" name="FirstName" placeholder="Buscar Sucursal">
			<input type="submit" value="Buscar">
			<input id="Search" name="Search" type="search" placeholder="Searh" />
		</form> 
	</li>
      </ul>

      <div style="padding:1px 16px;height:1000px;" class="a">
        
        <div align="center" id="fuente" >
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
