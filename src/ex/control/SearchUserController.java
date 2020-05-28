package ex.control;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ex.entities.User;
import ex.service.UserService;
import ex.service.impl.UserServiceImpl;

/**
 * Servlet implementation class SearchUserController
 */
@WebServlet("/searchUser")
public class SearchUserController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchUserController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = (String) request.getParameter("search");
		UserService userService = new UserServiceImpl();
		ArrayList<User> users = userService.findUserByName(name);
		request.setAttribute("users", users);
		RequestDispatcher rd = request.getRequestDispatcher("/view/userManagement.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

	 public static void main(String[] args) {
		 UserService u = new UserServiceImpl();
//	 for(User obj : u.getAll()){ 
//         System.out.println(obj.toString() +", ");
//	        }
//		System.out.println( u.findUserByNameAndPass("vu", "12345").toString());
//		System.out.println(u.checkAdmin(u.getAll().get(0).getRole()));
//		 System.out.println(u.findUserById(1).toString());
		for(User f : u.findUserByName("a")) {
			System.out.println(f.toString());
		}
	 }

}
