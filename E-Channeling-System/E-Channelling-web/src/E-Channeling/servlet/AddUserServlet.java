package E.Channelling.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import E.Channelling.model.User;
import E.Channelling.service.UserService;
import E.Channelling.service.UserServiceIMPl;

/**
 * Servlet implementation class AddStudentServlet
 */
@WebServlet("/AddUserServlet")
public class AddUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddUserServlet() {
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
	
		
		response.setContentType("text/html");
		
		User user = new User();
		
		user.setUserFistName(request.getParameter("firstName"));//the name that you are giving in the front-end
		user.setUserLastName(request.getParameter("LastName"));
		user.setUserContactNo(request.getParameter("ContactNumber"));
		user.setUserEmail(request.getParameter("Email"));
		user.setUserAdress(request.getParameter("Address"));
		user.setPassword(request.getParameter("psw"));
		
		UserService patient = new UserServiceIMPl();
		 patient.addUser(user);
		 
		 
		request.setAttribute("user", user);
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/Login.jsp");//Redirecting page;
		dispatcher.forward(request, response);
	}

}
