package E.Channelling.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import E.Channelling.model.User;
import E.Channelling.service.UserServiceIMPl;

@WebServlet("/AccDetailsServlet")
public class AccDetailsServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public AccDetailsServlet() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Handle GET requests here, or remove this method if it's not needed.
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	
    	doGet(request, response);
        response.setContentType("text/html");

        String userEmail = request.getParameter("userEmail");

        List<User> userDetails = UserServiceIMPl.getUser(userEmail);

        request.setAttribute("userDetails", userDetails);

        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/UserDetails.jsp");
        dispatcher.forward(request, response);
    }
}
