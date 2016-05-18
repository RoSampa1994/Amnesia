<%@page import="br.com.amnesia.servlets.InvalidUserException"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
    <head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <title>Amnesia</title>
    <link rel="stylesheet" media="all" href="arquivos/bootstrap.css" data-turbolinks-track="true">
<link rel="stylesheet" media="all" href="arquivos/estilo.css" data-turbolinks-track="true">
<link rel="stylesheet" media="all" href="arquivos/restaurantes.css" data-turbolinks-track="true">
<link rel="stylesheet" media="all" href="arquivos/application.css" data-turbolinks-track="true">
    <script src="arquivos/jquery.js" data-turbolinks-track="true"></script>
<script src="arquivos/turbolinks.js" data-turbolinks-track="true"></script>
<script src="arquivos/bootstrap.js" data-turbolinks-track="true"></script>
<script src="arquivos/restaurantes.js" data-turbolinks-track="true"></script>
<script src="arquivos/application.js" data-turbolinks-track="true"></script>
<script type="text/javascript">
  function validarLogin(){
      var txtlogin = document.getElementById("campos_login");
      var txtsenha = document.getElementById("campos_senha");
	if(txtlogin.value == ""){
		alert("Campo usuário não Informado");  
		return false;
	} 
	if(txtsenha.value == ""){ 
		alert("Campo Senha não Informado");
		return false;
	} 
	document.formLogin.submit();
  }
</script>
  </head>

  <body style="background: #337cbb">
    <form name="formLogin" action="LoginController" method="post">
        <div class="container">
          <div class="bloco-login col-md-4 text-center">
            <h3 class="logininvalido"> </h3>
            <h3>LOGIN</h3>
              <input name="txtlogin" id="campos_login" placeholder="USUÁRIO" class="col-md-9 col-sm-12 col-xs-12" type="text">
              <input name="txtsenha" id="campos_senha" placeholder="SENHA" class="col-md-9 col-sm-12 col-xs-12" type="password">
              <input name="commit" value="ENTRAR" class="submit col-md-4 col-sm-12 col-xs-12" type="button" onclick="validarLogin()">
          </div>
        </div>
    </form>



</body></html>
