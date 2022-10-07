#include <sys/types.h>
#include <unistd.h>
#include <sys/wait.h>
#include <stdlib.h>
int main()
{
    pid_t pid = getpid();
    pid_t ppid = getppid();
    printf("Label->0PID->%dPPID->%d\n", getpid(), getppid());
    if (fork())
    {
        printf("Label->1PID->%dPPID->%d\n", getpid(), getppid());
        if (fork())
        {
            wait(NULL);
            if (!fork())
            {
                printf("Label->3PID->%dPPID->%d\n", getpid(), getppid());
                if (fork)
                {
                    printf("Label->5PID->%dPPID->%d\n", getpid(), getppid());
                    if (fork())
                    {
                        wait(NULL);
                        if (!fork())
                        {
                            printf("Label->9PID->%dPPID->%d\n", getpid(), getppid());
                        }
                        else
                        {
                            wait(NULL);
                        }
                    }
                    else
                    {
                        printf("Label->8PID->%dPPID->%d\n", getpid(), getppid());
                    }
                }
                else
                {
                    wait(NULL);
                }
            }
            else
            {
                wait(NULL);
            }
        }
        else
        {
            wait(NULL);
        }
    }
    else
    {
        printf("Label->2PID->%dPPID->%d\n", getpid(), getppid());
        if (fork)
        {
            printf("Label->4PID->%dPPID->%d\n", getpid(), getppid());
            if (fork())
            {
                wait(NULL);
                if (!fork())
                {
                    printf("Label->7PID->%dPPID->%d\n", getpid(), getppid());
                }
                else
                {
                    wait(NULL);
                }
            }
            else
            {
                printf("Label->6PID->%dPPID->%d\n", getpid(), getppid());
            }
        }
        else
        {
            wait(NULL);
        }
    }
    return 0;
}