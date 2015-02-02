

<%@page import="es.inmobiliaria.hibernate.Inmueble"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Inmueble i = (Inmueble) request.getAttribute("inmueble");
%>
<!DOCTYPE html>
<html>
    <head>

        <title>Editar Inmueble</title>
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
                            <li><a href="control?target=inmueble&op=select&action=view">Home</a>
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
                        <p>Edita un imueble de nuestra base de datos</p>
                        <form name="control" action="control" method="POST">
                            <p>Titulo: <input type="text" name="titulo" value="<%= i.getTitulo()%>" /> </p>         
                            <p>Dirección: <input type="text" name="direccion" value="<%= i.getDireccion()%>" /></p>
                            <p>Precio: <input type="text" name="precio" value="<%= i.getPrecio()%>" /></p>
                            <p>Usuario: <input type="text" name="usuario" value="<%= i.getUsuario()%>" /></p>
                            
                            
                            <input type="hidden" name="target" value="inmueble" />
                            <input type="hidden" name="op" value="edit" />
                            <input type="hidden" name="action" value="op" />
                            <input type="hidden" name="id" value="<%= i.getId()%>" />
                            <input type="submit" value="enviar" />

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
