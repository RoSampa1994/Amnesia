/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.amnesia.servlets;

/**
 *
 * @author Cliente
 */
class InvalidUserException extends Exception {

    public InvalidUserException(String login_ou_Senha_Inválida) {
    }
    
}
