package ex.control;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ex.entities.Flower;
import ex.service.UserService;
import ex.service.impl.UserServiceImpl;

/**
 * Servlet implementation class ProductManagementController3
 */
@WebServlet("/productManagement3")
public class ProductManagementController3 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProductManagementController3() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		UserService userService = new UserServiceImpl();
		ArrayList<Flower> list = userService.getAllFlower();
		ArrayList<Flower> listWreath = new ArrayList<Flower>();
		for(Flower f : list) {
			if(f.getIdService() == 3) {
				listWreath.add(f);
			}
		}
		request.setAttribute("flowers", listWreath);
		RequestDispatcher rd = request.getRequestDispatcher("/view/productManagement3.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
