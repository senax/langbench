#!/bin/sh

PATH=$PATH:/usr/local/bin/:/usr/sfw/bin:/opt/puppet/bin
echo "Running on: "
uname -a
ARCH=`arch`
gcc -O3 -march=native -lm -o test_pthread.${ARCH} -lpthread test_pthread.c
#gcc -O3 -march=native -lm -o test_pthread -lpthread test_pthread.c 
gcc -O3 -lm -march=native -o test_pthread.${ARCH} -lpthread test_pthread.c 
for i in 1 2 4 8 16 32 64 128 256 512 1000; do echo "Running $i threads"; time ./test_pthread.${ARCH} $i > /dev/null ;done
#time ./test_pthread.${ARCH} 4
echo "C -O3 -march native"
gcc -O3 -march=native -o test.${ARCH} -lm test.c
time ./test.${ARCH}
echo "C -O0"
gcc -O0 -o test.${ARCH} -lm test.c
#gcc -O3 -o test -lm test.c
time ./test.${ARCH}
echo;echo "Java"
javac Test.java ; time java Test
echo;echo "test_fastperl"
time ./test_fastperl.pl
echo;echo "perl"
time ./test.pl
echo;echo "php"
time ./test.php
echo;echo "python"
time ./test.py
echo;echo "ruby"
time ./test.rb
echo;echo "bash"
time bash ./test.sh
echo;echo "done"
