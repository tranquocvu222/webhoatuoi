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

import ex.entities.Flower;
import ex.entities.Order;
import ex.entities.User;
import ex.service.UserService;
import ex.entities.Item;
import ex.service.impl.UserServiceImpl;

/**
 * Servlet implementation class ShoppingCartControllerr
 */
@WebServlet("/shoppingCart")
public class ShoppingCartControllerr extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ShoppingCartControllerr() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String action = request.getParameter("action");
		if (action == null) {
			doGet_DisplayCart(request, response);
		} else {
			if (action.equalsIgnoreCase("buy")) {
				doGet_Buy(request, response);
			} else if (action.equalsIgnoreCase("delete")) {
				doGet_Delete(request, response);
			}
		}
	}
    
    protected void doGet_DisplayCart(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
    	RequestDispatcher rd = request.getRequestDispatcher("/view/cart.jsp");
		rd.forward(request, response);
	}
    
	protected void doGet_Buy(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		int amount = 1;
		int id;
		HttpSession session = request.getSession();
		if(request.getParameter("id") != null) {
			id = Integer.parseInt(request.getParameter("id"));
			UserService userService = new UserServiceImpl();
			Flower flower = userService.findFlowerById(id);
//			User user = userService.findUserByUserName(username);
			if(flower != null) {
				if(request.getParameter("amount") != null) {
					amount = Integer.parseInt(request.getParameter("amount"));
				}
				
				if(session.getAttribute("order") == null) {
				Order order = new Order();
				ArrayList<Item> listItems = new ArrayList<Item>();
				Item item = new Item();
				item.setAmount(amount);
				item.setFlower(flower);
				item.setPrice(flower.getPrice());
				listItems.add(item);
				order.setItems(listItems);
//				order.setCustomer(user);
				session.setAttribute("order", order);
				
				}else {
					Order order = (Order) session.getAttribute("order");
//					order.setCustomer(user);
					ArrayList<Item> listItems = order.getItems();
					boolean check = false;
					for(Item item : listItems) {
						if(item.getFlower().getId() == flower.getId()) {
							item.setAmount(item.getAmount() + amount);
							check = true;
						}
					}
					if(check == false) {
						Item item = new Item();
						item.setAmount(amount);
						item.setFlower(flower);
						item.setPrice(flower.getPrice());
						listItems.add(item);
					}
					session.setAttribute("order", order);
				}	
				
			}
			
			
			response.sendRedirect("cart2");
		}else {
			response.sendRedirect("cart2");
		}
	}
	protected void doGet_Delete(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		@SuppressWarnings("unchecked")
		ArrayList<Item> cart = (ArrayList<Item>) session.getAttribute("order.items");
		int id = Integer.parseInt(request.getParameter("id"));
		for (int i = 0; i < cart.size(); i++) {
			if (cart.get(i).getFlower().getId() == id) {
				cart.remove(id);
			}
		}
//		int index = isExisting(id, cart);
//		cart.remove(id);
		session.setAttribute("order.items", cart);
		response.sendRedirect("cart2");
	}
//	private int isExisting(int id, ArrayList<Item> cart) {
//		for (int i = 0; i < cart.size(); i++) {
//			if (cart.get(i).getFlower().getId() == id) {
//				return i;
//			}
//		}
//		return -1;
//	}


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		HttpSession session = request.getSession();
//		
//		UserService userService = new UserServiceImpl();
//		String username = request.getParameter("username");
//		User user = userService.findUserByUserName(username);
//		ArrayList<Item> listItems = (ArrayList<Item>) session.getAttribute("order.items");
//		for (int i = 0; i < listItems.size(); i++) {
//		int idFlower = Integer.parseInt(request.getParameter("idFlower"));
//		String flowerName = request.getParameter("flowername");
//		int flowerPrice = Integer.parseInt(request.getParameter("flowerprice"));
//		int flowerAmount = Integer.parseInt(request.getParameter("floweramount"));
//		}
	
		doGet(request, response);
	}
	public static void main(String [] args) {
	}
}
