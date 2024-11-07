<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<form action="/them-dien-thoai" method="post">
	<div class="form-group">
		<label for="name">Tên điện thoại</label> <input type="text"
			class="form-control" id="name" name="name" required>
	</div>
	<div class="form-group">
	<label for="brand">Nhãn hiệu</label>
		<select class="form-control"
			id="brand" name="brand" required>
			<option value="">Chọn nhãn hiệu</option>
			<option value="Apple">Apple</option>
			<option value="Samsung">Samsung</option>
			<option value="Nokia">Nokia</option>
			<option value="Khác">Khác</option>
		</select>
	</div>
	<div class="form-group">
		<label for="price">Giá</label> <input type="text" class="form-control"
			id="price" name="price" required>
	</div>
	<div class="form-group">
		<label for="description">Mô tả</label> <textarea
			class="form-control" id="description" name="description" required></textarea>
	</div>
	<button type="submit" class="btn btn-primary">Lưu</button>
	<button type="reset" class="btn btn-warning">Reset</button>
</form>