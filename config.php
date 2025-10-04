<?php

// define('InnoNerds_Event_Planner', __DIR__ . '/'); 
// define('BASE_URL', 'http://localhost/InnoNerds_Event_Planner/public/');

define('ROOT_URL', 'http://localhost/InnoNerds_Event_Planner/');
define('BASE_URL', ROOT_URL . 'public/');
define("ASSETS_URL", ROOT_URL . "assets/");

$host = "localhost";   // XAMPP server
$db   = "innonerds";   // database name (phpMyAdmin me banaya hua)
$user = "root";        // default XAMPP user
$pass = "";            // default password blank hota hai

try {
  $pdo = new PDO("mysql:host=$host;dbname=$db;charset=utf8mb4", $user, $pass);
  $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
  die("DB Connection failed: " . $e->getMessage());
}
/*changes*/
if (session_status() === PHP_SESSION_NONE) {
  session_start();
}
?>
