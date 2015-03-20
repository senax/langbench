#!/usr/bin/php
<?php 

	for ($i=1;$i<100000000;$i++) {
		$x=3*$i;
		$z=sqrt($x);
		$x=$x/$i;
		$time=time();
	}
	print $time;
	print "z= $z";
?>
