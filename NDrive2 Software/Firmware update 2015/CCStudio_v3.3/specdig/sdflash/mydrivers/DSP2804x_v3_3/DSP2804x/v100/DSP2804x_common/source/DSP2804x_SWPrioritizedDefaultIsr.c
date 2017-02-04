// TI File $Revision: /main/1 $
// Checkin $Date: August 14, 2006   15:21:32 $
//###########################################################################
//
// FILE:    DSP2804x_SWPrioritizedDefaultIsr.c
//
// TITLE:   DSP2804x Device Default Software Prioritized Interrupt Service Routines.
//
//###########################################################################
//
// $TI Release: DSP2804x Header Files V1.00 $
// $Release Date: August 15, 2006 $
//###########################################################################


#include "DSP2804x_Device.h"     // DSP2804x Headerfile Include File
#include "DSP2804x_Examples.h"   // DSP2804x Examples Include File
#include "DSP2804x_SWPrioritizedIsrLevels.h" 


// Connected to INT13 of CPU (use MINT13 mask):
// Note CPU-Timer1 is reserved for TI use, however XINT13
// ISR can be used by the user. 
#if (INT13PL != 0)
interrupt void INT13_ISR(void)     // INT13 or CPU-Timer1
{
	 IER |= MINT13;                 // Set "global" priority
	 EINT;

  // Insert ISR Code here
  
  // Next two lines for debug only to halt the processor here
  // Remove after inserting ISR Code
     asm ("      ESTOP0");
     for(;;);
}
#endif

// Connected to INT14 of CPU (use MINT14 mask):
#if (INT14PL != 0)
interrupt void INT14_ISR(void)     // CPU-Timer2
{
   IER |= MINT14;                  // Set "global" priority
   EINT;

   // Insert ISR Code here.......
  
   // Next two lines for debug only to halt the processor here
   // Remove after inserting ISR Code
   asm ("      ESTOP0");
   for(;;);
}
#endif

// Connected to INT15 of CPU (use MINT15 mask):
#if (INT15PL != 0)
interrupt void DATALOG_ISR(void)   // Datalogging interrupt
{
	IER |= MINT15;                 // Set "global" priority
	EINT;

  	// Insert ISR Code here.......
  
    // Next two lines for debug only to halt the processor here
    // Remove after inserting ISR Code
    asm ("      ESTOP0");
    for(;;);
}
#endif

// Connected to INT16 of CPU (use MINT16 mask):
#if (INT16PL != 0)
interrupt void RTOSINT_ISR(void)   // RTOS interrupt
{
	IER |= MINT16;                 // Set "global" priority
	EINT;

  	// Insert ISR Code here.......
  
    // Next two lines for debug only to halt the processor here
    // Remove after inserting ISR Code
    asm ("      ESTOP0");
    for(;;);
}
#endif

// Connected to EMUINT of CPU (non-maskable):
interrupt void EMUINT_ISR(void)    // Emulation interrupt
{
	EINT;

  	// Insert ISR Code here.......
  
    // Next two lines for debug only to halt the processor here
    // Remove after inserting ISR Code
    asm ("      ESTOP0");
    for(;;);
}


// Connected to NMI of CPU (non-maskable):
interrupt void NMI_ISR(void)      // Non-maskable interrupt
{
	EINT;

  	// Insert ISR Code here.......
  
    // Next two lines for debug only to halt the processor here
    // Remove after inserting ISR Code
    asm ("      ESTOP0");
    for(;;);
}

interrupt void ILLEGAL_ISR(void)   // Illegal operation TRAP
{
	EINT;

  	// Insert ISR Code here.......
  
    // Next two lines for debug only to halt the processor here
    // Remove after inserting ISR Code
    asm ("      ESTOP0");
    for(;;);
}


interrupt void USER1_ISR(void)     // User Defined trap 1
{
	EINT;

  	// Insert ISR Code here.......
  
    // Next two lines for debug only to halt the processor here
    // Remove after inserting ISR Code
    asm ("      ESTOP0");
    for(;;);
}

interrupt void USER2_ISR(void)     // User Defined trap 2
{
	EINT;

  	// Insert ISR Code here.......
  
    // Next two lines for debug only to halt the processor here
    // Remove after inserting ISR Code
    asm ("      ESTOP0");
    for(;;);
}

interrupt void USER3_ISR(void)     // User Defined trap 3
{
	EINT;

  	// Insert ISR Code here.......
  
    // Next two lines for debug only to halt the processor here
    // Remove after inserting ISR Code
    asm ("      ESTOP0");
    for(;;);
}

interrupt void USER4_ISR(void)     // User Defined trap 4
{
	EINT;

  	// Insert ISR Code here.......
  
    // Next two lines for debug only to halt the processor here
    // Remove after inserting ISR Code
    asm ("      ESTOP0");
    for(;;);
}

interrupt void USER5_ISR(void)     // User Defined trap 5
{
	EINT;

  	// Insert ISR Code here.......
  
    // Next two lines for debug only to halt the processor here
    // Remove after inserting ISR Code
    asm ("      ESTOP0");
    for(;;);
}

interrupt void USER6_ISR(void)     // User Defined trap 6
{
	EINT;

  	// Insert ISR Code here.......
  
    // Next two lines for debug only to halt the processor here
    // Remove after inserting ISR Code
    asm ("      ESTOP0");
    for(;;);
}

interrupt void USER7_ISR(void)     // User Defined trap 7
{
	EINT;

  	// Insert ISR Code here.......
  
    // Next two lines for debug only to halt the processor here
    // Remove after inserting ISR Code
    asm ("      ESTOP0");
    for(;;);
}

interrupt void USER8_ISR(void)     // User Defined trap 8
{
	EINT;

  	// Insert ISR Code here.......
  
    // Next two lines for debug only to halt the processor here
    // Remove after inserting ISR Code
    asm ("      ESTOP0");
    for(;;);
}

interrupt void USER9_ISR(void)     // User Defined trap 9
{
	EINT;

  	// Insert ISR Code here.......
  
    // Next two lines for debug only to halt the processor here
    // Remove after inserting ISR Code
    asm ("      ESTOP0");
    for(;;);
}

interrupt void USER10_ISR(void)    // User Defined trap 10
{
	EINT;

  	// Insert ISR Code here.......
  
    // Next two lines for debug only to halt the processor here
    // Remove after inserting ISR Code
    asm ("      ESTOP0");
    for(;;);
}

interrupt void USER11_ISR(void)    // User Defined trap 11
{
	EINT;

  	// Insert ISR Code here.......
  
    // Next two lines for debug only to halt the processor here
    // Remove after inserting ISR Code
    asm ("      ESTOP0");
    for(;;);
}

