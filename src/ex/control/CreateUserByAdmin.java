package ex.control;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ex.entities.User;
import ex.hash.HashMD5;
import ex.service.impl.UserServiceImpl;

/**
 * Servlet implementation class CreateUserByAdmin
 */
@WebServlet("/createUserByAdmin")
public class CreateUserByAdmin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CreateUserByAdmin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		RequestDispatcher rd = request.getRequestDispatcher("/view/createUserByAdmin.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String fn =  request.getParameter("fullname");
	     String username =  request.getParameter("username");
	     String pass = request.getParameter("password");
	     String email =  request.getParameter("email");
	     String address =  request.getParameter("address");
	     String phone = request.getParameter("phone");
	     String passHash = HashMD5.getMD5Hash(pass);
	     User user = new User();
	     user.setFullName(fn);
	     user.setName(username);
	     user.setPass(passHash);
	     user.setEmail(email);
	     user.setAddress(address);
	     user.setPhone(phone);
	     user.setRole(2);
	     UserServiceImpl userService = new UserServiceImpl();
	     userService.addUser(user);
	     response.sendRedirect("userManagement");
	}

}
