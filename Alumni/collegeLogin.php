<html>
<body bgcolor="pink">
<?php
$cname=$_POST['cname'];
$cpwd=$_POST['cpwd'];
$server='localhost';
$username='root';
$password='';
$db='alumni';
$conn=new mysqli( $server, $username,$password,$db);
if($conn->connect_error){
	die("Connection failed".$conn->connect_error);
}
else
{
	echo "Connected";
	echo "<br>";
}
$sql= "SELECT * FROM college WHERE Cname = '$cname' AND Cpwd = '$cpwd' ";
$result = mysqli_query($conn,$sql);
$check = mysqli_fetch_array($result);
if(isset($check)){
echo 'success';
header("refresh:1;url=collegePortal.html");
}else{
echo 'failure';
}

?>
</body></html>