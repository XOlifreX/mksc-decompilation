#include <stdbool.h>

#include "gba/gba.h"


#define MGB_USERNAME_SIZE 5
#define MGB_UNKSTRING1_SIZE 16
#define MGB_UNKSTRING2_SIZE 12
#define MGB_UNKSTRING3_SIZE 8
#define MGB_UNKSTRING4_SIZE 128
#define MGB_UNKVALUE1_SIZE 1

#define MGB_unk_val1 0xAE6
#define MGB_unk_val2 0x6960


typedef struct MGBUserInfo {
    char unkn1[16];
    char Username[MGB_USERNAME_SIZE];
    char unk2[8];
    char unk3[16];
    char unkValue1[MGB_UNKVALUE1_SIZE];
    char unkString1[MGB_UNKSTRING1_SIZE]; // All FF
    char unkString2[MGB_UNKSTRING2_SIZE];
    char unkString3[MGB_UNKSTRING3_SIZE];
    char unkString4[MGB_UNKSTRING4_SIZE];
} MGBUserInfo;

typedef struct MGBUserInfo2 {
    char unk1[16];
    char Username[5];
    char unused1[3];
    int unk2;
    char Password[17];
    char unk3;
    char Country[16];
    char unk4[12];
    char unk5[8];
    char Town[22];
} MGBUserInfo2;


extern void sub_08060958();
extern void sub_08057900(char* unk);
extern char* sub_08057370();
extern void sub_08057b80(char* country);
extern void sub_08057b28(char* unk);
extern void sub_08057a9c(char* password);
extern void sub_08057a44(char* town);
