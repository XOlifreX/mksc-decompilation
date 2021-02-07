#include "mgb_save.h"
#include "gba/defines.h"


EWRAM_DATA ALIGNED(4) struct MGBUserInfoSaveData gUserInfoSaveData = {0};

// 08057950
bool getMgbNicknameFromSave(char* buffer) 
{
    MGBUserInfoSaveData* userInfoObject = &gUserInfoSaveData;
    char* nickname = userInfoObject->Nickname;

    bool success = false;
    char temp;
    int i;

    for (i = 4; i >= 0; i--) {
        temp = *buffer = *nickname;

        nickname++;
        buffer++;
    
        if (temp != '\0')
            success = true;
    }

    return success;
}
