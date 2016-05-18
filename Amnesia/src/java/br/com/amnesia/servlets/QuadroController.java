package br.com.amnesia.servlets;


import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import br.com.amnesia.DAO.QuadroDAO;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class QuadroController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
                    throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(LoginController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(LoginController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    private void processRequest(HttpServletRequest req,
        HttpServletResponse resp) throws ServletException, IOException, SQLException, ClassNotFoundException {
        validaDadosRecebidos(req);
        RequestDispatcher rd = req.getRequestDispatcher("/quadro.jsp");
        rd.forward(req, resp);
    }


    private void validaDadosRecebidos(HttpServletRequest req) throws ServletException, SQLException, ClassNotFoundException{
        String quadro_id = req.getParameter("id");
        QuadroDAO quadro = new QuadroDAO();
  	}

}
