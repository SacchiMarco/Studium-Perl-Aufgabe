#! /usr/perl/bin -w

$benutzer = 0;
$benutzerOK = 0;
$pwd = 0;
$pwdOK = 0;
%user=( "Kurt"  => "pw1",
		"Alice" => "pw2",
		"Urs"   => "pw3",
		"Willi" => "pw4",
		"Mici"  => "pw5",
	   );

print "\n**** Loginbereich ****\n\n";
print "Benutzername eingeben: ";
chomp ($benutzer = <STDIN>);

#User vorhanden?
do{
	foreach $k (keys %user){
		if ( $k eq $benutzer){
			$benutzerOK = 1;
		}
	}
	if($benutzerOK == 0){
		#Kein Benutzer gefunden
		print "\nBenutzer nicht gefunden!\n";
		print "Benutzername erneut eingeben: ";
		chomp ($benutzer = <STDIN>);
	}		
}while($benutzerOK != 1);

	if($benutzerOK == 1){
		#Benutzer gefunden -> nach Passwort fragen
		print "\nBitte Passwort eingeben: ";
		chomp( $pwd = <STDIN>);
		
		#Passwort überprüfen
		while($pwdOK != 1){
			if($user{$benutzer} eq $pwd){
				$pwdOK = 1;
				printf("\nWillkommen %s Sie ".
				       "haben sich erflogreich ".
					   "angemeldet.\n", $benutzer);
			}
			else{
				print "\nPasswort ist falsch!\n";
				print "Passwort erneut eingeben: ";
				chomp( $pwd = <STDIN>);
			}
		}	
		
	}