#include "mgb_unk1.h"
#include "mgb_unk2.h"
#include "gba/defines.h"

BSS_DATA ALIGNED(4) struct MGBGhostInfo gUserGhostSaveData = {0};

// 08057ca4
void sub_08057ca4(struct MGBUnkStruct1* param_1, char param_2)
{
    unsigned short temp3 = param_1->unk3 & 0x8000;
    
    if (gUserGhostSaveData.hasGhost == true)
        sub_08071edc(param_2, false, param_1, 0xBF4);
    
    param_1->unk1 = 7;

    if (temp3 != 0)
        param_1->unk3 |= 0x8000;
    else
        param_1->unk3 &= 0x7FFF;
}

// 08057d00
void sub_08057d00(struct MGBUnkStruct1* param_1, char param_2)
{
  if (gUserGhostSaveData.hasGhost == true) 
    sub_08071edc(param_2, false, param_1, 0x1000);
}

// 08057d24
void sub_08057d24(struct MGBUnkStruct1* param_1, char param_2)
{
  if (gUserGhostSaveData.hasGhost == true) 
    sub_08071edc(param_2, false, param_1, 0xB408);
}

// 08057d4c
bool sub_08057d4c(struct MGBUnkStruct1* param_1, char param_2)
{
  if (gUserGhostSaveData.hasGhost == true) {
    sub_0807d7d8(param_2, param_1, gMgbUnk2.unk0);
    
    if (!sub_08071f9c(param_2, param_1))
      return true;
  }
  
  return false;
}

// 08057d88
bool sub_08057d88(struct MGBUnkStruct1* param_1, char param_2)
{
  if (gUserGhostSaveData.hasGhost == true) {
    sub_0807d7d8(param_2, param_1, gMgbUnk2.unk0);
    
    if (!sub_08071f9c(param_2, param_1))
      return true;
  }
  
  return false;
}
