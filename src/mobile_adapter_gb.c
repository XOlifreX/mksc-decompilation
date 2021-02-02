 #include "mobile_adapter_gb.h"

// 08060bf4
int sub_08060bf4(int unk)
{
  return unk + MGB_unk_val2;
}

/*
 * Called from GB Tourney Menu select
*/
// 08060c00
void sub_08060c00(MGBUserInfo2* UserInfo)
{
  char* temp;
  
  sub_08060958(); // ClearMGBUserInfoStruct
  sub_08057900(UserInfo->unk1);
  _MGBLoadUsername(UserInfo->Username);

  UserInfo->unk2 = NULL;

  _MGBLoadPassword(UserInfo->Password);

  temp = sub_08057370() + MGB_unk_val1;
  UserInfo->unk3 = *temp;
  
  sub_08057b80(UserInfo->Country);
  sub_08057b28(UserInfo->unk4);
  sub_08057a9c(UserInfo->unk5);
  sub_08057a44(UserInfo->Town);
}

// 08060c5c
void sub_08060c5c()
{
    return;
}

// 08060c60
char* getUsernameFromMGBStruct(MGBUserInfo* MGBUserInfo)
{
    return MGBUserInfo->Username;
}

// 08060c64 
bool checkUsernameExists(MGBUserInfo* MGBUserInfo) 
{
    char* Username = MGBUserInfo->Username;
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
void clearUsername(MGBUserInfo* MGBUserInfo) 
{
    char* Username = MGBUserInfo->Username;
    char nullByte = '\0';
    int i;

    for (i = (MGB_USERNAME_SIZE - 1); i >= 0; i--)
        *Username++ = nullByte;
}

// 08060c94
void CopyUsernameToBuffer(MGBUserInfo* MGBUserInfo, char* buffer)
{
    char* Username = MGBUserInfo->Username;
    int i;

    for (i = (MGB_USERNAME_SIZE - 1); i >= 0; i--)
        *buffer++ = *Username++;
}

// 08060cac
void setUsername(MGBUserInfo* MGBUserInfo, char* buffer)
{
    char* Username = MGBUserInfo->Username;
    int i;

    for (i = 4; i >= 0; i--)
        *Username++ = *buffer++;
}

// 08060cc4
char* getMgbUnkString1FromMGBStruct(MGBUserInfo* MGBUserInfo)
{
    return MGBUserInfo->unkString1;
}

// 08060cc8
bool checkMgbUnkString1Exists(MGBUserInfo* MGBUserInfo) 
{
    char* SomeString = MGBUserInfo->unkString1;
    char temp;
    int i;

    for (i = 0; i < MGB_UNKSTRING1_SIZE; i++) {
        temp = *SomeString++;

        if (temp != '\0')
            return true;
    }

    return false;
}

// 08060ce4
void clearMgbUnkString1(MGBUserInfo* MGBUserInfo) 
{
    char* SomeString = MGBUserInfo->unkString1;
    char nullByte = '\0';
    int i;

    for (i = (MGB_UNKSTRING1_SIZE - 1); i >= 0; i--)
        *SomeString++ = nullByte;
}

// 08060cf6
void copyMgbUnkString1ToBuffer(MGBUserInfo* MGBUserInfo, char* buffer) 
{
    char* SomeString = MGBUserInfo->unkString1;
    int i;
    
    for (i = (MGB_UNKSTRING1_SIZE - 1); i >= 0; i--)
        *buffer++ = *SomeString++;
}

// 08060d10
void setMgbUnkString1(MGBUserInfo* MGBUserInfo, char* buffer) 
{
    char* SomeString = MGBUserInfo->unkString1;
    int i;
    
    for (i = (MGB_UNKSTRING1_SIZE - 1); i >= 0; i--)
        *SomeString++ = *buffer++;
}

// 08060d28
char* getMgbUnkString4FromMGBStruct(MGBUserInfo* MGBUserInfo)
{
    return MGBUserInfo->unkString4;
}

// 08060d2c
bool checkMgbUnkString4Exists(MGBUserInfo* MGBUserInfo) 
{
    char* SomeString = MGBUserInfo->unkString4;
    char temp;
    int i;

    for (i = 0; i < MGB_UNKSTRING4_SIZE; i++) {
        temp = *SomeString++;

        if (temp != '\0')
            return true;
    }

    return false;
}

// 08060d48
void clearMgbUnkString4(MGBUserInfo* MGBUserInfo) 
{
    char* SomeString = MGBUserInfo->unkString4;
    char nullByte = '\0';
    int i;

    for (i = (MGB_UNKSTRING4_SIZE - 1); i >= 0; i--) {
        *SomeString++ = nullByte;
    } 
}

// 08060d5c
void copyMgbUnkString4ToBuffer(MGBUserInfo* MGBUserInfo, char* buffer) 
{
    char* SomeString = MGBUserInfo->unkString4;
    int i;
    
    for (i = (MGB_UNKSTRING4_SIZE - 1); i >= 0; i--)
        *buffer++ = *SomeString++;
}

// 08060d74
void setMgbUnkString4(MGBUserInfo* MGBUserInfo, char* buffer) 
{
    char* SomeString = MGBUserInfo->unkString4;
    int i;
    
    for (i = (MGB_UNKSTRING4_SIZE - 1); i >= 0; i--)
        *SomeString++ = *buffer++;
}

// 08060d8c
char* getMgbUnkString2FromMGBStruct(MGBUserInfo* MGBUserInfo)
{
    return MGBUserInfo->unkString2;
}

// 08060d90
void clearMgbUnkString2(MGBUserInfo* MGBUserInfo) 
{
    char* SomeString = MGBUserInfo->unkString2;
    char nullByte = '\0';
    int i;

    for (i = (MGB_UNKSTRING2_SIZE - 1); i >= 0; i--) {
        *SomeString++ = nullByte;
    } 
}

// 08060da4
void copyMgbUnkString2ToBuffer(MGBUserInfo* MGBUserInfo, char* buffer) 
{
    char* SomeString = MGBUserInfo->unkString2;
    int i;
    
    for (i = (MGB_UNKSTRING2_SIZE - 1); i >= 0; i--)
        *buffer++ = *SomeString++;
}

// 08060dbc
void setMgbUnkString2(MGBUserInfo* MGBUserInfo, char* buffer) 
{
    char* SomeString = MGBUserInfo->unkString2;
    int i;
    
    for (i = (MGB_UNKSTRING2_SIZE - 1); i >= 0; i--)
        *SomeString++ = *buffer++;
}

// 08060dd4
char* getMgbUnkString3FromMGBStruct(MGBUserInfo* MGBUserInfo)
{
    return MGBUserInfo->unkString3;
}

// 08060dd8
void clearMgbUnkString3(MGBUserInfo* MGBUserInfo) 
{
    char* SomeString = MGBUserInfo->unkString3;
    char nullByte = '\0';
    int i;

    for (i = (MGB_UNKSTRING3_SIZE - 1); i >= 0; i--) {
        *SomeString++ = nullByte;
    } 
}

// 08060dec
void copyMgbUnkString3ToBuffer(MGBUserInfo* MGBUserInfo, char* buffer) 
{
    char* SomeString = MGBUserInfo->unkString3;
    int i;
    
    for (i = (MGB_UNKSTRING3_SIZE - 1); i >= 0; i--)
        *buffer++ = *SomeString++;
}

// 08060e04
void setMgbUnkString3(MGBUserInfo* MGBUserInfo, char* buffer) 
{
    char* SomeString = MGBUserInfo->unkString3;
    int i;
    
    for (i = (MGB_UNKSTRING3_SIZE - 1); i >= 0; i--)
        *SomeString++ = *buffer++;
}

// 08060e1c
char* getMgbUnkValue1FromMGBStruct(MGBUserInfo* MGBUserInfo)
{
    return MGBUserInfo->unkValue1;
}

/*
** Don't know what 0x2f does. 
*/
// _08060e20
bool checkMgbUnkValue1OverLimit(MGBUserInfo* MGBUserInfo)
{
    char toCheck = MGBUserInfo->unkValue1[0];

    return toCheck < 0x2f;
}

/*
** Don't know what 0x2f does. 
*/
// _08060e30
bool setMgbUnkValue1ToLimit(MGBUserInfo* MGBUserInfo)
{
    MGBUserInfo->unkValue1[0] = 0x2f;
}

// _08060e38
bool copyMgbUnkValue1ToBuffer(MGBUserInfo* MGBUserInfo, char* buffer)
{
    *buffer = MGBUserInfo->unkValue1[0];
}

// _08060e40
bool setMgbUnkValue1ToBuffer(MGBUserInfo* MGBUserInfo, char* buffer)
{
    char* location = MGBUserInfo->unkValue1;
    *location = *buffer;
}
