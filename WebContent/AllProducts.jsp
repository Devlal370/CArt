<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
<%-- List of all items for User to select --%>


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cart System</title>
</head>
<body>

<h1>Shop Mart</h1>
<hr>
<p/>    

<h2><b><p style="color:red">Normal Sales</h2>
<hr>
<table width="100%">
  <tr bgcolor="">
    <td><form name="item1" method="POST" action="CartSystem">
 
    <strong>Code:</strong> 001<input type="hidden" name="productcode" value="001">
 	<p><strong>Name:</strong> Pan<input type="hidden" name="name" value="Pan"></p>
      <p><strong>Description:</strong>Good Quality <input type="hidden" name="description" value="Good Quality"></p>
      <p><strong>Unit Price:</strong>$1500.00<input type="hidden" name="price" value="1500"></p>
      <p><strong>Quantity:<input type="text" size="2" value="1" name="quantity"></strong></p>
      <p><strong>Discount Rate:</strong>0.2<input type="hidden" name="discount" value="0.2"></p>
      <p><strong>Price Policy:</strong>Default<input type="hidden" name="policy" value="0"></p>
      <input type="hidden" name="action" value="Insert">
      <input type="submit" name="add" value="Add To Cart">
      </form></td>
       <td>   <img alt="Pan" src="image/pan.jpg" width="200px" height="200px"></td>
   

     <td><form name="item2" method="POST" action="CartSystem">
    <strong>Product Code:</strong> 002<input type="hidden" name="productcode" value="002">
 	<p><strong>Name:</strong> TV<input type="hidden" name="name" value="TV"></p>
      <p><strong>Description:</strong>Good Features and Branded<input type="hidden" name="description" value="Good Features and Branded"></p>
      <p><strong>Price:</strong>$10000.00<input type="hidden" name="price" value="10000"></p>
      <p><strong>Quantity:<input type="text" size="2" value="1" name="quantity"></strong></p>
      <p><strong>Discount Rate:</strong>0.1<input type="hidden" name="discount" value="0.1"></p>
      <p><strong>Price Policy:</strong>Default<input type="hidden" name="policy" value="0"></p>
      <input type="hidden" name="action" value="Insert">
      <input type="submit" name="add" value="Add To Cart">
      </form></td>
       <td><img alt="TV" src="image/TV.jpeg" width="200px" height="200px"></td>
   </table> 
   <hr>
   <h2><b><p style="color:red">Buy One Get Two</h2> 
     <hr> 
     <table>
     <td><form name="item3" method="POST" action="CartSystem">
    <strong>Product Code:</strong> 003<input type="hidden" name="productcode" value="003">
 	<p><strong>Name:</strong> T-Shirt<input type="hidden" name="name" value="T-Shirt"></p>
      <p><strong>Description:</strong>Good Quality Cloth <input type="hidden" name="description" value="Good Quality Cloth"></p>
      <p><strong>Price:</strong>$100.00<input type="hidden" name="price" value="100"></p>
      <p><strong>Quantity:<input type="text" size="2" value="1" name="quantity"></strong></p>
      <p><strong>Discount Rate:</strong>0.0<input type="hidden" name="discount" value="0.0"></p>
      <p><strong>Price Policy:</strong>Buy 1 Get 2<input type="hidden" name="policy" value="2"></p>
      <input type="hidden" name="action" value="Insert">
      <input type="submit" name="add" value="Add To Cart">
      </form></td>
       <td>   <img alt="T-shirt" src="image/T-shirt.jpg" width="200px" height="200px"></td>
   
  </tr>
  </table>
  <hr>
  <h2><b><p style="color:red">Buy One Get Four</h2>
  <hr>
  <table width="100%">
  
  <tr bgcolor="">
    <td><form name="item4" method="POST" action="CartSystem">
    <strong>Product Code:</strong> 004<input type="hidden" name="productcode" value="004">
 	<p><strong>Name:</strong> Knife<input type="hidden" name="name" value="Knife"></p>
      <p><strong>Description:</strong>Good Metal <input type="hidden" name="description" value="Good Metal"></p>
      <p><strong>Price:</strong>$100.00<input type="hidden" name="price" value="100"></p>
      <p><strong>Quantity:<input type="text" size="2" value="1" name="quantity"></strong></p>
      <p><strong>Discount Rate:</strong>0.0<input type="hidden" name="discount" value="0.0"></p>
      <p><strong>Price Policy:</strong>Buy 1 Get 4<input type="hidden" name="policy" value="4"></p>
      <input type="hidden" name="action" value="Insert">
      <input type="submit" name="add" value="Add To Cart">
      </form></td>
       <td>   <img alt="Knife" src="image/Knife.jpg" width="200px" height="200px"></td>
     </table>
     <hr>
     <h2><b><p style="color:red">Buy One Get Three</h2>
     <hr>
     <table> 
      <td><form name="item5" method="POST" action="CartSystem">
    <strong>Product Code:</strong> 005<input type="hidden" name="productcode" value="005">
 	<p><strong>Name:</strong> Dinner Plate<input type="hidden" name="name" value="Dinner Plate"></p>
      <p><strong>Description:</strong>Good Design and Shapes <input type="hidden" name="description" value="Good Desig and Shapes"></p>
      <p><strong>Price:</strong>$150.00<input type="hidden" name="price" value="150"></p>
      <p><strong>Quantity:<input type="text" size="2" value="1" name="quantity"></strong></p>
      <p><strong>Discount Rate:</strong>0.0<input type="hidden" name="discount" value="0.0"></p>
      <p><strong>Price Policy:</strong>Buy 1 Get 3<input type="hidden" name="policy" value="3"></p>
      <input type="hidden" name="action" value="Insert">
      <input type="submit" name="add" value="Add To Cart">
      </form></td>
       <td>   <img alt="Dinner Plate" src="image/dinner plate.jpg" width="200px" height="200px"></td>
      </table>
      <hr>
      <h2><b><p style="color:red">Buy One Get Five</h2>
      <hr>
      <table>
      <td><form name="item6" method="POST" action="CartSystem">
    <strong>Product Code:</strong> 006<input type="hidden" name="productcode" value="006">
 	<p><strong>Name:</strong> Gel-Pen<input type="hidden" name="name" value="Gel-Pen"></p>
      <p><strong>Description:</strong>Durable and Smooth writing <input type="hidden" name="description" value="Durable and Smooth writing"></p>
      <p><strong>Price:</strong>$5.00<input type="hidden" name="price" value="5"></p>
      <p><strong>Quantity:<input type="text" size="2" value="1" name="quantity"></strong></p>
      <p><strong>Discount Rate:</strong>0.0<input type="hidden" name="discount" value="0.0"></p>
      <p><strong>Price Policy:</strong>Buy 1 Get 5<input type="hidden" name="policy" value="5"></p>
      <input type="hidden" name="action" value="Insert">
      <input type="submit" name="add" value="Add To Cart">
      </form></td>
       <td>   <img alt="Gel-Pen" src="image/Gel-Pen.jpg" width="200px" height="200px"></td>
      </tr>
</table>

</body>
</html>