package br.com.amnesia.teste;

import br.com.amnesia.DAO.QuadroDAO;
import br.com.amnesia.modelo.Quadro;
import br.com.amnesia.DAO.TarefaDAO;
import br.com.amnesia.modelo.Tarefa;
import java.sql.SQLException;

public class TestaInsert {

    public static void main(String[] args) throws SQLException, ClassNotFoundException {
        Quadro quadros = new Quadro();
        quadros.setTitulo("Hello Word");
        quadros.setDescricao("Quadro de teste");
        QuadroDAO dao = new QuadroDAO();
        dao.inserir(quadros);
        
        Tarefa tarefas = new Tarefa();
        tarefas.setDescricao("Hello Word");
        tarefas.setStatus("Ativo");
        TarefaDAO tarefadao = new TarefaDAO();
        tarefadao.inserir(tarefas);        
    }
}
