<?php 
mysql_connect('designcc.info','test_user','password123') or die(mysql_error()); 
mysql_select_db('login') or die(mysql_error()); 
mysql_query('SET NAMES UTF8'); 
?>