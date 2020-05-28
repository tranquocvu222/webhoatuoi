package ex.control;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ex.dao.FlowerDao;
import ex.dao.impl.FlowerDaoImpl;
import ex.entities.Flower;
import ex.entities.User;
import ex.service.UserService;
import ex.service.impl.UserServiceImpl;

/**
 * Servlet implementation class EditFlowerController
 */
@WebServlet("/editFlower")
public class EditFlowerController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditFlowerController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd = request.getRequestDispatcher("/view/editFlower.jsp");
		
		int id = Integer.parseInt(request.getParameter("id"));
		System.out.println("id: ----->" + id);
		UserService userService = new UserServiceImpl();
		Flower flower = userService.findFlowerById(id);
		request.setAttribute("flower", flower);
		
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		int idService = Integer.parseInt(request.getParameter("idService"));
		String avatar = request.getParameter("avatar");
		int amount = Integer.parseInt(request.getParameter("amount"));
		String name = request.getParameter("name");
		int price = Integer.parseInt(request.getParameter("price"));
		Flower flower = new Flower();
		flower.setId(id);
		flower.setIdService(idService);
		flower.setAvatar(avatar);
		flower.setAmount(amount);
		flower.setName(name);
		flower.setPrice(price);
		UserService userService = new UserServiceImpl();
		userService.editFlower(flower);
		response.sendRedirect("productManagement");
	}
	public static void main(String [] args) {
		
	}
}
