

<?php
// Database Connection 
if($_SERVER['REQUEST_METHOD']=='POST')
{
require_once ('config.php'); 

$sql="INSERT INTO timestamp(serial_num, time, status) VALUES ('{$_POST['serial_num']}', NOW(), 'in')";

if(mysqli_query($con, $sql))
{
	echo "succesful";
	header("location: time_in.php");
}else {
	echo 'error';
}
}

?>
