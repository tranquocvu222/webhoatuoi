package ex.control;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ex.entities.Flower;
import ex.service.impl.UserServiceImpl;

/**
 * Servlet implementation class CreateFlowerController
 */
@WebServlet("/createFlower")
public class CreateFlowerController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CreateFlowerController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd = request.getRequestDispatcher("/view/createFlower.jsp");
		rd.forward(request, response);
		 
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int idService = Integer.parseInt(request.getParameter("idService"));
		String avatar = request.getParameter("avatar");
		int amount = Integer.parseInt(request.getParameter("amount"));
		String name = request.getParameter("name");
		int price = Integer.parseInt(request.getParameter("price"));
		Flower flower = new Flower();
		flower.setIdService(idService);
		flower.setAvatar(avatar);
		flower.setAmount(amount);
		flower.setName(name);
		flower.setPrice(price);
		  UserServiceImpl userService = new UserServiceImpl();
		 userService.addFlower(flower);
		 response.sendRedirect("productManagement");
	}

}
