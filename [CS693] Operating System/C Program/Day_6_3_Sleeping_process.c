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
    sleep(1);
    sprintf(command, "ps %d", pid);
    system(command);
    exit(0);
  } else {
    sleep(5);
    exit(0);
  }
}

/*
Output:

  PID TTY      STAT   TIME COMMAND
25233 pts/0    S+     0:00 ./a.out
*/