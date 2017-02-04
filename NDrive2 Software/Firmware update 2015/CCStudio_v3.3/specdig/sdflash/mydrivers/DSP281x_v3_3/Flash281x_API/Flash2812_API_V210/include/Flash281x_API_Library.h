// TI File $Revision: /main/11 $
// Checkin $Date: July 5, 2005   10:49:41 $
//###########################################################################
//
// FILE:  Flash281x_API_Library.h	
//
// TITLE: F281x Flash Algo's main include file
//
// DESCRIPTION:
//
//       This file should be included in any project that uses any of the
//       the F281x flash APIs.    
//
//###########################################################################
// $TI Release: Flash281x API V2.10 $
// $Release Date: August 4, 2005 $
//###########################################################################

#ifndef FLASH281X_API_LIBRARY_H
#define FLASH281X_API_LIBRARY_H

#include "Flash281x_API_Config.h"

#ifdef __cplusplus
extern "C" {
#endif



/*---------------------------------------------------------------------------
 28x Datatypes

 For Portability, User Is Recommended To Use Following Data Type Size
 Definitions For 16-bit and 32-Bit Signed/Unsigned Integers:
---------------------------------------------------------------------------*/

#ifndef DSP28_DATA_TYPES
#define DSP28_DATA_TYPES
typedef int             int16;
typedef long            int32;
typedef unsigned int    Uint16;
typedef unsigned long   Uint32;
typedef float           float32;
typedef long double     float64;
#endif

/*---------------------------------------------------------------------------
 API Status Messages

 The following status values are returned from the API to the calling
 program.  These can be used to determine if the API function passed
 or failed.  
---------------------------------------------------------------------------*/
 // Operation passed, no errors were flagged
#define STATUS_SUCCESS                        0   

// The CSM is preventing the function from performing its operation
#define STATUS_FAIL_CSM_LOCKED               10

// Device REVID does not match that required by the API
#define STATUS_FAIL_REVID_INVALID            11
    
// Invalid address passed to the API
#define STATUS_FAIL_ADDR_INVALID             12

// Incorrect PARTID
// For example the F2812 API was used on a F2808 device. 
#define STATUS_FAIL_INCORRECT_PARTID         13

// API/Silicon missmatch.  An old version of the
// API is being used on silicon it is not valid for
// Please update to the latest API. 
#define STATUS_FAIL_API_SILICON_MISMATCH     14

// ---- Erase Specific errors ---- 
#define STATUS_FAIL_NO_SECTOR_SPECIFIED      20
#define STATUS_FAIL_PRECONDITION             21
#define STATUS_FAIL_ERASE                    22
#define STATUS_FAIL_COMPACT                  23
#define STATUS_FAIL_PRECOMPACT               24

// ---- Program Specific errors ----  
#define STATUS_FAIL_PROGRAM                  30
#define STATUS_FAIL_ZERO_BIT_ERROR           31

// ---- Verify Specific errors ----
#define STATUS_FAIL_VERIFY                   40

// Busy is set by each API function before it determines
// a pass or fail condition for that operation.  
// The calling function will will not receive this 
// status condition back from the API
#define STATUS_BUSY                999    

/*---------------------------------------------------------------------------
 Flash sector mask definitions

 The following macros can be used to form a mask specifying which sectors
 will be erased by the erase API function.
 
 Bit0 = Sector A
 Bit1 = Sector B
 ...
 Bit9 = Sector J
---------------------------------------------------------------------------*/

#define SECTORA   (Uint16)0x0001
#define SECTORB   (Uint16)0x0002
#define SECTORC   (Uint16)0x0004
#define SECTORD   (Uint16)0x0008
#define SECTORE   (Uint16)0x0010
#define SECTORF   (Uint16)0x0020
#define SECTORG   (Uint16)0x0040
#define SECTORH   (Uint16)0x0080
#define SECTORI   (Uint16)0x0100
#define SECTORJ   (Uint16)0x0200

#if FLASH_F2812
// All sectors on an F2812 - Sectors A - J
#define SECTOR_F2812  (SECTORA|SECTORB|SECTORC|\
                       SECTORD|SECTORE|SECTORF|\
                       SECTORG|SECTORH|SECTORI|\
                       SECTORJ)
#endif // -- end FLASH_F2812

#if FLASH_F2811
// All sectors on an F2811 - Sectors A - J
#define SECTOR_F2811  (SECTORA|SECTORB|SECTORC|\
                       SECTORD|SECTORE|SECTORF|\
                       SECTORG|SECTORH|SECTORI|\
                       SECTORJ)
#endif // -- end FLASH_F2811

#if FLASH_F2810
// All sectors on an F2810 - Sectors A - E
#define SECTOR_F2810  (SECTORA|SECTORB|SECTORC|\
                       SECTORD|SECTORE)
#endif // -- end FLASH_F2810

/*---------------------------------------------------------------------------
 API Status Structure
 
 This structure is used to pass debug data back to the calling routine.
 Note that the Erase API function has 3 parts: precondition, erase and
 and compaction. Erase and compaction failures will not populate 
 the expected and actual data fields.  
---------------------------------------------------------------------------*/

