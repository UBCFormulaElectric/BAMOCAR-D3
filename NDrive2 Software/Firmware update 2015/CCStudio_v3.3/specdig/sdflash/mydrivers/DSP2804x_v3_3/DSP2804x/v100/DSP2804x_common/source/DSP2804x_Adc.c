// TI File $Revision: /main/2 $
// Checkin $Date: July 17, 2006   16:19:23 $
//###########################################################################
//
// FILE:	DSP2804x_Adc.c
//
// TITLE:	DSP2804x ADC Initialization & Support Functions.
//
//###########################################################################
// $TI Release: DSP2804x Header Files V1.00 $
// $Release Date: August 15, 2006 $
//###########################################################################

#include "DSP2804x_Device.h"     // DSP2804x Headerfile Include File
#include "DSP2804x_Examples.h"   // DSP2804x Examples Include File

#define ADC_usDELAY  5000L

//---------------------------------------------------------------------------
// InitAdc: 
//---------------------------------------------------------------------------
// This function initializes ADC to a known state.
//
// PLEASE NOTE, ADC INIT IS DIFFERENT ON 281x vs 2804x DEVICES!!!
//
void InitAdc(void)
{
    extern void DSP28x_usDelay(Uint32 Count);

    // To powerup the ADC the ADCENCLK bit should be set first to enable
    // clocks, followed by powering up the bandgap, reference circuitry, and ADC core.
    // Before the first conversion is performed a 5ms delay must be observed 
	// after power up to give all analog circuits time to power up and settle

    // Please note that for the delay function below to operate correctly the 
	// CPU_CLOCK_SPEED define statement in the DSP2804x_Examples.h file must 
	// contain the correct CPU clock period in nanoseconds. 

    AdcRegs.ADCTRL3.all = 0x00E0;  // Power up bandgap/reference/ADC circuits
    DELAY_US(ADC_usDELAY);         // Delay before converting ADC channels
}	

//===========================================================================
// End of file.
//===========================================================================
