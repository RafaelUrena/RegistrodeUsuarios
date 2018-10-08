/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Usuario;

/**
 *
 * @author rafa
 */
public class User {
    private String correo;
    private String password;
    private String curso;
    private String administrador;

    public User() {
    }

    public User(String correo, String password, String curso, String administrador) {
        this.correo = correo;
        this.password = password;
        this.curso = curso;
        this.administrador = administrador;
        
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getCurso() {
        return curso;
    }

    public void setCurso(String curso) {
        this.curso = curso;
    }

    public String getAdministrador() {
        return administrador;
    }


    public void setAdministrador(String administrador) {
        this.administrador = administrador;
    }

    
    
    @Override
    public String toString() {
        return "Usuario: " +  correo + ", curso=" + curso + ", adminuser=" + administrador;
    }
    
    
}
