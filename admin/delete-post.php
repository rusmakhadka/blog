<?php

include_once 'include/connection.php';
$id = $_GET["id"];
//echo $id;
$sql = "DELETE FROM posts WHERE id = $id";
if (mysqli_query($conn, $sql)) {
    echo "Posts Deleted.";
}
mysqli_close($conn);

?>