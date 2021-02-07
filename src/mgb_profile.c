 #include "mgb_profile.h"

// 08060bf4
int sub_08060bf4(int unk)
{
  return unk + MGB_unk_val2;
}

/*
 * Called from GB Tourney Menu select
*/
// 08060c00
void sub_08060c00(MGBUserInfoSaveData* UserInfo)
{
    char* temp;

    sub_08060958(); // ClearMGBUserInfoStruct
    sub_08057900(UserInfo->unk1);
    getMgbNicknameFromSave(UserInfo->unk2);
    UserInfo->unk3 = NULL;
    _MGBLoadPassword(UserInfo->Nickname);
    temp = sub_08057370() + 0xAE6;
    UserInfo->unk6[0] = *temp;

    _getMgbRealName(UserInfo->unk7);
    _getMgbPhoneNumber(UserInfo->unk9);
    _getMgbZipcode(UserInfo->unk10);
    _getMgbAddress(UserInfo->unk11);
}

// 08060c5c
void sub_08060c5c()
{
    return;
}

// 08060c60
char* getMgbNicknameFromMGBStruct(MGBUserInfo* MGBUserInfo)
{
    return MGBUserInfo->Nickname;
}

// 08060c64 
bool checkMgbNicknameExists(MGBUserInfo* MGBUserInfo) 
{
    char* nickname = MGBUserInfo->Nickname;
    char temp;
    int i;

    for (i = 0; i < MGB_NICKNAME_SIZE; i++) {
        temp = *nickname++;

        if (temp != '\0')
            return true;
    } 

  return false;
}

// 08060c80
void clearMgbNickname(MGBUserInfo* MGBUserInfo) 
{
    char* nickname = MGBUserInfo->Nickname;
    char nullByte = '\0';
    int i;

    for (i = (MGB_NICKNAME_SIZE - 1); i >= 0; i--)
        *nickname++ = nullByte;
}

// 08060c94
void copyMgbNicknameToBuffer(MGBUserInfo* MGBUserInfo, char* buffer)
{
    char* nickname = MGBUserInfo->Nickname;
    int i;

    for (i = (MGB_NICKNAME_SIZE - 1); i >= 0; i--)
        *buffer++ = *nickname++;
}

// 08060cac
void setMgbNickname(MGBUserInfo* MGBUserInfo, char* buffer)
{
    char* nickname = MGBUserInfo->Nickname;
    int i;

    for (i = 4; i >= 0; i--)
        *nickname++ = *buffer++;
}

// 08060cc4
char* getMgbRealNameFromMGBStruct(MGBUserInfo* MGBUserInfo)
{
    return MGBUserInfo->RealName;
}

// 08060cc8
bool checkMgbRealNameExists(MGBUserInfo* MGBUserInfo) 
{
    char* realName = MGBUserInfo->RealName;
    char temp;
    int i;

    for (i = 0; i < MGB_REALNAME_SIZE; i++) {
        temp = *realName++;

        if (temp != '\0')
            return true;
    }

    return false;
}

// 08060ce4
void clearMgbRealName(MGBUserInfo* MGBUserInfo) 
{
    char* realName = MGBUserInfo->RealName;
    char nullByte = '\0';
    int i;

    for (i = (MGB_REALNAME_SIZE - 1); i >= 0; i--)
        *realName++ = nullByte;
}

// 08060cf6
void copyMgbRealNameToBuffer(MGBUserInfo* MGBUserInfo, char* buffer) 
{
    char* realName = MGBUserInfo->RealName;
    int i;
    
    for (i = (MGB_REALNAME_SIZE - 1); i >= 0; i--)
        *buffer++ = *realName++;
}

// 08060d10
void setMgbRealName(MGBUserInfo* MGBUserInfo, char* buffer) 
{
    char* realName = MGBUserInfo->RealName;
    int i;
    
    for (i = (MGB_REALNAME_SIZE - 1); i >= 0; i--)
        *realName++ = *buffer++;
}

// 08060d28
char* getMgbAddressFromMGBStruct(MGBUserInfo* MGBUserInfo)
{
    return MGBUserInfo->Address;
}

// 08060d2c
bool checkMgbAddressExists(MGBUserInfo* MGBUserInfo) 
{
    char* address = MGBUserInfo->Address;
    char temp;
    int i;

    for (i = 0; i < MGB_ADDRESS_SIZE; i++) {
        temp = *address++;

        if (temp != '\0')
            return true;
    }

    return false;
}

// 08060d48
void clearMgbAddress(MGBUserInfo* MGBUserInfo) 
{
    char* address = MGBUserInfo->Address;
    char nullByte = '\0';
    int i;

    for (i = (MGB_ADDRESS_SIZE - 1); i >= 0; i--)
        *address++ = nullByte;
}

