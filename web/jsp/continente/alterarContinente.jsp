<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="ProjetoTerraModellBins.Continente"%>
<%@page import="ProjetoTerraControllers.ControllerContinente"%>
<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    Continente con = new Continente(id);
    ControllerContinente conCont = new ControllerContinente();
    con = conCont.buscar(con);
    String cbusca = request.getParameter("CBUSCA");
%>

<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>ALTERAR - CONTINENTE</title>
    <body>
       <div class="container"/>
       <h1>ALTERAR CONTINENTE</h1>
        <form name="alterarContinente" action="validaAlterarContinente.jsp" method="post">
            Id: <input type="text" name="ID" value="<%=con.getId()%>"> <br>
            Nome: <input type="text" name="NOME" value="<%=con.getNome()%>"> <br>
            Área: <input type="text" name=AREA value="<%=con.getArea()%>"> <br>
            <input type="HIDDEN" name="ID" value="<%=con.getId()%>"> <br>
            <input type="HIDDEN" name="CBUSCA" value="<%=cbusca%>"> <br>
            <input type="submit" name="Enviar" value="OK">
        </form>
        <div>
    </body>
</html>