interrupt void USER12_ISR(void)     // User Defined trap 12
{
	EINT;

  	// Insert ISR Code here.......
  
    // Next two lines for debug only to halt the processor here
    // Remove after inserting ISR Code
    asm ("      ESTOP0");
    for(;;);
}


// -----------------------------------------------------------
// PIE Group 1 - MUXed into CPU INT1
// -----------------------------------------------------------

// Connected to PIEIER1_1 (use MINT1 and MG11 masks):
#if (G11PL != 0)
interrupt void SEQ1INT_ISR( void )     // ADC
{
	// Set interrupt priority:
	volatile Uint16 TempPIEIER = PieCtrlRegs.PIEIER1.all;
	IER |= M_INT1;
	IER	&= MINT1;	  	               // Set "global" priority
	PieCtrlRegs.PIEIER1.all &= MG11;   // Set "group"  priority	
	PieCtrlRegs.PIEACK.all = 0xFFFF;   // Enable PIE interrupts	
	EINT;

  	// Insert ISR Code here.......
  
	// Restore registers saved:
	DINT;
	PieCtrlRegs.PIEIER1.all = TempPIEIER;
    
    // Next two lines for debug only to halt the processor here
    // Remove after inserting ISR Code
    asm ("      ESTOP0");
    for(;;);

}     
#endif

// Connected to PIEIER1_2 (use MINT1 and MG12 masks):
#if (G12PL != 0)
interrupt void SEQ2INT_ISR( void )    // ADC
{
	// Set interrupt priority:
	volatile Uint16 TempPIEIER = PieCtrlRegs.PIEIER1.all;
	IER |= M_INT1;
	IER	&= MINT1;	  	               // Set "global" priority
	PieCtrlRegs.PIEIER1.all &= MG12;   // Set "group"  priority	
	PieCtrlRegs.PIEACK.all = 0xFFFF;   // Enable PIE interrupts	
	EINT;

  	// Insert ISR Code here.......
  
  	// Restore registers saved:
	DINT;
	PieCtrlRegs.PIEIER1.all = TempPIEIER;

    // Next two lines for debug only to halt the processor here
    // Remove after inserting ISR Code
    asm ("      ESTOP0");
    for(;;);

}     
#endif

// PIEIER1_3 - reserved


// Connected to PIEIER1_4 (use MINT1 and MG14 masks):
#if (G14PL != 0)
interrupt void  XINT1_ISR(void)
{
	// Set interrupt priority:
	volatile Uint16 TempPIEIER = PieCtrlRegs.PIEIER1.all;
	IER |= MINT1;                      // Set "global" priority
	PieCtrlRegs.PIEIER1.all &= MG14;   // Set "group"  priority	
	PieCtrlRegs.PIEACK.all = 0xFFFF;   // Enable PIE interrupts	
	EINT;


	// Restore registers saved:
	DINT;
	PieCtrlRegs.PIEIER1.all = TempPIEIER;

    // Next two lines for debug only to halt the processor here
    // Remove after inserting ISR Code
    asm ("      ESTOP0");
    for(;;);
}     
#endif

// Connected to PIEIER1_5 (use MINT1 and MG15 masks):
#if (G15PL != 0)
interrupt void  XINT2_ISR(void)
{
	// Set interrupt priority:
	volatile Uint16 TempPIEIER = PieCtrlRegs.PIEIER1.all;
	IER |= MINT1;                      // Set "global" priority
	PieCtrlRegs.PIEIER1.all &= MG15;   // Set "group"  priority	
	PieCtrlRegs.PIEACK.all = 0xFFFF;   // Enable PIE interrupts	
	EINT;

  	// Insert ISR Code here.......
  
  	

	// Restore registers saved:
	DINT;
	PieCtrlRegs.PIEIER1.all = TempPIEIER;

    // Next two lines for debug only to halt the processor here
    // Remove after inserting ISR Code
    asm ("      ESTOP0");
    for(;;);
}
#endif


// Connected to PIEIER1_6 (use MINT1 and MG16 masks):
#if (G16PL != 0)
interrupt void  ADCINT_ISR(void)     // ADC
{
	// Set interrupt priority:
	volatile Uint16 TempPIEIER = PieCtrlRegs.PIEIER9.all;
	IER |= M_INT1;
	IER	&= MINT1;                      // Set "global" priority
	PieCtrlRegs.PIEIER9.all &= MG16;   // Set "group"  priority	
	PieCtrlRegs.PIEACK.all = 0xFFFF;   // Enable PIE interrupts	
	EINT;

  	// Insert ISR Code here.......
  
	// Restore registers saved:
	DINT;
	PieCtrlRegs.PIEIER9.all = TempPIEIER;

    // Next two lines for debug only to halt the processor here
    // Remove after inserting ISR Code
    asm ("      ESTOP0");
    for(;;);

}     
#endif

// Connected to PIEIER1_7 (use MINT1 and MG17 masks):
#if (G17PL != 0)
interrupt void  TINT0_ISR(void)      // CPU-Timer 0
{
	// Set interrupt priority:
	volatile Uint16 TempPIEIER = PieCtrlRegs.PIEIER1.all;
	IER |= M_INT1;
	IER	&= MINT1;	  	               // Set "global" priority
	PieCtrlRegs.PIEIER1.all &= MG17;   // Set "group"  priority	
	PieCtrlRegs.PIEACK.all = 0xFFFF;   // Enable PIE interrupts	
	EINT;

  	// Insert ISR Code here.......
  
  	// Restore registers saved:
	DINT;
	PieCtrlRegs.PIEIER1.all = TempPIEIER;
      
    // Next two lines for debug only to halt the processor here
    // Remove after inserting ISR Code
    asm ("      ESTOP0");
    for(;;);
}     
#endif

// Connected to PIEIER1_8 (use MINT1 and MG18 masks):
#if (G18PL != 0)
interrupt void  WAKEINT_ISR(void)      // WD/LPM
{
	// Set interrupt priority:
	volatile Uint16 TempPIEIER = PieCtrlRegs.PIEIER1.all;
	IER |= M_INT1;
	IER	&= MINT1;	  	               // Set "global" priority
	PieCtrlRegs.PIEIER1.all &= MG18;   // Set "group"  priority	
	PieCtrlRegs.PIEACK.all = 0xFFFF;   // Enable PIE interrupts	
	EINT;

  	// Insert ISR Code here.......
  
  	
	// Restore registers saved:
	DINT;
	PieCtrlRegs.PIEIER1.all = TempPIEIER;
	
    // Next two lines for debug only to halt the processor here
    // Remove after inserting ISR Code
    asm ("      ESTOP0");
    for(;;);
}     
#endif


// -----------------------------------------------------------
// PIE Group 2 - MUXed into CPU INT2
// -----------------------------------------------------------

