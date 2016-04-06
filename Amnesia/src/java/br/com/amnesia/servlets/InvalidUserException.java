package br.com.amnesia.servlets;

import javax.servlet.ServletException;


public class InvalidUserException extends ServletException {

    public InvalidUserException(String mensagem) {
        super(mensagem);
    }
    
}
