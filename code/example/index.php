<html style="text-align:center;">

<h1>Welcome to the magento docker stack</h1> <br/>
<?php
echo "Php version is ". phpversion(). "<br/>";

$link = mysqli_connect("db", "root", "root") or die(mysqli_error());
echo "Database connection is working<br/>";

?>

</html>
