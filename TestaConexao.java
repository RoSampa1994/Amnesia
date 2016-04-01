package br.com.amnesia.teste;

import br.com.amnesia.conexao.Conexao;
import java.sql.Connection;
import java.sql.SQLException;

public class TestaConexao {

    public static void main(String[] args) throws SQLException, ClassNotFoundException {        
        Connection con = new Conexao().getConnection();
        System.out.println("conectado");
        con.close();
        System.err.println("conexão fechada");
    }    
}
