#!/usr/bin/perl

use Data::Dumper;
use Inline C => q{
#include <stdio.h>
#include <time.h>
#include <math.h>

int foo(){
        unsigned long int i;
        double x;
        double z;
        time_t time_raw_format;
        struct tm *loctim;
        for (i=1;i<100000000;i++) {
                x=(double)3.0*i;
                z=(double)sqrt(x);
                x=(double)x/i;
                time(&time_raw_format);
        }
        loctim = localtime(&time_raw_format);
        printf("i=%d x=%f z=%f\n",i,x,z);

        printf("time=%s\n",asctime(loctim));
        return 0;
}
};

print Dumper foo();
exit 0;