// Connected to PIEIER2_1 (use MINT2 and MG21 masks):
#if (G21PL != 0)
interrupt void EPWM1_TZINT_ISR(void)    // ePWM1 Trip Zone
{
	// Set interrupt priority:
	volatile Uint16 TempPIEIER = PieCtrlRegs.PIEIER2.all;
	IER |= M_INT2;
	IER	&= MINT2;	  	               // Set "global" priority
	PieCtrlRegs.PIEIER2.all &= MG21;   // Set "group"  priority	
	PieCtrlRegs.PIEACK.all = 0xFFFF;   // Enable PIE interrupts	
	EINT;

  	// Insert ISR Code here.......
  
	// Restore registers saved:
	DINT;
	PieCtrlRegs.PIEIER2.all = TempPIEIER;
    
    // Next two lines for debug only to halt the processor here
    // Remove after inserting ISR Code
    asm ("      ESTOP0");
    for(;;);
}     
#endif

// Connected to PIEIER2_2 (use MINT2 and MG22 masks):
#if (G22PL != 0)
interrupt void EPWM2_TZINT_ISR(void)    // ePWM2 Trip Zone
{
	// Set interrupt priority:
	volatile Uint16 TempPIEIER = PieCtrlRegs.PIEIER2.all;
	IER |= M_INT2;
	IER	&= MINT2;	  	               // Set "global" priority
	PieCtrlRegs.PIEIER2.all &= MG22;   // Set "group"  priority	
	PieCtrlRegs.PIEACK.all = 0xFFFF;   // Enable PIE interrupts	
	EINT;

  	// Insert ISR Code here.......

	// Restore registers saved:
	DINT;
	PieCtrlRegs.PIEIER2.all = TempPIEIER;
	
    // Next two lines for debug only to halt the processor here
    // Remove after inserting ISR Code
    asm ("      ESTOP0");
    for(;;);
}     
#endif

// Connected to PIEIER2_3 (use MINT2 and MG23 masks):
#if (G23PL != 0)
interrupt void EPWM3_TZINT_ISR(void)    // ePWM3 Trip Zone
{
	// Set interrupt priority:
	volatile Uint16 TempPIEIER = PieCtrlRegs.PIEIER2.all;
	IER |= M_INT2;
	IER	&= MINT2;	  	               // Set "global" priority
	PieCtrlRegs.PIEIER2.all &= MG23;   // Set "group"  priority	
	PieCtrlRegs.PIEACK.all = 0xFFFF;   // Enable PIE interrupts	
	EINT;

  	// Insert ISR Code here.......

	// Restore registers saved:
	DINT;
	PieCtrlRegs.PIEIER2.all = TempPIEIER;

    // Next two lines for debug only to halt the processor here
    // Remove after inserting ISR Code
    asm ("      ESTOP0");
    for(;;);

}     
#endif

// Connected to PIEIER2_4 (use MINT2 and MG24 masks):
#if (G24PL != 0)
interrupt void EPWM4_TZINT_ISR(void)    // ePWM4 Trip Zone
{
	// Set interrupt priority:
	volatile Uint16 TempPIEIER = PieCtrlRegs.PIEIER2.all;
	IER |= M_INT2;
	IER	&= MINT2;	  	                // Set "global" priority
	PieCtrlRegs.PIEIER2.all &= MG24;    // Set "group"  priority	
	PieCtrlRegs.PIEACK.all = 0xFFFF;    // Enable PIE interrupts	
	EINT;

  	// Insert ISR Code here.......

	// Restore registers saved:
	DINT;
	PieCtrlRegs.PIEIER2.all = TempPIEIER;

    // Next two lines for debug only to halt the processor here
    // Remove after inserting ISR Code
    asm ("      ESTOP0");
    for(;;);

}     
#endif

// Connected to PIEIER2_5 (use MINT2 and MG25 masks):
#if (G25PL != 0)
interrupt void EPWM5_TZINT_ISR(void)    // ePWM5 Trip Zone
{
	// Set interrupt priority:
	volatile Uint16 TempPIEIER = PieCtrlRegs.PIEIER2.all;
	IER |= M_INT2;
	IER	&= MINT2;	  	                // Set "global" priority
	PieCtrlRegs.PIEIER2.all &= MG25;    // Set "group"  priority	
	PieCtrlRegs.PIEACK.all = 0xFFFF;    // Enable PIE interrupts	
	EINT;

  	// Insert ISR Code here.......
  
	// Restore registers saved:
	DINT;
	PieCtrlRegs.PIEIER2.all = TempPIEIER;

    // Next two lines for debug only to halt the processor here
    // Remove after inserting ISR Code
    asm ("      ESTOP0");
    for(;;);

}     
#endif

// Connected to PIEIER2_6 (use MINT2 and MG26 masks):
#if (G26PL != 0)
interrupt void EPWM6_TZINT_ISR(void)    // ePWM6 Trip Zone
{
	// Set interrupt priority:
	volatile Uint16 TempPIEIER = PieCtrlRegs.PIEIER2.all;
	IER |= M_INT2;
	IER	&= MINT2;	  	                // Set "global" priority
	PieCtrlRegs.PIEIER2.all &= MG26;    // Set "group"  priority	
	PieCtrlRegs.PIEACK.all = 0xFFFF;    // Enable PIE interrupts	
	EINT;

  	// Insert ISR Code here.......

	// Restore registers saved:
	DINT;
	PieCtrlRegs.PIEIER2.all = TempPIEIER;

    // Next two lines for debug only to halt the processor here
    // Remove after inserting ISR Code
    asm ("      ESTOP0");
    for(;;);

}     
#endif

// Connected to PIEIER2_7 (use MINT2 and MG27 masks):
#if (G27PL != 0)
interrupt void EPWM7_TZINT_ISR(void)    // ePWM7 Trip Zone
{
	// Set interrupt priority:
	volatile Uint16 TempPIEIER = PieCtrlRegs.PIEIER2.all;
	IER |= M_INT2;
	IER	&= MINT2;	  	                // Set "global" priority
	PieCtrlRegs.PIEIER2.all &= MG27;    // Set "group"  priority	
	PieCtrlRegs.PIEACK.all = 0xFFFF;    // Enable PIE interrupts	
	EINT;

  	// Insert ISR Code here.......

	// Restore registers saved:
	DINT;
	PieCtrlRegs.PIEIER2.all = TempPIEIER;

    // Next two lines for debug only to halt the processor here
    // Remove after inserting ISR Code
    asm ("      ESTOP0");
    for(;;);

}     
#endif

