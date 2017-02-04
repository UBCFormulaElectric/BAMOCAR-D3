// TI File $Revision: /main/3 $
// Checkin $Date: July 17, 2006   16:25:09 $
//###########################################################################
//
// FILE:	DSP2804x_GlobalVariableDefs.c
//
// TITLE:	DSP2804x Global Variables and Data Section Pragmas.
//
//###########################################################################
// $TI Release: DSP2804x Header Files V1.00 $
// $Release Date: August 15, 2006 $
//###########################################################################

#include "DSP2804x_Device.h"     // DSP2804x Headerfile Include File

//---------------------------------------------------------------------------
// Define Global Peripheral Variables:
//
//----------------------------------------
#ifdef __cplusplus 
#pragma DATA_SECTION("AdcRegsFile") 
#else 
#pragma DATA_SECTION(AdcRegs,"AdcRegsFile");
#endif 
volatile struct ADC_REGS AdcRegs;

//----------------------------------------
#ifdef __cplusplus 
#pragma DATA_SECTION("AdcMirrorFile") 
#else 
#pragma DATA_SECTION(AdcMirror,"AdcMirrorFile");
#endif 
volatile struct ADC_RESULT_MIRROR_REGS AdcMirror;

//----------------------------------------
#ifdef __cplusplus 
#pragma DATA_SECTION("CpuTimer0RegsFile") 
#else 
#pragma DATA_SECTION(CpuTimer0Regs,"CpuTimer0RegsFile");
#endif
volatile struct CPUTIMER_REGS CpuTimer0Regs;

//----------------------------------------
#ifdef __cplusplus 
#pragma DATA_SECTION("CpuTimer1RegsFile") 
#else 
#pragma DATA_SECTION(CpuTimer1Regs,"CpuTimer1RegsFile");
#endif
volatile struct CPUTIMER_REGS CpuTimer1Regs;


//----------------------------------------
#ifdef __cplusplus 
#pragma DATA_SECTION("CpuTimer2RegsFile") 
#else 
#pragma DATA_SECTION(CpuTimer2Regs,"CpuTimer2RegsFile");
#endif
volatile struct CPUTIMER_REGS CpuTimer2Regs;


//----------------------------------------
#ifdef __cplusplus 
#pragma DATA_SECTION("CsmPwlFile") 
#else
#pragma DATA_SECTION(CsmPwl,"CsmPwlFile");
#endif
volatile struct CSM_PWL CsmPwl;

//----------------------------------------
#ifdef __cplusplus 
#pragma DATA_SECTION("CsmRegsFile") 
#else
#pragma DATA_SECTION(CsmRegs,"CsmRegsFile");
#endif
volatile struct CSM_REGS CsmRegs;



//----------------------------------------
#ifdef __cplusplus 
#pragma DATA_SECTION("DevEmuRegsFile") 
#else
#pragma DATA_SECTION(DevEmuRegs,"DevEmuRegsFile");
#endif
volatile struct DEV_EMU_REGS DevEmuRegs;

//----------------------------------------
#ifdef __cplusplus 
#pragma DATA_SECTION("EPwm1RegsFile") 
#else 
#pragma DATA_SECTION(EPwm1Regs,"EPwm1RegsFile");
#endif
volatile struct EPWM_REGS EPwm1Regs;


//----------------------------------------
#ifdef __cplusplus 
#pragma DATA_SECTION("EPwm2RegsFile") 
#else 
#pragma DATA_SECTION(EPwm2Regs,"EPwm2RegsFile");
#endif
volatile struct EPWM_REGS EPwm2Regs;

//----------------------------------------
#ifdef __cplusplus 
#pragma DATA_SECTION("EPwm3RegsFile") 
#else 
#pragma DATA_SECTION(EPwm3Regs,"EPwm3RegsFile");
#endif
volatile struct EPWM_REGS EPwm3Regs;

//----------------------------------------
#ifdef __cplusplus 
#pragma DATA_SECTION("EPwm4RegsFile") 
#else 
#pragma DATA_SECTION(EPwm4Regs,"EPwm4RegsFile");
#endif
volatile struct EPWM_REGS EPwm4Regs;

//----------------------------------------
#ifdef __cplusplus 
#pragma DATA_SECTION("EPwm5RegsFile") 
#else 
#pragma DATA_SECTION(EPwm5Regs,"EPwm5RegsFile");
#endif
volatile struct EPWM_REGS EPwm5Regs;

//----------------------------------------
#ifdef __cplusplus 
#pragma DATA_SECTION("EPwm6RegsFile") 
#else 
#pragma DATA_SECTION(EPwm6Regs,"EPwm6RegsFile");
#endif
volatile struct EPWM_REGS EPwm6Regs;

//----------------------------------------
#ifdef __cplusplus 
#pragma DATA_SECTION("EPwm7RegsFile") 
#else 
#pragma DATA_SECTION(EPwm7Regs,"EPwm7RegsFile");
#endif
volatile struct EPWM_REGS EPwm7Regs;


//----------------------------------------
#ifdef __cplusplus 
#pragma DATA_SECTION("EPwm8RegsFile") 
#else 
#pragma DATA_SECTION(EPwm8Regs,"EPwm8RegsFile");
#endif
volatile struct EPWM_REGS EPwm8Regs;

