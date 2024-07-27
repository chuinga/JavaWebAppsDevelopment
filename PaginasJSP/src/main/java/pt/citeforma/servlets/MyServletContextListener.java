package pt.citeforma.servlets;

import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletContextEvent;
import jakarta.servlet.ServletContextListener;

public class MyServletContextListener implements ServletContextListener {

    public void contextInitialized(ServletContextEvent sce)  { 
        System.out.println("-------------------------------------------ServletContextListener started");
        ServletContext myServletContext = sce.getServletContext();
        String myUrl      = myServletContext.getInitParameter("url");
        String myUser     = myServletContext.getInitParameter("user");
        String myPassword = myServletContext.getInitParameter("password");
        myServletContext.setAttribute("myUrl", myUrl);
        myServletContext.setAttribute("myUser", myUser);
        myServletContext.setAttribute("myPassword", myPassword);
    }

    public void contextDestroyed(ServletContextEvent sce)  { 
        System.out.println("-------------------------------------------ServletContextListener destroyed");
    }    
}