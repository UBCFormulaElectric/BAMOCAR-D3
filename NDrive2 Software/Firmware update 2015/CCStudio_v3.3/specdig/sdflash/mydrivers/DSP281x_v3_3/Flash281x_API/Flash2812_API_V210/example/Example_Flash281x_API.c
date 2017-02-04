//###########################################################################
//
// FILE:  Example_Flash281x_API.c	
//
// TITLE: F281x Flash API Example
//
// NOTE:  This example runs from Flash.  First program the example
//        into flash.  The code will then copy the API's to RAM and 
//        modify the flash. 
//
//
//###########################################################################
// $TI Release: Flash281x API V2.10 $
// $Release Date: August 4, 2005 $
//###########################################################################


/*---- Flash API include file -------------------------------------------------*/
#include "Flash281x_API_Library.h"

/*---- example include file -------------------------------------------------*/
#include "Example_Flash281x_API.h"

/*--- Global variables used to interface to the flash routines */
FLASH_ST EraseStatus;
FLASH_ST ProgStatus;
FLASH_ST VerifyStatus; 
                               
/*--- Callback function.  Function specified by defining Flash_CallbackPtr */
void MyCallbackFunction(void); 
  
Uint32 MyCallbackCounter; // Just increment a counter in the callback function



void main( void )
{   


/*------------------------------------------------------------------
 To use the F2812, F2811 or F2810 Flash API, the following steps
 must be followed:

      1. Modify Flash281x_API.config.h for your targets operating
         conditions.
      2. Include Flash281x_API_Library.h in the application.
      3. Add the approparite Flash API library to the project.

  The user's code is responsible for the following:

      4. Initalize the PLL to the proper CPU operating frequency.
      5. If required, copy the flash API functions into on-chip zero waitstate
         RAM.  
      6. Initalize the Flash_CPUScaleFactor variable to SCALE_FACTOR 
      7. Initalize the flash callback function pointer. 
      8. Optional: Run the Toggle test to confirm proper frequency configuration
         of the API. 
      9. Optional: Unlock the CSM.  
     10. Call the API functions: Flash_Erase(), Flash_Program(), Flash_Verify()
         
  The API functions will:
      
       Disable the watchdog
       Check the device revision (REVID).  This API is for Revision C silicon
       Perform the desired operation and return status
------------------------------------------------------------------*/

   Uint16 i;
   Uint16 Status;
/*------------------------------------------------------------------
 Initalize the PLLCR value before calling any of the F2810, F2811
 or F281x Flash API functions.
        
     Check to see if the PLL needs to changed
     PLLCR_VALUE is defined in Example_Flash281x_API.h
     1) Make the change
     2) Wait for the DSP to switch to the PLL clock
        This wait is performed to ensure that the flash API functions 
        will be executed at the correct frequency.
     3) While waiting, feed the watchdog so it will not reset. 
------------------------------------------------------------------*/

    if(*PLLCR != PLLCR_VALUE) 
    {
       EALLOW;
       *PLLCR = PLLCR_VALUE;
       
       // Wait for PLL to lock
       // Each time through this loop takes ~14 cycles
       // PLL Lock time is 131072 Cycles
       for(i= 0; i< 131072/14; i++){
           *WDKEY = 0x0055;
           *WDKEY = 0x00AA;
       }
       EDIS;
    }

/*------------------------------------------------------------------
 Unlock the CSM.
    If the API functions are going to run in unsecured RAM
    then the CSM must be unlocked in order for the flash 
    API functions to access the flash.
   
    If the flash API functions are executed from secure memory 
    (L0/L1) then this step is not required.
------------------------------------------------------------------*/
    
   Status = Example_CsmUnlock();
   if(Status != STATUS_SUCCESS) 
   {
       Example_Error(Status);
   }


/*------------------------------------------------------------------
    Copy API Functions into SARAM
    
    The flash API functions MUST be run out of internal 
    zero-waitstate SARAM memory.  This is required for 
    the algos to execute at the proper CPU frequency.
    If the algos are already in SARAM then this step
    can be skipped.  
    DO NOT run the algos from Flash
    DO NOT run the algos from external memory
------------------------------------------------------------------*/

    // Copy the Flash API functions to SARAM
    Example_MemCopy(&Flash28_API_LoadStart, &Flash28_API_LoadEnd, &Flash28_API_RunStart);

    // We must also copy required user interface functions to RAM. 
    Example_MemCopy(&RamfuncsLoadStart, &RamfuncsLoadEnd, &RamfuncsRunStart);


/*------------------------------------------------------------------
  Initalize Flash_CPUScaleFactor.

   Flash_CPUScaleFactor is a 32-bit global variable that the flash
   API functions use to scale software delays. This scale factor 
   must be initalized to SCALE_FACTOR by the user's code prior
   to calling any of the Flash API functions. This initalization
   is VITAL to the proper operation of the flash API functions.  
   
   SCALE_FACTOR is defined in Example_Flash281x_API.h as   
     #define SCALE_FACTOR  1048576.0L*( (200L/CPU_RATE) )
     
   This value is calculated during the compile based on the CPU 
   rate, in nanoseconds, at which the algorithums will be run.
------------------------------------------------------------------*/
   
   Flash_CPUScaleFactor = SCALE_FACTOR;


/*------------------------------------------------------------------
  Initalize Flash_CallbackPtr.

   Flash_CallbackPtr is a pointer to a function.  The API uses
   this pointer to invoke a callback function during the API operations.
   If this function is not going to be used, set the pointer to NULL
   NULL is defined in <stdio.h>.  
------------------------------------------------------------------*/
   
   Flash_CallbackPtr = &MyCallbackFunction; 
   
   MyCallbackCounter = 0; // Increment this counter in the callback function
                                  
   
   // Jump to SARAM and call the Flash API functions
   Example_CallFlashAPI();

}

