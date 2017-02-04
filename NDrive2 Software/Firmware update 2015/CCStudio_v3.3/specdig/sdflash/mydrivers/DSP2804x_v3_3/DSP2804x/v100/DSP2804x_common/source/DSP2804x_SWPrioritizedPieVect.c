// TI File $Revision: /main/1 $
// Checkin $Date: August 14, 2006   15:21:35 $
//###########################################################################
//
// FILE:   DSP2804x_SWPiroritizedPieVect.c
//
// TITLE:  DSP2804x Devices SW Prioritized PIE Vector Table Initialization.
//
//###########################################################################
// 
// Original Source by A.T.
//
// $TI Release: DSP2804x Header Files V1.00 $
// $Release Date: August 15, 2006 $
//###########################################################################

#include "DSP2804x_Device.h"     // DSP2804x Headerfile Include File
#include "DSP2804x_Examples.h"   // DSP2804x Examples Include File
#include "DSP2804x_SWPrioritizedIsrLevels.h" 

const struct PIE_VECT_TABLE PieVectTableInit = {

      PIE_RESERVED,       // Reserved space
      PIE_RESERVED,       // reserved
      PIE_RESERVED,       // reserved
      PIE_RESERVED,       // reserved
      PIE_RESERVED,       // reserved
      PIE_RESERVED,       // reserved
      PIE_RESERVED,       // reserved
      PIE_RESERVED,       // reserved
      PIE_RESERVED,       // reserved
      PIE_RESERVED,       // reserved
      PIE_RESERVED,       // reserved
      PIE_RESERVED,       // reserved
      PIE_RESERVED,       // reserved

// Non-Peripheral Interrupts:
      #if (INT13PL != 0)
      INT13_ISR,    // XINT13
      #else
      INT_NOTUSED_ISR,
      #endif
      
      #if (INT14PL != 0)
      INT14_ISR,     // CPU-Timer2
      #else
      INT_NOTUSED_ISR,
      #endif
      
      #if (INT15PL != 0)
      DATALOG_ISR,   // Datalogging interrupt
      #else
      INT_NOTUSED_ISR,
      #endif

      #if (INT16PL != 0)
      RTOSINT_ISR,   // RTOS interrupt
      #else
      INT_NOTUSED_ISR,
      #endif

      rsvd_ISR,      // reserved interrupt
      NMI_ISR,       // Non-maskable interrupt
      ILLEGAL_ISR,   // Illegal operation TRAP
      USER1_ISR,     // User Defined trap 1
      USER2_ISR,     // User Defined trap 2
      USER3_ISR,     // User Defined trap 3
      USER4_ISR,     // User Defined trap 4
      USER5_ISR,     // User Defined trap 5
      USER6_ISR,     // User Defined trap 6
      USER7_ISR,     // User Defined trap 7
      USER8_ISR,     // User Defined trap 8
      USER9_ISR,     // User Defined trap 9
      USER10_ISR,    // User Defined trap 10
      USER11_ISR,    // User Defined trap 11
      USER12_ISR,    // User Defined trap 12

// Group 1 PIE Vectors:
      #if (G11PL != 0)
      SEQ1INT_ISR,   // ADC
      #else
      INT_NOTUSED_ISR,
      #endif

      #if (G12PL != 0)
      SEQ2INT_ISR,   // ADC 
      #else
      INT_NOTUSED_ISR,
      #endif

      rsvd_ISR,

      #if (G14PL != 0)
      XINT1_ISR,     // External
      #else
      INT_NOTUSED_ISR,
      #endif

      #if (G15PL != 0)
      XINT2_ISR,     // External
      #else
      INT_NOTUSED_ISR,
      #endif

      #if (G16PL != 0)
      ADCINT_ISR,    // ADC
      #else
      INT_NOTUSED_ISR,
      #endif

      #if (G17PL != 0)
      TINT0_ISR,     // Timer 0
      #else
      INT_NOTUSED_ISR,
      #endif

      #if (G18PL != 0)
      WAKEINT_ISR,   // WD & Low Power
      #else
      INT_NOTUSED_ISR,
      #endif

// Group 2 PIE Vectors:
      #if (G21PL != 0)
      EPWM1_TZINT_ISR,   // ePWM1 Trip Zone
      #else
      INT_NOTUSED_ISR,
      #endif

      #if (G22PL != 0)
      EPWM2_TZINT_ISR,   // ePWM2 Trip Zone
      #else
      INT_NOTUSED_ISR,
      #endif

      #if (G23PL != 0)
      EPWM3_TZINT_ISR,   // ePWM3 Trip Zone
      #else
      INT_NOTUSED_ISR,
      #endif

      #if (G24PL != 0)
      EPWM4_TZINT_ISR,   // ePWM4 Trip Zone
      #else
      INT_NOTUSED_ISR,
      #endif

      #if (G25PL != 0)
      EPWM5_TZINT_ISR,   // ePWM5 Trip Zone
      #else
      INT_NOTUSED_ISR,
      #endif

      #if (G26PL != 0)
      EPWM6_TZINT_ISR,   // ePWM6 Trip Zone
      #else
      INT_NOTUSED_ISR,
      #endif

      #if (G27PL != 0)
      EPWM7_TZINT_ISR,   // ePWM7 Trip Zone
      #else
      INT_NOTUSED_ISR,
      #endif

      #if (G28PL != 0)
      EPWM8_TZINT_ISR,   // ePWM8 Trip Zone
      #else
      INT_NOTUSED_ISR,
      #endif

           
// Group 3 PIE Vectors:
      #if (G31PL != 0)
      EPWM1_INT_ISR,     // ePWM1 Interrupt
      #else
      INT_NOTUSED_ISR,
      #endif

      #if (G32PL != 0)
      EPWM2_INT_ISR,     // ePWM2 Interrupt
      #else
      INT_NOTUSED_ISR,
      #endif

      #if (G33PL != 0)
      EPWM3_INT_ISR,     // ePWM3 Interrupt
      #else
      INT_NOTUSED_ISR,
      #endif

      #if (G34PL != 0)
      EPWM4_INT_ISR,     // ePWM4 Interrupt
      #else
      INT_NOTUSED_ISR,
      #endif

      #if (G35PL != 0)
      EPWM5_INT_ISR,     // ePWM5 Interrupt
      #else
      INT_NOTUSED_ISR,
      #endif

      #if (G36PL != 0)
      EPWM6_INT_ISR,     // ePWM6 Interrupt
      #else
      INT_NOTUSED_ISR,
      #endif

      #if (G37PL != 0)
      EPWM7_INT_ISR,     // ePWM7 Interrupt
      #else
      INT_NOTUSED_ISR,
      #endif

      #if (G38PL != 0)
      EPWM8_INT_ISR,     // ePWM8 Interrupt
      #else
      INT_NOTUSED_ISR,
      #endif
      
// Group 4 PIE Vectors:
      rsvd_ISR,   // 4.1
      rsvd_ISR,   // 4.2
      rsvd_ISR,   // 4.3
      rsvd_ISR,   // 4.4
      rsvd_ISR,   // 4.5       
      rsvd_ISR,   // 4.6
      rsvd_ISR,   // 4.7
      rsvd_ISR,   // 4.8
     
// Group 5 PIE Vectors:
      rsvd_ISR,   // 5.1
      rsvd_ISR,   // 5.2
      rsvd_ISR,   // 5.3
      rsvd_ISR,   // 5.4
      rsvd_ISR,   // 5.5       
      rsvd_ISR,   // 5.6
      rsvd_ISR,   // 5.7
      rsvd_ISR,   // 5.8           

// Group 6 PIE Vectors:
      #if (G61PL != 0)
      SPIRXINTA_ISR,  // SPI-A
      #else
      INT_NOTUSED_ISR,
      #endif

      #if (G62PL != 0)
      SPITXINTA_ISR,  // SPI-A
      #else
      INT_NOTUSED_ISR,
      #endif

      rsvd_ISR,   // 6.3
      rsvd_ISR,   // 6.4
      rsvd_ISR,   // 6.5       
      rsvd_ISR,   // 6.6
      rsvd_ISR,   // 6.7
      rsvd_ISR,   // 6.8
      
// Group 7 PIE Vectors:
      rsvd_ISR,   // 7.1
      rsvd_ISR,   // 7.2
      rsvd_ISR,   // 7.3
      rsvd_ISR,   // 7.4
      rsvd_ISR,   // 7.5       
      rsvd_ISR,   // 7.6
      rsvd_ISR,   // 7.7
      rsvd_ISR,   // 7.8     

// Group 8 PIE Vectors:
      #if (G81PL != 0)
      I2CINT1A_ISR,    // I2C-A
      #else
      INT_NOTUSED_ISR,
      #endif

      #if (G82PL != 0)
      I2CINT2A_ISR,    // I2C-A
      #else
      INT_NOTUSED_ISR,
      #endif

      rsvd_ISR,   // 8.3
      rsvd_ISR,   // 8.4
      rsvd_ISR,   // 8.5       
      rsvd_ISR,   // 8.6
      rsvd_ISR,   // 8.7
      rsvd_ISR,   // 8.8    
      
// Group 9 PIE Vectors:
      #if (G91PL != 0)
      SCIRXINTA_ISR,    // SCI-A
      #else
      INT_NOTUSED_ISR,
      #endif

      #if (G92PL != 0)
      SCITXINTA_ISR,    // SCI-A
      #else
      INT_NOTUSED_ISR,
      #endif

      rsvd_ISR,   // 9.3
      rsvd_ISR,   // 9.4
      rsvd_ISR,   // 9.5       
      rsvd_ISR,   // 9.6
      rsvd_ISR,   // 9.7
      rsvd_ISR,   // 9.8
      
// Group 10 PIE Vectors
      #if (G101PL != 0)
      EPWM9_TZINT_ISR,   // ePWM9 Trip Zone
      #else
      INT_NOTUSED_ISR,
      #endif

      #if (G102PL != 0)
      EPWM10_TZINT_ISR,   // ePWM10 Trip Zone
      #else
      INT_NOTUSED_ISR,
      #endif

      #if (G103PL != 0)
      EPWM11_TZINT_ISR,   // ePWM11 Trip Zone
      #else
      INT_NOTUSED_ISR,
      #endif

      #if (G104PL != 0)
      EPWM12_TZINT_ISR,   // ePWM12 Trip Zone
      #else
      INT_NOTUSED_ISR,
      #endif

      #if (G105PL != 0)
      EPWM13_TZINT_ISR,   // ePWM13 Trip Zone
      #else
      INT_NOTUSED_ISR,
      #endif

      #if (G106PL != 0)
      EPWM14_TZINT_ISR,   // ePWM14 Trip Zone
      #else
      INT_NOTUSED_ISR,
      #endif

      #if (G107PL != 0)
      EPWM15_TZINT_ISR,   // ePWM15 Trip Zone
      #else
      INT_NOTUSED_ISR,
      #endif

      #if (G108PL != 0)
      EPWM16_TZINT_ISR,   // ePWM16 Trip Zone
      #else
      INT_NOTUSED_ISR,
      #endif
    
            
// Group 11 PIE Vectors
      #if (G111PL != 0)
      EPWM9_INT_ISR,     // ePWM9 Interrupt
      #else
      INT_NOTUSED_ISR,
      #endif

      #if (G112PL != 0)
      EPWM10_INT_ISR,     // ePWM10 Interrupt
      #else
      INT_NOTUSED_ISR,
      #endif

      #if (G113PL != 0)
      EPWM11_INT_ISR,     // ePWM11 Interrupt
      #else
      INT_NOTUSED_ISR,
      #endif

      #if (G114PL != 0)
      EPWM12_INT_ISR,     // ePWM12 Interrupt
      #else
      INT_NOTUSED_ISR,
      #endif

      #if (G115PL != 0)
      EPWM13_INT_ISR,     // ePWM13 Interrupt
      #else
      INT_NOTUSED_ISR,
      #endif

      #if (G116PL != 0)
      EPWM14_INT_ISR,     // ePWM14 Interrupt
      #else
      INT_NOTUSED_ISR,
      #endif

      #if (G117PL != 0)
      EPWM15_INT_ISR,     // ePWM15 Interrupt
      #else
      INT_NOTUSED_ISR,
      #endif

      #if (G118PL != 0)
      EPWM16_INT_ISR,     // ePWM16 Interrupt
      #else
      INT_NOTUSED_ISR,
      #endif
    

// Group 12 PIE Vectors
      rsvd_ISR,     
      rsvd_ISR,     
      rsvd_ISR,     
      rsvd_ISR,     
      rsvd_ISR,     
      rsvd_ISR,     
      rsvd_ISR,     
      rsvd_ISR,     
};

//---------------------------------------------------------------------------
// InitPieVectTable: 
//---------------------------------------------------------------------------
// This function initializes the PIE vector table to a known state.
// This function must be executed after boot time.
//

void InitPieVectTable(void)
{
   int16 i;
   Uint32 *Source = (void *) &PieVectTableInit;
   Uint32 *Dest = (void *) &PieVectTable;

   EALLOW;
   for(i=0; i < 128; i++) {
      *Dest++ = *Source++;
   }
   EDIS;
}

//===========================================================================
// No more.
//===========================================================================
