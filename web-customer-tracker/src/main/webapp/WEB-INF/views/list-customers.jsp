<%@ taglib
	uri="http://java.sun.com/jsp/jstl/core"
	prefix="c"%>
<%@ taglib
	prefix="form"
	uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>

<head>
<link
	type="text/css"
	rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/style.css">
<title>List Customers</title>
</head>

<body>
	<div id="wrapper">
		<div id="header">
			<h2>CRM - Customer Relationship Manager</h2>
		</div>
	</div>
	<div id="container">
		<div id="content">
			<input
				type="button"
				value="Add Customer"
				onclick="window.location.href='add-customer-form'; return false"
				class="add-button">
			<form:form
				action="search"
				method="POST">
			Search customer: <input
					type="text"
					name="search-name">
				<input
					type="submit"
					value="Search"
					class="add-button">
			</form:form>
			<table>
				<tr>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Email Name</th>
					<th>Action</th>
				</tr>
				<c:forEach
					var="customer"
					items="${customers}">
					<!-- Construct an "update" link with customer id -->
					<c:url
						var="updateLink"
						value="/customer/update-customer-form">
						<c:param
							name="customer-id"
							value="${customer.id}" />
					</c:url>
					<c:url
						var="deleteLink"
						value="/customer/delete">
						<c:param
							name="customer-id"
							value="${customer.id}" />
					</c:url>
					<tr>
						<td>${customer.firstName}</td>
						<td>${customer.lastName}</td>
						<td>${customer.email}</td>
						<td><a href="${updateLink}">Update</a> | <a
							href="${deleteLink}"
							onclick="if(!(confirm('Are you sure you want to delete this customer?'))) return false;">Delete</a></td>
					</tr>
				</c:forEach>
			</table>
		</div>
	</div>
</body>

</html>