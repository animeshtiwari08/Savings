<%@ include file="header.html"%>

<script>
	document.title="Digital Banking - Savings Advisor ";
	var data = "${username}";
	document.getElementById("WelcomeMsg").innerHTML="Welcome "+data;
	</script>
<script type='text/javascript'>
	      function displayForm(c) {
	          if (c.value == "Existing Customer") {    
	              jQuery('#existingformContainer').toggle('show');
	              jQuery('#newformContainer').hide();
	          }
	              if (c.value == "New Customer") {
	              jQuery('#newformContainer').toggle('show');
	              jQuery('#existingformContainer').hide();
	          }
	      };
	      function validateForm(){
	    	    var age = document.forms["new_customer"]["Age"].value;
	    	    var income = document.forms["new_customer"]["Income"].value;
	    	    
	    	  
	    	    if (age.length>999 || age<20) {
	    	          document.getElementById('ErrorMsg').innerHTML = "Invalid Input";
	    	          return false;
	    	      }
	    	    else if (income.length>10 || income<1) {
	    	        document.getElementById('ErrorMsg').innerHTML = "Invalid Input";
	    	        return false;
	    	      }
	    	    
	    	    return true;
	    	  };
	      
	      function validate(){
	    	  	var lastmonthbl = document.forms["existing_customer"]["LastMonthBalance"].value;
	    	    var lastbeforemonthbl = document.forms["existing_customer"]["LastBeforeMonthBalance"].value;
	    	  
	    	    if (lastmonthbl.length>10) {
	    	          document.getElementById('ErrorMsg').innerHTML = "Invalid Input";
	    	          return false;
	    	      }
	    	    else if (lastbeforemonthbl.length>10) {
	    	        document.getElementById('ErrorMsg').innerHTML = "Invalid Input";
	    	        return false;
	    	      } 
	    	    return true;
	      };
	      
	    </script>

<div id="customer_type">
	<center>
		<input type="radio" name="CustomerType" id="NewCustomerRadio" value="New Customer" onClick="displayForm(this)">New Customer</input>
		&nbsp&nbsp 
		<input type="radio" name="CustomerType" id="ExistingCustomerRadio" value="Existing Customer" onClick="displayForm(this)">ExistingCustomer</input>
	</center>
	<br>
	<br>

	<div style="border: 2px solid grey;" id="parent container"
		class="center">

		<center>
			<div class="failed" id="ErrorMsg" value="Invalid Input"></div>
		</center>

		<div style="display: none; margin-left: 50px;" id="newformContainer">
			<form:form id="new_customer" modelAttribute="new_customer"
				method="post" class="form-horizontal"
				onsubmit="return validateForm()">
				<div class="form-group form-group-lg">
					<label id="LblAge" class="label label-default col-sm-5" value="Age"><h4>Age</h4></label>
					<div class="col-sm-5">
						<form:input path="age" class="form-control" type="number" id="Age"
							placeholder="Enter Age" />
					</div>
				</div>
				<div class="form-group form-group-lg">
					<label id="LblIncome" class="label label-default col-sm-5" value="Income"><h4>Income</h4></label>
					<div class="col-sm-5">
						<form:input path="income" class="form-control" type="number"
							id="Income" placeholder="Enter Income" />
					</div>
				</div>

				<center>
					<input type="submit" class="btn btn-primary" id="NewCustomerSubmit"
						value="Submit">
				</center>


			</form:form>
		</div>

		<div style="display: none; margin-left: 50px;"
			id="existingformContainer">
			<form:form id="existing_customer" modelAttribute="customer"
				method="post" class="form-horizontal" onsubmit="return validate()">
				<div class="form-group form-group-lg">
					<label class="label label-default col-sm-5"
						id="LblLastMonthBalance" value="Last month balance"><h4>Last Month Balance</h4></label>
					<div class="col-sm-5">
						<form:input path="lastmonthbl" class="form-control" type="number"
							id="LastMonthBalance" placeholder="Enter Last Month Balance" />
					</div>
				</div>
				<div class="form-group form-group-lg">
					<label class="label label-default col-sm-5"
						id="LblLastBeforeMonthBalance" value="Last before month balance"><h4>Last Month Balance</h4></label>
					<div class="col-sm-5">
						<form:input path="lastbeforemonthbl" class="form-control"
							type="number" id="LastBeforeMonthBalance"
							placeholder="Enter Last Before Month Balance" />
					</div>
				</div>

				<center>
					<input type="submit" class="btn btn-primary"
						id="ExistingCustomerSubmit" value="Submit">
				</center>
			</form:form>
		</div>
	</div>
</div>
</div>
</div>
</body>
</html>
