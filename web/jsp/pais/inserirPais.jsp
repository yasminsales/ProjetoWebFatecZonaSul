<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>INSERIR - PAIS</title>
    <body>
       <div class="container"/>
        <h1>INSERIR PAIS</h1>
        <form name="inserirPais" action="validaInserirPais.jsp" method="post">
            Nome: <input type="text" name="NOME" value=""> <br>
            Area: <input type="text" name="PIB" value=""> <br>
            Idh: <input type="text" name="IDH" value=""> <br>
            ContinenteId: <input type="text" name="CONTINENTEID"> <br>
            <input type="submit" name="Enviar" value="OK">
        </form>
        </div>
    </body>
</html>
