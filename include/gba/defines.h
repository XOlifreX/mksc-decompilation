#include <stddef.h>

#define EWRAM_DATA __attribute__((section("ewram_data")))
#define ALIGNED(n) __attribute__((aligned(n)))