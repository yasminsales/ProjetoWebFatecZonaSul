<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="ProjetoTerraModellBins.Usuario"%>
<%@page import="ProjetoTerraModellBins.Pais"%>
<%@page import="ProjetoTerraControllers.ControllerPais"%>

<%
    String nome = request.getParameter("NOME");
    ControllerPais paicont = new ControllerPais();
    List<Pais> pais = paicont.listar(nome);
    Usuario usuLogado = (Usuario) session.getAttribute("UsuarioLogado");
    String url = "PPBUSCA=" + nome+"&ID=" ;
%>

<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>LISTA PAÍS</title>
    <body>
        <table class="striped responsive-table">
            <thead>
              <tr>
                  <th data-field="Id">Id</th>
                  <th data-field="Nome">Nome</th>
                  <th data-field="Excluir">Excluir</th>
                  <th data-field="Alterar">Alterar</th>
              </tr>
            </thead>
            <% if (!(pais.isEmpty())) { %>    
                <tbody>
                    <% for (Pais listaPais : pais) { %>
                        <tr>
                            <td><%=listaPais.getId()%></td>
                            <td><%=listaPais.getNome()%></td>
                            <td><%=listaPais.getPib()%></td>
                             <td><%=listaPais.getIdh()%></td>
                              <td><%=listaPais.getContinente()%></td>
                            <% if (usuLogado.getTipo().equals("ADM")) { %>
                                <td><a href="excluirPais.jsp?<%=url + listaPais.getId()%>">Excluir</a></td>
                                <td><a href="alterarPais.jsp?<%=url + listaPais.getId()%>">Alterar</a></td>
                            <% } %>
                        </tr>
                    <% } %>
                </tbody>
            <% } %>
        </table>    
    </body>
</html>
