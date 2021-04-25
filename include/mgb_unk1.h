#include <stdbool.h>

typedef struct MGBUnkStruct1 {
    /*0x0  */int unk0_0;
    /*0x4  */int unk0;
    /*0x8  */short unk1;
    /*0xC  */char unk2[0xBE6];
    /*0xBF0*/unsigned short unk3;
} MGBUnkStruct1;

// 0x030023C4
typedef struct MGBGhostInfo {
    /*0x0  */char hasGhost;
    /*0x1  */char unused[3];
    /*0x4  */int unk0;
    /*0x8  */unsigned short unk1;
    /*0xA  */unsigned short unk1_1;
} MGBGhostInfo;

extern void sub_08071edc(char param_1, bool param_2, struct MGBUnkStruct1* param_3, int param_4);
