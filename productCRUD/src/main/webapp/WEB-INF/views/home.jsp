<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="./base.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
</head>
<body>
<% %>
<div class="container mt-3 " style="width:1100px">
<div class="row">
<div class="col-md-12">
<h2 class="text-center mb-4" style="font-family:serif">WELCOME TO CRUD APPLICATION</h2>
<table class="table">
  <thead class="thead-dark">
    <tr>
      <th scope="col">PRODUCT ID</th>
      <th scope="col">PRODUCT NAME</th>
      <th scope="col">DESCRIPTION</th>
      <th scope="col">PRICE</th>
      <th scope="col">ACTION</th>
    </tr>
  </thead>
  <tbody>
  <c:forEach items="${product }" var="p">
    <tr style="font-size: 18px">
      <th scope="row">PRO-${p.id }-DUCT</th>
      <td>${p.name }</td>
      <td>${p.description}</td>
      <td class="font-weight-bold">&#8377; ${ p.price}</td>
      <td style="font-size: 22px">
      <a href="delete/${p.id}" data-bs-toggle="tooltip" title="Delete Product"><i class="fa-solid fa-trash text-danger" style="margin-right: 20px;"></i></a>
      <a href="update/${p.id}" data-bs-toggle="tooltip" title="Edit Product"><i class="fa-solid fa-pen-to-square text-primary"></i></a>
      </td>
    </tr>
    </c:forEach>
  </tbody>
</table>
<div class="container text-center">
<a href="addproduct" class="btn btn-outline-success">Add Product</a>
</div>
</div>
</div>
</div>
</body>
</html>