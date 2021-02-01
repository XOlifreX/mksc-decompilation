#include <stdbool.h>

#include "gba/gba.h"

#define MGB_USERNAME_SIZE 5

typedef struct MGBUserInfo {
    char unkn1[16];
    char Username[MGB_USERNAME_SIZE];
} MGBUserInfo;
