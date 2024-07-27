package pt.citeforma.utilizador;

import java.io.Serializable;

public class UtilizadorBean implements Serializable {
    
    /* método necessário por causa da interface Serializable para que a classe seja thread safe */
    private static final long serialVersionUID = 8408576686733821815L;
    
    private String userName;
    private String pwd;
    
    /*Um JavaBean tem sempre um construtor sem parâmetros*/
    public UtilizadorBean() {
        this.userName = "Jose Manuel";
        this.pwd = "Xpto_1234";
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPwd() {
        return pwd;
    }

    public void setPwd(String pwd) {
        this.pwd = pwd;
    }
    
    /* Método toString é obrigatório no JavaBean e deve devolver uma String normalmente com o conteúdo das variáveis.*/
    public String toString() {
        System.out.println("userName=" + this.userName + "   pwd=" + this.pwd);
        return "userName=" + this.userName + "   pwd=" + this.pwd;
    }
    
    /* Vamos adicionar um método para validar a password */
    public boolean validatePassword(String myUserName, String myPwd) {
        return (this.userName.equals(myUserName) && this.pwd.equals(myPwd));
    }
}