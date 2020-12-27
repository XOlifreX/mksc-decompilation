	.set PSR_USR_MODE                                   , 0x00000010
	.set PSR_FIQ_MODE                                   , 0x00000011
	.set PSR_IRQ_MODE                                   , 0x00000012
	.set PSR_SVC_MODE                                   , 0x00000013
	.set PSR_ABT_MODE                                   , 0x00000017
	.set PSR_UND_MODE                                   , 0x0000001b
	.set PSR_SYS_MODE                                   , 0x0000001f
	.set PSR_MODE_MASK                                  , 0x0000001f
	.set PSR_T_BIT                                      , 0x00000020
	.set PSR_F_BIT                                      , 0x00000040
	.set PSR_I_BIT                                      , 0x00000080

	.set EWRAM_START                                    , 0x02000000
	.set EWRAM_END                                      , EWRAM_START + 0x40000
	.set IWRAM_START                                    , 0x03000000
	.set IWRAM_END                                      , IWRAM_START + 0x8000

	.set INTR_VECTOR                                    , IWRAM_END - 0x4

	.set INTR_FLAG_VBLANK                               , 1 << 0
	.set INTR_FLAG_HBLANK                               , 1 << 1
	.set INTR_FLAG_VCOUNT                               , 1 << 2
	.set INTR_FLAG_TIMER0                               , 1 << 3
	.set INTR_FLAG_TIMER1                               , 1 << 4
	.set INTR_FLAG_TIMER2                               , 1 << 5
	.set INTR_FLAG_TIMER3                               , 1 << 6
	.set INTR_FLAG_SERIAL                               , 1 << 7
	.set INTR_FLAG_DMA0                                 , 1 << 8
	.set INTR_FLAG_DMA1                                 , 1 << 9
	.set INTR_FLAG_DMA2                                 , 1 << 10
	.set INTR_FLAG_DMA3                                 , 1 << 11
	.set INTR_FLAG_KEYPAD                               , 1 << 12
	.set INTR_FLAG_GAMEPA                               , 1 << 13


    .set LCDControl                                     , 0x4000000
    .set Undocumented_Greenswap                         , 0x4000002
    .set GeneralLCDStatus_STAT_LYC_                     , 0x4000004 
    .set VerticalCounter_LY_                            , 0x4000006
    .set BG0Control                                     , 0x4000008 
    .set BG1Control                                     , 0x400000A
    .set BG2Control                                     , 0x400000C
    .set BG3Control                                     , 0x400000E
    .set BG0X_Offset                                    , 0x4000010
    .set BG0Y_Offset                                    , 0x4000012
    .set BG1X_Offset                                    , 0x4000014
    .set BG1Y_Offset                                    , 0x4000016
    .set BG2X_Offset                                    , 0x4000018
    .set BG2Y_Offset                                    , 0x400001A
    .set BG3X_Offset                                    , 0x400001C
    .set BG3Y_Offset                                    , 0x400001E
    .set BG2Rotation_ScalingParameterA_dx_              , 0x4000020
    .set BG2Rotation_ScalingParameterB_dmx_             , 0x4000022
    .set BG2Rotation_ScalingParameterC_dy_              , 0x4000024
    .set BG2Rotation_ScalingParameterD_dmy_             , 0x4000026
    .set BG2ReferencePointX_Coordinate                  , 0x4000028
    .set BG2ReferencePointY_Coordinate                  , 0x400002C
    .set BC3Rotation_ScalingParameterA_dx_              , 0x4000030
    .set BC3Rotation_ScalingParameterB_dmx_             , 0x4000032
    .set BC3Rotation_ScalingParameterC_dy_              , 0x4000034
    .set BC3Rotation_ScalingParameterD_dmy_             , 0x4000036
    .set BG3ReferencePointX_Coordinate                  , 0x4000038
    .set BG3ReferencePointY_Coordinate                  , 0x400003C
    .set Window0HorizontalDimensions                    , 0x4000040
    .set Window1HorizontalDimensions                    , 0x4000042
    .set Window0VerticalDimensions                      , 0x4000044
    .set Window1VerticalDimensions                      , 0x4000046
    .set InsideofWindow0and1                            , 0x4000048
    .set InsideofOBJWindow_OutsideofWindows             , 0x400004A
    .set MosaicSize                                     , 0x400004C
    .set Notused                                        , 0x400004E
    .set ColorSpecialEffectsSElection                   , 0x4000050
    .set AlphaBlendingCoefficients                      , 0x4000052
    .set Brightness_Fade_In_Out_Coefficient             , 0x4000054
    .set Channel1Sweepregister_NR10_                    , 0x4000060
    .set Channel1Duty_Length_Envelope_NR11_NR12_        , 0x4000062
    .set Channel1Frequency_Length_Envelope_NR13_NR14_   , 0x4000064
    .set Channel2Duty_Length_Envelope_NR21_NR22_        , 0x4000068
    .set Channel2Frequency_Length_Envelope_NR23_NR24_   , 0x400006C
    .set Channel3Stop_WaveRAMselect_NR30_               , 0x4000070
    .set Channel3Length_Volume_NR31_NR32_               , 0x4000072
    .set Channel3Frequency_Controll_NR33_NR34_          , 0x4000074
    .set Channel4Length_Envelope_NR41_NR42_             , 0x4000078
    .set Channel4Frequency_Controll_NR43_NR44_          , 0x400007C
    .set ControlStereo_Volume_Enable_NR50_NR51_         , 0x4000080
    .set ControlMixing_DMAControl                       , 0x4000082
    .set ControlSoundon_off_NR52_                       , 0x4000084
    .set SoundPWMControl                                , 0x4000088
    .set Channel3WavePatternRAM_2banks___               , 0x4000090
    .set ChannelAFIFO_Data0_3                           , 0x40000A0
    .set ChannelBFIFO_Data0_3                           , 0x40000A4
    .set DMA0SourceAddress                              , 0x40000B0
    .set DMA0DestinationAddress                         , 0x40000B4
    .set DMA0WordCount                                  , 0x40000B8
    .set DMA0Control                                    , 0x40000BA      
    .set DMA1SourceAddress                              , 0x40000BC
    .set DMA1DestinationAddress                         , 0x40000C0
    .set DMA1WordCount                                  , 0x40000C4
    .set DMA1Control                                    , 0x40000C6
    .set DMA2SourceAddress                              , 0x40000C8
    .set DMA2DestinationAddress                         , 0x40000CC
    .set DMA2WordCount                                  , 0x40000D0
    .set DMA2Control                                    , 0x40000D2   
    .set DMA3SourceAddress                              , 0x40000D4
    .set DMA3DestinationAddress                         , 0x40000D8
    .set DMA3WordCount                                  , 0x40000DC
    .set DMA3Control                                    , 0x40000DE
    .set DMA_Unused                                     , 0x40000E0  
    .set Timer0Counter_Reload                           , 0x4000100
    .set Timer0Control                                  , 0x4000102
    .set Timer1Counter_Reload                           , 0x4000104
    .set Timer1Control                                  , 0x4000106
    .set Timer2Counter_Reload                           , 0x4000108
    .set Timer2Control                                  , 0x400010A
    .set Timer3Counter_Reload                           , 0x400010C
    .set Timer3Control                                  , 0x400010E
    .set SIOData0_Parent__Multi_PlayerMode_             , 0x4000120
    .set SIOData1_1stChild__Multi_PlayerMode_           , 0x4000122
    .set SIOData2_2ndChild__Multi_PlayerMode_           , 0x4000124
    .set SIOData3_3rdChild__Multi_PlayerMode_           , 0x4000126
    .set SIOControlRegister                             , 0x4000128
    .set SIOData_Normal_8bitandUARTMode                 , 0x400012A
    .set KeyStatus                                      , 0x4000130
    .set KeyInterruptControl                            , 0x4000132
    .set SIOModeSelect_GeneralPurposeData               , 0x4000134
    .set IRAncient_Infrared_Register_Prototypesonly     , 0x4000136
    .set SIOJOYBusControl                               , 0x4000140
    .set SIOJOYBusReceiveData                           , 0x4000150
    .set SIOJOYBusTransmitData                          , 0x4000154
    .set SIOJOYBusReceiveStatus                         , 0x4000158
    .set InterruptEnableRegister                        , 0x4000200
    .set InterruptRequestFlags_IRQAcknowledge           , 0x4000202
    .set GamePakWaitstateControl                        , 0x4000204
    .set InterruptMasterEnableRegister                  , 0x4000208
    .set Undocumented_PostBootFlag                      , 0x4000300
    .set Undocumented_PowerDownControl                  , 0x4000301
