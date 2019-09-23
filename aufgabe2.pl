#! /usr/perl/bin -w

$dmKurs = 1.95583;
$dmEingabe = 0;
print"\n\n";

print "Wieviel DM m\x94chten Sie in Euro wechseln?\n";
	$dmEingabe = <STDIN>;

$euro = $dmEingabe / $dmKurs;

printf ("Sie bekommen: %.4f Euro",$euro);

print"\n\n";