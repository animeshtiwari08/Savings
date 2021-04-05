<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>Digital Banking - Login</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link href="../resources/css/bootstrap.min.css" rel="stylesheet" type="text/css"/ >
<script src="../resources/js/bootstrap.min.js" type="text/javascript"></script >
<script src="../resources/js/jquery.min.js" type="text/javascript" ></script >

<style type="text/css">
.failed {
	color: red;
	padding: 30px;
}

.center {
	position: relative;
	transform: translateY(100%);
}
</style>
</head>
<body>
	<center>

		<!-- <img src="/image/bank.png" class="img-circle">        
         -->

		<form:form
			action="${pageContext.request.contextPath}/authenticateTheUser"
			method="POST" modelAttribute="username">

			<c:if test="${param.error !=null}">
				<div id="ErrorMsg" class="failed">Invalid Credentials</div>
			</c:if>

			<div class="center">
				<div class="form-group form-group-lg">
					<label class="label label-default" style="padding: 6px;">Admin
						User Name</label> <input type="text" name="username" required="true"
						placeholder="Enter Admin User Name" id="UserName"></input>
				</div>

				<div class="form-group form-group-lg">
					<label class="label label-default" style="padding: 6px;">Admin
						Password</label> <input type="password" name="password" required="true"
						placeholder="Enter Admin Password" id="Password"></input>
				</div>

				<center>
					<input type="submit" class="btn btn-primary" id="Login"
						value="LOGIN">
				</center>
			</div>
		</form:form>
		<center>
</body>
</html>