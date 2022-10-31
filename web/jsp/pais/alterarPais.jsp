<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="ProjetoTerraModellBins.Pais"%>
<%@page import="ProjetoTerraControllers.ControllerPais"%>
<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    Pais pai = new Pais(id);
    ControllerPais paiCont = new ControllerPais();
    pai = paiCont.buscar(pai);
    String ppbusca = request.getParameter("PPBUSCA");
%>

<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>ALTERAR - PAÍS</title>
    <body>
       <div class="container"/>
       <h1>ALTERAR PAÍS</h1>
        <form name="alterarPais" action="validaAlterarPais.jsp" method="post">
            Id: <input type="text" name="ID" value="<%=pai.getId()%>"> <br>
            Nome: <input type="text" name="NOME" value="<%=pai.getNome()%>"> <br>
            Pib: <input type="text" name="PIB" value="<%=pai.getPib()%>"> <br>
            Idh: <input type="text" name="IDH" value="<%=pai.getIdh()%>"> <br>
            ContinenteId: <input type="text" name="CONTINENTEID" value="<%=pai.getContinente().getId()%>"> <br>
            <input type="HIDDEN" name="ID" value="<%=pai.getId()%>"> <br>
            <input type="HIDDEN" name="PPBUSCA" value="<%=ppbusca%>"> <br>
            <input type="submit" name="Enviar" value="OK">
        </form>
        <div>
    </body>
</html>