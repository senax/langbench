#include <stdio.h>
#include <time.h>
#include <math.h>
#include <pthread.h>
#include <stdlib.h>

struct thread_info {
	pthread_t thread_id;
	int thread_num;
	int looplength;
};

static void *get_result(void *arg) {
	unsigned long int i;
	double x;
	double z;
struct thread_info *tinfo = (struct thread_info *) arg;
int looplength;
looplength=tinfo->looplength;

	time_t time_raw_format;
	struct tm *loctim;
	for (i=1;i<looplength;i++) {
		x=(double)3.0*i;
		z=(double)sqrt(x); 
		x=(double)x/i;
		time(&time_raw_format);
	}
	loctim = localtime(&time_raw_format);
	printf("z=%f\n",z);
}

int main(int argc, char **argv){

int ntimes;

int i;
if (argc!=2) {
	ntimes=2;
} else {
	ntimes=atoi(argv[1]);
}

printf("running %d threads\n",ntimes);
struct thread_info *tinfo;
tinfo = calloc(ntimes,sizeof(struct thread_info));


int looplength;
looplength=(int)(100000000/ntimes);

for (i=0;i<ntimes;i++) {
	tinfo[i].thread_num=i;
	tinfo[i].looplength=looplength;
//	printf("Running thread: %d\n",i);
	pthread_create(&tinfo[i].thread_id,NULL,&get_result,&tinfo[i]);
}

//printf("Joing threads: ");
for (i=0;i<ntimes;i++) {
//	printf("%d..",i);
	pthread_join(tinfo[i].thread_id,NULL);
}
//printf("\nAll done\n");

	return 0;
}

