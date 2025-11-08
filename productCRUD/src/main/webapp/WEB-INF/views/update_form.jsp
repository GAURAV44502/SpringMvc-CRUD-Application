<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page isELIgnored="false" %>
    
    <%@include file="./base.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    body {
      background-color: #f9f9f9;
    }
    .form-container {
      max-width: 500px;
      margin: 60px auto;
      background: white;
      padding: 30px;
      border-radius: 15px;
      box-shadow: 0px 4px 12px rgba(0,0,0,0.1);
    }
    h2 {
      text-align: center;
      margin-bottom: 25px;
      font-weight: 500;
      font-family: serif;
    }
    .btn-back {
      background-color: #f78c1d;
      color: white;
    }
    .btn-back:hover {
      background-color: #e27c0b;
      color: white;
    }
  </style>
</head>
<body>
<div class="form-container">
    <h2>EDIT PRODUCT DETAILS</h2>
    <form action="/productCRUD/handleProduct" method="post">
    <input type="text" value="${products.id }" name="id" style="display:none;"/>
      <div class="mb-3">
        <label for="productName" class="form-label">Product Name</label>
        <input name="name" type="text" class="form-control" id="productName" placeholder="Enter the product name here" value="${products.name }">
      </div>

      <div class="mb-3">
        <label for="productDescription" class="form-label">Product Description</label>
        <textarea name="description" class="form-control" id="productDescription" rows="3" placeholder="Enter the product description">${products.description }</textarea>
      </div>

      <div class="mb-3">
        <label for="productPrice" class="form-label">Product Price</label>
        <input name="price" type="text" class="form-control" id="productPrice" placeholder="Enter Product Price" value="${products.price }">
      </div>

      <div class="text-center">
      <a href="/productCRUD/home" class="btn btn-success">Go Home</a>           
        <button type="submit" class="btn btn-primary">Edit</button>
      </div>
    </form>
  </div>
  
</body>
</html>