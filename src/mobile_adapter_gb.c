 #include "mobile_adapter_gb.h"

// 08060c64 
bool checkUsernameExists(MGBUserInfo* UsernameLocation) 
{
    char* Username = UsernameLocation->Username;
    char temp;
    int i;

    for (i = 0; i < MGB_USERNAME_SIZE; i++) {
        temp = *Username++;

        if (temp != '\0')
            return true;
    } 

  return false;
}

// 08060c80
void clearUsername(MGBUserInfo* UsernameLocation) 
{
    char* Username = UsernameLocation->Username;
    char clearByte = '\0';
    int i;

    for (i = (MGB_USERNAME_SIZE - 1); i >= 0; i--)
        *Username++ = clearByte;
}

// 08060c94
void CopyUsernameToBuffer(MGBUserInfo* UsernameLocation, char* buffer)
{
    char* Username = UsernameLocation->Username;
    int i;

    for (i = (MGB_USERNAME_SIZE - 1); i >= 0; i--)
        *buffer++ = *Username++;
}

// 08060cac
void setUsername(MGBUserInfo* UsernameLocation, char* buffer)
{
    char* Username = UsernameLocation->Username;
    int i;

    for (i = 4; i >= 0; i--)
        *Username++ = *buffer++;
}

// 08060cc4
int sub_08060cc4(int unk1)
{
    return unk1 + 0x2e;
}
