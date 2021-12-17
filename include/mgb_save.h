#include <stdbool.h>

#define MGB_NICKNAME_SIZE 5
#define MGB_PASSWORD_SIZE 17
#define MGB_PREFECTUREID_SIZE 1
#define MGB_REALNAME_SIZE 16
#define MGB_PHONENUMBER_SIZE 12
#define MGB_ZIPCODE_SIZE 8
#define MGB_ADDRESS_SIZE 128

#define MGB_PREFECTURE_LIST_SIZE 47

typedef struct unk_struct0 {
    char unk0[2];
    short unk1;
    char unk2[28];
} unk_struct0;

typedef struct MGBSaveDatatruct1 {
    char unk0[5];
    char unk1[3];
    char unk2[MGB_REALNAME_SIZE];
} MGBSaveDatatruct1;

typedef struct MGBUserInfoSaveData {
    char unk1[12];
    char unk2[12];
    int unk3;
    char Nickname[MGB_NICKNAME_SIZE];
    char unk4[4];
    char unk5[3];
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
    char unk13[70];
    char unk14[2586];
    // struct MGBSaveDatatruct1 unk14[107];
    char Password[4];
    char unk15[14];
    char PrefectureId;
    char unk16[13];
    char unk17;
    char Address[MGB_ADDRESS_SIZE];
    char Zipcode[MGB_ZIPCODE_SIZE];
    char RealName[MGB_REALNAME_SIZE];
    char PhoneNumber[MGB_PHONENUMBER_SIZE];
    char unk18[4];
    struct MGBSaveDatatruct1 unk19[3];
} MGBUserInfoSaveData;

extern bool sub_08056030(char* someString, char param_1);
