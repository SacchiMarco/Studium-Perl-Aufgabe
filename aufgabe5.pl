#! /usr/perl/bin -w

$insZahl = 0;
$check = 0;

do{
	#Eingabe wenn Zahl nicht gültig
	if($check == 0){
		print "\nGeben eine Zahl zwischen 0 und 10 ein: ";
		chomp($insZahl = <STDIN>);
	}
	
	if($insZahl > 10 or $insZahl < 0){
		#Eingabe ungültig
		print "\nZahl ist nicht zwischen  0 und 10!\n";
	}
	else{
		#Schleife beenden
		$check = 1;
		
		#Ausgabe Quadrat
		for($i = 0; $i < 5; $i++){
			$x = $insZahl * $insZahl;
			printf("Quadratzahl von %d: %d\n",$insZahl, $x);
			$insZahl += 1;
		}
		
	}
	
}while($check != 1);