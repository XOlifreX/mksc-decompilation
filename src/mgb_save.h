#include <stdbool.h>

#define MGB_NICKNAME_SIZE 5
#define MGB_PASSWORD_SIZE 17
#define MGB_PREFECTUREID_SIZE 1
#define MGB_REALNAME_SIZE 16
#define MGB_PHONENUMBER_SIZE 12
#define MGB_ZIPCODE_SIZE 8
#define MGB_ADDRESS_SIZE 128

typedef struct MGBUserInfoSaveData {
    char unk1[12];
    char unk2[12];
    int unk3;
    char Nickname[5];
    char unk4[3];
    char unk5[4];
    char unk5_2[5];
    char unk6[1];
    char unk7[11];
    char unk8;
    char Country[4];
    char unk9[12];
    char unk10[8];
    char unk11[4];
    char unk12[8];
    char Town[22];
    char unk13[2656];
    char Password[4];
} MGBUserInfoSaveData;

extern struct MGBUserInfoSaveData gUserInfoSaveData;
