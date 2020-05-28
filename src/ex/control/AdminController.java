package ex.control;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;

import ex.dao.UserDao;
import ex.dao.impl.UserDaoImpl;
import ex.entities.Flower;
import ex.entities.User;
import ex.service.UserService;
import ex.service.impl.UserServiceImpl;

import ex.service.UserService;
import ex.service.impl.UserServiceImpl;

/**
 * Servlet implementation class AdminController
 */
@WebServlet("/admin")
public class AdminController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AdminController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		UserService userService = new UserServiceImpl();
		ArrayList<User> users = userService.getAll();
		request.setAttribute("users", users);
		ArrayList<Flower> list = userService.getAllFlower();
		ArrayList<Flower> listWedding = new ArrayList<Flower>();
		for(Flower f : list) {
			if(f.getIdService() == 1) {
				listWedding.add(f);
			}
		}
		request.setAttribute("flowers1", listWedding);
		ArrayList<Flower> listWreath = new ArrayList<Flower>();
		for(Flower f : list) {
			if(f.getIdService() == 2) {
				listWreath.add(f);
			}
		}
		request.setAttribute("flowers2", listWreath);
		ArrayList<Flower> listOpen = new ArrayList<Flower>();
		for(Flower f : list) {
			if(f.getIdService() == 3) {
				listOpen.add(f);
			}
		}
		request.setAttribute("flowers3", listOpen);
		ArrayList<Flower> listBirthday = new ArrayList<Flower>();
		for(Flower f : list) {
			if(f.getIdService() == 4) {
				listBirthday.add(f);
			}
		}
		request.setAttribute("flowers4", listBirthday);
		RequestDispatcher rd = request.getRequestDispatcher("/view/admin.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
//	 public static void main(String[] args) {
//			UserService userService = new UserServiceImpl();
//			ArrayList<User> users = userService.getAll();
//			for(User i : users) {
//				System.out.println(i.toString());
//			}
//
//	 }

}