// Connected to PIEIER2_8 (use MINT2 and MG28 masks):
#if (G28PL != 0)
interrupt void EPWM8_TZINT_ISR(void)    // ePWM8 Trip Zone
{
	// Set interrupt priority:
	volatile Uint16 TempPIEIER = PieCtrlRegs.PIEIER2.all;
	IER |= M_INT2;
	IER	&= MINT2;	  	                // Set "global" priority
	PieCtrlRegs.PIEIER2.all &= MG28;    // Set "group"  priority	
	PieCtrlRegs.PIEACK.all = 0xFFFF;    // Enable PIE interrupts	
	EINT;

  	// Insert ISR Code here.......

	// Restore registers saved:
	DINT;
	PieCtrlRegs.PIEIER2.all = TempPIEIER;

    // Next two lines for debug only to halt the processor here
    // Remove after inserting ISR Code
    asm ("      ESTOP0");
    for(;;);

}     
#endif
// -----------------------------------------------------------
// PIE Group 3 - MUXed into CPU INT3
// -----------------------------------------------------------


// Connected to PIEIER3_1 (use MINT3 and MG31 masks):
#if (G31PL != 0)
interrupt void EPWM1_INT_ISR(void)     // ePWM1 Interrupt
{
	// Set interrupt priority:
	volatile Uint16 TempPIEIER = PieCtrlRegs.PIEIER3.all;
	IER |= M_INT3;
	IER	&= MINT3;	  	               // Set "global" priority
	PieCtrlRegs.PIEIER3.all &= MG31;   // Set "group"  priority	
	PieCtrlRegs.PIEACK.all = 0xFFFF;   // Enable PIE interrupts	
	EINT;

  	// Insert ISR Code here.......

	// Restore registers saved:
	DINT;
	PieCtrlRegs.PIEIER3.all = TempPIEIER;

    // Next two lines for debug only to halt the processor here
    // Remove after inserting ISR Code
    asm ("      ESTOP0");
    for(;;);
}     
#endif

// Connected to PIEIER3_2 (use MINT3 and MG32 masks):
#if (G32PL != 0)
interrupt void EPWM2_INT_ISR(void)     // ePWM2 Interrupt
{
	// Set interrupt priority:
	volatile Uint16 TempPIEIER = PieCtrlRegs.PIEIER3.all;
	IER |= M_INT3;
	IER	&= MINT3;	  	               // Set "global" priority
	PieCtrlRegs.PIEIER3.all &= MG32;   // Set "group"  priority	
	PieCtrlRegs.PIEACK.all = 0xFFFF;   // Enable PIE interrupts	
	EINT;

  	// Insert ISR Code here.......
  
	// Restore registers saved:
	DINT;
	PieCtrlRegs.PIEIER3.all = TempPIEIER;
    
    // Next two lines for debug only to halt the processor here
    // Remove after inserting ISR Code
    asm ("      ESTOP0");
    for(;;);

}     
#endif
      
// Connected to PIEIER3_3 (use MINT3 and MG33 masks):
#if (G33PL != 0)
interrupt void EPWM3_INT_ISR(void)     // ePWM3 Interrupt
{
	// Set interrupt priority:
	volatile Uint16 TempPIEIER = PieCtrlRegs.PIEIER3.all;
	IER |= M_INT3;
	IER	&= MINT3;	  	                // Set "global" priority
	PieCtrlRegs.PIEIER3.all &= MG33;   // Set "group"  priority	
	PieCtrlRegs.PIEACK.all = 0xFFFF;   // Enable PIE interrupts	
	EINT;

  	// Insert ISR Code here.......
  
	// Restore registers saved:
	DINT;
	PieCtrlRegs.PIEIER3.all = TempPIEIER;
      
    // Next two lines for debug only to halt the processor here
    // Remove after inserting ISR Code
    asm ("      ESTOP0");
    for(;;);

}     
#endif

// Connected to PIEIER3_4 (use MINT3 and MG34 masks):
#if (G34PL != 0)
interrupt void EPWM4_INT_ISR(void)     // ePWM4 Interrupt
{
	// Set interrupt priority:
	volatile Uint16 TempPIEIER = PieCtrlRegs.PIEIER3.all;
	IER |= M_INT3;
	IER	&= MINT3;	  	               // Set "global" priority
	PieCtrlRegs.PIEIER3.all &= MG34;   // Set "group"  priority	
	PieCtrlRegs.PIEACK.all = 0xFFFF;   // Enable PIE interrupts	
	EINT;

  	// Insert ISR Code here.......

	// Restore registers saved:
	DINT;
	PieCtrlRegs.PIEIER3.all = TempPIEIER;
      
    // Next two lines for debug only to halt the processor here
    // Remove after inserting ISR Code
    asm ("      ESTOP0");
    for(;;);

}     
#endif

// Connected to PIEIER3_5 (use MINT3 and MG35 masks):
#if (G35PL != 0)
interrupt void EPWM5_INT_ISR(void)     // ePWM5 Interrupt
{
	// Set interrupt priority:
	volatile Uint16 TempPIEIER = PieCtrlRegs.PIEIER3.all;
	IER |= M_INT3;
	IER	&= MINT3;	  	               // Set "global" priority
	PieCtrlRegs.PIEIER3.all &= MG35;   // Set "group"  priority	
	PieCtrlRegs.PIEACK.all = 0xFFFF;   // Enable PIE interrupts	
	EINT;

  	// Insert ISR Code here.......
  
	// Restore registers saved:
	DINT;
	PieCtrlRegs.PIEIER3.all = TempPIEIER;

    // Next two lines for debug only to halt the processor here
    // Remove after inserting ISR Code
    asm ("      ESTOP0");
    for(;;);

}     
#endif

// Connected to PIEIER3_6 (use MINT3 and MG36 masks):
#if (G36PL != 0)
interrupt void EPWM6_INT_ISR(void)     // ePWM6 Interrupt
{
	// Set interrupt priority:
	volatile Uint16 TempPIEIER = PieCtrlRegs.PIEIER3.all;
	IER |= M_INT3;
	IER	&= MINT3;	  	               // Set "global" priority
	PieCtrlRegs.PIEIER3.all &= MG36;   // Set "group"  priority	
	PieCtrlRegs.PIEACK.all = 0xFFFF;   // Enable PIE interrupts	
	EINT;

  	// Insert ISR Code here.......

	// Restore registers saved:
	DINT;
	PieCtrlRegs.PIEIER3.all = TempPIEIER;

    // Next two lines for debug only to halt the processor here
    // Remove after inserting ISR Code
    asm ("      ESTOP0");
    for(;;);
}     
#endif

// Connected to PIEIER3_7 (use MINT3 and MG37 masks):
#if (G37PL != 0)
interrupt void EPWM7_INT_ISR(void)     // ePWM7 Interrupt
{
	// Set interrupt priority:
	volatile Uint16 TempPIEIER = PieCtrlRegs.PIEIER3.all;
	IER |= M_INT3;
	IER	&= MINT3;	  	               // Set "global" priority
	PieCtrlRegs.PIEIER3.all &= MG37;   // Set "group"  priority	
	PieCtrlRegs.PIEACK.all = 0xFFFF;   // Enable PIE interrupts	
	EINT;

  	// Insert ISR Code here.......

	// Restore registers saved:
	DINT;
	PieCtrlRegs.PIEIER3.all = TempPIEIER;

    // Next two lines for debug only to halt the processor here
    // Remove after inserting ISR Code
    asm ("      ESTOP0");
    for(;;);
}     
#endif

