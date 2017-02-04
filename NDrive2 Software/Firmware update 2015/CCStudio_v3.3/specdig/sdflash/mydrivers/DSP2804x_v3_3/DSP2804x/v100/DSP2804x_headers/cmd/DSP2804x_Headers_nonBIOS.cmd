/*
// TI File $Revision: /main/4 $
// Checkin $Date: August 3, 2006   10:50:25 $
//###########################################################################
//
// FILE:    DSP2804x_Headers_nonBIOS.cmd
//
// TITLE:   DSP2804x Peripheral registers linker command file 
//
// DESCRIPTION: 
// 
//          This file is for use in Non-BIOS applications.
//
//          Linker command file to place the peripheral structures 
//          used within the DSP2804x headerfiles into the correct memory
//          mapped locations.
//
//          This version of the file includes the PieVectorTable structure.
//          For BIOS applications, please use the DSP2804x_Headers_BIOS.cmd file
//          which does not include the PieVectorTable structure.
//
//###########################################################################
// $TI Release: DSP2804x Header Files V1.00 $
// $Release Date: August 15, 2006 $
//###########################################################################
*/

MEMORY
{
 PAGE 0:    /* Program Memory */

 PAGE 1:    /* Data Memory */
 
   DEV_EMU     : origin = 0x000880, length = 0x000180     /* device emulation registers */
   FLASH_REGS  : origin = 0x000A80, length = 0x000060     /* FLASH registers */
   CSM         : origin = 0x000AE0, length = 0x000010     /* code security module registers */
   
   ADC_MIRROR  : origin = 0x000B00, length = 0x000010     /* ADC Results register mirror */
   
   CPU_TIMER0  : origin = 0x000C00, length = 0x000008     /* CPU Timer0 registers */
   CPU_TIMER1  : origin = 0x000C08, length = 0x000008     /* CPU Timer0 registers (CPU Timer1 & Timer2 reserved TI use)*/
   CPU_TIMER2  : origin = 0x000C10, length = 0x000008     /* CPU Timer0 registers (CPU Timer1 & Timer2 reserved TI use)*/

   PIE_CTRL    : origin = 0x000CE0, length = 0x000020     /* PIE control registers */
   PIE_VECT    : origin = 0x000D00, length = 0x000100     /* PIE Vector Table */

   EPWM1       : origin = 0x006800, length = 0x000022     /* Enhanced PWM 1 registers */
   EPWM2       : origin = 0x006840, length = 0x000022     /* Enhanced PWM 2 registers */
   EPWM3       : origin = 0x006880, length = 0x000022     /* Enhanced PWM 3 registers */
   EPWM4       : origin = 0x0068C0, length = 0x000022     /* Enhanced PWM 4 registers */
   EPWM5       : origin = 0x006900, length = 0x000022     /* Enhanced PWM 5 registers */
   EPWM6       : origin = 0x006940, length = 0x000022     /* Enhanced PWM 6 registers */
   EPWM7       : origin = 0x006980, length = 0x000022     /* Enhanced PWM 7 registers */
   EPWM8       : origin = 0x0069C0, length = 0x000022     /* Enhanced PWM 8 registers */
   EPWM9       : origin = 0x006600, length = 0x000022     /* Enhanced PWM 9 registers */
   EPWM10      : origin = 0x006640, length = 0x000022     /* Enhanced PWM 10 registers */
   EPWM11      : origin = 0x006680, length = 0x000022     /* Enhanced PWM 11 registers */
   EPWM12      : origin = 0x0066C0, length = 0x000022     /* Enhanced PWM 12 registers */
   EPWM13      : origin = 0x006700, length = 0x000022     /* Enhanced PWM 13 registers */
   EPWM14      : origin = 0x006740, length = 0x000022     /* Enhanced PWM 14 registers */
   EPWM15      : origin = 0x006780, length = 0x000022     /* Enhanced PWM 15 registers */
   EPWM16      : origin = 0x0067C0, length = 0x000022     /* Enhanced PWM 16 registers */

   GPIOCTRL    : origin = 0x006F80, length = 0x000040     /* GPIO control registers */
   GPIODAT     : origin = 0x006FC0, length = 0x000020     /* GPIO data registers */
   GPIOINT     : origin = 0x006FE0, length = 0x000020     /* GPIO interrupt/LPM registers */
                 
   SYSTEM      : origin = 0x007010, length = 0x000020     /* System control registers */
   SPIA        : origin = 0x007040, length = 0x000010     /* SPI-A registers */
   SCIA        : origin = 0x007050, length = 0x000010     /* SCI-A registers */
   XINTRUPT    : origin = 0x007070, length = 0x000010     /* external interrupt registers */

   ADC         : origin = 0x007100, length = 0x000020     /* ADC registers */
  
   I2CA        : origin = 0x007900, length = 0x000040     /* I2C-A registers */
   
   CSM_PWL     : origin = 0x3F7FF8, length = 0x000008     /* Part of FLASHA.  CSM password locations. */
}

 
SECTIONS
{
   PieVectTableFile : > PIE_VECT,   PAGE = 1

/*** Peripheral Frame 0 Register Structures ***/
   DevEmuRegsFile    : > DEV_EMU,     PAGE = 1
   FlashRegsFile     : > FLASH_REGS,  PAGE = 1
   CsmRegsFile       : > CSM,         PAGE = 1
   AdcMirrorFile     : > ADC_MIRROR,  PAGE = 1   
   CpuTimer0RegsFile : > CPU_TIMER0,  PAGE = 1
   CpuTimer1RegsFile : > CPU_TIMER1,  PAGE = 1
   CpuTimer2RegsFile : > CPU_TIMER2,  PAGE = 1  
   PieCtrlRegsFile   : > PIE_CTRL,    PAGE = 1      

/*** Peripheral Frame 1 Register Structures ***/
   SysCtrlRegsFile   : > SYSTEM,      PAGE = 1
   SpiaRegsFile      : > SPIA,        PAGE = 1
   SciaRegsFile      : > SCIA,        PAGE = 1
   XIntruptRegsFile  : > XINTRUPT,    PAGE = 1
   AdcRegsFile       : > ADC,         PAGE = 1
   I2caRegsFile      : > I2CA,        PAGE = 1

/*** Peripheral Frame 2 Register Structures ***/
 
   EPwm1RegsFile     : > EPWM1        PAGE = 1   
   EPwm2RegsFile     : > EPWM2        PAGE = 1   
   EPwm3RegsFile     : > EPWM3        PAGE = 1   
   EPwm4RegsFile     : > EPWM4        PAGE = 1   
   EPwm5RegsFile     : > EPWM5        PAGE = 1   
   EPwm6RegsFile     : > EPWM6        PAGE = 1
   EPwm7RegsFile     : > EPWM7        PAGE = 1   
   EPwm8RegsFile     : > EPWM8        PAGE = 1   
   EPwm9RegsFile     : > EPWM9        PAGE = 1   
   EPwm10RegsFile    : > EPWM10       PAGE = 1   
   EPwm11RegsFile    : > EPWM11       PAGE = 1   
   EPwm12RegsFile    : > EPWM12       PAGE = 1
   EPwm13RegsFile    : > EPWM13       PAGE = 1   
   EPwm14RegsFile    : > EPWM14       PAGE = 1   
   EPwm15RegsFile    : > EPWM15       PAGE = 1
   EPwm16RegsFile    : > EPWM16       PAGE = 1   

   GpioCtrlRegsFile  : > GPIOCTRL     PAGE = 1
   GpioDataRegsFile  : > GPIODAT      PAGE = 1
   GpioIntRegsFile   : > GPIOINT      PAGE = 1
 
               
/*** Code Security Module Register Structures ***/
   CsmPwlFile        : > CSM_PWL,     PAGE = 1
}


/*
//===========================================================================
// End of file.
//===========================================================================
*/