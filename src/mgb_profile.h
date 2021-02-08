#include <stdbool.h>

#include "gba/gba.h"
#include "mgb_save.h"

#define MGB_PREFECTURE_LIST_SIZE 47

#define MGB_unk_val2 0x6960

typedef struct MGBUserInfo {
    char unk0[16];
    char Nickname[MGB_NICKNAME_SIZE];
    char unk2[3];
    unsigned int unk1;
    char Password[MGB_PASSWORD_SIZE];
    char PrefectureId[MGB_PREFECTUREID_SIZE];
    char RealName[MGB_REALNAME_SIZE];
    char PhoneNumber[MGB_PHONENUMBER_SIZE];
    char Zipcode[MGB_ZIPCODE_SIZE];
    char Address[MGB_ADDRESS_SIZE];
} MGBUserInfo;

bool getMgbNicknameFromSave(char* buffer);

extern void sub_08060958();
extern void sub_08057900(char* unk);
extern char* sub_08057370();
extern void _getMgbRealName(char* realName);
extern void _getMgbPhoneNumber(char* phoneNumber);
extern void _getMgbZipcode(char* zipcode);
extern void _getMgbAddress(char* address);
