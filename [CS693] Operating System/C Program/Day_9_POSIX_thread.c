#include <stdio.h>
#include <stdlib.h>
#include <pthread.h>
#include <unistd.h>

void *start_routine(void *myVar){
	char *msg;

	/* 	
		myVar was first (char *) then while passing it we change it to (void *)
		So here we are again converting it to (char *)
	*/ 
	msg = (char *) myVar;

	int i;
	for(i=0;i<5;i++){
		printf("%s %d\n", msg, i);
		sleep(1);
	}
}

int main(){
	pthread_t thread1, thread2;
	char *msg1 = "First thread";
	char *msg2 = "Second thread";
	int ret1, ret2;

	ret1 = pthread_create(&thread1, NULL, start_routine, (void *) msg1);
	ret2 = pthread_create(&thread2, NULL, start_routine, (void *) msg2);

	printf("pthread_create completed.\n\n");

	pthread_join(thread1, NULL);
	pthread_join(thread2, NULL);

	printf("\nFirst thread returns: %d\n", ret1);
	printf("Second thread returns: %d\n", ret2);

	return 0;
}

/*
Output:

pthread_create completed.

Second thread 0
First thread 0
First thread 1
Second thread 1
First thread 2
Second thread 2
First thread 3
Second thread 3
First thread 4
Second thread 4

First thread returns: 0
Second thread returns: 0


*/