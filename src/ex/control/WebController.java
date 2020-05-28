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
 * Servlet implementation class WebController
 */
@WebServlet({ "/", "/web" })
public class WebController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public WebController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		UserService userService = new UserServiceImpl();
		ArrayList<Flower> list = userService.getAllFlower();
		ArrayList<Flower> flowers = new ArrayList<Flower>();
		for(Flower f : list) {
			if(f.getId() == 8 || f.getId() == 48 || f.getId() == 26 || f.getId() == 47 || f.getId() == 49 || f.getId() == 42 ) {
				flowers.add(f);
			}
		}
		request.setAttribute("flowers", flowers);
		RequestDispatcher rd = request.getRequestDispatcher("/view/web.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.sendRedirect("login");
	}

}
