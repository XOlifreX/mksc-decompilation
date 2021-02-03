#include <stdbool.h>

#include "gba/gba.h"


#define MGB_NICKNAME_SIZE 5
#define MGB_PASSWORD_SIZE 17
#define MGB_PREFECTUREID_SIZE 1
#define MGB_REALNAME_SIZE 16
#define MGB_PHONENUMBER_SIZE 12
#define MGB_ZIPCODE_SIZE 8
#define MGB_ADDRESS_SIZE 128

#define MGB_PREFECTURE_LIST_SIZE 47

#define MGB_unk_val1 0xAE6
#define MGB_unk_val2 0x6960


typedef struct MGBUserInfo {
    char unkn[16];
    char Nickname[MGB_NICKNAME_SIZE];
    char unk2[7];
    char Password[MGB_PASSWORD_SIZE];
    char PrefectureId[MGB_PREFECTUREID_SIZE];
    char RealName[MGB_REALNAME_SIZE];
    char PhoneNumber[MGB_PHONENUMBER_SIZE];
    char Zipcode[MGB_ZIPCODE_SIZE];
    char Address[MGB_ADDRESS_SIZE];
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
extern void _getMgbRealName(char* realName);
extern void _getMgbPhoneNumber(char* phoneNumber);
extern void _getMgbZipcode(char* zipcode);
extern void _getMgbAddress(char* address);
