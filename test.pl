#!/usr/bin/perl

use Data::Dumper;

	my $i;
	my $x;
	my $z;
	my $time;
	for ($i=1;$i<100000000;$i++) {
		$x=3*$i;
		$z=sqrt($x);
		$x=$x/$i;
		$time=time();
	}
print Dumper $time;
print "z=$z\n";
exit 0;
