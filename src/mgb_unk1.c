#include "mgb_unk1.h"
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
