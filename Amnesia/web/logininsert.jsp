<%@page import="br.com.amnesia.servlets.InvalidUserException"%>
<%@page import="br.com.amnesia.modelo.Login" %>
<%@page import="br.com.amnesia.DAO.LoginDAO" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
          Login login = new Login();
          login.setLogin(request.getParameter("txtlogin"));
          login.setSenha(request.getParameter("txtsenha"));
          login.setEmail(request.getParameter("txtemail"));
          LoginDAO dao = new LoginDAO();
          dao.inserir(login) ;            
            response.sendRedirect("login.jsp");
        %>     
    </body>
</html>
