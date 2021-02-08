#include "mgb_save.h"
#include "gba/defines.h"


EWRAM_DATA ALIGNED(4) struct MGBUserInfoSaveData gUserInfoSaveData = {0};

// 08057900
bool getMgbUn2FromSave(char* buffer) 
{
    MGBUserInfoSaveData* userInfoObject = &gUserInfoSaveData;
    char* unk2 = userInfoObject->unk2;

    bool success = false;
    char temp;
    int i;

    for (i = 0xf; i >= 0; i--) {
        temp = *buffer = *unk2;

        unk2++;
        buffer++;
    
        if (temp != '\0')
            success = true;
    }

    return success;
}

/*
** COULD BE WRONG FIELD. UNKNOWN
*/
// 08057930
void setMgbRealNameFromSave(char* buffer) 
{
    MGBUserInfoSaveData* userInfoData = &gUserInfoSaveData;
    char* realName = userInfoData->unk2;

    char temp;
    int i;

    for (i = (MGB_REALNAME_SIZE - 1); i >= 0; i--) {
        *realName = *buffer;    

        buffer++;
        realName++;
    }
}

// 08057950
bool getMgbNicknameFromSave(char* buffer) 
{
    MGBUserInfoSaveData* userInfoObject = &gUserInfoSaveData;
    char* nickname = userInfoObject->Nickname;

    bool success = false;
    char temp;
    int i;

    for (i = (MGB_NICKNAME_SIZE - 1); i >= 0; i--) {
        temp = *buffer = *nickname;

        nickname++;
        buffer++;
    
        if (temp != '\0')
            success = true;
    }

    return success;
}

// 08057980
void setMgbNicknameFromSave(char* buffer) 
{
    MGBUserInfoSaveData* userInfoObject = &gUserInfoSaveData;
    char* nickname = userInfoObject->Nickname;

    char temp;
    int i;

    for (i = (MGB_NICKNAME_SIZE - 1); i >= 0; i--) {
        temp = *buffer;
        *nickname = temp;        

        buffer++;
        nickname++;
    }
}

// 080579A0
bool getMgbPasswordFromSave(char* buffer) 
{
    MGBUserInfoSaveData* userInfoData = &gUserInfoSaveData;
    char* password = userInfoData->Password;
    
    char temp;
    int i;

    if (*password == '\0') 
        return false;

    for (i = (MGB_PASSWORD_SIZE - 1); i >= 0; i--) {
        temp = *password;
        *buffer = temp;        

        password++;
        buffer++;
    }

    return true;
}

// 080579d0
void setMgbPasswordFromSave(char* buffer) 
{
    MGBUserInfoSaveData* userInfoData = &gUserInfoSaveData;
    char* password = userInfoData->Password;
    
    char temp;
    int i;



    for (i = (MGB_PASSWORD_SIZE - 1); i >= 0; i--) {
        *password = *buffer;    

        buffer++;
        password++;
    }
}

// 080579f4
bool getMgbUn4FromSave(char* buffer) 
{
    MGBUserInfoSaveData* userInfoObject = &gUserInfoSaveData;
    char* unk4 = userInfoObject->unk4;

    bool success = false;
    char temp;
    int i;

    for (i = 0x4; i >= 0; i--) {
        temp = *buffer = *unk4;

        unk4++;
        buffer++;
    
        if (temp != '\0')
            success = true;
    }

    return success;
}
