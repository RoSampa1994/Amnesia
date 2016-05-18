package br.com.amnesia.servlets;


import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import br.com.amnesia.modelo.Login;
import br.com.amnesia.DAO.LoginDAO;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class LoginController extends HttpServlet {
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
        String nomeUsuario = req.getParameter("txtlogin");
        String nomeSenha = req.getParameter("txtsenha");
        LoginDAO dao = new LoginDAO();
        Login usuario = new Login();
        usuario = dao.GetSingleLogin(req.getParameter("txtlogin"));
        if (usuario.getLogin() == null){
            throw new InvalidUserException("Usuário não cadastrado");
        }
        String senha = usuario.getSenha();
        if(!senha.equals(nomeSenha)){
            throw new InvalidUserException("Senha Inválida");
        }
        HttpSession session = req.getSession(true);
        session.setAttribute("usuarioautenticado", usuario.getLogin());
        session.setAttribute("idusuarioautenticado", usuario.getId());        
  	}

}
