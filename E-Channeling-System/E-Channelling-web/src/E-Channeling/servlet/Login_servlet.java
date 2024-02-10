package E.Channelling.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import E.Channelling.model.User;
import E.Channelling.service.UserServiceIMPl;

/**
 * Servlet implementation class Login_servlet
 */
@WebServlet("/Login_servlet")
public class Login_servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login_servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		
		String userEmail = request.getParameter("userEmail");
		String Password = request.getParameter("password");
		boolean isTrue;
		
		isTrue = UserServiceIMPl.validate(userEmail, Password );
		
		
		if(isTrue == true) {
			
			
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/Home.jsp");//Redirecting page;
			dispatcher.forward(request, response);
		}else {
			
			out.println("<script type = 'text/javascript'>");
			out.println("alert('Your USERNAME or PASSWORD Incorrect');");
			out.println("location = 'Login.jsp'");
			out.println("</script>");
		}
	}

}
