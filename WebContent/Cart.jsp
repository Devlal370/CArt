<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%-- Table Showing the List of items with details that customer chooses to buy --%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cart Page</title>
</head>
<body>


<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<p><a href="AllProducts.jsp"><b>Home</b></a> </p>

<hr>
<table width="100%" bgcolor="Green">
<tr>
   <td><strong>Code</strong></td>
     <td><strong>Name</strong></td>
      <td><strong>Description</strong></td>
      <td><strong>Unit Price</strong></td>
    <td><strong>Total Quantity</strong></td>
    <td><strong>Discount Rate</strong></td>
    <td><strong>Total Amount</strong></td>
    <td><strong>Remove/Edit</strong></td>
    
  </tr>
  </table>
    <hr>
<table width="100%">
  <c:forEach var="goods" items="${clist.goods}" varStatus="counter">
  <form name="items" method="POST" action="CartSystem">
  <tr bgcolor="grey">
  
    <td><b><c:out value="${goods.code}"/></b></td>
    <td><b><c:out value="${goods.goodsname}"/></b></td>
    <td><c:out value="${goods.desp}"/></td>
     <td>$<c:out value="${goods.unitprice}"/></td>
    <td><input type='hidden' name='pcode' value='<c:out value="${counter.count}"/>'><input type='text' name="quantity" value='<c:out value="${goods.qty}"/>' size='2'> <br/></td>
     <td><b><c:out value="${goods.dist}"/></b></td>
    <td>$<c:out value="${goods.totalamount}"/></td>
    <td> <input type="submit" name="action" value="Remove"> 
     <input type="submit" name="action" value="Edit"></td>
  </tr>
  </form>
  </c:forEach>
  <tr bgcolor="Red">
    <td colspan="3"> </td>
    <td><b>Grand Total: $<c:out value="${clist.orderTotal}"/>
     <td><b>Bonus Points: <c:out value="${clist.bonus}"/>
     </td>
  </tr>
</table>

</body>
</html>