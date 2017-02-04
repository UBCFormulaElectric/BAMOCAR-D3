// TI File $Revision: /main/3 $
// Checkin $Date: August 3, 2006   16:32:46 $
//###########################################################################
//
// FILE:   DSP2804x_GlobalPrototypes.h
//
// TITLE:  Global prototypes for DSP2804x Examples
// 
//###########################################################################
// $TI Release: DSP2804x Header Files V1.00 $
// $Release Date: August 15, 2006 $
//###########################################################################

#ifndef DSP2804x_GLOBALPROTOTYPES_H
#define DSP2804x_GLOBALPROTOTYPES_H


#ifdef __cplusplus
extern "C" {
#endif

/*---- shared global function prototypes -----------------------------------*/
extern void InitAdc(void);
extern void InitPeripherals(void);

extern void InitEPwm(void);
extern void InitEPwmGpio(void);
extern void InitEPwm1Gpio(void);
extern void InitEPwm2Gpio(void);
extern void InitEPwm3Gpio(void);
extern void InitEPwm4Gpio(void);
extern void InitEPwm5Gpio(void);
extern void InitEPwm6Gpio(void);
extern void InitEPwmGpioConfig0(void);
extern void InitEPwmGpioConfig1(void);
extern void InitEPwmGpioConfig2(void);
extern void InitEPwmGpioConfig3(void);
extern void InitEPwmGpioMux(void);

extern void InitGpio(void);

extern void InitI2CGpio(void);

extern void InitPieCtrl(void);
extern void InitPieVectTable(void);

extern void InitSci(void);
extern void InitSciGpio(void);
extern void InitSciaGpio(void);

extern void InitSpi(void);
extern void InitSpiGpio(void);
extern void InitSpiaGpio(void);

extern void InitSysCtrl(void);
extern void InitTzGpio(void);
extern void InitXIntrupt(void);
extern void InitPll(Uint16 pllcr, Uint16 clkindiv);
extern void InitPeripheralClocks(void);
extern void EnableInterrupts(void);
extern void DSP28x_usDelay(Uint32 Count);




// Watchdog functions
// DSP28_SysCtrl.c
#define KickDog ServiceDog     // For compatiblity with previous versions
extern void ServiceDog(void);
extern void DisableDog(void);

// DSP28_DBGIER.asm
extern void SetDBGIER(Uint16 dbgier);




//                 CAUTION
// This function MUST be executed out of RAM. Executing it
// out of OTP/Flash will yield unpredictable results
extern void InitFlash(void);


void MemCopy(Uint16 *SourceAddr, Uint16* SourceEndAddr, Uint16* DestAddr);


//---------------------------------------------------------------------------
// External symbols created by the linker cmd file
// DSP28 examples will use these to relocate code from one LOAD location 
// in either Flash or XINTF to a different RUN location in internal
// RAM
extern Uint16 RamfuncsLoadStart;
extern Uint16 RamfuncsLoadEnd;
extern Uint16 RamfuncsRunStart;

#ifdef __cplusplus
}
#endif /* extern "C" */

#endif   // - end of DSP2804x_GLOBALPROTOTYPES_H

//===========================================================================
// End of file.
//===========================================================================
