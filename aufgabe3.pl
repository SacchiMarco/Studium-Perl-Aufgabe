#! /usr/perl/bin -w

%menu=( "Admin"  => 1,
		"Member" => 2,
		"User"   => 3,
		"Exit"   => 4
	   );

print"Bitte geben Sie die Zahl f\x81r die Option ein:\n";
	foreach $k (sort {$menu{$a} cmp $menu{$b}} keys %menu)
	{
		printf ("%15s \t<%s>\n",$k,$menu{$k});
	}
	
	print"Option: ";
	$option = <STDIN>;
	

if($option == 1) {
	$zahl = 4+5;
	printf("Hallo Admin 4 + 5 ist: %d", $zahl);
}
elsif($option == 2) {
	$zahl = 30 / 100;
	printf("Hallo Member 30 : 100 ist: %.4f", $zahl);
}
elsif($option == 3){
	$zahl = (10 - 5) * 20;
	printf("Hallo User (10 - 5) * 20 ist: %d", $zahl);
}
elsif($option == 4){
}
else {
	print "Keine g\x81ltige Option!";
}