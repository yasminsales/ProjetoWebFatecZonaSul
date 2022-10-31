<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="ProjetoTerraModellBins.Cidade"%>
<%@page import="ProjetoTerraControllers.ControllerCidade"%>
<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    Cidade cid = new Cidade(id);
    ControllerCidade cidCont = new ControllerCidade();
    cid = cidCont.buscar(cid);
    String cdbusca = request.getParameter("CDBUSCA");
%>

<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>ALTERAR - CIDADE</title>
    <body>
       <div class="container"/>
       <h1>ALTERAR CIDADE</h1>
        <form name="alterarCidade" action="validaAlterarCidade.jsp" method="post">
            Id: <input type="text" name="ID" value="<%=cid.getId()%>"> <br>            
            Nome: <input type="text" name="NOME" value="<%=cid.getNome()%>"> <br>            
            Capital (s ou n): <input type="text" name="CAPITAL" value="<%=cid.isCapital()%>"> <br>            
            Clima: <input type="text" name="CLIMA" value="<%=cid.getClima()%>"> <br>               
            POPULACAO: <input type="text" name="POPULACAO" value="<%=cid.getPopulacao()%>"> <br>                 
            Id do país: <input type="text" name="PAISID" value="<%=cid.getPais().getId()%>"> <br>            
            <input type="HIDDEN" name="ID" value="<%=cid.getId()%>"> <br>
            <input type="HIDDEN" name="CDBUSCA" value="<%=cdbusca%>"> <br>
            <input type="submit" name="Enviar" value="OK">
        </form>
        <div>
    </body>
</html>