/*------------------------------------------------------------------
   Example_CallFlashAPI

   This function will interface to the flash API.  
 
   Parameters:  
  
   Return Value:
        
   Notes:  This function will be executed from SARAM
     
-----------------------------------------------------------------*/


#pragma CODE_SECTION(Example_CallFlashAPI,"ramfuncs");
void Example_CallFlashAPI(void)
{
   Uint16 i;
   Uint16 Status;
   Uint16 *Flash_ptr;     // Pointer to a location in flash
   Uint32 Length;         // Number of 16-bit values to be programmed
   float32 VersionFloat;
   Uint16  VersionHex;

/*------------------------------------------------------------------
  Toggle Test

  The toggle test is run to verify the frequency configuration of
  the API functions.
  
  The selected pin will toggle at 10kHz (100uS cycle time) if the
  API is configured correctly.
  
  Example_ToggleTest() supports common output pins. Other pins can be used
  by modifying the Example_ToggleTest() function or calling the Flash_ToggleTest()
  function directly.
  
  Select a pin that makes sense for the hardware platform being used.
  
  This test will run forever and not return, thus only run this test
  to confirm frequency configuration and not during normal API use.
------------------------------------------------------------------*/

   // Example: Toggle XF
   // Example_ToggleTest(TOGGLE_XF);
   
   // Example: Toggle PWM1
   // Example_ToggleTest(TOGGLE_PWM1);
   
   // Example: Toggle SCITXDA
   // Example_ToggleTest(TOGGLE_SCITXDA);   

/*------------------------------------------------------------------
  Get the API version in hex or floating point 

------------------------------------------------------------------*/

   VersionFloat = Flash_APIVersion();
   if(VersionFloat != (float32)2.10) 
   {
       Example_Error(1);
   }    
   
   VersionHex = Flash_APIVersionHex();
   if(VersionHex != 0x0210) 
   {
       Example_Error(1);
   }   
   
                               
/*------------------------------------------------------------------
  Before programming make sure the sectors are Erased. 

------------------------------------------------------------------*/


   // Example: Erase Sector B,C,E
   // Sectors A and D have the example code so leave them 
   // programmed.

   // SECTORB, SECTORC and SECTORE are defined in Flash281x_API_Library.h
   Status = Flash_Erase((SECTORB|SECTORC|SECTORE),&EraseStatus);
   if(Status != STATUS_SUCCESS) 
   {
       Example_Error(Status);
   }


   

/*------------------------------------------------------------------
  Program Flash Examples

------------------------------------------------------------------*/

// A buffer can be supplied to the program function.  Each word is
// programmed until the whole buffer is programmed or a problem is 
// found.  If the buffer goes outside of the range of OTP or Flash
// then nothing is done and an error is returned. 
   
    // Example: Program 0x400 values in Flash Sector E starting at 
    // 0x3E8000.

    // In this case just fill a buffer with data to program into the flash. 
    for(i=0;i<0x400;i++)
    {
        Buffer[i] = 0x8000+i;
    }
    
    Flash_ptr = (Uint16 *)0x003E8000;
    Length = 0x400;
    Status = Flash_Program(Flash_ptr,Buffer,Length,&ProgStatus);
    if(Status != STATUS_SUCCESS) 
    {
        Example_Error(Status);
    }




    // Verify the values programmed.  The Program step itself does a verify
    // as it goes.  This verify is a 2nd verification that can be done.      
    Status = Flash_Verify(Flash_ptr,Buffer,Length,&VerifyStatus);
    if(Status != STATUS_SUCCESS) 
    {
        Example_Error(Status);
    }            


// --------------

    // Example: Program 0x199 values in Flash Sector B starting at 
    // 0x3F4500. 
    for(i=0;i<0x400;i++)
    {
        Buffer[i] = 0x4500+i;
    }
    
    Flash_ptr = (Uint16 *)0x003F4500;
    Length = 0x199;
    Status = Flash_Program(Flash_ptr,Buffer,Length,&ProgStatus);
    if(Status != STATUS_SUCCESS) 
    {
        Example_Error(Status);
    }
    
    // Verify the values programmed.  The Program step itself does a verify
    // as it goes.  This verify is a 2nd verification that can be done.      
    Status = Flash_Verify(Flash_ptr,Buffer,Length,&VerifyStatus);
    if(Status != STATUS_SUCCESS) 
    {
        Example_Error(Status);
    } 


// --------------
// You can program a single bit in a memory location and then go back to 
// program another bit in the same memory location. 

   // Example: Program bit 0 in location in location 0x3F2000
   // which is in Flash Sector C.  That is program the value 0xFFFE
   Flash_ptr = (Uint16 *)0x003F2000;
   i = 0xFFFE;
   Length = 1;
   Status = Flash_Program(Flash_ptr,&i,Length,&ProgStatus);
   if(Status != STATUS_SUCCESS) 
   {
       Example_Error(Status);
   }

   // Example: Program bit 1 in the same location 0x3F2000. Remember
   // that bit 0 was already programmed so the value will be 0xFFFC
   // (bit 0 and bit 1 will both be 0) 
   
   i = 0xFFFC;
   Length = 1;
   Status = Flash_Program(Flash_ptr,&i,Length,&ProgStatus);
   // This should return a STATUS_FAIL_ZERO_BIT_ERROR
   if(Status != STATUS_SUCCESS) 
   {
       Example_Error(Status);
   }
   

    // Verify the value in 0x3F2000.  This first verify should fail. 
    i = 0xFFFE;    
    Status = Flash_Verify(Flash_ptr,&i,Length,&VerifyStatus);
    if(Status != STATUS_FAIL_VERIFY) 
    {
        Example_Error(Status);
    } 
    
    // This is the correct value and will pass.
    i = 0xFFFC;
    Status = Flash_Verify(Flash_ptr,&i,Length,&VerifyStatus);
    if(Status != STATUS_SUCCESS) 
    {
        Example_Error(Status);
    } 

// --------------
// If a bit has already been programmed, it cannot be brought back to a 1 by
// the program function.  The only way to bring a bit back to a 1 is by erasing
// the entire sector that the bit belongs to.  This example shows the error
// that program will return if a bit is specified as a 1 when it has already
// been programmed to 0.

   // Example: Program a single 16-bit value, 0x0002, into location 0x3F2001
   // which is in Flash Sector C
   Flash_ptr = (Uint16 *)0x003F2001;
   i = 0x0000;
   Length = 1;
   Status = Flash_Program(Flash_ptr,&i,Length,&ProgStatus);
   if(Status != STATUS_SUCCESS) 
   {
       Example_Error(Status);
   }

   // Example: This will return an error!!  Can't program 0x0001
   // because bit 0 in the the location was previously programmed
   // to zero!
   
   i = 0x0001;
   Length = 1;
   Status = Flash_Program(Flash_ptr,&i,Length,&ProgStatus);
   // This should return a STATUS_FAIL_ZERO_BIT_ERROR
   if(Status != STATUS_FAIL_ZERO_BIT_ERROR) 
   {
       Example_Error(Status);
   }
   
// --------------   
   
   // Example: This will return an error!!  The location specified
   // 0x3F8000 is outside of the Flash and OTP!
   Flash_ptr = (Uint16 *)0x003F8000;
   i = 0x0001;
   Length = 1;
   Status = Flash_Program(Flash_ptr,&i,Length,&ProgStatus);
   // This should return a STATUS_FAIL_ADDR_INVALID error
   if(Status != STATUS_FAIL_ADDR_INVALID) 
   {
       Example_Error(Status);
   }
   
// --------------   
   
    // Example: This will return an error.  The end of the buffer falls 
    // outside of the flash bank. No values will be programmed 
    for(i=0;i<13;i++)
    {
        Buffer[i] = 0xFFFF;
    }
    
    Flash_ptr = (Uint16 *)0x003F7FF8;
    Length = 13;
    Status = Flash_Program(Flash_ptr,Buffer,Length,&ProgStatus);
    if(Status != STATUS_FAIL_ADDR_INVALID) 
    {
        Example_Error(Status);
    }   


/*------------------------------------------------------------------
  More Erase Sectors Examples - Clean up the sectors we wrote to:

------------------------------------------------------------------*/

   // Example: Erase Sector B
   // SECTORB is defined in Flash281x_API_Library.h
   Status = Flash_Erase(SECTORB,&EraseStatus);
   if(Status != STATUS_SUCCESS) 
   {
       Example_Error(Status);
   }
   
   // Example: Erase Sector C and Sector E
   // SECTORC and SECTORE are defined in Flash281x_API_Library.h
   Status = Flash_Erase((SECTORC|SECTORE),&EraseStatus);
   if(Status != STATUS_SUCCESS) 
   {
       Example_Error(Status);
   }
   
   
   // Example: This will return an error. No valid sector is specified.
   Status = Flash_Erase(0,&EraseStatus);
   // Should return STATUS_FAIL_NO_SECTOR_SPECIFIED
   if(Status != STATUS_FAIL_NO_SECTOR_SPECIFIED) 
   {
       Example_Error(Status);
   }

      
   Example_Done();
 
} 


