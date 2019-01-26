package ShopServlet;


import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import Goods.CartMethods;



public class CartSystem extends HttpServlet {
	private static final long serialVersionUID = 1L;

   
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		 String req = request.getParameter("action");
		   
		   
		  if(req!=null && !req.equals("")) {
		   if(req.equals("Insert")) {
		    insertgoods(request);
		   } else if (req.equals("Edit")) {
		    editgoods(request);
		   } else if (req.equals("Remove")) {
		    removegoods(request);
		   }
		    
		   }
		  
		  response.sendRedirect("Cart.jsp");
		 }




	protected void removegoods(HttpServletRequest request) {  /* Remove items from cart */
		  HttpSession session = request.getSession();
		  String index = request.getParameter("pcode");
		  CartMethods cart = null;
		   
		  Object objCart = session.getAttribute("clist");
		  if(objCart!=null) {
		   cart = (CartMethods) objCart ;
		  } else {
		   cart = new CartMethods();
		  }
		  cart.removegud(index);
		 }
		  
		 protected void editgoods(HttpServletRequest request) {   /* Edit the cart system */
		  HttpSession session = request.getSession();
		  String quantity = request.getParameter("quantity");
		  String index = request.getParameter("pcode");
		  
		  CartMethods cart = null;
		   
		  Object objcart = session.getAttribute("clist");
		  if(objcart!=null) {
		   cart = (CartMethods) objcart ;
		  } else {
		   cart = new CartMethods();
		  }
		  cart.edit(index, quantity);
		 }
		  
		 protected void insertgoods(HttpServletRequest request) {  /* Insert new item to the cart */
		  HttpSession session = request.getSession();
		  String goodscode = request.getParameter("productcode");
		  String goodsname = request.getParameter("name");
		  String goodsdescription = request.getParameter("description");
		  String goodsquantity = request.getParameter("quantity");
		  String goodsprice = request.getParameter("price");
		  String goodsdiscount = request.getParameter("discount");
		  String goodspolicy = request.getParameter("policy");

		   
		  CartMethods cart = null;
		   
		  Object objCart = session.getAttribute("clist");
		 
		  if(objCart!=null) {
		   cart = (CartMethods) objCart ;
		  } else {
		   cart = new CartMethods();
		   session.setAttribute("clist", cart);
		  }
		   
		  cart.insert(goodscode, goodsname, goodsdescription,goodsquantity, goodsprice, goodsdiscount,goodspolicy);
		 }


}
