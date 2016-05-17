<%@page import="java.util.List"%>
<%@page import="br.com.amnesia.servlets.InvalidUserException"%>
<%@page import="br.com.amnesia.modelo.Quadro" %>
<%@page import="br.com.amnesia.DAO.QuadroDAO" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">    
<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script type="text/javascript" src="arquivos/jquery.min.js"></script>
    <script type="text/javascript" src="arquivos/bootstrap.min.js"></script>
    <link href="arquivos/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="arquivos/estilo.css" rel="stylesheet" type="text/css">
    <link href="arquivos/bootstrap.css" rel="stylesheet" type="text/css">
        <script type="text/javascript">
            function excluir(id){
              Integer quadro_id = id;
              document.formQuadro.submit();
            }
        </script>
  </head>
  <body>
    <form name="formQuadro" action="QuadroController" method="post">
        <%
          Integer teste = 1;
          if(session.getAttribute("usuarioautenticado").toString() == null)
              throw new InvalidUserException("Nenhum Usuário Logado");
          QuadroDAO dao = new QuadroDAO();
          List<Quadro> listaquadro = dao.lista(session.getAttribute("idusuarioautenticado").toString());
        %>
        <div class="topo navbar navbar-default navbar-static-top">
          <div class="container">
            <div class="navbar-header">
              <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-ex-collapse">
              <span class="sr-only">Toggle navigation</span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              </button>
              <a class="navbar-brand" href="#">
              <span>Amnesia</span><br></a>
            </div>
            <div class="collapse navbar-collapse" id="navbar-ex-collapse">
              <ul class="nav navbar-nav navbar-right">
                <li class="menu active"><a href="#">Home<br></a></li>
              </ul>
            </div>
          </div>
        </div>
        <div class="corpo section">
            <div class="container">  
                <div class="row">
                    <% for (Quadro Quadro : listaquadro) { %> 
                        <div class="item col-md-3">
                            <div class="camada-transparente">
                                <a href="#" onclick="excluir(<%=Quadro.getId()%>);">excluir</a>
                                <a href="#">editar</a>
                            </div>
                            <h2> <%=Quadro.getTitulo()%></h2>
                            <p><%=Quadro.getDescricao()%></p>
                        </div>
                    <% } %>
                </div>
          </div>
        </div>
        <footer class="section section-primary">
          <div class="container">
            <div class="row">
              <div class="col-sm-6">
                <h1>Dispositivos Móveis</h1>
                <p>Aplicação criada para conclusão da matéria.</p>
              </div>
              <div class="col-sm-6">
                <p class="text-info text-right"> <br><br></p>
                <div class="row">
                  <div class="col-md-12 hidden-lg hidden-md hidden-sm text-left">
                    <a href="https://www.instagram.com/RoSampa94/" target="_blank"><i class="fa fa-3x fa-fw fa-instagram text-inverse"></i></a>
                    <a href="https://www.facebook.com/RoSampa94" target="_blank"><i class="fa fa-3x fa-fw fa-facebook text-inverse"></i></a>
                    <a href="https://github.com/RoSampa1994" target="_blank"><i class="fa fa-3x fa-fw fa-github text-inverse"></i></a>
                  </div>
                </div>
                <div class="row">
                  <div class="rede-sociais col-md-12 hidden-xs text-right">
                      <a href="https://www.instagram.com/RoSampa94/" target="_blank" class="instagram"><img src="arquivos/images/instagram.png" /></a>
                    <a href="https://www.facebook.com/RoSampa94" target="_blank" class="facebook"><img src="arquivos/images/facebook.png" /></a>
                    <a href="https://github.com/RoSampa1994" target="_blank" class="github"><img src="arquivos/images/github.png" /></a>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </footer>
    </form>
    </body>
</html>