/*------------------------------------------------------------------
   Example_CsmUnlock

   Unlock the code security module (CSM)
 
   Parameters:
  
   Return Value:
 
            STATUS_SUCCESS         CSM is unlocked
            STATUS_FAIL_UNLOCK     CSM did not unlock
        
   Notes:
     
-----------------------------------------------------------------*/
Uint16 Example_CsmUnlock()
{
    volatile Uint16 temp;
    
    // Load the key registers with the current password
    // These are defined in Example_Flash281x_CsmKeys.asm
    
    EALLOW;
    *KEY0 = PRG_key0;
    *KEY1 = PRG_key1;
    *KEY2 = PRG_key2;
    *KEY3 = PRG_key3;
    *KEY4 = PRG_key4;
    *KEY5 = PRG_key5;
    *KEY6 = PRG_key6;
    *KEY7 = PRG_key7;   
    EDIS;

    // Perform a dummy read of the password locations
    // if they match the key values, the CSM will unlock 
        
    temp = *PWL0;
    temp = *PWL1;
    temp = *PWL2;
    temp = *PWL3;
    temp = *PWL4;
    temp = *PWL5;
    temp = *PWL6;
    temp = *PWL7;
 
    // If the CSM unlocked, return succes, otherwise return
    // failure.
    if ( (*CSMSCR & 0x0001) == 0) return STATUS_SUCCESS;
    else return STATUS_FAIL_CSM_LOCKED;
    
}