// 08060d5c
void copyMgbAddressToBuffer(MGBUserInfo* MGBUserInfo, char* buffer) 
{
    char* address = MGBUserInfo->Address;
    int i;
    
    for (i = (MGB_ADDRESS_SIZE - 1); i >= 0; i--)
        *buffer++ = *address++;
}

// 08060d74
void setMgbAddress(MGBUserInfo* MGBUserInfo, char* buffer) 
{
    char* address = MGBUserInfo->Address;
    int i;
    
    for (i = (MGB_ADDRESS_SIZE - 1); i >= 0; i--)
        *address++ = *buffer++;
}

// 08060d8c
char* getPhoneNumberFromMGBStruct(MGBUserInfo* MGBUserInfo)
{
    return MGBUserInfo->PhoneNumber;
}

// 08060d90
void clearMgbPhoneNumber(MGBUserInfo* MGBUserInfo) 
{
    char* phoneNumber = MGBUserInfo->PhoneNumber;
    char nullByte = '\0';
    int i;

    for (i = (MGB_PHONENUMBER_SIZE - 1); i >= 0; i--) {
        *phoneNumber++ = nullByte;
    } 
}

// 08060da4
void copyMgbPhoneNumberToBuffer(MGBUserInfo* MGBUserInfo, char* buffer) 
{
    char* phoneNumber = MGBUserInfo->PhoneNumber;
    int i;
    
    for (i = (MGB_PHONENUMBER_SIZE - 1); i >= 0; i--)
        *buffer++ = *phoneNumber++;
}

// 08060dbc
void setMgbPhoneNumber(MGBUserInfo* MGBUserInfo, char* buffer) 
{
    char* phoneNumber = MGBUserInfo->PhoneNumber;
    int i;
    
    for (i = (MGB_PHONENUMBER_SIZE - 1); i >= 0; i--)
        *phoneNumber++ = *buffer++;
}

// 08060dd4
char* getMgbZipcodeFromMGBStruct(MGBUserInfo* MGBUserInfo)
{
    return MGBUserInfo->Zipcode;
}

// 08060dd8
void clearMgbZipcode(MGBUserInfo* MGBUserInfo) 
{
    char* zipCode = MGBUserInfo->Zipcode;
    char nullByte = '\0';
    int i;

    for (i = (MGB_ZIPCODE_SIZE - 1); i >= 0; i--) {
        *zipCode++ = nullByte;
    } 
}

// 08060dec
void copyMgbZipcodeToBuffer(MGBUserInfo* MGBUserInfo, char* buffer) 
{
    char* zipCode = MGBUserInfo->Zipcode;
    int i;
    
    for (i = (MGB_ZIPCODE_SIZE - 1); i >= 0; i--)
        *buffer++ = *zipCode++;
}

// 08060e04
void setMgbZipcode(MGBUserInfo* MGBUserInfo, char* buffer) 
{
    char* zipCode = MGBUserInfo->Zipcode;
    int i;
    
    for (i = (MGB_ZIPCODE_SIZE - 1); i >= 0; i--)
        *zipCode++ = *buffer++;
}

// 08060e1c
char* getMgbPrefectureIdFromMGBStruct(MGBUserInfo* MGBUserInfo)
{
    return MGBUserInfo->PrefectureId;
}

// 08060e20
bool checkMgbPrefectureIdIsValid(MGBUserInfo* MGBUserInfo)
{
    char toCheck = MGBUserInfo->PrefectureId[0];

    return toCheck < MGB_PREFECTURE_LIST_SIZE;
}

/*
** Sets the Town Id to one index higher than the highest Town Id to flag it as being invalid.
*/
// 08060e30
void invalidateMgbPrefectureId(MGBUserInfo* MGBUserInfo)
{
    MGBUserInfo->PrefectureId[0] = MGB_PREFECTURE_LIST_SIZE;
}

// 08060e38
bool copyMgbPrefectureIdToBuffer(MGBUserInfo* MGBUserInfo, char* buffer)
{
    *buffer = MGBUserInfo->PrefectureId[0];
}

// 08060e40
bool setMgbPrefectureIdToBuffer(MGBUserInfo* MGBUserInfo, char* buffer)
{
    char* location = MGBUserInfo->PrefectureId;
    *location = *buffer;
}

// 08060e48
char* getMgbPasswordFromMGBStruct(MGBUserInfo* MGBUserInfo)
{
    return MGBUserInfo->Password;
}

// 08060e4c
char* clearMgbPassword(MGBUserInfo* MGBUserInfo)
{
    *MGBUserInfo->Password = '\0';
}

// 08060e54
void copyMgbPasswordToBuffer(MGBUserInfo* MGBUserInfo, char* buffer) 
{
    char* password = MGBUserInfo->Password;
    int i;
    
    for (i = (MGB_PASSWORD_SIZE - 1); i >= 0; i--)
        *buffer++ = *password++;
}

