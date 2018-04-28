#include<stdio.h>
#include<sys/types.h>
#include<unistd.h>
#include<stdlib.h>

int main() {
  int pid;
  char command[20];

  pid = fork();

  if (pid == -1) {
    printf("\nError occurred...\nCan't create chid process.");
    exit(0);
  }
  if (pid != 0) {
    exit(0);
  } else {
    sleep(5);
    printf("\nParent process: ");
    sprintf(command, "ps %d", getppid());
    system(command);

    printf("\nChild process: ");
    sprintf(command, "ps %d", getpid());
    system(command);
    exit(0);
  }
}

/*
Output:

Parent process: 
  PID TTY      STAT   TIME COMMAND
    1 ?        Ss     0:03 /sbin/init splash

Child process: 
  PID TTY      STAT   TIME COMMAND
24741 pts/0    S      0:00 ./a.out
*/