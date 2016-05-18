<%@page import="br.com.amnesia.servlets.InvalidUserException"%>
<%@page import="br.com.amnesia.modelo.Tarefa" %>
<%@page import="br.com.amnesia.DAO.TarefaDAO" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>     
        <%
          String id = request.getParameter("ID");
          TarefaDAO dao = new TarefaDAO();
          dao.excluir(id) ;            
            response.sendRedirect("tarefa.jsp");
        %>         
    </body>
</html>
