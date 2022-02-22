
<html>
    <head>
        <title>Menu HTML</title>       
        
        <style>
            table&#123;
              border-collapse: collapse;
              border: solid 2px black;
              font-weight: bold;
              width:500px;
              float:left;
              margin-left:70px;  
              box-shadow: 10px 10px 10px 10px black;           
            &#125;
            
            caption&#123;
              background-color: #6262A0;
              border: solid 1px black;
            &#125;
            
            th&#123;
              background-color: #6262A0;
              border: solid 1px black;
            &#125;
            
            
            tr:nth-child(odd)&#123;
              background-color: #8FD4E8;
              border:solid 1px black;              
            &#125;
            tr:nth-child(even)&#123;
              background-color: #3636A0;
            &#125;
            
             .visitante&#123;
            
            vertical-align: middle;                        
            &#125;
            
             .local&#123;           
            vertical-align: middle;
            &#125;
           
           .izquierda&#123;            
            float:left;                        
            &#125;
            
             .derecha&#123;            
            float:right;                      
            &#125;
            
            .borde&#123;
            
            border:solid 1px black;
            text-align: center;            
            &#125;
            
            .clasificacion&#123;
           
            text-align:center; 
            width: 400px;
            height: 588px; 
            font-size: 20px;        
            &#125;
            
            .uno&#123;
            
            text-align:left;          
            &#125;
            thead&#123;            
            empty-cells:hide;          
            &#125;
            
            .foto&#123;
              width: 200px;
             height: 150px
                     
            &#125;
            .quiniela&#123;
              width: 50px;
              height: 50px;
              vertical-align: middle;       
            &#125;
            .resultado&#123;
                 border:solid 1px black; 
                 text-align: center;   
                 background-color:white;
                 color:#F75D5D;
            &#125;
             .jugador&#123;
                 position:absolute;
                 margin-left:500px;
                 margin-top:200px;
                 opacity:0.8;
            &#125;
            
        </style>      
    </head>
    <body > 
          <table>
            
              <caption>Resultado de la jornada {string(//jornada/@id)}</caption>              
            
           {for $x in //evento return
            <tr>
              <td class="izquierda"><img class="local" src="{//$x/escudoLocal}"/> {//$x/equipolocal}</td>
              <td class="borde">{//$x/resultadolocal}-{//$x/resultadovisitante}</td>
              <td class="derecha">{//$x/equipovisitante} <img class="visitante" src="{//$x/escudoVisitante}"/></td>
            </tr>
          }
          <img src="ronaldo.png" class="jugador"></img>
          </table> 
           <table class="clasificacion">
              <thead>
                <th colspan="2">LFP 1 DIVISION</th>
                <th colspan="6"><img class="foto" src="imagen.jpg"></img></th>
              </thead>
              <thead> <th colspan="8">Clasificación de la jornada {string(//jornada/@id)}</th></thead>             
              <thead>
                <th>Equipo</th>
                <th>Puntos</th>
                <th>PJ</th>
                <th>PG</th>
                <th>PP</th>
                <th>PE</th>
                <th>GF</th>
                <th>GC</th>                
              </thead>
           {for $x in //team return
            <tr>
              <td class="uno" >{//$x/rank}-{//$x/name}</td>
              <td >{//$x/points}</td>
              <td >{//$x/played}</td>
              <td >{//$x/won}</td>
              <td >{//$x/lost}</td>
              <td >{//$x/drawn}</td>
              <td >{//$x/goals_scored}</td>
              <td >{//$x/goals_conceded}</td>
            </tr>
          }
          </table> 
          
          <table>
            
              <caption><img class="quiniela"  src="quiniela.png" /> Temporada: {//temporada} - Jornada: {string(//jornada/@id)}</caption>              
            
           {for $x in //evento return
            <tr>
              <td class="izquierda"><img class="local" src="{//$x/escudoLocal}"/> {//$x/equipolocal}</td>
              <td class="borde">{//$x/resultadolocal}-{//$x/resultadovisitante}</td>
              <td class="derecha">{//$x/equipovisitante} <img class="visitante" src="{//$x/escudoVisitante}"/></td>
              
             {if ($x/resultadolocal > $x/resultadovisitante) then
                <td class="resultado" style="background-color:#F75D5D;color:white">1</td>
              else( <td class="resultado">1</td>)}
              {if ($x/resultadolocal = $x/resultadovisitante) then
                <td class="resultado" style="background-color:#F75D5D;color:white">X</td>
              else( <td class="resultado">X</td>)}
              
              {if ($x/resultadolocal < $x/resultadovisitante) then
                <td class="resultado" style="background-color:#F75D5D;color:white">2</td>
              else( <td class="resultado">2</td>)}
              
            </tr>
            
          }
          
            
       
          </table> 
    </body>
</html>