<%@ include file="header.html"%>

<script>
var data = "${username}";
document.title="Digital Banking - Home";
document.getElementById("WelcomeMsg").innerHTML="Welcome "+data;
</script>

<div>
	<p style="padding-top: 20px; padding-bottom: 15px;">Savings advisor
		suggests various Savings plans to New and Existing customers. For
		Existing Customers Savings plans will be displayed based on their
		available balance in past months. In case of New customers, the
		savings advisor gives suggestion based on factors like Age and Income.
	</p>
	<center>
		<p style="color: green" ; class="center">
			<b>Make your money work for you!!!<b><p>
	</center>
</div>

</body>
</html>
