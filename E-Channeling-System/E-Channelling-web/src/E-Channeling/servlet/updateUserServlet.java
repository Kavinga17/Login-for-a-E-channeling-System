package E.Channelling.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import E.Channelling.service.UserServiceIMPl;

/**
 * Servlet implementation class updateUserServlet
 */
@WebServlet("/updateUserServlet")
public class updateUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public updateUserServlet() {
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
		
		String id = request.getParameter("id");
		String Fname = request.getParameter("userFirstName");
		String Lname = request.getParameter("userLastName");
		String Cno = request.getParameter("userContactNo");
		String Email= request.getParameter("userEmail");
		String Address = request.getParameter("userAddress");
		String password = request.getParameter("password");
		
		boolean Istrue;
		
		Istrue = UserServiceIMPl.UpdateUSer(id, Fname, Lname, Cno, Email, Address, password);
		
		if(Istrue == true) {
			
			  out.println("<script type='text/javascript'>");
	          out.println("alert('Your UPDATE is Completed');");
		      out.println("location = 'view.jsp';");
			  out.println("</script>");
			
		}
		else {
		  out.println("<script type='text/javascript'>");
          out.println("alert('Your UPDATE is UNSUCCESSFUL');");
	      out.println("location = 'view.jsp';");
		  out.println("</script>");
				}

			
	}

}
