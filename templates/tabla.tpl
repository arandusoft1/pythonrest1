<html>
    <head>
    	<title>Tabla de vigencias</title>
	<link rel="icon" type="image/png" href="https://github.com/arandusoft1/pythonrest1/blob/master/favicon.png?raw=true" />
	
	<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
	<link href="/cssfriar.css" rel="stylesheet">	
	
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
        <li><a class="active" href="/index">Tabla completa</a></li>
        <li><a href="/UltimaVigencia">Ultima vigencia</a></li>
        <li><a href="/vigenciamenora24hs">Vigencia menor a 12 hs</a></li>
        <li><a href="/vigenciamayora24hs">Vigencia mayor a 12 hs</a></li>
	<li>
		<form action="/buscarsucursal" style="margin-bottom: 0px;" method="post">
		
			<div class="box">
				<div class="container-4">
					<input name="sucursal" type="search" id="search" placeholder="Buscar sucursal..." required  />
					<button type="submit" class="icon"><i class="fa fa-search"></i></button>
				</div>
			</div>
			
		</form> 
	</li>
      </ul>

      <div style="padding:1px 16px;height:869px;" class="a">
        
        <div align="center" id="fuente" style="min-width: 272px;">
          <h1>La ultima vigencia es {{ultact}} </h1>
        </div>
        
        <table style="width:90%" align="center" id="principal">
            
	    <thead>
	    <tr>
                <th>Empresa</th>
                <th>Sucursal</th> 
                <th>Fecha de Vigencia</th>
                <th>Cantidad de Precios</th>
            </tr>
            </thead>
	    
	    <tbody>	 
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
            </tbody>	
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
