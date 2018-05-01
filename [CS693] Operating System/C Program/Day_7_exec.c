#include<stdio.h>
#include<sys/types.h>
#include<unistd.h>
#include<stdlib.h>

int main() {
  execl("/bin/ps", "/bin/ps", "-C", "java", "-o", "pid,stat,comm",NULL);
}

/*
Output:

  PID STAT COMMAND
 2551 Sl   java
*/