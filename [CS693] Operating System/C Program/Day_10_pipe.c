#include <stdio.h>
#include <unistd.h>
#include <sys/types.h>
#include<stdlib.h>
#include<string.h>

int main() {
  int fd[2];
  pid_t pid;
  char buf[80];

  //pipe(fd);

  if (pipe(fd) == -1) {
               perror("pipe");
               exit(-1);
  }

  pid = fork();

  if (pid == -1) {
    perror("Fork fails!!");
    exit(1);
  } else if (pid == 0) {
    /* Child process closes up input side of pipe */
    close(fd[0]);

    /* Send "Hello from Child!" through the output side of pipe */
    write(fd[1], "Hello from Child!", 18);
    exit(0);
  } else {
    /* Parent process closes up output side of pipe */
    close(fd[1]);

    /* Read in a string from the pipe */
    read(fd[0], buf, sizeof(buf));
    printf("Parent recieved string: %s", buf);
  }

  return (0);
}

/*

Output:

Parent recieved string: Hello from Child!
*/