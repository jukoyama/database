<?php
try {
	print "<TAbLE border=1>\n";
    print "\t\t<TH>ユーザー名</TH><TH>マップ名</TH><TH>写真(FILE NAME)</TH>";
    print "\t</TR>";
	$user_name = $_GET["user"];
	print "マップ情報データベース" . $user_name;
	$pdo = new PDO("sqlite:test_pdo.db");
	$sql = "SELECT * FROM testtbl;";
	$res = $pdo->query($sql);
	foreach($res as $line) {
		print "id: " .$line["id"] .", name: " . $line["name"] . "</br>";
	}
	print "\t</TABLE>";
} catch(Exception $e) {
	print $e-getMesage() . PHP_EOL;
}
	
?>