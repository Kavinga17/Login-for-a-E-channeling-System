package E.Channelling.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import E.Channelling.service.UserServiceIMPl;

/**
 * Servlet implementation class DeleteCustomerServlet
 */
@WebServlet("/DeleteCustomerServlet")
public class DeleteCustomerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		String id = request.getParameter("id");
		boolean isTrue;
		
		isTrue=UserServiceIMPl.deleteUser(id);
		
		
		if(isTrue == true) {
			

			  out.println("<script type='text/javascript'>");
	          out.println("alert('Your Delete is COMPLETED');");
		      out.println("location = 'Register.jsp';");
			  out.println("</script>");
			
			
		}else {
			
			
			  out.println("<script type='text/javascript'>");
	          out.println("alert('Your Delete is UNSUCCESSFUL');");
		      out.println("location = 'UserDetails.jsp';");
			  out.println("</script>");
		}
	
		
	}

}
