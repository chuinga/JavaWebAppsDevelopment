package pt.citeforma.jdbc;

import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Properties;

public class ExecuteQuery extends HttpServlet {
    
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ServletContext myServletContext = this.getServletContext();
        String myUrl      = (String) myServletContext.getAttribute("myUrl");
        String myUser     = (String) myServletContext.getAttribute("myUser");
        String myPassword = (String) myServletContext.getAttribute("myPassword");
        response.setContentType("text/html;charset=UTF-8");        
        PrintWriter out = response.getWriter();
        out.println("<!DOCTYPE html>");
        out.println("<html lang=\"pt\">");
        out.println("<head>");
        out.println("<meta charset=\"utf-8\">");
        out.println("<title>Execute Query</title>");
        out.println("</head>");
        out.println("<body>");
        out.println("<h1>Execute Query</h1>");
        runQuery (myUrl, myUser, myPassword, out);
        out.println("</body>");
        out.println("</html>");
        out.close();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
    
    private void runQuery (String myUrl, String myUser, String myPassword, PrintWriter out) {
        try {
        	Properties props = new Properties();
    		props.setProperty("user", "tluser_01");
            props.setProperty("password", "Xpto.1234.Student.tluser_01");
            props.setProperty("ssl", "false");
            props.setProperty("ApplicationName", "AserJDBC");
            props.setProperty("defaultRowFetchSize", "50");
            props.setProperty("options", "-c search_path=tluser_01,pg_catalog,public -c statement_timeout=90000");
            // Registar o driver
            //DriverManager.registerDriver(new com.mysql.jdbc.Driver());
            // Abrir a ligaçao
            //myUrl = myUrl + "?useSSL=false&useUnicode=yes&characterEncoding=utf8";
            //Connection myConn = DriverManager.getConnection(myUrl, myUser, myPassword);
            Connection myConn = DriverManager.getConnection(myUrl, props);
            // Preparar Statement. Esta confguração cria ResultSet com máximo desempenho
            Statement stmt = myConn.createStatement(ResultSet.TYPE_FORWARD_ONLY, ResultSet.TYPE_SCROLL_INSENSITIVE);
            // Executar a instrução
            String sql  = "SELECT cust_id, firstname, surname from customer";
            ResultSet rset = stmt.executeQuery(sql);
            // Tratar resultado
            long n = 0;
            out.printf("<pre>");
            out.printf("%1$-7s | %2$-25s | %3$-25s |%n", "cust_id", "firstname", "surname");
            while (rset.next()) {
                out.printf("%1$7s | %2$-25s | %3$-25s |%n", 
                        rset.getString("cust_id"),
                        rset.getString("firstname"), 
                        rset.getString("surname"));
                        //rset.getString(1), rset.getString(2), rset.getString(3));
                n++;
            }
            if (n > 0) {
                out.println("Foram devolvidas " + n + " linhas");
            } else {
                out.println("O query não devolveu linhas");
            }
            out.printf("</pre>");
            rset.close();
            stmt.close();
            myConn.close();
            DriverManager.deregisterDriver(DriverManager.getDriver(myUrl));
        } catch (SQLException e) {
            out.printf("<pre>");
            out.println("Erro:");
            out.println("Código do erro: " + e.getErrorCode());
            out.println("Mensagem de erro: " + e.getMessage());
            out.printf("</pre>");
        }
    }
}