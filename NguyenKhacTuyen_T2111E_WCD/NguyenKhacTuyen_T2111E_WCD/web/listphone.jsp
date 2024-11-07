<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<a href="/them-dien-thoai" class="btn-success">Thêm điện thoại</a>

<c:if test="${sessionScope.SUCCESS_MSG != null}">
	<div class="alert alert-success alert-dismissible fade show">
		<button type="button" class="close" data-dismiss="alert">×</button>
		<strong>Success!</strong> ${sessionScope.SUCCESS_MSG}

		<% session.setAttribute("SUCCESS_MSG", null); %>
	</div>
</c:if>
<table class="table">
	<thead>
		<tr>
			<th scope="col">#</th>
			<th scope="col">Tên điện thoại</th>
			<th scope="col">Nhãn hiệu</th>
			<th scope="col">Giá</th>
			<th scope="col">Mô tả</th>
			<th scope="col">Hành động</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach var="Data" items="${requestScope.DataTable}">
			<tr>
				<th scope="row">${Data.id}</th>
				<td>${Data.name_phone}</td>
				<td>${Data.brand}</td>
				<td style="color: red;">${Data.price}<sup>đ</sup></td>
				<td>${Data.description}</td>
				<td><a href="/chi-tiet-dien-thoai?id=${Data.id}"
					class="btn-success">Chi tiết</a> <a
					href="/sua-dien-thoai?id=${Data.id}" class="btn-info">Sửa</a> <a
					href="/xoa-dien-thoai?id=${Data.id}" class="btn-danger">Xóa</a></td>
			</tr>
		</c:forEach>
	</tbody>
</table>