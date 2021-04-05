<%@ include file="header.html"%>

<script>
	document.title="Digital Banking - Savings Advisor ";
	var data = "${username}";
	document.getElementById("WelcomeMsg").innerHTML="Welcome "+data;
	</script>

<style>
html, body {
	font-family: arial;
}

table {
	border-collapse: collapse;
	margin: 5px;
}

table, th, td {
	border: 1px solid #000;
	padding: 10px;
}

th {
	background-color: #4CAF50;
	color: white;
}
</style>

<script>
	
		function createTable(){
		var plans= ["Bronze","Silver","Gold"];
		var amount=[1000,1250,1500];
		var tenure = [3,3,3];
		var type = ["RD","RD","RD"];
		var end;
		
		
		  var html = "<table><tr><th>SNo</th><th>Plan Name</th><th>Amount</th><th>Tenure (in months)</th><th>Type (RD/FD)</th></tr><tr>";

		  if(${animesh} >= 1)
		  {
		    end=3;
		  }
		  else if(${animesh} > 0.49 && ${animesh} < 1)
		  {
			  end =2;
		  }
		  else end=1;
		  
		  for (var i=0; i<end; i++) {
		    html += "<td>" + (i+1) + "</td><td>" + plans[i] + "</td><td>" + amount[i] + "</td><td>" + tenure[i] + "</td><td>" + type[i] + "</td> </tr><tr>";
		  }
		  html += "</tr></table>";

		  document.getElementById("tbl").innerHTML = html;		  
	}
	</script>

</head>

<body onload="createTable()">

	<div id="tbl"></div>

</body>
</html>