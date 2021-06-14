package fr.garage.VroomVroom.filter;

/*
import fr.garage.VroomVroom.session.ClientSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@Component
public class securityFilter implements Filter {

    @Autowired
    ClientSession clientSession;

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        HttpServletRequest request = (HttpServletRequest) servletRequest;
        HttpServletResponse response = (HttpServletResponse) servletResponse;

        if (!clientSession.isConnected()) {
            if (request.getRequestURI().contains("mes-annonces")) {
                response.sendRedirect("/connexion");
                return;
            }
        }

        request.setAttribute("connected", clientSession.isConnected());

        //On appelle la Servlet avec cette instruction
        filterChain.doFilter(request, response);
    }

}
 */