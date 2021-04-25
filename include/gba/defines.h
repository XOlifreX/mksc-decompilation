#include <stddef.h>

#define BSS_DATA __attribute__((section(".bss")))
#define IWRAM_DATA __attribute__((section("iwram_data")))
#define EWRAM_DATA __attribute__((section("ewram_data")))
#define ALIGNED(n) __attribute__((aligned(n)))