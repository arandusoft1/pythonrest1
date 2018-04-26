<html>
    <head>
        <h1 align="center">Estado de Vigencia de Empresas</h1>
	% ultVigencia = UltAct[0]['fVigencia']
	<h1 align="center">La ultima vigencia es {{ultVigencia}} </h1>
	
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
            
             % from datetime import datetime
             % fmt = '%d/%m/%y %H:%M:%S'
             % d1 = datetime.strptime(ultVigencia,fmt) #Ultima vigencia
             
            %for elemento in Empresas:
                
               
                % eltoVigencia = elemento['fVigencia']                
                % d2=datetime.strptime(eltoVigencia,fmt)   #Elemento vigencia
                % diffseg= ((d1-d2).seconds)/3600.0  
                % diffdias= (d1-d2).days
                
                %if diffseg > 24 or diffdias > 0 :
                    <tr class="rojo">
                        <td>{{elemento['Empresa']}}</td> 
                        <td>{{elemento['Sucursal']}}</td> 
                        <td>{{elemento['fVigencia']}}</td> 
                        <td>{{elemento['CantPrecio']}}</td> 
                    </tr>
                %elif elemento['fVigencia'] == UltAct[0]['fVigencia']:
                    <tr class="verde">
                        <td>{{elemento['Empresa']}}</td> 
                        <td>{{elemento['Sucursal']}}</td> 
                        <td>{{elemento['fVigencia']}}</td> 
                        <td>{{elemento['CantPrecio']}}</td> 
                    </tr>             
                %else:
                    <tr class="amarillo">
                        <td>{{elemento['Empresa']}}</td> 
                        <td>{{elemento['Sucursal']}}</td> 
                        <td>{{elemento['fVigencia']}}</td> 
                        <td>{{elemento['CantPrecio']}}</td> 
                    </tr>
                 %end   
                        
            %end 
            
        </table>

    </body>
</html>
