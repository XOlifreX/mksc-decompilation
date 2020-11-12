#include "gba/gba.h"


typedef struct MGBUserInfo {
    char unkn1[16];
    char Username[5];
} MGBUserInfo;


void ClearUsername(MGBUserInfo* UsernameLocation) 
{
    char* Username = UsernameLocation->Username;
    char clearByte = '\0';

    int i = 4;
    do {
      *Username = clearByte;
      Username = Username++;
      i--;
    } while (0 <= i);
}