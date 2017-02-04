// TI File $Revision: /main/1 $
// Checkin $Date: December 1, 2004   12:32:52 $
//###########################################################################
//
// FILE:	Example_Flash2804x_GlobalVariableDefs.c
//
// TITLE:	DSP2804x Global Variables and Data Section Pragmas
//          This file is taken from the C2804x C/C++ Header Files and Peripheral 
//          Examples (SPRC191) that can be downloaded from TI's website. 
//         
//          These pragma statements are required when using the 2804x header 
//          included in the SPRC191 release. 
//
//###########################################################################
// $TI Release: F28044 API Release V1.0 $
// $Release Date: August 15, 2006 $
//###########################################################################

//---------------------------------------------------------------------------
// Define Global Peripheral Variables used by the Flash example.
// for more peripheral headers download SPRC191:
//

#include "Example_Flash2804x_API.h"

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

//===========================================================================
// End of file.
//===========================================================================









