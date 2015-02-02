<%-- 
    Document   : index
    Created on : 23-ene-2015, 8:57:12
    Author     : MarcosFrancisco
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <title>InmoWeb</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- FONT
        –––––––––––––––––––––––––––––––––––––––––––––––––– -->
        <link href="//fonts.googleapis.com/css?family=Raleway:400,300,600" rel="stylesheet" type="text/css">

        <!-- CSS
      –––––––––––––––––––––––––––––––––––––––––––––––––– -->
        <link rel="stylesheet" href="css/normalize.css">
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="css/flexslider.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tabla de Datos</title>
    </head>
    <body>

        <!-- ..............................................HEADER...................................................................-->
        <div class="band header">
            <header class="container main">
                <div class="row">
                    <div class="twelve columns">
                        <h1 class="logo"><a href="control?target=prueba&op=select&action=view">Inmobiliaria</a></h1>
                    </div>
                </div>
            </header>
        </div>
        <!-- FIN HEADER-->


        <!-- ..............................................NAV...................................................................-->
        <div class="band navigation">
            <nav class="container primary">
                <div class="row">
                    <div class="twelve columns">
                        <ul>
                            <li><a href="control?target=prueba&op=select&action=view">Home</a>
                            </li>
                            <li><a href="control?target=prueba&op=select&action=view">Ver datos de la tabla</a>
                            </li>
                            <li><a href="control?target=subir&op=select&action=view">Subir Foto</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
        </div>

        <!-- FIN NAV-->





        <!-- ..............................................MAIN AREA...................................................................-->
        <div class="band main">

            <div class="container">

                <div class="row">

                    <div class="twelve columns">
                        <form name="control" action="controlsubir" method="POST" enctype="multipart/form-data">
                            <br/>
                            Descripcion: <input type="text" name="descripcion" />
                            <input type="file" name="archivo" />
                            <br/>
                            <input type="submit" name="subir" value="Subir"/>
                        </form>

                    </div>
                </div>
            </div>
        </div>


<!-- ..............................................BOTTOM...................................................................-->

        <div class="band bottom">
            <footer class="container main">
                <div class="bottom">
                    <div class="six columns first-credit">
                        <p> &copy; <a href="#">Group InmoWeb</a> All rights reserverd</p>
                    </div>
                    <div class="six columns last-credit">
                        <p>- Desing By Marcos Rubiño </p>
                    </div>
                </div>
            </footer>
        </div>
<!-- FIN BOTTOM-->
        
        
    </body>
</html>
