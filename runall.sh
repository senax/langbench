#!/bin/sh

set -o nounset
set -o errexit

# yum install gcc golang java-1.7.0-openjdk-devel php install perl-Inline

PATH=$PATH:/usr/local/bin/:/usr/sfw/bin:/opt/puppet/bin
echo "Running on: "
uname -a
ARCH=`arch`
[ -d "_Inline" ] && rm -rf "_Inline"
echo;echo "fastperl run 1"
time ./test_fastperl.pl
echo;echo "fastperl run 2"
time ./test_fastperl.pl
echo;echo "python run 1"
time ./test.py
echo;echo "python run 2"
time ./test.py

echo "Go"
go build test_go.go
time ./test_go

gcc -O3 -lm -march=native -o test_pthread.${ARCH} -lpthread test_pthread.c 
for i in 1 2 4 8 16 32 64 128 256 512 1000; do echo "C $i threads"; time ./test_pthread.${ARCH} $i > /dev/null ;done

echo "C -O3 -march native"
gcc -O3 -march=native -o test.${ARCH} -lm test.c
time ./test.${ARCH}
echo "C -O0"
gcc -O0 -o test.${ARCH} -lm test.c
time ./test.${ARCH}
echo;echo "Java"
javac Test.java ; time java Test
echo;echo "perl"
time ./test.pl
echo;echo "php"
time ./test.php
echo;echo "ruby"
time ./test.rb
echo;echo "bash"
time bash ./test.sh
echo;echo "done"
