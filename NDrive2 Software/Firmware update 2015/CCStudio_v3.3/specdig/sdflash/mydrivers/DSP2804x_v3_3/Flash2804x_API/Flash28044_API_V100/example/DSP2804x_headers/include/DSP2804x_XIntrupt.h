// TI File $Revision: /main/2 $
// Checkin $Date: July 17, 2006   16:25:58 $
//###########################################################################
//
// FILE:  DSP2804x_XIntrupt.h
//
// TITLE: DSP2804x Device External Interrupt Register Definitions.
//
//###########################################################################
// $TI Release: F28044 API Release V1.0 $
// $Release Date: August 15, 2006 $
//###########################################################################

#ifndef DSP2804x_XINTRUPT_H
#define DSP2804x_XINTRUPT_H


#ifdef __cplusplus
extern "C" {
#endif

//---------------------------------------------------------------------------

struct XINTCR_BITS {
    Uint16   ENABLE:1;    // 0      enable/disable
    Uint16   rsvd1:1;     // 1      reserved
    Uint16   POLARITY:2;  // 3:2    pos/neg, both triggered
    Uint16   rsvd2:12;    //15:4    reserved
};

union XINTCR_REG {
   Uint16               all;
   struct XINTCR_BITS   bit;
};  

struct XNMICR_BITS {
    Uint16   ENABLE:1;    // 0      enable/disable
    Uint16   SELECT:1;    // 1      Timer 1 or XNMI connected to INT13
    Uint16   POLARITY:2;  // 3:2    pos/neg, or both triggered
    Uint16   rsvd2:12;    // 15:4   reserved
};

union XNMICR_REG {
   Uint16               all;
   struct XNMICR_BITS   bit;
};  




//---------------------------------------------------------------------------
// External Interrupt Register File:
//
struct XINTRUPT_REGS {
   union XINTCR_REG XINT1CR;
   union XINTCR_REG XINT2CR;
   Uint16           rsvd1[5];
   union XNMICR_REG XNMICR;
   Uint16           XINT1CTR;
   Uint16           XINT2CTR;
   Uint16           rsvd[5];
   Uint16           XNMICTR;
};

//---------------------------------------------------------------------------
// External Interrupt References & Function Declarations:
//
extern volatile struct XINTRUPT_REGS XIntruptRegs;

#ifdef __cplusplus
}
#endif /* extern "C" */

#endif  // end of DSP2804x_XINTF_H definition

//===========================================================================
// End of file.
//===========================================================================

