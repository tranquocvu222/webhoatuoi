package ex.control;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import ex.entities.Flower;
import ex.entities.Item;
import ex.entities.Order;
import ex.entities.User;
import ex.service.UserService;
import ex.service.impl.UserServiceImpl;

/**
 * Servlet implementation class Cart2Controller
 */
@WebServlet("/cart2")
public class Cart2Controller extends HttpServlet {
	public static Order od;
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Cart2Controller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		UserService u = new UserServiceImpl();
		
		HttpSession session = request.getSession();
//		Order order = (Order) request.getSession().getAttribute("order");
		Order order = new Order();
		@SuppressWarnings("unchecked")
		ArrayList<Item> cart = (ArrayList<Item>) session.getAttribute("order.items");
		order.setItems(cart);
		String name = (String) request.getParameter("usn");
		UserService userService = new UserServiceImpl();
		ArrayList<User> users = userService.findUserByName(name);
//		order.setCustomer(users.get(0));
//		userService.addOrder(order);
		request.setAttribute("users", users);
		RequestDispatcher rd = request.getRequestDispatcher("/view/cart.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		String name = (String) request.getParameter("username");
//		nameS = name;
		doGet(request, response);
	}
	 public static void main(String[] args) {
//		 UserService u = new UserServiceImpl();
//	 for(User obj : u.getAll()){ 
//          System.out.println(obj.toString() +", ");
//	        }
//		System.out.println( u.findUserByNameAndPass("vu", "12345").toString());
//		System.out.println(u.checkAdmin(u.getAll().get(0).getRole()));
//		 System.out.println(u.findUserById(1).toString());
//		 ArrayList<User> users = u.findUserByName("vanb");
//		System.out.println(users.get(0).toString());
		 ArrayList<Item> listItems = new ArrayList<Item>();
			listItems = od.getItems();
			for(Item item : listItems){
				System.out.println(item.toString());
			}
		
	 }

}