// Connected to PIEIER3_8 (use MINT3 and MG38 masks):
#if (G38PL != 0)
interrupt void EPWM8_INT_ISR(void)     // ePWM8 Interrupt
{
	// Set interrupt priority:
	volatile Uint16 TempPIEIER = PieCtrlRegs.PIEIER3.all;
	IER |= M_INT3;
	IER	&= MINT3;	  	               // Set "global" priority
	PieCtrlRegs.PIEIER3.all &= MG38;   // Set "group"  priority	
	PieCtrlRegs.PIEACK.all = 0xFFFF;   // Enable PIE interrupts	
	EINT;

  	// Insert ISR Code here.......

	// Restore registers saved:
	DINT;
	PieCtrlRegs.PIEIER3.all = TempPIEIER;

    // Next two lines for debug only to halt the processor here
    // Remove after inserting ISR Code
    asm ("      ESTOP0");
    for(;;);
}     
#endif


// -----------------------------------------------------------
// PIE Group 4 - MUXed into CPU INT4
// -----------------------------------------------------------

// Connected to PIEIER4_1 (use MINT4 and MG41 masks):
// Connected to PIEIER4_2 (use MINT4 and MG42 masks):
// Connected to PIEIER4_3 (use MINT4 and MG43 masks):
// Connected to PIEIER4_4 (use MINT4 and MG44 masks):
// Connected to PIEIER4_5 (use MINT4 and MG45 masks):
// Connected to PIEIER4_6 (use MINT4 and MG46 masks):
// Connected to PIEIER4_7 (use MINT4 and MG47 masks):
// Connected to PIEIER4_8 (use MINT4 and MG48 masks):

// -----------------------------------------------------------
// PIE Group 5 - MUXed into CPU INT5
// -----------------------------------------------------------

// Connected to PIEIER5_1 (use MINT5 and MG51 masks):
// Connected to PIEIER5_2 (use MINT5 and MG52 masks):
// Connected to PIEIER5_3 (use MINT5 and MG53 masks):
// Connected to PIEIER5_4 (use MINT5 and MG54 masks):
// Connected to PIEIER5_5 (use MINT5 and MG55 masks):
// Connected to PIEIER5_6 (use MINT5 and MG56 masks):
// Connected to PIEIER5_7 (use MINT5 and MG57 masks):
// Connected to PIEIER5_8 (use MINT5 and MG58 masks):
      
// -----------------------------------------------------------
// PIE Group 6 - MUXed into CPU INT6
// -----------------------------------------------------------

// Connected to PIEIER6_1 (use MINT6 and MG61 masks):
#if (G61PL != 0)
interrupt void SPIRXINTA_ISR(void)    // SPI-A
{
	// Set interrupt priority:
	volatile Uint16 TempPIEIER = PieCtrlRegs.PIEIER6.all;
	IER |= M_INT6;
	IER	&= MINT6;	  	               // Set "global" priority
	PieCtrlRegs.PIEIER6.all &= MG61;   // Set "group"  priority	
	PieCtrlRegs.PIEACK.all = 0xFFFF;   // Enable PIE interrupts	
	EINT;

  	// Insert ISR Code here.......

	// Restore registers saved:
	DINT;
	PieCtrlRegs.PIEIER6.all = TempPIEIER;

    // Next two lines for debug only to halt the processor here
    // Remove after inserting ISR Code
    asm ("      ESTOP0");
    for(;;);

}     
#endif

// Connected to PIEIER6_2 (use MINT6 and MG62 masks):
#if (G62PL != 0)
interrupt void SPITXINTA_ISR(void)     // SPI-A
{
	// Set interrupt priority:
	volatile Uint16 TempPIEIER = PieCtrlRegs.PIEIER6.all;
	IER |= M_INT6;
	IER	&= MINT6;	  	               // Set "global" priority
	PieCtrlRegs.PIEIER6.all &= MG62;   // Set "group"  priority	
	PieCtrlRegs.PIEACK.all = 0xFFFF;   // Enable PIE interrupts	
	EINT;

  	// Insert ISR Code here.......
  
	// Restore registers saved:
	DINT;
	PieCtrlRegs.PIEIER6.all = TempPIEIER;

    // Next two lines for debug only to halt the processor here
    // Remove after inserting ISR Code
    asm ("      ESTOP0");
    for(;;);
}     
#endif

// Connected to PIEIER6_3 (use MINT6 and MG63 masks):
// Connected to PIEIER6_4 (use MINT6 and MG64 masks):
// Connected to PIEIER6_5 (use MINT6 and MG65 masks):
// Connected to PIEIER6_6 (use MINT6 and MG66 masks):
// Connected to PIEIER6_7 (use MINT6 and MG67 masks):
// Connected to PIEIER6_8 (use MINT6 and MG68 masks):

// -----------------------------------------------------------
// PIE Group 7 - MUXed into CPU INT7
// -----------------------------------------------------------

// Connected to PIEIER7_1 (use MINT7 and MG71 masks):
// Connected to PIEIER7_2 (use MINT7 and MG72 masks):
// Connected to PIEIER7_3 (use MINT7 and MG73 masks):
// Connected to PIEIER7_4 (use MINT7 and MG74 masks):
// Connected to PIEIER7_5 (use MINT7 and MG75 masks):
// Connected to PIEIER7_6 (use MINT7 and MG76 masks):
// Connected to PIEIER7_7 (use MINT7 and MG77 masks):
// Connected to PIEIER7_8 (use MINT7 and MG78 masks):

// -----------------------------------------------------------
// PIE Group 8 - MUXed into CPU INT8
// -----------------------------------------------------------

// Connected to PIEIER8_1 (use MINT8 and MG81 masks):
#if (G81PL != 0)
interrupt void I2CINT1A_ISR(void)    // I2C-A
{
	// Set interrupt priority:
	volatile Uint16 TempPIEIER = PieCtrlRegs.PIEIER8.all;
	IER |= M_INT8;
	IER	&= MINT8;	  	               // Set "global" priority
	PieCtrlRegs.PIEIER6.all &= MG81;   // Set "group"  priority	
	PieCtrlRegs.PIEACK.all = 0xFFFF;   // Enable PIE interrupts	
	EINT;

  	// Insert ISR Code here.......

	// Restore registers saved:
	DINT;
	PieCtrlRegs.PIEIER8.all = TempPIEIER;

    // Next two lines for debug only to halt the processor here
    // Remove after inserting ISR Code
    asm ("      ESTOP0");
    for(;;);

}     
#endif

