#include<stdio.h>
#include<sys/types.h>
#include<unistd.h>
#include<stdlib.h>

int main() {
  int pid;

  printf("Calling fork...\n");
  pid = fork();

  if (pid == -1) {
    printf("\nError occurred...\nCan't create chid process.");
    exit(0);
  }
  if (pid != 0) {
  	printf("\nInside parent process. \nChild ID=%d, Parent ID=%d\n", pid, getpid());
    exit(0);
  } else {
  	printf("\nInside child process. \nChild ID=%d, Parent ID=%d\n", getpid(), getppid());
    exit(0);
  }
}

/*
Output:

Calling fork...

Inside parent process. 
Child ID=23334, Parent ID=23333

Inside child process. 
Child ID=23334, Parent ID=23333
*/