/*------------------------------------------------------------------
   Example_ToggleTest
  
   This function shows example calls to the ToggleTest.  

   This test is used to Toggle a GPIO pin at a known rate and thus 
   confirm the frequency configuration of the API functions.
   
   Common output pins are supported here, however the user could
   call the function with any GPIO mux register and pin mask.
   
   A pin should be selected based on the hardware being used. 
   
   Parameters: Uint16 PinNumber

   Return Value: The toggle test does not return.  It will loop 
                 forever and is used only for testing purposes.
        
   Notes:
----------------------------------------------------------------*/
     
void Example_ToggleTest(Uint16 PinNumber)
{

       switch(PinNumber) {
          case 0:
             break;
          case 1:
             Flash_ToggleTest(GPFMUX,GPFTOGGLE,GPIOF14_XF_MASK);
             break;
          case 2:
             Flash_ToggleTest(GPAMUX,GPATOGGLE,GPIOA0_PWM1_MASK);
             break;
          case 3:
             Flash_ToggleTest(GPFMUX,GPFTOGGLE,GPIOF4_SCITXDA_MASK);
             break;
          case 4:
             Flash_ToggleTest(GPGMUX,GPGTOGGLE,GPIOG4_SCITXDB_MASK);
             break;
          case 5:
             Flash_ToggleTest(GPFMUX,GPFTOGGLE,GPIOF12_MDXA_MASK);
             break;
          default:
             break;
       }          
}


