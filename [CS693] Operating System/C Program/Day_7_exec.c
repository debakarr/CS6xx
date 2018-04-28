#include<stdio.h>
#include<sys/types.h>
#include<unistd.h>
#include<stdlib.h>

int main() {
  int pid;
  char command[20];


  execl("/bin/ps", "/bin/ps", "-C", "java", "-o", "pid,stat,comm",NULL);
  system(command);
}

/*
Output:

  PID STAT COMMAND
 2551 Sl   java
*/