// Connected to PIEIER8_2 (use MINT8 and MG82 masks):
#if (G82PL != 0)
interrupt void I2CINT2A_ISR(void)     // I2C-A
{
	// Set interrupt priority:
	volatile Uint16 TempPIEIER = PieCtrlRegs.PIEIER8.all;
	IER |= M_INT8;
	IER	&= MINT8;	  	               // Set "global" priority
	PieCtrlRegs.PIEIER6.all &= MG82;   // Set "group"  priority	
	PieCtrlRegs.PIEACK.all = 0xFFFF;   // Enable PIE interrupts	
	EINT;

  	// Insert ISR Code here.......

	// Restore registers saved:
	DINT;
	PieCtrlRegs.PIEIER8.all = TempPIEIER;

    // Next two lines for debug only to halt the processor here
    // Remove after inserting ISR Code
    asm ("      ESTOP0");
    for(;;);

}     
#endif

// Connected to PIEIER8_3 (use MINT5 and MG83 masks):
// Connected to PIEIER8_4 (use MINT5 and MG84 masks):
// Connected to PIEIER8_5 (use MINT5 and MG85 masks):
// Connected to PIEIER8_6 (use MINT5 and MG86 masks):
// Connected to PIEIER8_7 (use MINT5 and MG87 masks):
// Connected to PIEIER8_8 (use MINT5 and MG88 masks):

// -----------------------------------------------------------
// PIE Group 9 - MUXed into CPU INT9
// -----------------------------------------------------------

// Connected to PIEIER9_1 (use MINT9 and MG91 masks):
#if (G91PL != 0)
interrupt void SCIRXINTA_ISR(void)     // SCI-A
{
	// Set interrupt priority:
	volatile Uint16 TempPIEIER = PieCtrlRegs.PIEIER9.all;
	IER |= M_INT9;
	IER	&= MINT9;	  	                // Set "global" priority
	PieCtrlRegs.PIEIER9.all &= MG91;   // Set "group"  priority	
	PieCtrlRegs.PIEACK.all = 0xFFFF;   // Enable PIE interrupts	
	EINT;

  	// Insert ISR Code here.......

	// Restore registers saved:
	DINT;
	PieCtrlRegs.PIEIER9.all = TempPIEIER;

    // Next two lines for debug only to halt the processor here
    // Remove after inserting ISR Code
    asm ("      ESTOP0");
    for(;;);

}     
#endif

// Connected to PIEIER9_2 (use MINT9 and MG92 masks):
#if (G92PL != 0)
interrupt void SCITXINTA_ISR(void)     // SCI-A
{
	// Set interrupt priority:
	volatile Uint16 TempPIEIER = PieCtrlRegs.PIEIER9.all;
	IER |= M_INT9;
	IER	&= MINT9;	  	               // Set "global" priority
	PieCtrlRegs.PIEIER9.all &= MG92;   // Set "group"  priority	
	PieCtrlRegs.PIEACK.all = 0xFFFF;   // Enable PIE interrupts	
	EINT;

  	// Insert ISR Code here.......

	// Restore registers saved:
	DINT;
	PieCtrlRegs.PIEIER9.all = TempPIEIER;

    // Next two lines for debug only to halt the processor here
    // Remove after inserting ISR Code
    asm ("      ESTOP0");
    for(;;);

}     
#endif

// Connected to PIEIER9_3 (use MINT9 and MG93 masks):
// Connected to PIEIER9_4 (use MINT9 and MG94 masks):
// Connected to PIEIER9_5 (use MINT9 and MG95 masks):
// Connected to PIEIER9_6 (use MINT9 and MG96 masks):
// Connected to PIEIER9_7 (use MINT9 and MG97 masks):
// Connected to PIEIER9_8 (use MINT9 and MG98 masks):

// -----------------------------------------------------------
// PIE Group 10 - MUXed into CPU INT10
// -----------------------------------------------------------

// Connected to PIEIER10_1 (use MINT10 and MG101 masks):
#if (G101PL != 0)
interrupt void EPWM9_TZINT_ISR(void)    // ePWM9 Trip Zone
{
	// Set interrupt priority:
	volatile Uint16 TempPIEIER = PieCtrlRegs.PIEIER10.all;
	IER |= M_INT10;
	IER	&= MINT10;	  	                 // Set "global" priority
	PieCtrlRegs.PIEIER10.all &= MG101;   // Set "group"  priority	
	PieCtrlRegs.PIEACK.all = 0xFFFF;     // Enable PIE interrupts	
	EINT;

  	// Insert ISR Code here.......
  
	// Restore registers saved:
	DINT;
	PieCtrlRegs.PIEIER10.all = TempPIEIER;
    
    // Next two lines for debug only to halt the processor here
    // Remove after inserting ISR Code
    asm ("      ESTOP0");
    for(;;);
}     
#endif

// Connected to PIEIER10_2 (use MINT10 and MG102 masks):
#if (G102PL != 0)
interrupt void EPWM10_TZINT_ISR(void)    // ePWM10 Trip Zone
{
	// Set interrupt priority:
	volatile Uint16 TempPIEIER = PieCtrlRegs.PIEIER10.all;
	IER |= M_INT10;
	IER	&= MINT10;	  	                 // Set "global" priority
	PieCtrlRegs.PIEIER10.all &= MG102;   // Set "group"  priority	
	PieCtrlRegs.PIEACK.all = 0xFFFF;     // Enable PIE interrupts	
	EINT;

  	// Insert ISR Code here.......
  
	// Restore registers saved:
	DINT;
	PieCtrlRegs.PIEIER10.all = TempPIEIER;
    
    // Next two lines for debug only to halt the processor here
    // Remove after inserting ISR Code
    asm ("      ESTOP0");
    for(;;);
}     
#endif


// Connected to PIEIER10_3 (use MINT10 and MG103 masks):
#if (G103PL != 0)
interrupt void EPWM11_TZINT_ISR(void)    // ePWM11 Trip Zone
{
	// Set interrupt priority:
	volatile Uint16 TempPIEIER = PieCtrlRegs.PIEIER10.all;
	IER |= M_INT10;
	IER	&= MINT10;	  	                 // Set "global" priority
	PieCtrlRegs.PIEIER10.all &= MG103;   // Set "group"  priority	
	PieCtrlRegs.PIEACK.all = 0xFFFF;     // Enable PIE interrupts	
	EINT;

  	// Insert ISR Code here.......
  
	// Restore registers saved:
	DINT;
	PieCtrlRegs.PIEIER10.all = TempPIEIER;
    
    // Next two lines for debug only to halt the processor here
    // Remove after inserting ISR Code
    asm ("      ESTOP0");
    for(;;);
}     
#endif