// 08060e6c
void setMgbPassword(MGBUserInfo* MGBUserInfo, char* buffer) 
{
    char* password = MGBUserInfo->Password;
    int i;
    
    for (i = (MGB_PASSWORD_SIZE - 1); i >= 0; i--)
        *password++ = *buffer++;
}

// 08060e84
char* getMgbZipcodeFromMGBStruct_2(MGBUserInfo* MGBUserInfo)
{
    return MGBUserInfo->Zipcode;
}

/*
** Not sure what '\x0f' is used for... Illegal character?
*/
// 08060e88
bool checkMgbZipcodeIsValid(MGBUserInfo* MGBUserInfo) 
{
    char* zipCode = MGBUserInfo->Zipcode;
    char temp;
    int i;

    for (i = 0; i < MGB_ZIPCODE_SIZE; i++) {
        temp = *zipCode++;

        if (temp == '\x0f')
            return false;
    }

    return true; 
}

// 08060ea4
void invalidateMgbZipcode(MGBUserInfo* MGBUserInfo) 
{
    char* zipCode = MGBUserInfo->Zipcode;
    char nullByte = '\x0f';
    int i;

    for (i = (MGB_ZIPCODE_SIZE - 1); i >= 0; i--) {
        *zipCode++ = nullByte;
    } 
}

// 08060eb8
void copyMgbZipcodeToBuffer_2(MGBUserInfo* MGBUserInfo, char* buffer) 
{
    char* zipCode = MGBUserInfo->Zipcode;
    int i;
    
    for (i = (MGB_ZIPCODE_SIZE - 1); i >= 0; i--)
        *buffer++ = *zipCode++;
}

// 08060ed0
void copyMgbZipcodeToBuffer_3(MGBUserInfo* MGBUserInfo, char* buffer) 
{
    char* zipCode = MGBUserInfo->Zipcode;
    int i;
    
    for (i = (MGB_ZIPCODE_SIZE - 1); i >= 0; i--)
        *buffer++ = *zipCode++;
}

// 08060ee8
char* getMgbPhoneNumberFromMGBStruct_2(MGBUserInfo* MGBUserInfo)
{
    return MGBUserInfo->PhoneNumber;
}

// 08060eec
bool checkMgbPhoneNumberIsValid(MGBUserInfo* MGBUserInfo)
{
    char toCheck = MGBUserInfo->PhoneNumber[0];

    if (toCheck == '\x0f')
        return false;
    
    return true;
}

/*
** Fills the phone number with 0x0F's. Flags the phone number as invalidates instead of purely clearing?
*/
// 08060efc
void invalidateMgbPhoneNumber(MGBUserInfo* MGBUserInfo) 
{
    char* phoneNumber = MGBUserInfo->PhoneNumber;
    char nullByte = '\x0f';
    int i;

    for (i = (MGB_PHONENUMBER_SIZE - 1); i >= 0; i--) {
        *phoneNumber++ = nullByte;
    } 
}

// 08060f10
void copyMgbPhoneNumberToBuffer_2(MGBUserInfo* MGBUserInfo, char* buffer) 
{
    char* phoneNumber = MGBUserInfo->PhoneNumber;
    int i;
    
    for (i = (MGB_PHONENUMBER_SIZE - 1); i >= 0; i--)
        *buffer++ = *phoneNumber++;
}

// 08060f28
void copyMgbPhoneNumberToBuffer_3(MGBUserInfo* MGBUserInfo, char* buffer) 
{
    char* phoneNumber = MGBUserInfo->PhoneNumber;
    int i;
    
    for (i = (MGB_PHONENUMBER_SIZE - 1); i >= 0; i--)
        *buffer++ = *phoneNumber++;
}

// 08060f40
void sub_08060f40() {
  return;
}

/*
** NOT SURE IF CORRECTLY DOCUMENTED
*/
// 08060f44
bool checkStringIsNotEmpty(char* buffer) 
{
    char temp;
    int i;

    for (i = 0; i < 16; i++) {
        temp = *buffer++;

        if (temp != '\0')
            return true;
    }

    return false; 
}

// 08060f60
void clearString(char* buffer) 
{
    char nullByte = '\0';
    int i;

    for (i = 0xf; i >= 0; i--) {
        *buffer++ = nullByte;
    } 
}

/*
** NOT SURE IF IT'S SUPPOSED TO BE FOR THIS TYPE OF STRUCT!!!
*/
// 08060f70
void clearMGBUserInfoObject(MGBUserInfo* MGBUserInfo) 
{
    char* temp = (char*)MGBUserInfo;
    unsigned int i = 0;
    unsigned int size = 0x363;
    char nullByte = '\0';
    
    do {
        *temp++ = nullByte;
    } while (++i <= size);
  
  *((char*)MGBUserInfo) = 0;
}