/*------------------------------------------------------------------
  Callback function - must be executed from outside flash/OTP
-----------------------------------------------------------------*/
#pragma CODE_SECTION(MyCallbackFunction,"ramfuncs");
void MyCallbackFunction(void)
{       
    // Toggle pin, service external watchdog etc
    MyCallbackCounter++;
    asm("    NOP");

}



/*------------------------------------------------------------------
  Simple memory copy routine to move code out of flash into SARAM
-----------------------------------------------------------------*/

void Example_MemCopy(Uint16 *SourceAddr, Uint16* SourceEndAddr, Uint16* DestAddr)
{
    while(SourceAddr < SourceEndAddr)
    { 
       *DestAddr++ = *SourceAddr++;
    }
    return;
}


/*------------------------------------------------------------------
  For this example, if an error is found just stop here
-----------------------------------------------------------------*/
#pragma CODE_SECTION(Example_Error,"ramfuncs");
void Example_Error(Uint16 Status)
{

//  Error code will be in the AL register. 
    asm("    ESTOP0");
    asm("    SB 0, UNC");
}


/*------------------------------------------------------------------
  For this example, once we are done just stop here
-----------------------------------------------------------------*/
#pragma CODE_SECTION(Example_Done,"ramfuncs");
void Example_Done(void)
{

    asm("    ESTOP0");
    asm("    SB 0, UNC");
}


