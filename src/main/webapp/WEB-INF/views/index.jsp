<html>

<head>
<%@include file="./base.jsp" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

</head>
<body>

<div class="cantainer mt-3">
	<h1 class="text-center">Welcome To Product APP</h1>
	
	<div class="cantainer">
	<table class="table table-bordered">
  <thead>
    <tr>
      <th scope="col">S.NO</th>
      <th scope="col">NAME</th>
      <th scope="col">DESCRIPTION</th>
      <th scope="col">PRICE</th>
      <th scope="col">ACTION</th>
    </tr>
  </thead>
  <tbody>
    <c:forEach items="${product }" var="p">
    	<tr>
      <th scope="row">${p.id}</th>
      <td>${p.name}</td>
      <td>${p.description}</td>
      <td>${p.price}</td>
      
      <td>
      	<a href="delete/${p.id }">DELETE</a>
      	<a href="update/${p.id }">UPDATE</a>
      
      </td>
    </tr>
    
    </c:forEach>
  </tbody>
</table>
</div>
<div class="cantainer text-center">
<a href="addproduct" class="btn btn-dark">Add Product</a>

</div>


</div>
</body>
</html>
