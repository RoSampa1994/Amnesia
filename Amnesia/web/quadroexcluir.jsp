<%@page import="br.com.amnesia.servlets.InvalidUserException"%>
<%@page import="br.com.amnesia.modelo.Quadro" %>
<%@page import="br.com.amnesia.DAO.QuadroDAO" %>
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
          QuadroDAO dao = new QuadroDAO();
          dao.excluir(id) ;            
            response.sendRedirect("quadro.jsp");
        %>         
    </body>
</html>
