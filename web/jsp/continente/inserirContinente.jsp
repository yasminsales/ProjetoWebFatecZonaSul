<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>INSERIR - CONTINENTE</title>
    <body>
       <div class="container"/>
        <h1>INSERIR CONTINENTE</h1>
        <form name="inserirContinente" action="validaInserirContinente.jsp" method="post">
            Nome: <input type="text" name="NOME" value=""> <br>
            Area: <input type="text" name="AREA" value=""> <br>
            <input type="submit" name="Enviar" value="OK">
        </form>
        </div>
    </body>
</html>
