# langbench
simple benchmark of a few languages

Running on:
Linux c7a.thuis.moona.net 3.10.0-123.el7.x86_64 #1 SMP Mon Jun 30 12:09:22 UTC 2014 x86_64 x86_64 x86_64 GNU/Linux

Lang | elapsed time | user | system | result
---- | ------------ | ---- | ------ | -----
Go| real    0m5.585s| user    0m5.586s| sys     0m0.006s | z=17320.507989086233
C Running 1 threads| real    0m0.884s| user    0m0.883s| sys     0m0.001s|
C Running 2 threads| real    0m0.423s| user    0m0.843s| sys     0m0.001s|
Running 4 threads| real    0m0.318s| user    0m1.060s| sys     0m0.001s|
Running 8 threads| real    0m0.268s| user    0m1.027s| sys     0m0.003s|
Running 16 threads| real    0m0.261s| user    0m1.032s| sys     0m0.002s|
Running 32 threads| real    0m0.224s| user    0m0.886s| sys     0m0.002s|
Running 64 threads| real    0m0.218s| user    0m0.864s| sys     0m0.002s|
Running 128 threads | real    0m0.221s| user    0m0.864s| sys     0m0.006s|
Running 256 threads| real    0m0.222s| user    0m0.864s| sys     0m0.009s|
Running 512 threads| real    0m0.224s| user    0m0.865s| sys     0m0.014s|
Running 1000 threads| real    0m0.280s| user    0m1.043s| sys     0m0.023s|
C -O3 -march native| real    0m0.577s| user    0m0.577s| sys     0m0.000s|z=17320.507989
C -O0| real    0m1.846s| user    0m1.845s| sys     0m0.002s| z=17320.507989
Java| real    0m4.937s| user    0m4.908s| sys     0m0.040s| 17320.507989086233
test_fastperl| real    0m0.681s| user    0m0.626s| sys     0m0.017s| z=17320.507989
perl| real    0m19.358s| user    0m19.356s| sys     0m0.000s| z=17320.5079890862
php| real    0m22.773s| user    0m22.725s| sys     0m0.004s| z= 17320.507989086
python| real    0m44.326s| user    0m44.317s| sys     0m0.002s| 17320.5079891
ruby| real    1m20.563s| user    1m20.547s| sys     0m0.010s| z = 17320.508075688773
bash(1)| real    0m12.053s| user    0m2.557s| sys     0m12.080s| z=173.20508075688772935274

(1) bash only ran 10,000 iterations instead of 100,000,000, so muliply time taken * 10,000...
35 second -> 350,000 seconds -> 97 hours



