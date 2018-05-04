<html>
    <head>
    	<title>Tabla de vigencias</title>
	<link rel="icon" type="image/png" href="https://github.com/arandusoft1/pythonrest1/blob/master/favicon.png?raw=true" />
	
	<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
	
        <style>
	    
	    .container-2{
	    	  width: 300px;
	    	  vertical-align: middle;
	    	  white-space: nowrap;
	    	  position: relative;
	    }
	    
	    .container-2 input#search{
		  width: 49px;
		  height: 35px;
		  background: #111;
		  border: none;
		  font-size: 10pt;
		  float: left;
		  color: #262626;
		  padding-left: 35px;
		  -webkit-border-radius: 5px;
		  -moz-border-radius: 5px;
		  border-radius: 0px;
		  color: #fff;

		  -webkit-transition: width .55s ease;
		  -moz-transition: width .55s ease;
		  -ms-transition: width .55s ease;
		  -o-transition: width .55s ease;
		  transition: width .55s ease;
		  max-width: 223px;
		  font-size: 16px;
	     }
	     
	     .container-2 input#search::-webkit-input-placeholder {
		   color: #65737e;
	     }

		.container-2 input#search:-moz-placeholder { /* Firefox 18- */
		   color: #65737e;  
		}

		.container-2 input#search::-moz-placeholder {  /* Firefox 19+ */
		   color: #65737e;  
		}

		.container-2 input#search:-ms-input-placeholder {  
		   color: #65737e;  
		}
	      
	      .container-2 .icon{
		  position: absolute;
		  top: 50%;
		  margin-left: 10px;
		  margin-top: 10px;
		  z-index: 1;
		  color: #fffff0;
		  
		  -webkit-transition: all .55s ease;
  -moz-transition: all .55s ease;
  -ms-transition: all .55s ease;
  -o-transition: all .55s ease;
  transition: all .55s ease;
		}
	    
	    .container-2 input#search:focus, .container-2 input#search:active{
		  outline:none;
		  width: 300px;
	    }

		.container-2:hover input#search{
		width: 300px;
		}

		.container-2:hover .icon{
		  color: #93a2ad;
		  
		  margin-top: 16px;
		  -webkit-transform:scale(1.5); /* Safari and Chrome */
  -moz-transform:scale(1.5); /* Firefox */
  -ms-transform:scale(1.5); /* IE 9 */
  -o-transform:scale(1.5); /* Opera */
   transform:scale(1.5);
		}
	    
	    
	    	    
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
	    	margin-left: 0px;
	    	margin-top: 0px;
	    	background-color: #333333;
	    	outline-color: #333333;
	    	color: ivory;
	    	font-size: 15px;
                font-weight: bolder;
		width: 129px;
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
		<form action="/action_page.php" style="margin-bottom: 0px;" >
			<div class="box">
			  <div class="container-2">
			      <span class="icon"><i class="fa fa-search"></i></span>
			      <input type="search" id="search" placeholder="Buscar Sucursal..." />
			  </div>
			</div>
			
			<div class="box">
  <div class="container-3">
      <span class="icon"><i class="fa fa-search"></i></span>
      <input type="search" id="search" placeholder="Search..." />
  </div>
</div>
			
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
