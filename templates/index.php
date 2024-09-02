<?php
// Display the virtual host's server name
echo "<h1>Welcome to {{ item.server_name }}</h1>";

// Display some server information
echo "<p>This is a test PHP page running on the virtual host: <strong>{{ item.server_name }}</strong></p>";
echo "<p>Your IP address is: " . $_SERVER['REMOTE_ADDR'] . "</p>";
echo "<p>Server software: " . $_SERVER['SERVER_SOFTWARE'] . "</p>";
echo "<p>PHP version: " . phpversion() . "</p>";
?>