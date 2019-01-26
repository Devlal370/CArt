package Goods;

import java.util.ArrayList;

public class CartMethods {
	private ArrayList<Goods> Clist = new ArrayList<Goods>();
	 private double Amount ;
	 private int bonus;
	  
	 public int getcartsize() {
	  return Clist.size();
	 }
	  
	 public void removegud(String code) {  /* Delete Method to delete the items from Cart */
	  int index = 0;
	  try {
	   index = Integer.parseInt(code);
	   Clist.remove(index-1);
	   allTotal();
	  } catch(NumberFormatException nfe) {
	   System.out.println("Error while removing"+nfe.getMessage());
	   nfe.printStackTrace();
	  }
	 }
	  
	 public void edit(String code, String qty) {
	  double total = 0.0;
	  int pricepolicy=0;
	  int unitprice = 0;
	  int quantity = 0;
	  int index = 0;
	  double discount =0.0;
	  Goods cartItem = null;
	  try {
	   index = Integer.parseInt(code);
	   quantity = Integer.parseInt(qty);
	   cartItem = (Goods)Clist.get(index-1);
	   pricepolicy= cartItem.getGoodspolicy();
	   unitprice = cartItem.getUnitprice();
	    discount= cartItem.getDist();
	 
	   
	   if(quantity>0&&pricepolicy>0) {					/* implement of Price policy while editing new item to cart*/
		   quantity= quantity*pricepolicy;
	    	total=((quantity*unitprice)/pricepolicy)-quantity*discount;
	   }
		   else {
			   total = unitprice*quantity - quantity*discount;
		   }
	    
	    cartItem.setQty(quantity);
	    cartItem.setTotalamount(total);
	    allTotal();
	  } catch (NumberFormatException nfe) {
	   System.out.println("Error while editing "+nfe.getMessage());
	   nfe.printStackTrace();
	  }
	 }
	   
	  
	 public void insert(String code,String name, String description, String qty,String price,String discountrate, String pricepolicy) {
	  double totalsum = 0.0;
	  int index=0;
	  int unitprice = 0;
	  double discount=0.0;
	  int quantity = 0;
	  int policy=0;
	  Goods goods = new Goods();
	  try {
		  policy=Integer.parseInt(pricepolicy);
		index=Integer.parseInt(code);
		discount=Double.parseDouble(discountrate);
		unitprice = Integer.parseInt(price);
	   quantity = Integer.parseInt(qty);
	   if(quantity>0&&policy>0) {						/* implement of Price policy while inserting new item to cart*/
		   quantity= quantity*policy;
	    	totalsum=((quantity*unitprice)/policy)-quantity*discount;
	    }
	   else{
	    	totalsum=(quantity*unitprice)-quantity*discount;
	    }
	    
	   goods.setCode(index);
	   goods.setGoodsname(name);
	   goods.setDesp(description);
	   goods.setQty(quantity);
	   goods.setUnitprice(unitprice);
	   goods.setDist(discount);
	   goods.setGoodspolicy(policy);
	   goods.setTotalamount(totalsum);
	    Clist.add(goods);
	    allTotal();
	    
	  } catch (NumberFormatException nfe) {
	   System.out.println("Error while inserting  "+nfe.getMessage());
	   nfe.printStackTrace();
	  }
	 }
	  
	 public void addCartItem(Goods Item) {
		 Clist.add(Item);
	 }
	  
	 public Goods getCartItem(int code) {
	  Goods goods = null;
	  if(Clist.size()>code) {
	   goods = (Goods) Clist.get(code);
	  }
	  return goods;
	 }
	  
	 public ArrayList<Goods> getGoods() {
	  return Clist;
	 }
	 public void setGoods(ArrayList<Goods> all) {
	  this.Clist = all;
	 }
	 public double getOrderTotal() {
	  return Amount;
	 }
	 public void setOrderTotal(double SubTotal) {
	  this.Amount = SubTotal;
	 }
	  
	 protected void allTotal() {
	  double total = 0.0;
	  for(int a=0;a<Clist.size();a++) {
	   Goods cartItem = (Goods) Clist.get(a);
	   total+=cartItem.getTotalamount();
	    
	  }
	  setOrderTotal(total);
	 }
		 
	 public void setbonus(int counts) {
		 this.bonus = counts;
	 }
	 public int getbonus() {   /* Calculating the reward for the user buying items */
		 int counts = 0;
		  for(int count=0;count<Clist.size();count++) {
		   Goods cartItem = (Goods) Clist.get(count);
		   counts+=cartItem.getQty();
		    
		 }
		 return counts;
	 }
	 
	
}
