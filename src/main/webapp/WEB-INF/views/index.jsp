<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>

<body>
	<h2>Page Redirection</h2>
	<p>Click below button to redirect the result to login page</p>

	<form:form method="GET" action="/digitalbanking/login">
		<table>
			<tr>
				<td><input type="submit"
					value="Click here to move to login page" /></td>
			</tr>
		</table>
	</form:form>
</body>

</html>