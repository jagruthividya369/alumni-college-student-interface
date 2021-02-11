<!DOCTYPE html>
<html>

<style type="text/css">
	*{
		margin: 0px;
		padding: 0px;
	}
.content
{
	width:300px;
	margin: 20px auto;
	box-shadow: :1px 1px 10px 2px #333;
	border-radius: :0.2px;
	overflow: hidden;


}
.header
{
	background: black;
	color: white;
	padding: 15px 0px;


}
.mov-body
{
padding: 4px;
color: white;
border-radius: 5px;
}
</style>
<body>
	<div class="content">
		<h1 class="header" align="center">Notification</h1>
		<marquee class="mov-body" direction = "down" bgcolor = "Green" scrollamount="5"onMouseOver="this.stop()" onMouseOut="this.start()">
			<script type="text/javascript">
				for (var i = 5; i >= 0; i--) {
					document.write("<center>Hello ",i," </center>");
					document.write("<br>");
				}
			</script>
		</marquee> 
</div>
 
</body>
</html>