typedef struct {
    Uint32  FirstFailAddr;
    Uint16  ExpectedData;
    Uint16  ActualData;
}FLASH_ST;

/*---------------------------------------------------------------------------
   Interface Function prototypes
   
   For each 281x Flash API library, the function names are of the form:
   Flash<DeviceNum>_<Operation>()
   
   Where <DeviceNum> is the device: ie 2810, 2811 or 2812
         <Operation> is the operation such as Erase, Program...
         
   For portability for users who may move between the F2810, F2811 and
   F2812, the following macro definitions are supplied. 
   
   Using these macro definitions, the user can use instead make a generic
   call:  Flash_<Operation> and the macro will map the call to the proper
   device function
---------------------------------------------------------------------------*/

#if FLASH_F2810
#define Flash_Erase(a,b)        Flash2810_Erase(a,b)
#define Flash_Program(a,b,c,d)  Flash2810_Program(a,b,c,d)
#define Flash_Verify(a,b,c,d)   Flash2810_Verify(a,b,c,d)
#define Flash_ToggleTest(a,b,c) Flash2810_ToggleTest(a,b,c)
#define Flash_DepRecover()      Flash2810_DepRecover()
#define Flash_APIVersion()      Flash2810_APIVersion()
#define Flash_APIVersionHex()   Flash2810_APIVersionHex()

#elif FLASH_F2811
#define Flash_Erase(a,b)        Flash2811_Erase(a,b)
#define Flash_Program(a,b,c,d)  Flash2811_Program(a,b,c,d)
#define Flash_Verify(a,b,c,d)   Flash2811_Verify(a,b,c,d)
#define Flash_ToggleTest(a,b,c) Flash2811_ToggleTest(a,b,c)
#define Flash_DepRecover()      Flash2811_DepRecover()   
#define Flash_APIVersion()      Flash2811_APIVersion()
#define Flash_APIVersionHex()   Flash2811_APIVersionHex()
  
#elif FLASH_F2812
#define Flash_Erase(a,b)        Flash2812_Erase(a,b)
#define Flash_Program(a,b,c,d)  Flash2812_Program(a,b,c,d)
#define Flash_Verify(a,b,c,d)   Flash2812_Verify(a,b,c,d)
#define Flash_ToggleTest(a,b,c) Flash2812_ToggleTest(a,b,c)
#define Flash_DepRecover()      Flash2812_DepRecover()
#define Flash_APIVersion()      Flash2812_APIVersion()
#define Flash_APIVersionHex()   Flash2812_APIVersionHex()
#endif

extern Uint16  Flash_Erase(Uint16 SectorMask, FLASH_ST *FEraseStat);
extern Uint16  Flash_Program(volatile Uint16 *FlashAddr, volatile Uint16 *BufAddr, Uint32 Length, FLASH_ST *FProgStatus);
extern Uint16  Flash_Verify(volatile Uint16 *StartAddr, volatile Uint16 *BufAddr, Uint32 Length, FLASH_ST *FVerifyStat);
extern void    Flash_ToggleTest(volatile Uint16 *MuxReg, volatile Uint16 *ToggleReg, Uint16 Mask);
extern Uint16  Flash_DepRecover();
extern Uint16  Flash_APIVersionHex();
extern float32 Flash_APIVersion();

/*---------------------------------------------------------------------------
   Frequency Scale factor:
   The calling program must provide this global parameter used
   for frequency scaling the algo's.
----------------------------------------------------------------------------*/

extern Uint32 Flash_CPUScaleFactor;

/*---------------------------------------------------------------------------
   Callback Function Pointer:
   A callback function can be specified.  This function will be called
   at safe times during erase, program and verify.  This function can
   then be used to service an external watchdog or send a communications
   packet.
   
   Note: 
   THE FLASH AND OTP ARE NOT AVAILABLE DURING THIS FUNCTION CALL.
   THE FLASH/OTP CANNOT BE READ NOR CAN CODE EXECUTE FROM IT DURING THIS CALL
   DO NOT CALL ANY OF THE THE FLASH API FUNCTIONS DURING THIS CALL
----------------------------------------------------------------------------*/
extern void (*Flash_CallbackPtr) (void);


/*---------------------------------------------------------------------------
   API load/run symbols:
   These symbols are defined by the linker during the link.  Refer to the
   Flash28_API section in the example .cmd file:

   Flash28_API:
   {
        Flash2812_API_Library.lib(.econst) 
        Flash2812_API_Library.lib(.text)
   } LOAD = FLASH, 
     RUN = SARAM, 
     LOAD_START(_Flash28_API_LoadStart),
     LOAD_END(_Flash28_API_LoadEnd),
     RUN_START(_Flash28_API_RunStart),
     PAGE = 0
   
   These are used to copy the flash API from flash to SARAM
   
----------------------------------------------------------------------------*/

extern Uint16 Flash28_API_LoadStart;
extern Uint16 Flash28_API_LoadEnd;
extern Uint16 Flash28_API_RunStart;

#ifdef __cplusplus
}
#endif /* extern "C" */


#endif // -- end FLASH2812_API_LIBRARY_H 

// --------- END OF FILE ----------------------------------

