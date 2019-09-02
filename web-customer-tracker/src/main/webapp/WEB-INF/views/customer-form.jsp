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
<link
	type="text/css"
	rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/add-customer-style.css">
<title>Customer Form</title>
</head>

<body>
	<div id="wrapper">
		<div id="header">
			<h2>CRM - Customer Relationship Manager</h2>
		</div>
	</div>
	<div id="container">
		<h3>Save Customer</h3>
		<!-- Upon loading page, call customer.getPropertyName e.g. 'path=firstName' = 'customer.getFirstName' -->
		<form:form
			action="save-customer"
			modelAttribute="customer"
			method="POST">
			<table>
				<tbody>
					<tr>
						<td><label>First name:</label></td>
						<td><form:input path="firstName" /></td>
					</tr>
					<tr>
						<td><label>Last name:</label></td>
						<td><form:input path="lastName" /></td>
					</tr>
					<tr>
						<td><label>Email:</label></td>
						<td><form:input path="email" /></td>
					</tr>
					<tr>
						<td><label></label></td>
						<td><input
							type="submit"
							value="Save"
							class="save" /></td>
					</tr>
				</tbody>
			</table>
		</form:form>
		<div style=""></div>
		<p>
			<a href="${pageContext.request.contextPath}/customer/list">Back
				to List</a>
		</p>
	</div>
</body>

</html>