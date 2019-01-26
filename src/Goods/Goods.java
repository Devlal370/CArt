package Goods;

import java.util.Comparator;


public class Goods {
	
	private int code;
	private String goodsname;
	private String desp;
	private int unitprice;
	private int qty;
	private double dist;
	private int goodspolicy;
	private double totalamount;
	public int getCode() {
		return code;
	}
	public void setCode(int code) {
		this.code = code;
	}
	public String getGoodsname() {
		return goodsname;
	}
	public void setGoodsname(String goodsname) {
		this.goodsname = goodsname;
	}
	public String getDesp() {
		return desp;
	}
	public void setDesp(String desp) {
		this.desp = desp;
	}
	public int getUnitprice() {
		return unitprice;
	}
	public void setUnitprice(int unitprice) {
		this.unitprice = unitprice;
	}
	public int getQty() {
		return qty;
	}
	public void setQty(int qty) {
		this.qty = qty;
	}
	public double getDist() {
		return dist;
	}
	public void setDist(double dist) {
		this.dist = dist;
	}
	public int getGoodspolicy() {
		return goodspolicy;
	}
	public void setGoodspolicy(int goodspolicy) {
		this.goodspolicy = goodspolicy;
	}
	public double getTotalamount() {
		return totalamount;
	}
	public void setTotalamount(double totalamount) {
		this.totalamount = totalamount;
	}
	
	public static Comparator<Goods> namecompare = new Comparator<Goods>(){
		public int compare(Goods o1, Goods o2) {
			
			return (int)(o1.getGoodsname().compareTo(o2.getGoodsname()));
		}
	
		
	};
}
