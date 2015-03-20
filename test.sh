#!/bin/bash

for i in {1..10000} # should be 100,000,000 but is too slow
do
	x=$((3*$i))
	z=`echo "sqrt($x)" |bc -l`
	x=$(($x/$i))
#	time=`date`
done
echo $time
echo "z=$z"

echo "only ran 10,000 iterations instead of 100,000,000, so muliply time taken * 10,000..."
echo "35 second -> 350,000 seconds -> 97 hours"
