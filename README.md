# langbench
simple benchmark of a few languages

Running on a small VM with 4 virtual cpu's:

Linux c7a 3.10.0-123.el7.x86_64 #1 SMP Mon Jun 30 12:09:22 UTC 2014 x86_64 x86_64 x86_64 GNU/Linux

Lang | elapsed time | user | system | result
---- | ------------ | ---- | ------ | -----
Go|0m5.585s|0m5.586s|0m0.006s | z=17320.507989086233
C 1 thread|0m0.884s|0m0.883s|0m0.001s|
C 2 threads|0m0.423s|0m0.843s|0m0.001s|
C 4 threads|0m0.318s|0m1.060s|0m0.001s|
C 8 threads|0m0.268s|0m1.027s|0m0.003s|
C 16 threads|0m0.261s|0m1.032s|0m0.002s|
C 32 threads|0m0.224s|0m0.886s|0m0.002s|
C 64 threads|0m0.218s|0m0.864s|0m0.002s|
C 128 threads |0m0.221s|0m0.864s|0m0.006s|
C 256 threads|0m0.222s|0m0.864s|0m0.009s|
C 512 threads|0m0.224s|0m0.865s|0m0.014s|
C 1000 threads|0m0.280s|0m1.043s|0m0.023s|
C -O3 -march native|0m0.577s|0m0.577s|0m0.000s|z=17320.507989
C -O0|0m1.846s|0m1.845s|0m0.002s| z=17320.507989
Java|0m4.937s|0m4.908s|0m0.040s| 17320.507989086233
fastperl run 1|0m1.309s|0m1.211s|0m0.101s|z=17320.507989
fastperl run 2|0m0.605s|0m0.601s|0m0.004s|z=17320.507989
perl|0m19.358s|0m19.356s|0m0.000s| z=17320.5079890862
php|0m22.773s|0m22.725s|0m0.004s| z= 17320.507989086
python|0m44.326s|0m44.317s|0m0.002s| 17320.5079891
ruby|1m20.563s|1m20.547s|0m0.010s| z = 17320.508075688773
bash(1)|0m12.053s|0m2.557s|0m12.080s| z=173.20508075688772935274

(1) bash only ran 10,000 iterations instead of 100,000,000, so muliply time taken * 10,000...
35 second -> 350,000 seconds -> 97 hours



