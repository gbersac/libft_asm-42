#include <stdio.h>
#include "libfts.h"

int main() {
    int base, exp, result;
    base = 2;
    exp = 8;
    result = my_pow(2,8);
    printf("Result: %d\n", result);
    return 0;
}