// Connected to PIEIER10_4 (use MINT10 and MG104 masks):
#if (G104PL != 0)
interrupt void EPWM12_TZINT_ISR(void)    // ePWM12 Trip Zone
{
	// Set interrupt priority:
	volatile Uint16 TempPIEIER = PieCtrlRegs.PIEIER10.all;
	IER |= M_INT10;
	IER	&= MINT10;	  	                 // Set "global" priority
	PieCtrlRegs.PIEIER10.all &= MG104;   // Set "group"  priority	
	PieCtrlRegs.PIEACK.all = 0xFFFF;     // Enable PIE interrupts	
	EINT;

  	// Insert ISR Code here.......
  
	// Restore registers saved:
	DINT;
	PieCtrlRegs.PIEIER10.all = TempPIEIER;
    
    // Next two lines for debug only to halt the processor here
    // Remove after inserting ISR Code
    asm ("      ESTOP0");
    for(;;);
}     
#endif

// Connected to PIEIER10_5 (use MINT10 and MG105 masks):
#if (G105PL != 0)
interrupt void EPWM13_TZINT_ISR(void)    // ePWM13 Trip Zone
{
	// Set interrupt priority:
	volatile Uint16 TempPIEIER = PieCtrlRegs.PIEIER10.all;
	IER |= M_INT10;
	IER	&= MINT10;	  	                 // Set "global" priority
	PieCtrlRegs.PIEIER10.all &= MG105;   // Set "group"  priority	
	PieCtrlRegs.PIEACK.all = 0xFFFF;     // Enable PIE interrupts	
	EINT;

  	// Insert ISR Code here.......
  
	// Restore registers saved:
	DINT;
	PieCtrlRegs.PIEIER10.all = TempPIEIER;
    
    // Next two lines for debug only to halt the processor here
    // Remove after inserting ISR Code
    asm ("      ESTOP0");
    for(;;);
}     
#endif

// Connected to PIEIER10_6 (use MINT10 and MG106 masks):
#if (G106PL != 0)
interrupt void EPWM14_TZINT_ISR(void)    // ePWM14 Trip Zone
{
	// Set interrupt priority:
	volatile Uint16 TempPIEIER = PieCtrlRegs.PIEIER10.all;
	IER |= M_INT10;
	IER	&= MINT10;	  	                 // Set "global" priority
	PieCtrlRegs.PIEIER10.all &= MG106;   // Set "group"  priority	
	PieCtrlRegs.PIEACK.all = 0xFFFF;     // Enable PIE interrupts	
	EINT;

  	// Insert ISR Code here.......
  
	// Restore registers saved:
	DINT;
	PieCtrlRegs.PIEIER10.all = TempPIEIER;
    
    // Next two lines for debug only to halt the processor here
    // Remove after inserting ISR Code
    asm ("      ESTOP0");
    for(;;);
}     
#endif

// Connected to PIEIER10_7 (use MINT10 and MG107 masks):
#if (G107PL != 0)
interrupt void EPWM15_TZINT_ISR(void)    // ePWM15 Trip Zone
{
	// Set interrupt priority:
	volatile Uint16 TempPIEIER = PieCtrlRegs.PIEIER10.all;
	IER |= M_INT10;
	IER	&= MINT10;	  	                 // Set "global" priority
	PieCtrlRegs.PIEIER10.all &= MG107;   // Set "group"  priority	
	PieCtrlRegs.PIEACK.all = 0xFFFF;     // Enable PIE interrupts	
	EINT;

  	// Insert ISR Code here.......
  
	// Restore registers saved:
	DINT;
	PieCtrlRegs.PIEIER10.all = TempPIEIER;
    
    // Next two lines for debug only to halt the processor here
    // Remove after inserting ISR Code
    asm ("      ESTOP0");
    for(;;);
}     
#endif

// Connected to PIEIER10_8 (use MINT10 and MG108 masks):
#if (G108PL != 0)
interrupt void EPWM16_TZINT_ISR(void)    // ePWM16 Trip Zone
{
	// Set interrupt priority:
	volatile Uint16 TempPIEIER = PieCtrlRegs.PIEIER10.all;
	IER |= M_INT10;
	IER	&= MINT10;	  	                 // Set "global" priority
	PieCtrlRegs.PIEIER10.all &= MG108;   // Set "group"  priority	
	PieCtrlRegs.PIEACK.all = 0xFFFF;     // Enable PIE interrupts	
	EINT;

  	// Insert ISR Code here.......
  
	// Restore registers saved:
	DINT;
	PieCtrlRegs.PIEIER10.all = TempPIEIER;
    
    // Next two lines for debug only to halt the processor here
    // Remove after inserting ISR Code
    asm ("      ESTOP0");
    for(;;);
}     
#endif

// -----------------------------------------------------------
// PIE Group 11 - MUXed into CPU INT11
// -----------------------------------------------------------

// Connected to PIEIER11_1 (use MINT11 and MG111 masks):
#if (G111PL != 0)
interrupt void EPWM9_INT_ISR(void)     // ePWM9 Interrupt
{
	// Set interrupt priority:
	volatile Uint16 TempPIEIER = PieCtrlRegs.PIEIER11.all;
	IER |= M_INT11;
	IER	&= MINT11;	  	                // Set "global" priority
	PieCtrlRegs.PIEIER3.all &= MG111;   // Set "group"  priority	
	PieCtrlRegs.PIEACK.all = 0xFFFF;    // Enable PIE interrupts	
	EINT;

  	// Insert ISR Code here.......

	// Restore registers saved:
	DINT;
	PieCtrlRegs.PIEIER11.all = TempPIEIER;

    // Next two lines for debug only to halt the processor here
    // Remove after inserting ISR Code
    asm ("      ESTOP0");
    for(;;);
}     
#endif


// Connected to PIEIER11_2 (use MINT11 and MG112 masks):
#if (G112PL != 0)
interrupt void EPWM10_INT_ISR(void)     // ePWM10 Interrupt
{
	// Set interrupt priority:
	volatile Uint16 TempPIEIER = PieCtrlRegs.PIEIER11.all;
	IER |= M_INT11;
	IER	&= MINT11;	  	                // Set "global" priority
	PieCtrlRegs.PIEIER3.all &= MG112;   // Set "group"  priority	
	PieCtrlRegs.PIEACK.all = 0xFFFF;    // Enable PIE interrupts	
	EINT; 

  	// Insert ISR Code here.......

	// Restore registers saved:
	DINT;
	PieCtrlRegs.PIEIER11.all = TempPIEIER;

    // Next two lines for debug only to halt the processor here
    // Remove after inserting ISR Code
    asm ("      ESTOP0");
    for(;;);
}     
#endif

