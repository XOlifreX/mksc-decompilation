#include "mgb_save.h"
#include "gba/defines.h"

EWRAM_DATA ALIGNED(4) struct MGBUserInfoSaveData gUserInfoSaveData = {0};

// **********************************************************************
static inline bool copyChars(char* src, char* dest, int size)
{
    bool success = false;
    char temp;
    int i;

    for (i = 0; i < size; i++) {
        temp = *dest = *src;

        src++;
        dest++;
        if (temp != '\0')
            success = true;
    }
    return success;
}
// **********************************************************************

// 08057878
short sub_08057878(char param_1)
{
  int result;
  unk_struct0 unk0;
  
  if (!sub_08056030(unk0.unk0, param_1)) {
    result = unk0.unk1;
  }
  else {
    result = -1;
  }

  return result;
}

// 080578a0
bool sub_080578a0(char param_1, char *param_2)
{
  bool result = 0;
  unk_struct0 unk0;
  
  if (!sub_08056030(unk0.unk0, param_1)) {
    char *unk2_ref = unk0.unk2;
    int i;
    for(i = 0; i < 5; i++) {
      *(param_2++) = *(unk2_ref++);
    }
    result = true;
  }

  return result;
}

// 080578d8
int sub_080578d8(char param_1) // Possible fake match
{
    char someString[32];
    int temp;

    if (sub_08056030(someString, param_1))
        return -1;
    
    return someString[9] << 0x18 >> 0x18;
}

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
void setMgbUn2FromSave(char* buffer) 
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
bool getMgbUnk4FromSave(char* buffer) 
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

// 08057a24
void setMgbUnk4FromSave(char* buffer) 
{
    MGBUserInfoSaveData* userInfoData = &gUserInfoSaveData;
    char* unk4 = userInfoData->unk4;

    char temp;
    int i;

    for (i = 0x4; i >= 0; i--) {
        *unk4 = *buffer;    

        buffer++;
        unk4++;
    }
}

// 08057a44
bool getMgbAddressFromSave(char* buffer) 
{
    MGBUserInfoSaveData* userInfoObject = &gUserInfoSaveData;
    return copyChars(userInfoObject->Address, buffer, MGB_ADDRESS_SIZE);
}

// 08057a78
void setMgbAddressFromSave(char* buffer) 
{
    MGBUserInfoSaveData* userInfoData = &gUserInfoSaveData;
    copyChars(buffer, userInfoData->Address, MGB_ADDRESS_SIZE);
}

// 08057a9c
bool getMgbZipcodeFromSave(char* buffer) 
{
    MGBUserInfoSaveData* userInfoObject = &gUserInfoSaveData;
    return copyChars(userInfoObject->Zipcode, buffer, MGB_ZIPCODE_SIZE);
}

// 08057ad0
void setMgbZipcodeFromSave(char* buffer) 
{
    MGBUserInfoSaveData* userInfoObject = &gUserInfoSaveData;
    copyChars(buffer, userInfoObject->Zipcode, MGB_ZIPCODE_SIZE);
}

// 08057af4
bool getMgbPrefectureIdFromSave(char* buffer) 
{
    MGBUserInfoSaveData* userInfoObject = &gUserInfoSaveData;
    bool success;

    *buffer = userInfoObject->PrefectureId;
    success = 0;

    if (*buffer < MGB_PREFECTURE_LIST_SIZE)
        success = 1;

    return success;
}

// 08057b14
void setMgbPrefectureIdFromSave(char* buffer) 
{
    MGBUserInfoSaveData* userInfoObject = &gUserInfoSaveData;
    char* prefectureId = &userInfoObject->PrefectureId;

    *prefectureId = *buffer;
}

// 08057b28
bool getMgbPhoneNumberFromSave(char* buffer) 
{
    MGBUserInfoSaveData* userInfoObject = &gUserInfoSaveData;
    return copyChars(userInfoObject->PhoneNumber, buffer, MGB_PHONENUMBER_SIZE);
}

// 08057b5c
void setMgbPhoneNumberFromSave(char* buffer) 
{
    MGBUserInfoSaveData* userInfoObject = &gUserInfoSaveData;
    copyChars(buffer, userInfoObject->PhoneNumber, MGB_PHONENUMBER_SIZE);
}

// 08057b80
bool getMgbRealNameFromSave(char* buffer) 
{
    MGBUserInfoSaveData* userInfoObject = &gUserInfoSaveData;
    return copyChars(userInfoObject->RealName, buffer, MGB_REALNAME_SIZE);
}

// 08057bb4
void setMgbRealNameFromSave(char* buffer) 
{
    MGBUserInfoSaveData* userInfoObject = &gUserInfoSaveData;
    copyChars(buffer, userInfoObject->RealName, MGB_REALNAME_SIZE);
}

// 08057bd8
bool getMgbUnk14FromSaveByOffset(char *buffer, int index)
{ 
    MGBUserInfoSaveData* userInfoObject = &gUserInfoSaveData;
    struct MGBSaveDatatruct1* unk14 = &userInfoObject->unk19[index];

    return copyChars(unk14->unk0, buffer, MGB_NICKNAME_SIZE);
}

// 08057c14
void setMgbUnk14FromSaveByOffset(char *buffer, int index)
{ 
    MGBUserInfoSaveData* userInfoObject = &gUserInfoSaveData;
    struct MGBSaveDatatruct1* unk14 = &userInfoObject->unk19[index];

    copyChars(buffer, unk14->unk0, MGB_NICKNAME_SIZE);
}

// 08057c3c
bool getMgbUnk1InUnk14FromSaveByOffset(char *buffer, int index)
{ 
    MGBUserInfoSaveData* userInfoObject = &gUserInfoSaveData;
    struct MGBSaveDatatruct1* unk14 = &userInfoObject->unk19[index];

    return copyChars(unk14->unk2, buffer, MGB_REALNAME_SIZE);
}

// 08057c78
void setMgbUnk1InUnk14FromSaveByOffset(char *buffer, int index)
{ 
    MGBUserInfoSaveData* userInfoObject = &gUserInfoSaveData;
    struct MGBSaveDatatruct1* unk14 = &userInfoObject->unk19[index];

    copyChars(buffer, unk14->unk2, MGB_REALNAME_SIZE);
}
