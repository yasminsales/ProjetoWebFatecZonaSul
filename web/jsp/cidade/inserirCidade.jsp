<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>INSERIR - CIDADE</title>
    <body>
       <div class="container"/>
        <h1>INSERIR CIDADE</h1>
        <form name="inserirCidade" action="validaInserirCidade.jsp" method="post">
            Nome: <input type="text" name="NOME" value=""> <br>
            Capital: <input type="text" name="CAPITAL" value=""> <br>
            Clima: <input type="text" name="CLIMA" value=""> <br>
            População: <input type="text" name="POPULACAO" value=""> <br>
            PaisId: <input type="text" name="PAISID"> <br>
            <input type="submit" name="Enviar" value="OK">
        </form>
        </div>
    </body>
</html>