// Connected to PIEIER11_3 (use MINT11 and MG113 masks):
#if (G113PL != 0)
interrupt void EPWM11_INT_ISR(void)     // ePWM11 Interrupt
{
	// Set interrupt priority:
	volatile Uint16 TempPIEIER = PieCtrlRegs.PIEIER11.all;
	IER |= M_INT11;
	IER	&= MINT11;	  	                // Set "global" priority
	PieCtrlRegs.PIEIER3.all &= MG113;   // Set "group"  priority	
	PieCtrlRegs.PIEACK.all = 0xFFFF;    // Enable PIE interrupts	
	EINT;

  	// Insert ISR Code here.......

	// Restore registers saved:
	DINT;
	PieCtrlRegs.PIEIER11.all = TempPIEIER;

    // Next two lines for debug only to halt the processor here
    // Remove after inserting ISR Code
    asm ("      ESTOP0");
    for(;;);
}     
#endif

// Connected to PIEIER11_4 (use MINT11 and MG114 masks):
#if (G114PL != 0)
interrupt void EPWM12_INT_ISR(void)     // ePWM12 Interrupt
{
	// Set interrupt priority:
	volatile Uint16 TempPIEIER = PieCtrlRegs.PIEIER11.all;
	IER |= M_INT11;
	IER	&= MINT11;	  	                // Set "global" priority
	PieCtrlRegs.PIEIER3.all &= MG114;   // Set "group"  priority	
	PieCtrlRegs.PIEACK.all = 0xFFFF;    // Enable PIE interrupts	
	EINT;

  	// Insert ISR Code here.......

	// Restore registers saved:
	DINT;
	PieCtrlRegs.PIEIER11.all = TempPIEIER;

    // Next two lines for debug only to halt the processor here
    // Remove after inserting ISR Code
    asm ("      ESTOP0");
    for(;;);
}     
#endif


// Connected to PIEIER11_5 (use MINT11 and MG115 masks):
#if (G115PL != 0)
interrupt void EPWM13_INT_ISR(void)     // ePWM13 Interrupt
{
	// Set interrupt priority:
	volatile Uint16 TempPIEIER = PieCtrlRegs.PIEIER11.all;
	IER |= M_INT11;
	IER	&= MINT11;	  	                // Set "global" priority
	PieCtrlRegs.PIEIER3.all &= MG115;   // Set "group"  priority	
	PieCtrlRegs.PIEACK.all = 0xFFFF;    // Enable PIE interrupts	
	EINT;

  	// Insert ISR Code here.......

	// Restore registers saved:
	DINT;
	PieCtrlRegs.PIEIER11.all = TempPIEIER;

    // Next two lines for debug only to halt the processor here
    // Remove after inserting ISR Code
    asm ("      ESTOP0");
    for(;;);
}     
#endif


// Connected to PIEIER11_6 (use MINT11 and MG116 masks):
#if (G116PL != 0)
interrupt void EPWM14_INT_ISR(void)     // ePWM14 Interrupt
{
	// Set interrupt priority:
	volatile Uint16 TempPIEIER = PieCtrlRegs.PIEIER11.all;
	IER |= M_INT11;
	IER	&= MINT11;	  	                // Set "global" priority
	PieCtrlRegs.PIEIER3.all &= MG116;   // Set "group"  priority	
	PieCtrlRegs.PIEACK.all = 0xFFFF;    // Enable PIE interrupts	
	EINT;

  	// Insert ISR Code here.......

	// Restore registers saved:
	DINT;
	PieCtrlRegs.PIEIER11.all = TempPIEIER;

    // Next two lines for debug only to halt the processor here
    // Remove after inserting ISR Code
    asm ("      ESTOP0");
    for(;;);
}     
#endif


// Connected to PIEIER11_7 (use MINT11 and MG117 masks):
#if (G117PL != 0)
interrupt void EPWM15_INT_ISR(void)     // ePWM15 Interrupt
{
	// Set interrupt priority:
	volatile Uint16 TempPIEIER = PieCtrlRegs.PIEIER11.all;
	IER |= M_INT11;
	IER	&= MINT11;	  	                // Set "global" priority
	PieCtrlRegs.PIEIER3.all &= MG117;   // Set "group"  priority	
	PieCtrlRegs.PIEACK.all = 0xFFFF;    // Enable PIE interrupts	
	EINT;

  	// Insert ISR Code here.......

	// Restore registers saved:
	DINT;
	PieCtrlRegs.PIEIER11.all = TempPIEIER;

    // Next two lines for debug only to halt the processor here
    // Remove after inserting ISR Code
    asm ("      ESTOP0");
    for(;;);
}     
#endif


// Connected to PIEIER11_8 (use MINT11 and MG118 masks):
#if (G118PL != 0)
interrupt void EPWM16_INT_ISR(void)     // ePWM16 Interrupt
{
	// Set interrupt priority:
	volatile Uint16 TempPIEIER = PieCtrlRegs.PIEIER11.all;
	IER |= M_INT11;
	IER	&= MINT11;	  	                // Set "global" priority
	PieCtrlRegs.PIEIER3.all &= MG118;   // Set "group"  priority	
	PieCtrlRegs.PIEACK.all = 0xFFFF;    // Enable PIE interrupts	
	EINT;

  	// Insert ISR Code here.......

	// Restore registers saved:
	DINT;
	PieCtrlRegs.PIEIER11.all = TempPIEIER;

    // Next two lines for debug only to halt the processor here
    // Remove after inserting ISR Code
    asm ("      ESTOP0");
    for(;;);
}     
#endif



// -----------------------------------------------------------
// PIE Group 12 - MUXed into CPU INT12
// -----------------------------------------------------------

// Connected to PIEIER12_1 (use MINT12 and MG121 masks):
// Connected to PIEIER12_2 (use MINT12 and MG122 masks):
// Connected to PIEIER12_3 (use MINT12 and MG123 masks):
// Connected to PIEIER12_4 (use MINT12 and MG124 masks):
// Connected to PIEIER12_5 (use MINT12 and MG125 masks):
// Connected to PIEIER12_6 (use MINT12 and MG126 masks):
// Connected to PIEIER12_7 (use MINT12 and MG127 masks):
// Connected to PIEIER12_8 (use MINT12 and MG128 masks):

//---------------------------------------------------------------------------
// Catch All Default ISRs: 
//

interrupt void EMPTY_ISR(void)  // Empty ISR - only does a return.
{

}

interrupt void PIE_RESERVED(void)  // Reserved space.  For test.
{
  asm ("      ESTOP0");
  for(;;);
}

interrupt void INT_NOTUSED_ISR(void)  // Reserved space.  For test.
{
  asm ("      ESTOP0");
  for(;;);
}

interrupt void rsvd_ISR(void)      // For test
{
  asm ("      ESTOP0");
  for(;;);
}

//===========================================================================
// No more.
//===========================================================================
