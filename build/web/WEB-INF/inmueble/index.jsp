

<%@page import="es.inmobiliaria.hibernate.Inmueble"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <title>InmoWeb</title>
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
        <title>Tabla de Datos</title>
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


                        <table>
                            <thead>
                                <tr>
                                    <th>id</th>
                                    <th>Titulo</th>
                                    <th>Direccion</th>
                                    <th>Precio</th>
                                    <th>Usuario</th>
                                </tr>
                            </thead>
                            <tbody>
                                <%
                                    List<Inmueble> lista = (List) request.getAttribute("datos");
                                    for (Inmueble p : lista) {
                                %>
                                <tr>
                                    <td><%= p.getId()%></td>
                                    <td><%= p.getTitulo()%></td>
                                    <td><%= p.getDireccion()%></td>
                                    <td><%= p.getPrecio()%></td>
                                    <td><%= p.getUsuario()%></td>
                                    <td><a href="control?target=inmueble&op=delete&action=op&id=<%= p.getId()%>">Borrar</a></td>
                                    <td><a href="control?target=inmueble&op=edit&action=view&id=<%= p.getId()%>">Editar</a></td>
                                    <td><a href="#">Ver imagen</a></td>
                                </tr>
                                <%
                                    }
                                %>

                            </tbody>
                        </table>
                        <input type="submit" value="Insertar registro" 
                               onclick="window.location.href = 'control?target=inmueble&op=insert&action=view'">

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

                        <p>Powered By Marcos Rubiño- desing </p>



                    </div>
                </div>
            </footer>
        </div>
        <!-- FIN BOTTOM-->
    </body>
</html>
