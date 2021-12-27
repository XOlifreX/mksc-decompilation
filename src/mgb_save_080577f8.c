#include "mgb_save.h"
#include "gba/defines.h"


extern struct MGBUserInfoSaveData gUserInfoSaveData;

// Needs new_agbcc
// 080577f8
unsigned int sub_080577f8(char param_1, char param_2)
{
    MGBUserInfoSaveData* userInfoObject = &gUserInfoSaveData;

    unsigned char temp = param_2 + (param_1 * 3);
    unsigned int res1 = 0x10000 << temp;
    unsigned int res2 = res1 >> 0x10;

    return res2 & userInfoObject->unk21;
}
