#include <stdio.h>
#include <string.h>
#include <stdlib.h>

#include "tables.h"
#include "translate_utils.h"
#include "translate.h"

int main(int argc, char **argv)
{
    FILE* file = fopen("file", "w");
    fclose(file);
    char *a[3];
    strcpy(a[0], "$s0");
    strcpy(a[1], "$s1");
    strcpy(a[2], "$s2");

    int retval = write_rtype(0xAB, file, a, 3);
    printf("%d\n", retval);

    return 0;
}
