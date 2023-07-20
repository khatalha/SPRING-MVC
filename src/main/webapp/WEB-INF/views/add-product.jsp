<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="./base.jsp" %>
</head>
<body>



<div class="container">
    
		    	<div class="card mx-auto mt-5 bg-secondary" style="width: 600px;">
		  	
				  <div class="card-body">
				  <h3 class="text-center">Add the product</h3>
				  	<form action="handler-product" method="post">
						  <div class="form-group">
						    <label for="exampleInputEmail1" class="text-white">Name</label>
						    <input type="text" class="form-control" name="name" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter product Name">
						    
						  </div>
						  
						<div class="form-group">
						    <label for="exampleFormControlTextarea1">Description</label>
						    <textarea class="form-control" name="description" id="exampleFormControlTextarea1" rows="3" placeholder="Enter product Description"></textarea>
						  </div>
						  
						  <div class="form-group">
						    <label for="exampleInputEmail1" class="text-white">Price</label>
						    <input type="number" class="form-control" name="price" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter price">
						    
						  </div>
						 <div class="container text-center">
						 
						 <a href="${pageContext.request.contextPath}/" class="btn btn-danger">back</a>
						 
						 <button type="submit" class="btn btn-light">submit</button>
						 
						 </div> 
						  
					 </form>
			
				  </div>
				</div>
    
    </div>
</body>
</html>