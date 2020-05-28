package ex.control;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.util.ArrayList;

import ex.dao.UserDao;
import ex.dao.impl.UserDaoImpl;
import ex.entities.User;
import ex.hash.HashMD5;
import ex.service.UserService;
import ex.service.impl.UserServiceImpl;
/**
 * Servlet implementation class LoginController
 */
@WebServlet("/login")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public LoginController() {
        super();
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd = request.getRequestDispatcher("/view/login.jsp");
		rd.forward(request, response);
	
	}
 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String passHash = HashMD5.getMD5Hash(password);
		
		UserService service = new UserServiceImpl();
		ArrayList<User> users = service.getAll();
		System.out.println("-------->" + users.size());
		User user = service.findUserByNameAndPass(username, passHash);
//		request.getSession().setAttribute("userBean", user);
		if (user != null && user.getName() != null) {
			HttpSession session = request.getSession();
			session.setAttribute("username", user.getName());
			session.setAttribute("role", user.getRole());
			if (service.checkAdmin(user.getRole())) {
				response.sendRedirect("admin");
			} else {
				response.sendRedirect("user");
			}
		} else {
			response.sendRedirect("login?err=1");
		}
		
	}
	 public static void main(String[] args) {
	          System.out.println(HashMD5.getMD5Hash("7b5ae8e8712286d0e9f9bee0965e744f"));
	        
	 }
 
}