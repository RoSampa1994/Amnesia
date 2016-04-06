<%@page import="br.com.amnesia.servlets.InvalidUserException"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">    
<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
    <script type="text/javascript" src="http://netdna.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
    <link href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="./estilo.css" rel="stylesheet" type="text/css">
    <link href="http://pingendo.github.io/pingendo-bootstrap/themes/default/bootstrap.css" rel="stylesheet" type="text/css">
  </head>
  <body>
    <%
        String nomeUsuario = (String) session.getAttribute("usuarioautenticado");
        if(nomeUsuario == null)
            throw new InvalidUserException("Nenhum Usuário Logado");
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
          <div class="item col-md-3">
            <div class="camada-transparente">
              <a href="#">excluir</a>
              <a href="#">editar</a>
            </div>
            <h2>Titulo</h2>
            <p>Descrição dos quadros das tarefas</p>
          </div>
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
              <div class="col-md-12 hidden-xs text-right">
                <a href="https://www.instagram.com/RoSampa94/" target="_blank"><i class="fa fa-3x fa-fw fa-instagram text-inverse"></i></a>
                <a href="https://www.facebook.com/RoSampa94" target="_blank"><i class="fa fa-3x fa-fw fa-facebook text-inverse"></i></a>
                <a href="https://github.com/RoSampa1994" target="_blank"><i class="fa fa-3x fa-fw fa-github text-inverse"></i></a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </footer>
  </body>
</html>
