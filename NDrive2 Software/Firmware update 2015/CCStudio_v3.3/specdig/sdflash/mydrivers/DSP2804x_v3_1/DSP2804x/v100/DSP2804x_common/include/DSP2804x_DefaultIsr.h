// TI File $Revision: /main/3 $
// Checkin $Date: July 17, 2006   16:20:41 $
//###########################################################################
//
// FILE:    DSP2804x_DefaultIsr.h
//
// TITLE:   DSP2804x Devices Default Interrupt Service Routines Definitions.
//
//###########################################################################
// $TI Release: DSP2804x Header Files V1.00 $
// $Release Date: August 15, 2006 $
//###########################################################################

#ifndef DSP2804x_DEFAULT_ISR_H
#define DSP2804x_DEFAULT_ISR_H

#ifdef __cplusplus
extern "C" {
#endif


//---------------------------------------------------------------------------
// Default Interrupt Service Routine Declarations:
// 
// The following function prototypes are for the 
// default ISR routines used with the default PIE vector table.
// This default vector table is found in the DSP2804x_PieVect.h 
// file.  
//

// Non-Peripheral Interrupts:
interrupt void INT13_ISR(void);     // XINT13 or CPU-Timer 1
interrupt void INT14_ISR(void);     // CPU-Timer2
interrupt void DATALOG_ISR(void);   // Datalogging interrupt
interrupt void RTOSINT_ISR(void);   // RTOS interrupt
interrupt void EMUINT_ISR(void);    // Emulation interrupt
interrupt void NMI_ISR(void);       // Non-maskable interrupt
interrupt void ILLEGAL_ISR(void);   // Illegal operation TRAP
interrupt void USER1_ISR(void);     // User Defined trap 1
interrupt void USER2_ISR(void);     // User Defined trap 2
interrupt void USER3_ISR(void);     // User Defined trap 3
interrupt void USER4_ISR(void);     // User Defined trap 4
interrupt void USER5_ISR(void);     // User Defined trap 5
interrupt void USER6_ISR(void);     // User Defined trap 6
interrupt void USER7_ISR(void);     // User Defined trap 7
interrupt void USER8_ISR(void);     // User Defined trap 8
interrupt void USER9_ISR(void);     // User Defined trap 9
interrupt void USER10_ISR(void);    // User Defined trap 10
interrupt void USER11_ISR(void);    // User Defined trap 11
interrupt void USER12_ISR(void);    // User Defined trap 12

// Group 1 PIE Interrupt Service Routines:
interrupt void  SEQ1INT_ISR(void);   // ADC Sequencer 1 ISR
interrupt void  SEQ2INT_ISR(void);   // ADC Sequencer 2 ISR
interrupt void  XINT1_ISR(void);     // External interrupt 1
interrupt void  XINT2_ISR(void);     // External interrupt 2
interrupt void  ADCINT_ISR(void);    // ADC
interrupt void  TINT0_ISR(void);     // Timer 0
interrupt void  WAKEINT_ISR(void);   // WD

// Group 2 PIE Interrupt Service Routines:
interrupt void EPWM1_TZINT_ISR(void);    // EPWM-1
interrupt void EPWM2_TZINT_ISR(void);    // EPWM-2
interrupt void EPWM3_TZINT_ISR(void);    // EPWM-3
interrupt void EPWM4_TZINT_ISR(void);    // EPWM-4
interrupt void EPWM5_TZINT_ISR(void);    // EPWM-5
interrupt void EPWM6_TZINT_ISR(void);    // EPWM-6
interrupt void EPWM7_TZINT_ISR(void);    // EPWM-7
interrupt void EPWM8_TZINT_ISR(void);    // EPWM-8
interrupt void EPWM9_TZINT_ISR(void);    // EPWM-9
interrupt void EPWM10_TZINT_ISR(void);   // EPWM-10
interrupt void EPWM11_TZINT_ISR(void);   // EPWM-11
interrupt void EPWM12_TZINT_ISR(void);   // EPWM-12
interrupt void EPWM13_TZINT_ISR(void);   // EPWM-13
interrupt void EPWM14_TZINT_ISR(void);   // EPWM-14
interrupt void EPWM15_TZINT_ISR(void);   // EPWM-15
interrupt void EPWM16_TZINT_ISR(void);   // EPWM-16

      
// Group 3 PIE Interrupt Service Routines:
interrupt void EPWM1_INT_ISR(void);    // EPWM-1
interrupt void EPWM2_INT_ISR(void);    // EPWM-2
interrupt void EPWM3_INT_ISR(void);    // EPWM-3
interrupt void EPWM4_INT_ISR(void);    // EPWM-4
interrupt void EPWM5_INT_ISR(void);    // EPWM-5
interrupt void EPWM6_INT_ISR(void);    // EPWM-6
interrupt void EPWM7_INT_ISR(void);    // EPWM-7
interrupt void EPWM8_INT_ISR(void);    // EPWM-8
interrupt void EPWM9_INT_ISR(void);    // EPWM-9
interrupt void EPWM10_INT_ISR(void);   // EPWM-10
interrupt void EPWM11_INT_ISR(void);   // EPWM-11
interrupt void EPWM12_INT_ISR(void);   // EPWM-12
interrupt void EPWM13_INT_ISR(void);   // EPWM-13
interrupt void EPWM14_INT_ISR(void);   // EPWM-14
interrupt void EPWM15_INT_ISR(void);   // EPWM-15
interrupt void EPWM16_INT_ISR(void);   // EPWM-16

// Group 4 PIE Interrupt Service Routines:
     
// Group 5 PIE Interrupt Service Routines:

// Group 6 PIE Interrupt Service Routines:
interrupt void SPIRXINTA_ISR(void);   // SPI-A
interrupt void SPITXINTA_ISR(void);   // SPI-A

// Group 7 PIE Interrupt Service Routines: 

// Group 8 PIE Interrupt Service Routines: 
interrupt void I2CINT1A_ISR(void);     // I2C-A
interrupt void I2CINT2A_ISR(void);     // I2C-A
   
// Group 9 PIE Interrupt Service Routines:
interrupt void SCIRXINTA_ISR(void); // SCI-A
interrupt void SCITXINTA_ISR(void); // SCI-A

// Group 10 PIE Interrupt Service Routines:
 
// Group 11 PIE Interrupt Service Routines: 

// Group 12 PIE Interrupt Service Routines: 

// Catch-all for Reserved Locations For testing purposes:
interrupt void PIE_RESERVED(void);       // Reserved for test
interrupt void rsvd_ISR(void);           // for test
interrupt void INT_NOTUSED_ISR(void);    // for unused interrupts

#ifdef __cplusplus
}
#endif /* extern "C" */

#endif    // end of DSP2804x_DEFAULT_ISR_H definition

//===========================================================================
// End of file.
//===========================================================================