//----------------------------------------
#ifdef __cplusplus 
#pragma DATA_SECTION("EPwm9RegsFile") 
#else 
#pragma DATA_SECTION(EPwm9Regs,"EPwm9RegsFile");
#endif
volatile struct EPWM_REGS EPwm9Regs;

//----------------------------------------
#ifdef __cplusplus 
#pragma DATA_SECTION("EPwm10RegsFile") 
#else 
#pragma DATA_SECTION(EPwm10Regs,"EPwm10RegsFile");
#endif
volatile struct EPWM_REGS EPwm10Regs;

//----------------------------------------
#ifdef __cplusplus 
#pragma DATA_SECTION("EPwm11RegsFile") 
#else 
#pragma DATA_SECTION(EPwm11Regs,"EPwm11RegsFile");
#endif
volatile struct EPWM_REGS EPwm11Regs;

//----------------------------------------
#ifdef __cplusplus 
#pragma DATA_SECTION("EPwm12RegsFile") 
#else 
#pragma DATA_SECTION(EPwm12Regs,"EPwm12RegsFile");
#endif
volatile struct EPWM_REGS EPwm12Regs;
//----------------------------------------
#ifdef __cplusplus 
#pragma DATA_SECTION("EPwm13RegsFile") 
#else 
#pragma DATA_SECTION(EPwm13Regs,"EPwm13RegsFile");
#endif
volatile struct EPWM_REGS EPwm13Regs;

//----------------------------------------
#ifdef __cplusplus 
#pragma DATA_SECTION("EPwm14RegsFile") 
#else 
#pragma DATA_SECTION(EPwm14Regs,"EPwm14RegsFile");
#endif
volatile struct EPWM_REGS EPwm14Regs;

//----------------------------------------
#ifdef __cplusplus 
#pragma DATA_SECTION("EPwm15RegsFile") 
#else 
#pragma DATA_SECTION(EPwm15Regs,"EPwm15RegsFile");
#endif
volatile struct EPWM_REGS EPwm15Regs;

//----------------------------------------
#ifdef __cplusplus 
#pragma DATA_SECTION("EPwm16RegsFile") 
#else 
#pragma DATA_SECTION(EPwm16Regs,"EPwm16RegsFile");
#endif
volatile struct EPWM_REGS EPwm16Regs;

//----------------------------------------
#ifdef __cplusplus 
#pragma DATA_SECTION("GpioCtrlRegsFile") 
#else 
#pragma DATA_SECTION(GpioCtrlRegs,"GpioCtrlRegsFile");
#endif
volatile struct GPIO_CTRL_REGS GpioCtrlRegs;

//----------------------------------------
#ifdef __cplusplus 
#pragma DATA_SECTION("GpioDataRegsFile") 
#else 
#pragma DATA_SECTION(GpioDataRegs,"GpioDataRegsFile");
#endif
volatile struct GPIO_DATA_REGS GpioDataRegs;

//----------------------------------------
#ifdef __cplusplus 
#pragma DATA_SECTION("GpioIntRegsFile") 
#else 
#pragma DATA_SECTION(GpioIntRegs,"GpioIntRegsFile");
#endif
volatile struct GPIO_INT_REGS GpioIntRegs;

//----------------------------------------
#ifdef __cplusplus 
#pragma DATA_SECTION("I2caRegsFile") 
#else 
#pragma DATA_SECTION(I2caRegs,"I2caRegsFile");
#endif
volatile struct I2C_REGS I2caRegs;

//----------------------------------------
#ifdef __cplusplus 
#pragma DATA_SECTION("PieCtrlRegsFile") 
#else
#pragma DATA_SECTION(PieCtrlRegs,"PieCtrlRegsFile");
#endif
volatile struct PIE_CTRL_REGS PieCtrlRegs;

//----------------------------------------
#ifdef __cplusplus 
#pragma DATA_SECTION("PieVectTableFile") 
#else
#pragma DATA_SECTION(PieVectTable,"PieVectTableFile");
#endif
struct PIE_VECT_TABLE PieVectTable;

//----------------------------------------
#ifdef __cplusplus 
#pragma DATA_SECTION("SciaRegsFile") 
#else
#pragma DATA_SECTION(SciaRegs,"SciaRegsFile");
#endif
volatile struct SCI_REGS SciaRegs;

//----------------------------------------
#ifdef __cplusplus 
#pragma DATA_SECTION("SpiaRegsFile") 
#else
#pragma DATA_SECTION(SpiaRegs,"SpiaRegsFile");
#endif
volatile struct SPI_REGS SpiaRegs;

//----------------------------------------
#ifdef __cplusplus 
#pragma DATA_SECTION("SysCtrlRegsFile") 
#else
#pragma DATA_SECTION(SysCtrlRegs,"SysCtrlRegsFile");
#endif
volatile struct SYS_CTRL_REGS SysCtrlRegs;

//----------------------------------------
#ifdef __cplusplus 
#pragma DATA_SECTION("FlashRegsFile") 
#else
#pragma DATA_SECTION(FlashRegs,"FlashRegsFile");
#endif
volatile struct FLASH_REGS FlashRegs;

//----------------------------------------
#ifdef __cplusplus 
#pragma DATA_SECTION("XIntruptRegsFile") 
#else
#pragma DATA_SECTION(XIntruptRegs,"XIntruptRegsFile");
#endif
volatile struct XINTRUPT_REGS XIntruptRegs;



//===========================================================================
// End of file.
//===========================================================================









