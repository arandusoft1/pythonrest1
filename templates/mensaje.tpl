<html>
    <head>
    	<title>Tabla de vigencias</title>
	<link rel="icon" type="image/png" href="https://github.com/arandusoft1/pythonrest1/blob/master/favicon.png?raw=true" />
	
	<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
	
        <style>
	    	  
	    	
.container-4{
  overflow: hidden;
  width: 222px;
  vertical-align: middle;
  white-space: nowrap;
}
.container-4 input#search{
  width: 222px;
  height: 35px;
  background: #333333;
  border: none;
  font-size: 12pt;
  float: left;
  color: #65737e;
  padding-left: 15px;
  -webkit-border-radius: 5px;
  -moz-border-radius: 5px;
  border-radius: 5px;
  max-width: 222px;
  padding-right: 50px;
  
}
.container-4 input#search::-webkit-input-placeholder {
   color: #fffff0;
}
 
.container-4 input#search:-moz-placeholder { /* Firefox 18- */
   color: #fffff0;  
}
 
.container-4 input#search::-moz-placeholder {  /* Firefox 19+ */
   color: #fffff0;  
}
 
.container-4 input#search:-ms-input-placeholder {  
   color: #fffff0;
}
.container-4 button.icon{
  -webkit-border-top-right-radius: 5px;
  -webkit-border-bottom-right-radius: 5px;
  -moz-border-radius-topright: 5px;
  -moz-border-radius-bottomright: 5px;
  border-top-right-radius: 5px;
  border-bottom-right-radius: 5px;
 
  border: 1px solid black;
  background: #333333;
  height: 35px;
  width: 50px;
  color: #e14314;
  opacity: 0;
  font-size: 13pt;
 
  -webkit-transition: all .55s ease;
  -moz-transition: all .55s ease;
  -ms-transition: all .55s ease;
  -o-transition: all .55s ease;
  transition: all .55s ease;
}
.container-4:hover .container-4:active button.icon, .container-4:focus button.icon{
    outline: none;
    opacity: 1;
    margin-left: -50px;
    background: #111;
  }
  
  .container-4:hover button.icon{
    outline: none;
    opacity: 1;
    margin-left: -50px;
  }
 
  .container-4:hover button.icon:hover{
    background: white;
  }
.container-4:hover input#search{
		background: #111111
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
	    
	    
	    @media screen and (min-width: 600px) and (orientation: portrait) {
  	    	ul {
            		width: 100%;
			min-width: 305px;
			max-width: unset;
			height: 425px;
			border-radius: 15px 15px 0px 0px;
            	}
		li a {
			text-align: center;
			font-size: 60px;
		}
		div .a {
			margin-left: 0px;
			margin-top: 370px;
		        font-size: 28px;
		}
		
		h1 {
			    margin-top: 52px;
		}
		
		table {
			font-size: 35px;
		}
		#principal {
	        	font-size: 48px;
            	}
		.container-4 input#search {
			    height: 85;
			    width: 100%;
			    font-size: 60px;
			    text-align: center;
			    max-width: none;
		}
		
		.container-4 button.icon {
		    font-size: 22pt;
		    height: 85px;
		}
		.container-4 {
			width: 100%;
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
	
		<script type="text/javascript" src="/jquery.js"></script>
	<script type="text/javascript" src="/jquery.tablesorter.js"></script>
	<script>	
		$(document).ready(function() {
			//cuando la página se cargue convertimos la tabla con id "simple" en una tabla ordenable
				$("#principal").tableSorter();
		});
	</script>
	
    </head>
    <body bgcolor=#fffff>
      <div class="sticky">
      	<table id="logo" style="width: 100%;border: hidden;">
		<tr id="logo">
			<th id="logo" align="center" style="padding-right: 0px;width: 200px;"><img id="logo" src="https://github.com/arandusoft1/pythonrest1/blob/master/logofriarconpata.png?raw=true" alt="Norway" style="float:left;width="100px"; height: 62px;"></th>
			<th id="logo" style="padding-left: 0px; padding-right: 0px;"><img id="logo" src="https://github.com/arandusoft1/pythonrest1/blob/master/patafriar.png?raw=true" alt="Paris" style="float:left;width: 100%;margin-top: 41px;height: 120.703;height: 0px;"></th>
			<th id="logo" style="padding-left: 0px;width: 5px;"><img id="logo" src="https://github.com/arandusoft1/pythonrest1/blob/master/tapadepata.png?raw=true" alt="Paris" style="float:left;width: 5px;margin-top: 41px;height: 20px;"></th>
		</tr>  
	</table>
      </div>
      
      <div>
      <ul id="fuente">
        <li><a href="/index">Tabla completa</a></li>
        <li><a href="/UltimaVigencia">Ultima vigencia</a></li>
        <li><a href="/vigenciamenora24hs">Vigencia menor a 12 hs</a></li>
        <li><a href="/vigenciamayora24hs">Vigencia mayor a 12 hs</a></li>
	<li>
		<form action="/buscarsucursal" style="margin-bottom: 0px;" method="post">
		
			<div class="box">
				<div class="container-4">
					<input name="sucursal" type="search" id="search" placeholder="Buscar sucursal..."  required />
					<button type="submit" class="icon"><i class="fa fa-search"></i></button>
				</div>
			</div>
			
		</form> 
	</li>
      </ul>

      <div style="padding:1px 16px;height:869px;" class="a">
        
        <div align="center" id="fuente" style="min-width: 272px;">
          <h1>{{mensaje}}</h1>
        </div>	

      </div>
      </div>
    </body>
</html>
