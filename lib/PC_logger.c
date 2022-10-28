#include "PC_logger.h"

#include <stdio.h>
#include <stdlib.h>
#include <time.h>

void PC_logger(const char *tag, const char *message)
{
    // Write out to file for now.
    FILE *f = fopen("/var/log/PatchCanary/monitor_output", "a");
    if (f == NULL)
    {
        printf("Error opening file\n");
        exit(1);
    }

    time_t now;
    time(&now);
    fprintf(f, "%s [%s]: %s\n", ctime(&now), tag, message);
}

// int main()
// {
//     PC_logger("tag", "testing this");
//     return 0;
// }