#!/usr/bin/python

from math import sqrt
import time

for i in xrange(1,100000000):
    x = 3*i
    z = sqrt(x)
    x = x/i
    tijd=time.time()
print tijd
print z

