

<%@page import="es.inmobiliaria.hibernate.Inmueble"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String id = request.getParameter("id");
    Inmueble p = new Inmueble();
    
%>


<!DOCTYPE html>
<html>
    <head>

        <title>Insertar Inmueble</title>
        <meta charset="UTF-8">
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

    </head>

    <body>
        <!-- ..............................................HEADER...................................................................-->
        <div class="band header">
            <header class="container main">
                <div class="row">
                    <div class="twelve columns">
                        <h1 class="logo"><a href="#">Inmobiliaria</a></h1>
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
                            <li><a href="#">Home</a>
                            </li>
                            <li><a href="control?target=inmueble&op=select&action=view">Ver datos de la tabla</a>
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
                        <br/>
                        <p>Inserta un nuevo imueble en nuestra base de datos</p>
                        <form name="control" action="control" method="POST">
                            Titulo: <input type="text" name="titulo" value="" />
                            Precio: <input type="text" name="precio" value="" />
                            Direccion: <input type="text" name="direccion" value="" />
                            Usuario: <input type="text" name="usuario" value="" />
                            <br>
                            <input type="hidden" name="target" value="inmueble" />
                            <input type="hidden" name="op" value="insert" />
                            <input type="hidden" name="action" value="op" />
                            <input type="hidden" name="id" value="<%=p.getId()%>" />
                            
                            <input type="submit" value="Insertar" />
                        </form>


                    </div>
                </div>
            </div>
        </div>



    </body>
</html>
