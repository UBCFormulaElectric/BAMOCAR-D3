;***************************************************************
;* TMS320C2000 C/C++ Codegen                         PC v4.1.3 *
;* Date/Time created: Tue Mar 27 07:58:13 2007                 *
;***************************************************************
	.compiler_opts --mem_model:code=flat --mem_model:data=large --quiet --silicon_version=28 
FP	.set	XAR2

DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr DW$CU, DW_AT_name("DSP280x_GlobalVariableDefs.c")
	.dwattr DW$CU, DW_AT_producer("TMS320C2000 C/C++ Codegen PC v4.1.3 Copyright (c) 1996-2006 Texas Instruments Incorporated")
	.dwattr DW$CU, DW_AT_stmt_list(0x00)
	.dwattr DW$CU, DW_AT_TI_VERSION(0x01)
	.global	_CpuTimer2Regs
_CpuTimer2Regs:	.usect	"CpuTimer2RegsFile",8,1,1
DW$1	.dwtag  DW_TAG_variable, DW_AT_name("CpuTimer2Regs"), DW_AT_symbol_name("_CpuTimer2Regs")
	.dwattr DW$1, DW_AT_location[DW_OP_addr _CpuTimer2Regs]
	.dwattr DW$1, DW_AT_type(*DW$T$341)
	.dwattr DW$1, DW_AT_external(0x01)
	.global	_CpuTimer1Regs
_CpuTimer1Regs:	.usect	"CpuTimer1RegsFile",8,1,1
DW$2	.dwtag  DW_TAG_variable, DW_AT_name("CpuTimer1Regs"), DW_AT_symbol_name("_CpuTimer1Regs")
	.dwattr DW$2, DW_AT_location[DW_OP_addr _CpuTimer1Regs]
	.dwattr DW$2, DW_AT_type(*DW$T$341)
	.dwattr DW$2, DW_AT_external(0x01)
	.global	_FlashRegs
_FlashRegs:	.usect	"FlashRegsFile",8,1,0
DW$3	.dwtag  DW_TAG_variable, DW_AT_name("FlashRegs"), DW_AT_symbol_name("_FlashRegs")
	.dwattr DW$3, DW_AT_location[DW_OP_addr _FlashRegs]
	.dwattr DW$3, DW_AT_type(*DW$T$361)
	.dwattr DW$3, DW_AT_external(0x01)
	.global	_CpuTimer0Regs
_CpuTimer0Regs:	.usect	"CpuTimer0RegsFile",8,1,1
DW$4	.dwtag  DW_TAG_variable, DW_AT_name("CpuTimer0Regs"), DW_AT_symbol_name("_CpuTimer0Regs")
	.dwattr DW$4, DW_AT_location[DW_OP_addr _CpuTimer0Regs]
	.dwattr DW$4, DW_AT_type(*DW$T$341)
	.dwattr DW$4, DW_AT_external(0x01)
	.global	_CsmPwl
_CsmPwl:	.usect	"CsmPwlFile",8,1,0
DW$5	.dwtag  DW_TAG_variable, DW_AT_name("CsmPwl"), DW_AT_symbol_name("_CsmPwl")
	.dwattr DW$5, DW_AT_location[DW_OP_addr _CsmPwl]
	.dwattr DW$5, DW_AT_type(*DW$T$342)
	.dwattr DW$5, DW_AT_external(0x01)
	.global	_GpioIntRegs
_GpioIntRegs:	.usect	"GpioIntRegsFile",10,1,1
DW$6	.dwtag  DW_TAG_variable, DW_AT_name("GpioIntRegs"), DW_AT_symbol_name("_GpioIntRegs")
	.dwattr DW$6, DW_AT_location[DW_OP_addr _GpioIntRegs]
	.dwattr DW$6, DW_AT_type(*DW$T$355)
	.dwattr DW$6, DW_AT_external(0x01)
	.global	_SpicRegs
_SpicRegs:	.usect	"SpicRegsFile",16,1,0
DW$7	.dwtag  DW_TAG_variable, DW_AT_name("SpicRegs"), DW_AT_symbol_name("_SpicRegs")
	.dwattr DW$7, DW_AT_location[DW_OP_addr _SpicRegs]
	.dwattr DW$7, DW_AT_type(*DW$T$359)
	.dwattr DW$7, DW_AT_external(0x01)
	.global	_SpibRegs
_SpibRegs:	.usect	"SpibRegsFile",16,1,0
DW$8	.dwtag  DW_TAG_variable, DW_AT_name("SpibRegs"), DW_AT_symbol_name("_SpibRegs")
	.dwattr DW$8, DW_AT_location[DW_OP_addr _SpibRegs]
	.dwattr DW$8, DW_AT_type(*DW$T$359)
	.dwattr DW$8, DW_AT_external(0x01)
	.global	_ScibRegs
_ScibRegs:	.usect	"ScibRegsFile",16,1,0
DW$9	.dwtag  DW_TAG_variable, DW_AT_name("ScibRegs"), DW_AT_symbol_name("_ScibRegs")
	.dwattr DW$9, DW_AT_location[DW_OP_addr _ScibRegs]
	.dwattr DW$9, DW_AT_type(*DW$T$358)
	.dwattr DW$9, DW_AT_external(0x01)
	.global	_SpiaRegs
_SpiaRegs:	.usect	"SpiaRegsFile",16,1,0
DW$10	.dwtag  DW_TAG_variable, DW_AT_name("SpiaRegs"), DW_AT_symbol_name("_SpiaRegs")
	.dwattr DW$10, DW_AT_location[DW_OP_addr _SpiaRegs]
	.dwattr DW$10, DW_AT_type(*DW$T$359)
	.dwattr DW$10, DW_AT_external(0x01)
	.global	_SciaRegs
_SciaRegs:	.usect	"SciaRegsFile",16,1,0
DW$11	.dwtag  DW_TAG_variable, DW_AT_name("SciaRegs"), DW_AT_symbol_name("_SciaRegs")
	.dwattr DW$11, DW_AT_location[DW_OP_addr _SciaRegs]
	.dwattr DW$11, DW_AT_type(*DW$T$358)
	.dwattr DW$11, DW_AT_external(0x01)
	.global	_CsmRegs
_CsmRegs:	.usect	"CsmRegsFile",16,1,0
DW$12	.dwtag  DW_TAG_variable, DW_AT_name("CsmRegs"), DW_AT_symbol_name("_CsmRegs")
	.dwattr DW$12, DW_AT_location[DW_OP_addr _CsmRegs]
	.dwattr DW$12, DW_AT_type(*DW$T$343)
	.dwattr DW$12, DW_AT_external(0x01)
	.global	_AdcMirror
_AdcMirror:	.usect	"AdcMirrorFile",16,1,0
DW$13	.dwtag  DW_TAG_variable, DW_AT_name("AdcMirror"), DW_AT_symbol_name("_AdcMirror")
	.dwattr DW$13, DW_AT_location[DW_OP_addr _AdcMirror]
	.dwattr DW$13, DW_AT_type(*DW$T$340)
	.dwattr DW$13, DW_AT_external(0x01)
	.global	_SpidRegs
_SpidRegs:	.usect	"SpidRegsFile",16,1,0
DW$14	.dwtag  DW_TAG_variable, DW_AT_name("SpidRegs"), DW_AT_symbol_name("_SpidRegs")
	.dwattr DW$14, DW_AT_location[DW_OP_addr _SpidRegs]
	.dwattr DW$14, DW_AT_type(*DW$T$359)
	.dwattr DW$14, DW_AT_external(0x01)
	.global	_XIntruptRegs
_XIntruptRegs:	.usect	"XIntruptRegsFile",16,1,0
DW$15	.dwtag  DW_TAG_variable, DW_AT_name("XIntruptRegs"), DW_AT_symbol_name("_XIntruptRegs")
	.dwattr DW$15, DW_AT_location[DW_OP_addr _XIntruptRegs]
	.dwattr DW$15, DW_AT_type(*DW$T$362)
	.dwattr DW$15, DW_AT_external(0x01)
	.global	_PieCtrlRegs
_PieCtrlRegs:	.usect	"PieCtrlRegsFile",26,1,0
DW$16	.dwtag  DW_TAG_variable, DW_AT_name("PieCtrlRegs"), DW_AT_symbol_name("_PieCtrlRegs")
	.dwattr DW$16, DW_AT_location[DW_OP_addr _PieCtrlRegs]
	.dwattr DW$16, DW_AT_type(*DW$T$357)
	.dwattr DW$16, DW_AT_external(0x01)
	.global	_AdcRegs
_AdcRegs:	.usect	"AdcRegsFile",30,1,0
DW$17	.dwtag  DW_TAG_variable, DW_AT_name("AdcRegs"), DW_AT_symbol_name("_AdcRegs")
	.dwattr DW$17, DW_AT_location[DW_OP_addr _AdcRegs]
	.dwattr DW$17, DW_AT_type(*DW$T$339)
	.dwattr DW$17, DW_AT_external(0x01)
	.global	_ECap4Regs
_ECap4Regs:	.usect	"ECap4RegsFile",32,1,1
DW$18	.dwtag  DW_TAG_variable, DW_AT_name("ECap4Regs"), DW_AT_symbol_name("_ECap4Regs")
	.dwattr DW$18, DW_AT_location[DW_OP_addr _ECap4Regs]
	.dwattr DW$18, DW_AT_type(*DW$T$351)
	.dwattr DW$18, DW_AT_external(0x01)
	.global	_ECap2Regs
_ECap2Regs:	.usect	"ECap2RegsFile",32,1,1
DW$19	.dwtag  DW_TAG_variable, DW_AT_name("ECap2Regs"), DW_AT_symbol_name("_ECap2Regs")
	.dwattr DW$19, DW_AT_location[DW_OP_addr _ECap2Regs]
	.dwattr DW$19, DW_AT_type(*DW$T$351)
	.dwattr DW$19, DW_AT_external(0x01)
	.global	_ECap3Regs
_ECap3Regs:	.usect	"ECap3RegsFile",32,1,1
DW$20	.dwtag  DW_TAG_variable, DW_AT_name("ECap3Regs"), DW_AT_symbol_name("_ECap3Regs")
	.dwattr DW$20, DW_AT_location[DW_OP_addr _ECap3Regs]
	.dwattr DW$20, DW_AT_type(*DW$T$351)
	.dwattr DW$20, DW_AT_external(0x01)
	.global	_ECap1Regs
_ECap1Regs:	.usect	"ECap1RegsFile",32,1,1
DW$21	.dwtag  DW_TAG_variable, DW_AT_name("ECap1Regs"), DW_AT_symbol_name("_ECap1Regs")
	.dwattr DW$21, DW_AT_location[DW_OP_addr _ECap1Regs]
	.dwattr DW$21, DW_AT_type(*DW$T$351)
	.dwattr DW$21, DW_AT_external(0x01)
	.global	_GpioDataRegs
_GpioDataRegs:	.usect	"GpioDataRegsFile",32,1,1
DW$22	.dwtag  DW_TAG_variable, DW_AT_name("GpioDataRegs"), DW_AT_symbol_name("_GpioDataRegs")
	.dwattr DW$22, DW_AT_location[DW_OP_addr _GpioDataRegs]
	.dwattr DW$22, DW_AT_type(*DW$T$354)
	.dwattr DW$22, DW_AT_external(0x01)
	.global	_SysCtrlRegs
_SysCtrlRegs:	.usect	"SysCtrlRegsFile",32,1,0
DW$23	.dwtag  DW_TAG_variable, DW_AT_name("SysCtrlRegs"), DW_AT_symbol_name("_SysCtrlRegs")
	.dwattr DW$23, DW_AT_location[DW_OP_addr _SysCtrlRegs]
	.dwattr DW$23, DW_AT_type(*DW$T$360)
	.dwattr DW$23, DW_AT_external(0x01)
	.global	_I2caRegs
_I2caRegs:	.usect	"I2caRegsFile",34,1,0
DW$24	.dwtag  DW_TAG_variable, DW_AT_name("I2caRegs"), DW_AT_symbol_name("_I2caRegs")
	.dwattr DW$24, DW_AT_location[DW_OP_addr _I2caRegs]
	.dwattr DW$24, DW_AT_type(*DW$T$356)
	.dwattr DW$24, DW_AT_external(0x01)
	.global	_EPwm1Regs
_EPwm1Regs:	.usect	"EPwm1RegsFile",34,1,1
DW$25	.dwtag  DW_TAG_variable, DW_AT_name("EPwm1Regs"), DW_AT_symbol_name("_EPwm1Regs")
	.dwattr DW$25, DW_AT_location[DW_OP_addr _EPwm1Regs]
	.dwattr DW$25, DW_AT_type(*DW$T$350)
	.dwattr DW$25, DW_AT_external(0x01)
	.global	_EPwm2Regs
_EPwm2Regs:	.usect	"EPwm2RegsFile",34,1,1
DW$26	.dwtag  DW_TAG_variable, DW_AT_name("EPwm2Regs"), DW_AT_symbol_name("_EPwm2Regs")
	.dwattr DW$26, DW_AT_location[DW_OP_addr _EPwm2Regs]
	.dwattr DW$26, DW_AT_type(*DW$T$350)
	.dwattr DW$26, DW_AT_external(0x01)
	.global	_EPwm3Regs
_EPwm3Regs:	.usect	"EPwm3RegsFile",34,1,1
DW$27	.dwtag  DW_TAG_variable, DW_AT_name("EPwm3Regs"), DW_AT_symbol_name("_EPwm3Regs")
	.dwattr DW$27, DW_AT_location[DW_OP_addr _EPwm3Regs]
	.dwattr DW$27, DW_AT_type(*DW$T$350)
	.dwattr DW$27, DW_AT_external(0x01)
	.global	_EPwm5Regs
_EPwm5Regs:	.usect	"EPwm5RegsFile",34,1,1
DW$28	.dwtag  DW_TAG_variable, DW_AT_name("EPwm5Regs"), DW_AT_symbol_name("_EPwm5Regs")
	.dwattr DW$28, DW_AT_location[DW_OP_addr _EPwm5Regs]
	.dwattr DW$28, DW_AT_type(*DW$T$350)
	.dwattr DW$28, DW_AT_external(0x01)
	.global	_EPwm4Regs
_EPwm4Regs:	.usect	"EPwm4RegsFile",34,1,1
DW$29	.dwtag  DW_TAG_variable, DW_AT_name("EPwm4Regs"), DW_AT_symbol_name("_EPwm4Regs")
	.dwattr DW$29, DW_AT_location[DW_OP_addr _EPwm4Regs]
	.dwattr DW$29, DW_AT_type(*DW$T$350)
	.dwattr DW$29, DW_AT_external(0x01)
	.global	_EPwm6Regs
_EPwm6Regs:	.usect	"EPwm6RegsFile",34,1,1
DW$30	.dwtag  DW_TAG_variable, DW_AT_name("EPwm6Regs"), DW_AT_symbol_name("_EPwm6Regs")
	.dwattr DW$30, DW_AT_location[DW_OP_addr _EPwm6Regs]
	.dwattr DW$30, DW_AT_type(*DW$T$350)
	.dwattr DW$30, DW_AT_external(0x01)
	.global	_ECanaRegs
_ECanaRegs:	.usect	"ECanaRegsFile",52,1,1
DW$31	.dwtag  DW_TAG_variable, DW_AT_name("ECanaRegs"), DW_AT_symbol_name("_ECanaRegs")
	.dwattr DW$31, DW_AT_location[DW_OP_addr _ECanaRegs]
	.dwattr DW$31, DW_AT_type(*DW$T$345)
	.dwattr DW$31, DW_AT_external(0x01)
	.global	_ECanbRegs
_ECanbRegs:	.usect	"ECanbRegsFile",52,1,1
DW$32	.dwtag  DW_TAG_variable, DW_AT_name("ECanbRegs"), DW_AT_symbol_name("_ECanbRegs")
	.dwattr DW$32, DW_AT_location[DW_OP_addr _ECanbRegs]
	.dwattr DW$32, DW_AT_type(*DW$T$345)
	.dwattr DW$32, DW_AT_external(0x01)
	.global	_ECanbLAMRegs
_ECanbLAMRegs:	.usect	"ECanbLAMRegsFile",64,1,1
DW$33	.dwtag  DW_TAG_variable, DW_AT_name("ECanbLAMRegs"), DW_AT_symbol_name("_ECanbLAMRegs")
	.dwattr DW$33, DW_AT_location[DW_OP_addr _ECanbLAMRegs]
	.dwattr DW$33, DW_AT_type(*DW$T$347)
	.dwattr DW$33, DW_AT_external(0x01)
	.global	_ECanaMOTORegs
_ECanaMOTORegs:	.usect	"ECanaMOTORegsFile",64,1,1
DW$34	.dwtag  DW_TAG_variable, DW_AT_name("ECanaMOTORegs"), DW_AT_symbol_name("_ECanaMOTORegs")
	.dwattr DW$34, DW_AT_location[DW_OP_addr _ECanaMOTORegs]
	.dwattr DW$34, DW_AT_type(*DW$T$349)
	.dwattr DW$34, DW_AT_external(0x01)
	.global	_ECanaLAMRegs
_ECanaLAMRegs:	.usect	"ECanaLAMRegsFile",64,1,1
DW$35	.dwtag  DW_TAG_variable, DW_AT_name("ECanaLAMRegs"), DW_AT_symbol_name("_ECanaLAMRegs")
	.dwattr DW$35, DW_AT_location[DW_OP_addr _ECanaLAMRegs]
	.dwattr DW$35, DW_AT_type(*DW$T$347)
	.dwattr DW$35, DW_AT_external(0x01)
	.global	_ECanaMOTSRegs
_ECanaMOTSRegs:	.usect	"ECanaMOTSRegsFile",64,1,1
DW$36	.dwtag  DW_TAG_variable, DW_AT_name("ECanaMOTSRegs"), DW_AT_symbol_name("_ECanaMOTSRegs")
	.dwattr DW$36, DW_AT_location[DW_OP_addr _ECanaMOTSRegs]
	.dwattr DW$36, DW_AT_type(*DW$T$348)
	.dwattr DW$36, DW_AT_external(0x01)
	.global	_GpioCtrlRegs
_GpioCtrlRegs:	.usect	"GpioCtrlRegsFile",64,1,1
DW$37	.dwtag  DW_TAG_variable, DW_AT_name("GpioCtrlRegs"), DW_AT_symbol_name("_GpioCtrlRegs")
	.dwattr DW$37, DW_AT_location[DW_OP_addr _GpioCtrlRegs]
	.dwattr DW$37, DW_AT_type(*DW$T$353)
	.dwattr DW$37, DW_AT_external(0x01)
	.global	_ECanbMOTORegs
_ECanbMOTORegs:	.usect	"ECanbMOTORegsFile",64,1,1
DW$38	.dwtag  DW_TAG_variable, DW_AT_name("ECanbMOTORegs"), DW_AT_symbol_name("_ECanbMOTORegs")
	.dwattr DW$38, DW_AT_location[DW_OP_addr _ECanbMOTORegs]
	.dwattr DW$38, DW_AT_type(*DW$T$349)
	.dwattr DW$38, DW_AT_external(0x01)
	.global	_EQep1Regs
_EQep1Regs:	.usect	"EQep1RegsFile",64,1,1
DW$39	.dwtag  DW_TAG_variable, DW_AT_name("EQep1Regs"), DW_AT_symbol_name("_EQep1Regs")
	.dwattr DW$39, DW_AT_location[DW_OP_addr _EQep1Regs]
	.dwattr DW$39, DW_AT_type(*DW$T$352)
	.dwattr DW$39, DW_AT_external(0x01)
	.global	_ECanbMOTSRegs
_ECanbMOTSRegs:	.usect	"ECanbMOTSRegsFile",64,1,1
DW$40	.dwtag  DW_TAG_variable, DW_AT_name("ECanbMOTSRegs"), DW_AT_symbol_name("_ECanbMOTSRegs")
	.dwattr DW$40, DW_AT_location[DW_OP_addr _ECanbMOTSRegs]
	.dwattr DW$40, DW_AT_type(*DW$T$348)
	.dwattr DW$40, DW_AT_external(0x01)
	.global	_EQep2Regs
_EQep2Regs:	.usect	"EQep2RegsFile",64,1,1
DW$41	.dwtag  DW_TAG_variable, DW_AT_name("EQep2Regs"), DW_AT_symbol_name("_EQep2Regs")
	.dwattr DW$41, DW_AT_location[DW_OP_addr _EQep2Regs]
	.dwattr DW$41, DW_AT_type(*DW$T$352)
	.dwattr DW$41, DW_AT_external(0x01)
	.global	_DevEmuRegs
_DevEmuRegs:	.usect	"DevEmuRegsFile",208,1,1
DW$42	.dwtag  DW_TAG_variable, DW_AT_name("DevEmuRegs"), DW_AT_symbol_name("_DevEmuRegs")
	.dwattr DW$42, DW_AT_location[DW_OP_addr _DevEmuRegs]
	.dwattr DW$42, DW_AT_type(*DW$T$344)
	.dwattr DW$42, DW_AT_external(0x01)
	.global	_PieVectTable
_PieVectTable:	.usect	"PieVectTableFile",256,1,1
DW$43	.dwtag  DW_TAG_variable, DW_AT_name("PieVectTable"), DW_AT_symbol_name("_PieVectTable")
	.dwattr DW$43, DW_AT_location[DW_OP_addr _PieVectTable]
	.dwattr DW$43, DW_AT_type(*DW$T$265)
	.dwattr DW$43, DW_AT_external(0x01)
	.global	_ECanbMboxes
_ECanbMboxes:	.usect	"ECanbMboxesFile",256,1,1
DW$44	.dwtag  DW_TAG_variable, DW_AT_name("ECanbMboxes"), DW_AT_symbol_name("_ECanbMboxes")
	.dwattr DW$44, DW_AT_location[DW_OP_addr _ECanbMboxes]
	.dwattr DW$44, DW_AT_type(*DW$T$346)
	.dwattr DW$44, DW_AT_external(0x01)
	.global	_ECanaMboxes
_ECanaMboxes:	.usect	"ECanaMboxesFile",256,1,1
DW$45	.dwtag  DW_TAG_variable, DW_AT_name("ECanaMboxes"), DW_AT_symbol_name("_ECanaMboxes")
	.dwattr DW$45, DW_AT_location[DW_OP_addr _ECanaMboxes]
	.dwattr DW$45, DW_AT_type(*DW$T$346)
	.dwattr DW$45, DW_AT_external(0x01)
;	C:\CCStudio_v3.3\C2000\cgtools\bin\opt2000.exe C:\DOCUME~1\a0192908\LOCALS~1\Temp\TI6562 C:\DOCUME~1\a0192908\LOCALS~1\Temp\TI6564 
;	C:\CCStudio_v3.3\C2000\cgtools\bin\ac2000.exe -@C:\DOCUME~1\a0192908\LOCALS~1\Temp\TI65612 

;***************************************************************
;* TYPE INFORMATION                                            *
;***************************************************************
DW$46	.dwtag  DW_TAG_far_type
	.dwattr DW$46, DW_AT_type(*DW$T$45)
DW$T$339	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$339, DW_AT_type(*DW$46)
DW$47	.dwtag  DW_TAG_far_type
	.dwattr DW$47, DW_AT_type(*DW$T$46)
DW$T$340	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$340, DW_AT_type(*DW$47)
DW$48	.dwtag  DW_TAG_far_type
	.dwattr DW$48, DW_AT_type(*DW$T$58)
DW$T$341	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$341, DW_AT_type(*DW$48)
DW$49	.dwtag  DW_TAG_far_type
	.dwattr DW$49, DW_AT_type(*DW$T$59)
DW$T$342	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$342, DW_AT_type(*DW$49)
DW$50	.dwtag  DW_TAG_far_type
	.dwattr DW$50, DW_AT_type(*DW$T$62)
DW$T$343	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$343, DW_AT_type(*DW$50)
DW$51	.dwtag  DW_TAG_far_type
	.dwattr DW$51, DW_AT_type(*DW$T$68)
DW$T$344	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$344, DW_AT_type(*DW$51)
DW$52	.dwtag  DW_TAG_far_type
	.dwattr DW$52, DW_AT_type(*DW$T$119)
DW$T$345	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$345, DW_AT_type(*DW$52)
DW$53	.dwtag  DW_TAG_far_type
	.dwattr DW$53, DW_AT_type(*DW$T$131)
DW$T$346	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$346, DW_AT_type(*DW$53)
DW$54	.dwtag  DW_TAG_far_type
	.dwattr DW$54, DW_AT_type(*DW$T$134)
DW$T$347	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$347, DW_AT_type(*DW$54)
DW$55	.dwtag  DW_TAG_far_type
	.dwattr DW$55, DW_AT_type(*DW$T$135)
DW$T$348	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$348, DW_AT_type(*DW$55)
DW$56	.dwtag  DW_TAG_far_type
	.dwattr DW$56, DW_AT_type(*DW$T$136)
DW$T$349	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$349, DW_AT_type(*DW$56)
DW$57	.dwtag  DW_TAG_far_type
	.dwattr DW$57, DW_AT_type(*DW$T$181)
DW$T$350	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$350, DW_AT_type(*DW$57)
DW$58	.dwtag  DW_TAG_far_type
	.dwattr DW$58, DW_AT_type(*DW$T$192)
DW$T$351	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$351, DW_AT_type(*DW$58)
DW$59	.dwtag  DW_TAG_far_type
	.dwattr DW$59, DW_AT_type(*DW$T$210)
DW$T$352	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$352, DW_AT_type(*DW$59)
DW$60	.dwtag  DW_TAG_far_type
	.dwattr DW$60, DW_AT_type(*DW$T$230)
DW$T$353	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$353, DW_AT_type(*DW$60)
DW$61	.dwtag  DW_TAG_far_type
	.dwattr DW$61, DW_AT_type(*DW$T$232)
DW$T$354	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$354, DW_AT_type(*DW$61)
DW$62	.dwtag  DW_TAG_far_type
	.dwattr DW$62, DW_AT_type(*DW$T$236)
DW$T$355	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$355, DW_AT_type(*DW$62)
DW$63	.dwtag  DW_TAG_far_type
	.dwattr DW$63, DW_AT_type(*DW$T$252)
DW$T$356	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$356, DW_AT_type(*DW$63)
DW$64	.dwtag  DW_TAG_far_type
	.dwattr DW$64, DW_AT_type(*DW$T$261)
DW$T$357	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$357, DW_AT_type(*DW$64)

DW$T$265	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$265, DW_AT_name("PIE_VECT_TABLE")
	.dwattr DW$T$265, DW_AT_byte_size(0x100)
DW$65	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$264)
	.dwattr DW$65, DW_AT_name("PIE1_RESERVED"), DW_AT_symbol_name("_PIE1_RESERVED")
	.dwattr DW$65, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$65, DW_AT_accessibility(DW_ACCESS_public)
DW$66	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$264)
	.dwattr DW$66, DW_AT_name("PIE2_RESERVED"), DW_AT_symbol_name("_PIE2_RESERVED")
	.dwattr DW$66, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$66, DW_AT_accessibility(DW_ACCESS_public)
DW$67	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$264)
	.dwattr DW$67, DW_AT_name("PIE3_RESERVED"), DW_AT_symbol_name("_PIE3_RESERVED")
	.dwattr DW$67, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$67, DW_AT_accessibility(DW_ACCESS_public)
DW$68	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$264)
	.dwattr DW$68, DW_AT_name("PIE4_RESERVED"), DW_AT_symbol_name("_PIE4_RESERVED")
	.dwattr DW$68, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$68, DW_AT_accessibility(DW_ACCESS_public)
DW$69	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$264)
	.dwattr DW$69, DW_AT_name("PIE5_RESERVED"), DW_AT_symbol_name("_PIE5_RESERVED")
	.dwattr DW$69, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$69, DW_AT_accessibility(DW_ACCESS_public)
DW$70	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$264)
	.dwattr DW$70, DW_AT_name("PIE6_RESERVED"), DW_AT_symbol_name("_PIE6_RESERVED")
	.dwattr DW$70, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$70, DW_AT_accessibility(DW_ACCESS_public)
DW$71	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$264)
	.dwattr DW$71, DW_AT_name("PIE7_RESERVED"), DW_AT_symbol_name("_PIE7_RESERVED")
	.dwattr DW$71, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$71, DW_AT_accessibility(DW_ACCESS_public)
DW$72	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$264)
	.dwattr DW$72, DW_AT_name("PIE8_RESERVED"), DW_AT_symbol_name("_PIE8_RESERVED")
	.dwattr DW$72, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$72, DW_AT_accessibility(DW_ACCESS_public)
DW$73	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$264)
	.dwattr DW$73, DW_AT_name("PIE9_RESERVED"), DW_AT_symbol_name("_PIE9_RESERVED")
	.dwattr DW$73, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$73, DW_AT_accessibility(DW_ACCESS_public)
DW$74	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$264)
	.dwattr DW$74, DW_AT_name("PIE10_RESERVED"), DW_AT_symbol_name("_PIE10_RESERVED")
	.dwattr DW$74, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr DW$74, DW_AT_accessibility(DW_ACCESS_public)
DW$75	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$264)
	.dwattr DW$75, DW_AT_name("PIE11_RESERVED"), DW_AT_symbol_name("_PIE11_RESERVED")
	.dwattr DW$75, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr DW$75, DW_AT_accessibility(DW_ACCESS_public)
DW$76	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$264)
	.dwattr DW$76, DW_AT_name("PIE12_RESERVED"), DW_AT_symbol_name("_PIE12_RESERVED")
	.dwattr DW$76, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr DW$76, DW_AT_accessibility(DW_ACCESS_public)
DW$77	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$264)
	.dwattr DW$77, DW_AT_name("PIE13_RESERVED"), DW_AT_symbol_name("_PIE13_RESERVED")
	.dwattr DW$77, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr DW$77, DW_AT_accessibility(DW_ACCESS_public)
DW$78	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$264)
	.dwattr DW$78, DW_AT_name("XINT13"), DW_AT_symbol_name("_XINT13")
	.dwattr DW$78, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr DW$78, DW_AT_accessibility(DW_ACCESS_public)
DW$79	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$264)
	.dwattr DW$79, DW_AT_name("TINT2"), DW_AT_symbol_name("_TINT2")
	.dwattr DW$79, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr DW$79, DW_AT_accessibility(DW_ACCESS_public)
DW$80	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$264)
	.dwattr DW$80, DW_AT_name("DATALOG"), DW_AT_symbol_name("_DATALOG")
	.dwattr DW$80, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr DW$80, DW_AT_accessibility(DW_ACCESS_public)
DW$81	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$264)
	.dwattr DW$81, DW_AT_name("RTOSINT"), DW_AT_symbol_name("_RTOSINT")
	.dwattr DW$81, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr DW$81, DW_AT_accessibility(DW_ACCESS_public)
DW$82	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$264)
	.dwattr DW$82, DW_AT_name("EMUINT"), DW_AT_symbol_name("_EMUINT")
	.dwattr DW$82, DW_AT_data_member_location[DW_OP_plus_uconst 0x22]
	.dwattr DW$82, DW_AT_accessibility(DW_ACCESS_public)
DW$83	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$264)
	.dwattr DW$83, DW_AT_name("XNMI"), DW_AT_symbol_name("_XNMI")
	.dwattr DW$83, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr DW$83, DW_AT_accessibility(DW_ACCESS_public)
DW$84	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$264)
	.dwattr DW$84, DW_AT_name("ILLEGAL"), DW_AT_symbol_name("_ILLEGAL")
	.dwattr DW$84, DW_AT_data_member_location[DW_OP_plus_uconst 0x26]
	.dwattr DW$84, DW_AT_accessibility(DW_ACCESS_public)
DW$85	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$264)
	.dwattr DW$85, DW_AT_name("USER1"), DW_AT_symbol_name("_USER1")
	.dwattr DW$85, DW_AT_data_member_location[DW_OP_plus_uconst 0x28]
	.dwattr DW$85, DW_AT_accessibility(DW_ACCESS_public)
DW$86	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$264)
	.dwattr DW$86, DW_AT_name("USER2"), DW_AT_symbol_name("_USER2")
	.dwattr DW$86, DW_AT_data_member_location[DW_OP_plus_uconst 0x2a]
	.dwattr DW$86, DW_AT_accessibility(DW_ACCESS_public)
DW$87	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$264)
	.dwattr DW$87, DW_AT_name("USER3"), DW_AT_symbol_name("_USER3")
	.dwattr DW$87, DW_AT_data_member_location[DW_OP_plus_uconst 0x2c]
	.dwattr DW$87, DW_AT_accessibility(DW_ACCESS_public)
DW$88	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$264)
	.dwattr DW$88, DW_AT_name("USER4"), DW_AT_symbol_name("_USER4")
	.dwattr DW$88, DW_AT_data_member_location[DW_OP_plus_uconst 0x2e]
	.dwattr DW$88, DW_AT_accessibility(DW_ACCESS_public)
DW$89	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$264)
	.dwattr DW$89, DW_AT_name("USER5"), DW_AT_symbol_name("_USER5")
	.dwattr DW$89, DW_AT_data_member_location[DW_OP_plus_uconst 0x30]
	.dwattr DW$89, DW_AT_accessibility(DW_ACCESS_public)
DW$90	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$264)
	.dwattr DW$90, DW_AT_name("USER6"), DW_AT_symbol_name("_USER6")
	.dwattr DW$90, DW_AT_data_member_location[DW_OP_plus_uconst 0x32]
	.dwattr DW$90, DW_AT_accessibility(DW_ACCESS_public)
DW$91	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$264)
	.dwattr DW$91, DW_AT_name("USER7"), DW_AT_symbol_name("_USER7")
	.dwattr DW$91, DW_AT_data_member_location[DW_OP_plus_uconst 0x34]
	.dwattr DW$91, DW_AT_accessibility(DW_ACCESS_public)
DW$92	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$264)
	.dwattr DW$92, DW_AT_name("USER8"), DW_AT_symbol_name("_USER8")
	.dwattr DW$92, DW_AT_data_member_location[DW_OP_plus_uconst 0x36]
	.dwattr DW$92, DW_AT_accessibility(DW_ACCESS_public)
DW$93	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$264)
	.dwattr DW$93, DW_AT_name("USER9"), DW_AT_symbol_name("_USER9")
	.dwattr DW$93, DW_AT_data_member_location[DW_OP_plus_uconst 0x38]
	.dwattr DW$93, DW_AT_accessibility(DW_ACCESS_public)
DW$94	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$264)
	.dwattr DW$94, DW_AT_name("USER10"), DW_AT_symbol_name("_USER10")
	.dwattr DW$94, DW_AT_data_member_location[DW_OP_plus_uconst 0x3a]
	.dwattr DW$94, DW_AT_accessibility(DW_ACCESS_public)
DW$95	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$264)
	.dwattr DW$95, DW_AT_name("USER11"), DW_AT_symbol_name("_USER11")
	.dwattr DW$95, DW_AT_data_member_location[DW_OP_plus_uconst 0x3c]
	.dwattr DW$95, DW_AT_accessibility(DW_ACCESS_public)
DW$96	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$264)
	.dwattr DW$96, DW_AT_name("USER12"), DW_AT_symbol_name("_USER12")
	.dwattr DW$96, DW_AT_data_member_location[DW_OP_plus_uconst 0x3e]
	.dwattr DW$96, DW_AT_accessibility(DW_ACCESS_public)
DW$97	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$264)
	.dwattr DW$97, DW_AT_name("SEQ1INT"), DW_AT_symbol_name("_SEQ1INT")
	.dwattr DW$97, DW_AT_data_member_location[DW_OP_plus_uconst 0x40]
	.dwattr DW$97, DW_AT_accessibility(DW_ACCESS_public)
DW$98	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$264)
	.dwattr DW$98, DW_AT_name("SEQ2INT"), DW_AT_symbol_name("_SEQ2INT")
	.dwattr DW$98, DW_AT_data_member_location[DW_OP_plus_uconst 0x42]
	.dwattr DW$98, DW_AT_accessibility(DW_ACCESS_public)
DW$99	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$264)
	.dwattr DW$99, DW_AT_name("rsvd1_3"), DW_AT_symbol_name("_rsvd1_3")
	.dwattr DW$99, DW_AT_data_member_location[DW_OP_plus_uconst 0x44]
	.dwattr DW$99, DW_AT_accessibility(DW_ACCESS_public)
DW$100	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$264)
	.dwattr DW$100, DW_AT_name("XINT1"), DW_AT_symbol_name("_XINT1")
	.dwattr DW$100, DW_AT_data_member_location[DW_OP_plus_uconst 0x46]
	.dwattr DW$100, DW_AT_accessibility(DW_ACCESS_public)
DW$101	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$264)
	.dwattr DW$101, DW_AT_name("XINT2"), DW_AT_symbol_name("_XINT2")
	.dwattr DW$101, DW_AT_data_member_location[DW_OP_plus_uconst 0x48]
	.dwattr DW$101, DW_AT_accessibility(DW_ACCESS_public)
DW$102	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$264)
	.dwattr DW$102, DW_AT_name("ADCINT"), DW_AT_symbol_name("_ADCINT")
	.dwattr DW$102, DW_AT_data_member_location[DW_OP_plus_uconst 0x4a]
	.dwattr DW$102, DW_AT_accessibility(DW_ACCESS_public)
DW$103	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$264)
	.dwattr DW$103, DW_AT_name("TINT0"), DW_AT_symbol_name("_TINT0")
	.dwattr DW$103, DW_AT_data_member_location[DW_OP_plus_uconst 0x4c]
	.dwattr DW$103, DW_AT_accessibility(DW_ACCESS_public)
DW$104	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$264)
	.dwattr DW$104, DW_AT_name("WAKEINT"), DW_AT_symbol_name("_WAKEINT")
	.dwattr DW$104, DW_AT_data_member_location[DW_OP_plus_uconst 0x4e]
	.dwattr DW$104, DW_AT_accessibility(DW_ACCESS_public)
DW$105	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$264)
	.dwattr DW$105, DW_AT_name("EPWM1_TZINT"), DW_AT_symbol_name("_EPWM1_TZINT")
	.dwattr DW$105, DW_AT_data_member_location[DW_OP_plus_uconst 0x50]
	.dwattr DW$105, DW_AT_accessibility(DW_ACCESS_public)
DW$106	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$264)
	.dwattr DW$106, DW_AT_name("EPWM2_TZINT"), DW_AT_symbol_name("_EPWM2_TZINT")
	.dwattr DW$106, DW_AT_data_member_location[DW_OP_plus_uconst 0x52]
	.dwattr DW$106, DW_AT_accessibility(DW_ACCESS_public)
DW$107	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$264)
	.dwattr DW$107, DW_AT_name("EPWM3_TZINT"), DW_AT_symbol_name("_EPWM3_TZINT")
	.dwattr DW$107, DW_AT_data_member_location[DW_OP_plus_uconst 0x54]
	.dwattr DW$107, DW_AT_accessibility(DW_ACCESS_public)
DW$108	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$264)
	.dwattr DW$108, DW_AT_name("EPWM4_TZINT"), DW_AT_symbol_name("_EPWM4_TZINT")
	.dwattr DW$108, DW_AT_data_member_location[DW_OP_plus_uconst 0x56]
	.dwattr DW$108, DW_AT_accessibility(DW_ACCESS_public)
DW$109	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$264)
	.dwattr DW$109, DW_AT_name("EPWM5_TZINT"), DW_AT_symbol_name("_EPWM5_TZINT")
	.dwattr DW$109, DW_AT_data_member_location[DW_OP_plus_uconst 0x58]
	.dwattr DW$109, DW_AT_accessibility(DW_ACCESS_public)
DW$110	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$264)
	.dwattr DW$110, DW_AT_name("EPWM6_TZINT"), DW_AT_symbol_name("_EPWM6_TZINT")
	.dwattr DW$110, DW_AT_data_member_location[DW_OP_plus_uconst 0x5a]
	.dwattr DW$110, DW_AT_accessibility(DW_ACCESS_public)
DW$111	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$264)
	.dwattr DW$111, DW_AT_name("rsvd2_7"), DW_AT_symbol_name("_rsvd2_7")
	.dwattr DW$111, DW_AT_data_member_location[DW_OP_plus_uconst 0x5c]
	.dwattr DW$111, DW_AT_accessibility(DW_ACCESS_public)
DW$112	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$264)
	.dwattr DW$112, DW_AT_name("rsvd2_8"), DW_AT_symbol_name("_rsvd2_8")
	.dwattr DW$112, DW_AT_data_member_location[DW_OP_plus_uconst 0x5e]
	.dwattr DW$112, DW_AT_accessibility(DW_ACCESS_public)
DW$113	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$264)
	.dwattr DW$113, DW_AT_name("EPWM1_INT"), DW_AT_symbol_name("_EPWM1_INT")
	.dwattr DW$113, DW_AT_data_member_location[DW_OP_plus_uconst 0x60]
	.dwattr DW$113, DW_AT_accessibility(DW_ACCESS_public)
DW$114	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$264)
	.dwattr DW$114, DW_AT_name("EPWM2_INT"), DW_AT_symbol_name("_EPWM2_INT")
	.dwattr DW$114, DW_AT_data_member_location[DW_OP_plus_uconst 0x62]
	.dwattr DW$114, DW_AT_accessibility(DW_ACCESS_public)
DW$115	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$264)
	.dwattr DW$115, DW_AT_name("EPWM3_INT"), DW_AT_symbol_name("_EPWM3_INT")
	.dwattr DW$115, DW_AT_data_member_location[DW_OP_plus_uconst 0x64]
	.dwattr DW$115, DW_AT_accessibility(DW_ACCESS_public)
DW$116	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$264)
	.dwattr DW$116, DW_AT_name("EPWM4_INT"), DW_AT_symbol_name("_EPWM4_INT")
	.dwattr DW$116, DW_AT_data_member_location[DW_OP_plus_uconst 0x66]
	.dwattr DW$116, DW_AT_accessibility(DW_ACCESS_public)
DW$117	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$264)
	.dwattr DW$117, DW_AT_name("EPWM5_INT"), DW_AT_symbol_name("_EPWM5_INT")
	.dwattr DW$117, DW_AT_data_member_location[DW_OP_plus_uconst 0x68]
	.dwattr DW$117, DW_AT_accessibility(DW_ACCESS_public)
DW$118	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$264)
	.dwattr DW$118, DW_AT_name("EPWM6_INT"), DW_AT_symbol_name("_EPWM6_INT")
	.dwattr DW$118, DW_AT_data_member_location[DW_OP_plus_uconst 0x6a]
	.dwattr DW$118, DW_AT_accessibility(DW_ACCESS_public)
DW$119	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$264)
	.dwattr DW$119, DW_AT_name("rsvd3_7"), DW_AT_symbol_name("_rsvd3_7")
	.dwattr DW$119, DW_AT_data_member_location[DW_OP_plus_uconst 0x6c]
	.dwattr DW$119, DW_AT_accessibility(DW_ACCESS_public)
DW$120	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$264)
	.dwattr DW$120, DW_AT_name("rsvd3_8"), DW_AT_symbol_name("_rsvd3_8")
	.dwattr DW$120, DW_AT_data_member_location[DW_OP_plus_uconst 0x6e]
	.dwattr DW$120, DW_AT_accessibility(DW_ACCESS_public)
DW$121	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$264)
	.dwattr DW$121, DW_AT_name("ECAP1_INT"), DW_AT_symbol_name("_ECAP1_INT")
	.dwattr DW$121, DW_AT_data_member_location[DW_OP_plus_uconst 0x70]
	.dwattr DW$121, DW_AT_accessibility(DW_ACCESS_public)
DW$122	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$264)
	.dwattr DW$122, DW_AT_name("ECAP2_INT"), DW_AT_symbol_name("_ECAP2_INT")
	.dwattr DW$122, DW_AT_data_member_location[DW_OP_plus_uconst 0x72]
	.dwattr DW$122, DW_AT_accessibility(DW_ACCESS_public)
DW$123	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$264)
	.dwattr DW$123, DW_AT_name("ECAP3_INT"), DW_AT_symbol_name("_ECAP3_INT")
	.dwattr DW$123, DW_AT_data_member_location[DW_OP_plus_uconst 0x74]
	.dwattr DW$123, DW_AT_accessibility(DW_ACCESS_public)
DW$124	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$264)
	.dwattr DW$124, DW_AT_name("ECAP4_INT"), DW_AT_symbol_name("_ECAP4_INT")
	.dwattr DW$124, DW_AT_data_member_location[DW_OP_plus_uconst 0x76]
	.dwattr DW$124, DW_AT_accessibility(DW_ACCESS_public)
DW$125	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$264)
	.dwattr DW$125, DW_AT_name("rsvd4_5"), DW_AT_symbol_name("_rsvd4_5")
	.dwattr DW$125, DW_AT_data_member_location[DW_OP_plus_uconst 0x78]
	.dwattr DW$125, DW_AT_accessibility(DW_ACCESS_public)
DW$126	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$264)
	.dwattr DW$126, DW_AT_name("rsvd4_6"), DW_AT_symbol_name("_rsvd4_6")
	.dwattr DW$126, DW_AT_data_member_location[DW_OP_plus_uconst 0x7a]
	.dwattr DW$126, DW_AT_accessibility(DW_ACCESS_public)
DW$127	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$264)
	.dwattr DW$127, DW_AT_name("rsvd4_7"), DW_AT_symbol_name("_rsvd4_7")
	.dwattr DW$127, DW_AT_data_member_location[DW_OP_plus_uconst 0x7c]
	.dwattr DW$127, DW_AT_accessibility(DW_ACCESS_public)
DW$128	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$264)
	.dwattr DW$128, DW_AT_name("rsvd4_8"), DW_AT_symbol_name("_rsvd4_8")
	.dwattr DW$128, DW_AT_data_member_location[DW_OP_plus_uconst 0x7e]
	.dwattr DW$128, DW_AT_accessibility(DW_ACCESS_public)
DW$129	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$264)
	.dwattr DW$129, DW_AT_name("EQEP1_INT"), DW_AT_symbol_name("_EQEP1_INT")
	.dwattr DW$129, DW_AT_data_member_location[DW_OP_plus_uconst 0x80]
	.dwattr DW$129, DW_AT_accessibility(DW_ACCESS_public)
DW$130	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$264)
	.dwattr DW$130, DW_AT_name("EQEP2_INT"), DW_AT_symbol_name("_EQEP2_INT")
	.dwattr DW$130, DW_AT_data_member_location[DW_OP_plus_uconst 0x82]
	.dwattr DW$130, DW_AT_accessibility(DW_ACCESS_public)
DW$131	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$264)
	.dwattr DW$131, DW_AT_name("rsvd5_3"), DW_AT_symbol_name("_rsvd5_3")
	.dwattr DW$131, DW_AT_data_member_location[DW_OP_plus_uconst 0x84]
	.dwattr DW$131, DW_AT_accessibility(DW_ACCESS_public)
DW$132	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$264)
	.dwattr DW$132, DW_AT_name("rsvd5_4"), DW_AT_symbol_name("_rsvd5_4")
	.dwattr DW$132, DW_AT_data_member_location[DW_OP_plus_uconst 0x86]
	.dwattr DW$132, DW_AT_accessibility(DW_ACCESS_public)
DW$133	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$264)
	.dwattr DW$133, DW_AT_name("rsvd5_5"), DW_AT_symbol_name("_rsvd5_5")
	.dwattr DW$133, DW_AT_data_member_location[DW_OP_plus_uconst 0x88]
	.dwattr DW$133, DW_AT_accessibility(DW_ACCESS_public)
DW$134	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$264)
	.dwattr DW$134, DW_AT_name("rsvd5_6"), DW_AT_symbol_name("_rsvd5_6")
	.dwattr DW$134, DW_AT_data_member_location[DW_OP_plus_uconst 0x8a]
	.dwattr DW$134, DW_AT_accessibility(DW_ACCESS_public)
DW$135	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$264)
	.dwattr DW$135, DW_AT_name("rsvd5_7"), DW_AT_symbol_name("_rsvd5_7")
	.dwattr DW$135, DW_AT_data_member_location[DW_OP_plus_uconst 0x8c]
	.dwattr DW$135, DW_AT_accessibility(DW_ACCESS_public)
DW$136	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$264)
	.dwattr DW$136, DW_AT_name("rsvd5_8"), DW_AT_symbol_name("_rsvd5_8")
	.dwattr DW$136, DW_AT_data_member_location[DW_OP_plus_uconst 0x8e]
	.dwattr DW$136, DW_AT_accessibility(DW_ACCESS_public)
DW$137	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$264)
	.dwattr DW$137, DW_AT_name("SPIRXINTA"), DW_AT_symbol_name("_SPIRXINTA")
	.dwattr DW$137, DW_AT_data_member_location[DW_OP_plus_uconst 0x90]
	.dwattr DW$137, DW_AT_accessibility(DW_ACCESS_public)
DW$138	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$264)
	.dwattr DW$138, DW_AT_name("SPITXINTA"), DW_AT_symbol_name("_SPITXINTA")
	.dwattr DW$138, DW_AT_data_member_location[DW_OP_plus_uconst 0x92]
	.dwattr DW$138, DW_AT_accessibility(DW_ACCESS_public)
DW$139	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$264)
	.dwattr DW$139, DW_AT_name("SPIRXINTB"), DW_AT_symbol_name("_SPIRXINTB")
	.dwattr DW$139, DW_AT_data_member_location[DW_OP_plus_uconst 0x94]
	.dwattr DW$139, DW_AT_accessibility(DW_ACCESS_public)
DW$140	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$264)
	.dwattr DW$140, DW_AT_name("SPITXINTB"), DW_AT_symbol_name("_SPITXINTB")
	.dwattr DW$140, DW_AT_data_member_location[DW_OP_plus_uconst 0x96]
	.dwattr DW$140, DW_AT_accessibility(DW_ACCESS_public)
DW$141	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$264)
	.dwattr DW$141, DW_AT_name("SPIRXINTC"), DW_AT_symbol_name("_SPIRXINTC")
	.dwattr DW$141, DW_AT_data_member_location[DW_OP_plus_uconst 0x98]
	.dwattr DW$141, DW_AT_accessibility(DW_ACCESS_public)
DW$142	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$264)
	.dwattr DW$142, DW_AT_name("SPITXINTC"), DW_AT_symbol_name("_SPITXINTC")
	.dwattr DW$142, DW_AT_data_member_location[DW_OP_plus_uconst 0x9a]
	.dwattr DW$142, DW_AT_accessibility(DW_ACCESS_public)
DW$143	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$264)
	.dwattr DW$143, DW_AT_name("SPIRXINTD"), DW_AT_symbol_name("_SPIRXINTD")
	.dwattr DW$143, DW_AT_data_member_location[DW_OP_plus_uconst 0x9c]
	.dwattr DW$143, DW_AT_accessibility(DW_ACCESS_public)
DW$144	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$264)
	.dwattr DW$144, DW_AT_name("SPITXINTD"), DW_AT_symbol_name("_SPITXINTD")
	.dwattr DW$144, DW_AT_data_member_location[DW_OP_plus_uconst 0x9e]
	.dwattr DW$144, DW_AT_accessibility(DW_ACCESS_public)
DW$145	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$264)
	.dwattr DW$145, DW_AT_name("rsvd7_1"), DW_AT_symbol_name("_rsvd7_1")
	.dwattr DW$145, DW_AT_data_member_location[DW_OP_plus_uconst 0xa0]
	.dwattr DW$145, DW_AT_accessibility(DW_ACCESS_public)
DW$146	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$264)
	.dwattr DW$146, DW_AT_name("rsvd7_2"), DW_AT_symbol_name("_rsvd7_2")
	.dwattr DW$146, DW_AT_data_member_location[DW_OP_plus_uconst 0xa2]
	.dwattr DW$146, DW_AT_accessibility(DW_ACCESS_public)
DW$147	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$264)
	.dwattr DW$147, DW_AT_name("rsvd7_3"), DW_AT_symbol_name("_rsvd7_3")
	.dwattr DW$147, DW_AT_data_member_location[DW_OP_plus_uconst 0xa4]
	.dwattr DW$147, DW_AT_accessibility(DW_ACCESS_public)
DW$148	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$264)
	.dwattr DW$148, DW_AT_name("rsvd7_4"), DW_AT_symbol_name("_rsvd7_4")
	.dwattr DW$148, DW_AT_data_member_location[DW_OP_plus_uconst 0xa6]
	.dwattr DW$148, DW_AT_accessibility(DW_ACCESS_public)
DW$149	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$264)
	.dwattr DW$149, DW_AT_name("rsvd7_5"), DW_AT_symbol_name("_rsvd7_5")
	.dwattr DW$149, DW_AT_data_member_location[DW_OP_plus_uconst 0xa8]
	.dwattr DW$149, DW_AT_accessibility(DW_ACCESS_public)
DW$150	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$264)
	.dwattr DW$150, DW_AT_name("rsvd7_6"), DW_AT_symbol_name("_rsvd7_6")
	.dwattr DW$150, DW_AT_data_member_location[DW_OP_plus_uconst 0xaa]
	.dwattr DW$150, DW_AT_accessibility(DW_ACCESS_public)
DW$151	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$264)
	.dwattr DW$151, DW_AT_name("rsvd7_7"), DW_AT_symbol_name("_rsvd7_7")
	.dwattr DW$151, DW_AT_data_member_location[DW_OP_plus_uconst 0xac]
	.dwattr DW$151, DW_AT_accessibility(DW_ACCESS_public)
DW$152	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$264)
	.dwattr DW$152, DW_AT_name("rsvd7_8"), DW_AT_symbol_name("_rsvd7_8")
	.dwattr DW$152, DW_AT_data_member_location[DW_OP_plus_uconst 0xae]
	.dwattr DW$152, DW_AT_accessibility(DW_ACCESS_public)
DW$153	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$264)
	.dwattr DW$153, DW_AT_name("I2CINT1A"), DW_AT_symbol_name("_I2CINT1A")
	.dwattr DW$153, DW_AT_data_member_location[DW_OP_plus_uconst 0xb0]
	.dwattr DW$153, DW_AT_accessibility(DW_ACCESS_public)
DW$154	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$264)
	.dwattr DW$154, DW_AT_name("I2CINT2A"), DW_AT_symbol_name("_I2CINT2A")
	.dwattr DW$154, DW_AT_data_member_location[DW_OP_plus_uconst 0xb2]
	.dwattr DW$154, DW_AT_accessibility(DW_ACCESS_public)
DW$155	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$264)
	.dwattr DW$155, DW_AT_name("rsvd8_3"), DW_AT_symbol_name("_rsvd8_3")
	.dwattr DW$155, DW_AT_data_member_location[DW_OP_plus_uconst 0xb4]
	.dwattr DW$155, DW_AT_accessibility(DW_ACCESS_public)
DW$156	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$264)
	.dwattr DW$156, DW_AT_name("rsvd8_4"), DW_AT_symbol_name("_rsvd8_4")
	.dwattr DW$156, DW_AT_data_member_location[DW_OP_plus_uconst 0xb6]
	.dwattr DW$156, DW_AT_accessibility(DW_ACCESS_public)
DW$157	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$264)
	.dwattr DW$157, DW_AT_name("rsvd8_5"), DW_AT_symbol_name("_rsvd8_5")
	.dwattr DW$157, DW_AT_data_member_location[DW_OP_plus_uconst 0xb8]
	.dwattr DW$157, DW_AT_accessibility(DW_ACCESS_public)
DW$158	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$264)
	.dwattr DW$158, DW_AT_name("rsvd8_6"), DW_AT_symbol_name("_rsvd8_6")
	.dwattr DW$158, DW_AT_data_member_location[DW_OP_plus_uconst 0xba]
	.dwattr DW$158, DW_AT_accessibility(DW_ACCESS_public)
DW$159	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$264)
	.dwattr DW$159, DW_AT_name("rsvd8_7"), DW_AT_symbol_name("_rsvd8_7")
	.dwattr DW$159, DW_AT_data_member_location[DW_OP_plus_uconst 0xbc]
	.dwattr DW$159, DW_AT_accessibility(DW_ACCESS_public)
DW$160	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$264)
	.dwattr DW$160, DW_AT_name("rsvd8_8"), DW_AT_symbol_name("_rsvd8_8")
	.dwattr DW$160, DW_AT_data_member_location[DW_OP_plus_uconst 0xbe]
	.dwattr DW$160, DW_AT_accessibility(DW_ACCESS_public)
DW$161	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$264)
	.dwattr DW$161, DW_AT_name("SCIRXINTA"), DW_AT_symbol_name("_SCIRXINTA")
	.dwattr DW$161, DW_AT_data_member_location[DW_OP_plus_uconst 0xc0]
	.dwattr DW$161, DW_AT_accessibility(DW_ACCESS_public)
DW$162	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$264)
	.dwattr DW$162, DW_AT_name("SCITXINTA"), DW_AT_symbol_name("_SCITXINTA")
	.dwattr DW$162, DW_AT_data_member_location[DW_OP_plus_uconst 0xc2]
	.dwattr DW$162, DW_AT_accessibility(DW_ACCESS_public)
DW$163	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$264)
	.dwattr DW$163, DW_AT_name("SCIRXINTB"), DW_AT_symbol_name("_SCIRXINTB")
	.dwattr DW$163, DW_AT_data_member_location[DW_OP_plus_uconst 0xc4]
	.dwattr DW$163, DW_AT_accessibility(DW_ACCESS_public)
DW$164	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$264)
	.dwattr DW$164, DW_AT_name("SCITXINTB"), DW_AT_symbol_name("_SCITXINTB")
	.dwattr DW$164, DW_AT_data_member_location[DW_OP_plus_uconst 0xc6]
	.dwattr DW$164, DW_AT_accessibility(DW_ACCESS_public)
DW$165	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$264)
	.dwattr DW$165, DW_AT_name("ECAN0INTA"), DW_AT_symbol_name("_ECAN0INTA")
	.dwattr DW$165, DW_AT_data_member_location[DW_OP_plus_uconst 0xc8]
	.dwattr DW$165, DW_AT_accessibility(DW_ACCESS_public)
DW$166	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$264)
	.dwattr DW$166, DW_AT_name("ECAN1INTA"), DW_AT_symbol_name("_ECAN1INTA")
	.dwattr DW$166, DW_AT_data_member_location[DW_OP_plus_uconst 0xca]
	.dwattr DW$166, DW_AT_accessibility(DW_ACCESS_public)
DW$167	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$264)
	.dwattr DW$167, DW_AT_name("ECAN0INTB"), DW_AT_symbol_name("_ECAN0INTB")
	.dwattr DW$167, DW_AT_data_member_location[DW_OP_plus_uconst 0xcc]
	.dwattr DW$167, DW_AT_accessibility(DW_ACCESS_public)
DW$168	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$264)
	.dwattr DW$168, DW_AT_name("ECAN1INTB"), DW_AT_symbol_name("_ECAN1INTB")
	.dwattr DW$168, DW_AT_data_member_location[DW_OP_plus_uconst 0xce]
	.dwattr DW$168, DW_AT_accessibility(DW_ACCESS_public)
DW$169	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$264)
	.dwattr DW$169, DW_AT_name("rsvd10_1"), DW_AT_symbol_name("_rsvd10_1")
	.dwattr DW$169, DW_AT_data_member_location[DW_OP_plus_uconst 0xd0]
	.dwattr DW$169, DW_AT_accessibility(DW_ACCESS_public)
DW$170	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$264)
	.dwattr DW$170, DW_AT_name("rsvd10_2"), DW_AT_symbol_name("_rsvd10_2")
	.dwattr DW$170, DW_AT_data_member_location[DW_OP_plus_uconst 0xd2]
	.dwattr DW$170, DW_AT_accessibility(DW_ACCESS_public)
DW$171	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$264)
	.dwattr DW$171, DW_AT_name("rsvd10_3"), DW_AT_symbol_name("_rsvd10_3")
	.dwattr DW$171, DW_AT_data_member_location[DW_OP_plus_uconst 0xd4]
	.dwattr DW$171, DW_AT_accessibility(DW_ACCESS_public)
DW$172	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$264)
	.dwattr DW$172, DW_AT_name("rsvd10_4"), DW_AT_symbol_name("_rsvd10_4")
	.dwattr DW$172, DW_AT_data_member_location[DW_OP_plus_uconst 0xd6]
	.dwattr DW$172, DW_AT_accessibility(DW_ACCESS_public)
DW$173	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$264)
	.dwattr DW$173, DW_AT_name("rsvd10_5"), DW_AT_symbol_name("_rsvd10_5")
	.dwattr DW$173, DW_AT_data_member_location[DW_OP_plus_uconst 0xd8]
	.dwattr DW$173, DW_AT_accessibility(DW_ACCESS_public)
DW$174	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$264)
	.dwattr DW$174, DW_AT_name("rsvd10_6"), DW_AT_symbol_name("_rsvd10_6")
	.dwattr DW$174, DW_AT_data_member_location[DW_OP_plus_uconst 0xda]
	.dwattr DW$174, DW_AT_accessibility(DW_ACCESS_public)
DW$175	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$264)
	.dwattr DW$175, DW_AT_name("rsvd10_7"), DW_AT_symbol_name("_rsvd10_7")
	.dwattr DW$175, DW_AT_data_member_location[DW_OP_plus_uconst 0xdc]
	.dwattr DW$175, DW_AT_accessibility(DW_ACCESS_public)
DW$176	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$264)
	.dwattr DW$176, DW_AT_name("rsvd10_8"), DW_AT_symbol_name("_rsvd10_8")
	.dwattr DW$176, DW_AT_data_member_location[DW_OP_plus_uconst 0xde]
	.dwattr DW$176, DW_AT_accessibility(DW_ACCESS_public)
DW$177	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$264)
	.dwattr DW$177, DW_AT_name("rsvd11_1"), DW_AT_symbol_name("_rsvd11_1")
	.dwattr DW$177, DW_AT_data_member_location[DW_OP_plus_uconst 0xe0]
	.dwattr DW$177, DW_AT_accessibility(DW_ACCESS_public)
DW$178	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$264)
	.dwattr DW$178, DW_AT_name("rsvd11_2"), DW_AT_symbol_name("_rsvd11_2")
	.dwattr DW$178, DW_AT_data_member_location[DW_OP_plus_uconst 0xe2]
	.dwattr DW$178, DW_AT_accessibility(DW_ACCESS_public)
DW$179	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$264)
	.dwattr DW$179, DW_AT_name("rsvd11_3"), DW_AT_symbol_name("_rsvd11_3")
	.dwattr DW$179, DW_AT_data_member_location[DW_OP_plus_uconst 0xe4]
	.dwattr DW$179, DW_AT_accessibility(DW_ACCESS_public)
DW$180	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$264)
	.dwattr DW$180, DW_AT_name("rsvd11_4"), DW_AT_symbol_name("_rsvd11_4")
	.dwattr DW$180, DW_AT_data_member_location[DW_OP_plus_uconst 0xe6]
	.dwattr DW$180, DW_AT_accessibility(DW_ACCESS_public)
DW$181	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$264)
	.dwattr DW$181, DW_AT_name("rsvd11_5"), DW_AT_symbol_name("_rsvd11_5")
	.dwattr DW$181, DW_AT_data_member_location[DW_OP_plus_uconst 0xe8]
	.dwattr DW$181, DW_AT_accessibility(DW_ACCESS_public)
DW$182	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$264)
	.dwattr DW$182, DW_AT_name("rsvd11_6"), DW_AT_symbol_name("_rsvd11_6")
	.dwattr DW$182, DW_AT_data_member_location[DW_OP_plus_uconst 0xea]
	.dwattr DW$182, DW_AT_accessibility(DW_ACCESS_public)
DW$183	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$264)
	.dwattr DW$183, DW_AT_name("rsvd11_7"), DW_AT_symbol_name("_rsvd11_7")
	.dwattr DW$183, DW_AT_data_member_location[DW_OP_plus_uconst 0xec]
	.dwattr DW$183, DW_AT_accessibility(DW_ACCESS_public)
DW$184	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$264)
	.dwattr DW$184, DW_AT_name("rsvd11_8"), DW_AT_symbol_name("_rsvd11_8")
	.dwattr DW$184, DW_AT_data_member_location[DW_OP_plus_uconst 0xee]
	.dwattr DW$184, DW_AT_accessibility(DW_ACCESS_public)
DW$185	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$264)
	.dwattr DW$185, DW_AT_name("rsvd12_1"), DW_AT_symbol_name("_rsvd12_1")
	.dwattr DW$185, DW_AT_data_member_location[DW_OP_plus_uconst 0xf0]
	.dwattr DW$185, DW_AT_accessibility(DW_ACCESS_public)
DW$186	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$264)
	.dwattr DW$186, DW_AT_name("rsvd12_2"), DW_AT_symbol_name("_rsvd12_2")
	.dwattr DW$186, DW_AT_data_member_location[DW_OP_plus_uconst 0xf2]
	.dwattr DW$186, DW_AT_accessibility(DW_ACCESS_public)
DW$187	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$264)
	.dwattr DW$187, DW_AT_name("rsvd12_3"), DW_AT_symbol_name("_rsvd12_3")
	.dwattr DW$187, DW_AT_data_member_location[DW_OP_plus_uconst 0xf4]
	.dwattr DW$187, DW_AT_accessibility(DW_ACCESS_public)
DW$188	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$264)
	.dwattr DW$188, DW_AT_name("rsvd12_4"), DW_AT_symbol_name("_rsvd12_4")
	.dwattr DW$188, DW_AT_data_member_location[DW_OP_plus_uconst 0xf6]
	.dwattr DW$188, DW_AT_accessibility(DW_ACCESS_public)
DW$189	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$264)
	.dwattr DW$189, DW_AT_name("rsvd12_5"), DW_AT_symbol_name("_rsvd12_5")
	.dwattr DW$189, DW_AT_data_member_location[DW_OP_plus_uconst 0xf8]
	.dwattr DW$189, DW_AT_accessibility(DW_ACCESS_public)
DW$190	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$264)
	.dwattr DW$190, DW_AT_name("rsvd12_6"), DW_AT_symbol_name("_rsvd12_6")
	.dwattr DW$190, DW_AT_data_member_location[DW_OP_plus_uconst 0xfa]
	.dwattr DW$190, DW_AT_accessibility(DW_ACCESS_public)
DW$191	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$264)
	.dwattr DW$191, DW_AT_name("rsvd12_7"), DW_AT_symbol_name("_rsvd12_7")
	.dwattr DW$191, DW_AT_data_member_location[DW_OP_plus_uconst 0xfc]
	.dwattr DW$191, DW_AT_accessibility(DW_ACCESS_public)
DW$192	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$264)
	.dwattr DW$192, DW_AT_name("rsvd12_8"), DW_AT_symbol_name("_rsvd12_8")
	.dwattr DW$192, DW_AT_data_member_location[DW_OP_plus_uconst 0xfe]
	.dwattr DW$192, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$265

DW$193	.dwtag  DW_TAG_far_type
	.dwattr DW$193, DW_AT_type(*DW$T$284)
DW$T$358	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$358, DW_AT_type(*DW$193)
DW$194	.dwtag  DW_TAG_far_type
	.dwattr DW$194, DW_AT_type(*DW$T$300)
DW$T$359	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$359, DW_AT_type(*DW$194)
DW$195	.dwtag  DW_TAG_far_type
	.dwattr DW$195, DW_AT_type(*DW$T$318)
DW$T$360	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$360, DW_AT_type(*DW$195)
DW$196	.dwtag  DW_TAG_far_type
	.dwattr DW$196, DW_AT_type(*DW$T$333)
DW$T$361	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$361, DW_AT_type(*DW$196)
DW$197	.dwtag  DW_TAG_far_type
	.dwattr DW$197, DW_AT_type(*DW$T$338)
DW$T$362	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$362, DW_AT_type(*DW$197)
DW$T$264	.dwtag  DW_TAG_typedef, DW_AT_name("PINT"), DW_AT_type(*DW$T$263)
	.dwattr DW$T$264, DW_AT_language(DW_LANG_C)

DW$T$45	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$45, DW_AT_name("ADC_REGS")
	.dwattr DW$T$45, DW_AT_byte_size(0x1e)
DW$198	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$198, DW_AT_name("ADCTRL1"), DW_AT_symbol_name("_ADCTRL1")
	.dwattr DW$198, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$198, DW_AT_accessibility(DW_ACCESS_public)
DW$199	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$23)
	.dwattr DW$199, DW_AT_name("ADCTRL2"), DW_AT_symbol_name("_ADCTRL2")
	.dwattr DW$199, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$199, DW_AT_accessibility(DW_ACCESS_public)
DW$200	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$25)
	.dwattr DW$200, DW_AT_name("ADCMAXCONV"), DW_AT_symbol_name("_ADCMAXCONV")
	.dwattr DW$200, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$200, DW_AT_accessibility(DW_ACCESS_public)
DW$201	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$27)
	.dwattr DW$201, DW_AT_name("ADCCHSELSEQ1"), DW_AT_symbol_name("_ADCCHSELSEQ1")
	.dwattr DW$201, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$201, DW_AT_accessibility(DW_ACCESS_public)
DW$202	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$29)
	.dwattr DW$202, DW_AT_name("ADCCHSELSEQ2"), DW_AT_symbol_name("_ADCCHSELSEQ2")
	.dwattr DW$202, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$202, DW_AT_accessibility(DW_ACCESS_public)
DW$203	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$203, DW_AT_name("ADCCHSELSEQ3"), DW_AT_symbol_name("_ADCCHSELSEQ3")
	.dwattr DW$203, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr DW$203, DW_AT_accessibility(DW_ACCESS_public)
DW$204	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$33)
	.dwattr DW$204, DW_AT_name("ADCCHSELSEQ4"), DW_AT_symbol_name("_ADCCHSELSEQ4")
	.dwattr DW$204, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$204, DW_AT_accessibility(DW_ACCESS_public)
DW$205	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$35)
	.dwattr DW$205, DW_AT_name("ADCASEQSR"), DW_AT_symbol_name("_ADCASEQSR")
	.dwattr DW$205, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr DW$205, DW_AT_accessibility(DW_ACCESS_public)
DW$206	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$206, DW_AT_name("ADCRESULT0"), DW_AT_symbol_name("_ADCRESULT0")
	.dwattr DW$206, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$206, DW_AT_accessibility(DW_ACCESS_public)
DW$207	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$207, DW_AT_name("ADCRESULT1"), DW_AT_symbol_name("_ADCRESULT1")
	.dwattr DW$207, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr DW$207, DW_AT_accessibility(DW_ACCESS_public)
DW$208	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$208, DW_AT_name("ADCRESULT2"), DW_AT_symbol_name("_ADCRESULT2")
	.dwattr DW$208, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$208, DW_AT_accessibility(DW_ACCESS_public)
DW$209	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$209, DW_AT_name("ADCRESULT3"), DW_AT_symbol_name("_ADCRESULT3")
	.dwattr DW$209, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr DW$209, DW_AT_accessibility(DW_ACCESS_public)
DW$210	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$210, DW_AT_name("ADCRESULT4"), DW_AT_symbol_name("_ADCRESULT4")
	.dwattr DW$210, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$210, DW_AT_accessibility(DW_ACCESS_public)
DW$211	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$211, DW_AT_name("ADCRESULT5"), DW_AT_symbol_name("_ADCRESULT5")
	.dwattr DW$211, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr DW$211, DW_AT_accessibility(DW_ACCESS_public)
DW$212	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$212, DW_AT_name("ADCRESULT6"), DW_AT_symbol_name("_ADCRESULT6")
	.dwattr DW$212, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$212, DW_AT_accessibility(DW_ACCESS_public)
DW$213	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$213, DW_AT_name("ADCRESULT7"), DW_AT_symbol_name("_ADCRESULT7")
	.dwattr DW$213, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr DW$213, DW_AT_accessibility(DW_ACCESS_public)
DW$214	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$214, DW_AT_name("ADCRESULT8"), DW_AT_symbol_name("_ADCRESULT8")
	.dwattr DW$214, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$214, DW_AT_accessibility(DW_ACCESS_public)
DW$215	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$215, DW_AT_name("ADCRESULT9"), DW_AT_symbol_name("_ADCRESULT9")
	.dwattr DW$215, DW_AT_data_member_location[DW_OP_plus_uconst 0x11]
	.dwattr DW$215, DW_AT_accessibility(DW_ACCESS_public)
DW$216	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$216, DW_AT_name("ADCRESULT10"), DW_AT_symbol_name("_ADCRESULT10")
	.dwattr DW$216, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr DW$216, DW_AT_accessibility(DW_ACCESS_public)
DW$217	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$217, DW_AT_name("ADCRESULT11"), DW_AT_symbol_name("_ADCRESULT11")
	.dwattr DW$217, DW_AT_data_member_location[DW_OP_plus_uconst 0x13]
	.dwattr DW$217, DW_AT_accessibility(DW_ACCESS_public)
DW$218	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$218, DW_AT_name("ADCRESULT12"), DW_AT_symbol_name("_ADCRESULT12")
	.dwattr DW$218, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr DW$218, DW_AT_accessibility(DW_ACCESS_public)
DW$219	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$219, DW_AT_name("ADCRESULT13"), DW_AT_symbol_name("_ADCRESULT13")
	.dwattr DW$219, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr DW$219, DW_AT_accessibility(DW_ACCESS_public)
DW$220	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$220, DW_AT_name("ADCRESULT14"), DW_AT_symbol_name("_ADCRESULT14")
	.dwattr DW$220, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr DW$220, DW_AT_accessibility(DW_ACCESS_public)
DW$221	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$221, DW_AT_name("ADCRESULT15"), DW_AT_symbol_name("_ADCRESULT15")
	.dwattr DW$221, DW_AT_data_member_location[DW_OP_plus_uconst 0x17]
	.dwattr DW$221, DW_AT_accessibility(DW_ACCESS_public)
DW$222	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$37)
	.dwattr DW$222, DW_AT_name("ADCTRL3"), DW_AT_symbol_name("_ADCTRL3")
	.dwattr DW$222, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr DW$222, DW_AT_accessibility(DW_ACCESS_public)
DW$223	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$39)
	.dwattr DW$223, DW_AT_name("ADCST"), DW_AT_symbol_name("_ADCST")
	.dwattr DW$223, DW_AT_data_member_location[DW_OP_plus_uconst 0x19]
	.dwattr DW$223, DW_AT_accessibility(DW_ACCESS_public)
DW$224	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$224, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$224, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr DW$224, DW_AT_accessibility(DW_ACCESS_public)
DW$225	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$225, DW_AT_name("rsvd2"), DW_AT_symbol_name("_rsvd2")
	.dwattr DW$225, DW_AT_data_member_location[DW_OP_plus_uconst 0x1b]
	.dwattr DW$225, DW_AT_accessibility(DW_ACCESS_public)
DW$226	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$41)
	.dwattr DW$226, DW_AT_name("ADCREFSEL"), DW_AT_symbol_name("_ADCREFSEL")
	.dwattr DW$226, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr DW$226, DW_AT_accessibility(DW_ACCESS_public)
DW$227	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$44)
	.dwattr DW$227, DW_AT_name("ADCOFFTRIM"), DW_AT_symbol_name("_ADCOFFTRIM")
	.dwattr DW$227, DW_AT_data_member_location[DW_OP_plus_uconst 0x1d]
	.dwattr DW$227, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$45


DW$T$46	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$46, DW_AT_name("ADC_RESULT_MIRROR_REGS")
	.dwattr DW$T$46, DW_AT_byte_size(0x10)
DW$228	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$228, DW_AT_name("ADCRESULT0"), DW_AT_symbol_name("_ADCRESULT0")
	.dwattr DW$228, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$228, DW_AT_accessibility(DW_ACCESS_public)
DW$229	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$229, DW_AT_name("ADCRESULT1"), DW_AT_symbol_name("_ADCRESULT1")
	.dwattr DW$229, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$229, DW_AT_accessibility(DW_ACCESS_public)
DW$230	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$230, DW_AT_name("ADCRESULT2"), DW_AT_symbol_name("_ADCRESULT2")
	.dwattr DW$230, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$230, DW_AT_accessibility(DW_ACCESS_public)
DW$231	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$231, DW_AT_name("ADCRESULT3"), DW_AT_symbol_name("_ADCRESULT3")
	.dwattr DW$231, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$231, DW_AT_accessibility(DW_ACCESS_public)
DW$232	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$232, DW_AT_name("ADCRESULT4"), DW_AT_symbol_name("_ADCRESULT4")
	.dwattr DW$232, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$232, DW_AT_accessibility(DW_ACCESS_public)
DW$233	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$233, DW_AT_name("ADCRESULT5"), DW_AT_symbol_name("_ADCRESULT5")
	.dwattr DW$233, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr DW$233, DW_AT_accessibility(DW_ACCESS_public)
DW$234	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$234, DW_AT_name("ADCRESULT6"), DW_AT_symbol_name("_ADCRESULT6")
	.dwattr DW$234, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$234, DW_AT_accessibility(DW_ACCESS_public)
DW$235	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$235, DW_AT_name("ADCRESULT7"), DW_AT_symbol_name("_ADCRESULT7")
	.dwattr DW$235, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr DW$235, DW_AT_accessibility(DW_ACCESS_public)
DW$236	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$236, DW_AT_name("ADCRESULT8"), DW_AT_symbol_name("_ADCRESULT8")
	.dwattr DW$236, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$236, DW_AT_accessibility(DW_ACCESS_public)
DW$237	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$237, DW_AT_name("ADCRESULT9"), DW_AT_symbol_name("_ADCRESULT9")
	.dwattr DW$237, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr DW$237, DW_AT_accessibility(DW_ACCESS_public)
DW$238	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$238, DW_AT_name("ADCRESULT10"), DW_AT_symbol_name("_ADCRESULT10")
	.dwattr DW$238, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$238, DW_AT_accessibility(DW_ACCESS_public)
DW$239	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$239, DW_AT_name("ADCRESULT11"), DW_AT_symbol_name("_ADCRESULT11")
	.dwattr DW$239, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr DW$239, DW_AT_accessibility(DW_ACCESS_public)
DW$240	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$240, DW_AT_name("ADCRESULT12"), DW_AT_symbol_name("_ADCRESULT12")
	.dwattr DW$240, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$240, DW_AT_accessibility(DW_ACCESS_public)
DW$241	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$241, DW_AT_name("ADCRESULT13"), DW_AT_symbol_name("_ADCRESULT13")
	.dwattr DW$241, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr DW$241, DW_AT_accessibility(DW_ACCESS_public)
DW$242	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$242, DW_AT_name("ADCRESULT14"), DW_AT_symbol_name("_ADCRESULT14")
	.dwattr DW$242, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$242, DW_AT_accessibility(DW_ACCESS_public)
DW$243	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$243, DW_AT_name("ADCRESULT15"), DW_AT_symbol_name("_ADCRESULT15")
	.dwattr DW$243, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr DW$243, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$46


DW$T$58	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$58, DW_AT_name("CPUTIMER_REGS")
	.dwattr DW$T$58, DW_AT_byte_size(0x08)
DW$244	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$49)
	.dwattr DW$244, DW_AT_name("TIM"), DW_AT_symbol_name("_TIM")
	.dwattr DW$244, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$244, DW_AT_accessibility(DW_ACCESS_public)
DW$245	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$51)
	.dwattr DW$245, DW_AT_name("PRD"), DW_AT_symbol_name("_PRD")
	.dwattr DW$245, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$245, DW_AT_accessibility(DW_ACCESS_public)
DW$246	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$53)
	.dwattr DW$246, DW_AT_name("TCR"), DW_AT_symbol_name("_TCR")
	.dwattr DW$246, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$246, DW_AT_accessibility(DW_ACCESS_public)
DW$247	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$247, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$247, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr DW$247, DW_AT_accessibility(DW_ACCESS_public)
DW$248	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$55)
	.dwattr DW$248, DW_AT_name("TPR"), DW_AT_symbol_name("_TPR")
	.dwattr DW$248, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$248, DW_AT_accessibility(DW_ACCESS_public)
DW$249	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$57)
	.dwattr DW$249, DW_AT_name("TPRH"), DW_AT_symbol_name("_TPRH")
	.dwattr DW$249, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr DW$249, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$58


DW$T$59	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$59, DW_AT_name("CSM_PWL")
	.dwattr DW$T$59, DW_AT_byte_size(0x08)
DW$250	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$250, DW_AT_name("PSWD0"), DW_AT_symbol_name("_PSWD0")
	.dwattr DW$250, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$250, DW_AT_accessibility(DW_ACCESS_public)
DW$251	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$251, DW_AT_name("PSWD1"), DW_AT_symbol_name("_PSWD1")
	.dwattr DW$251, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$251, DW_AT_accessibility(DW_ACCESS_public)
DW$252	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$252, DW_AT_name("PSWD2"), DW_AT_symbol_name("_PSWD2")
	.dwattr DW$252, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$252, DW_AT_accessibility(DW_ACCESS_public)
DW$253	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$253, DW_AT_name("PSWD3"), DW_AT_symbol_name("_PSWD3")
	.dwattr DW$253, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$253, DW_AT_accessibility(DW_ACCESS_public)
DW$254	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$254, DW_AT_name("PSWD4"), DW_AT_symbol_name("_PSWD4")
	.dwattr DW$254, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$254, DW_AT_accessibility(DW_ACCESS_public)
DW$255	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$255, DW_AT_name("PSWD5"), DW_AT_symbol_name("_PSWD5")
	.dwattr DW$255, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr DW$255, DW_AT_accessibility(DW_ACCESS_public)
DW$256	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$256, DW_AT_name("PSWD6"), DW_AT_symbol_name("_PSWD6")
	.dwattr DW$256, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$256, DW_AT_accessibility(DW_ACCESS_public)
DW$257	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$257, DW_AT_name("PSWD7"), DW_AT_symbol_name("_PSWD7")
	.dwattr DW$257, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr DW$257, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$59


DW$T$62	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$62, DW_AT_name("CSM_REGS")
	.dwattr DW$T$62, DW_AT_byte_size(0x10)
DW$258	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$258, DW_AT_name("KEY0"), DW_AT_symbol_name("_KEY0")
	.dwattr DW$258, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$258, DW_AT_accessibility(DW_ACCESS_public)
DW$259	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$259, DW_AT_name("KEY1"), DW_AT_symbol_name("_KEY1")
	.dwattr DW$259, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$259, DW_AT_accessibility(DW_ACCESS_public)
DW$260	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$260, DW_AT_name("KEY2"), DW_AT_symbol_name("_KEY2")
	.dwattr DW$260, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$260, DW_AT_accessibility(DW_ACCESS_public)
DW$261	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$261, DW_AT_name("KEY3"), DW_AT_symbol_name("_KEY3")
	.dwattr DW$261, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$261, DW_AT_accessibility(DW_ACCESS_public)
DW$262	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$262, DW_AT_name("KEY4"), DW_AT_symbol_name("_KEY4")
	.dwattr DW$262, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$262, DW_AT_accessibility(DW_ACCESS_public)
DW$263	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$263, DW_AT_name("KEY5"), DW_AT_symbol_name("_KEY5")
	.dwattr DW$263, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr DW$263, DW_AT_accessibility(DW_ACCESS_public)
DW$264	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$264, DW_AT_name("KEY6"), DW_AT_symbol_name("_KEY6")
	.dwattr DW$264, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$264, DW_AT_accessibility(DW_ACCESS_public)
DW$265	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$265, DW_AT_name("KEY7"), DW_AT_symbol_name("_KEY7")
	.dwattr DW$265, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr DW$265, DW_AT_accessibility(DW_ACCESS_public)
DW$266	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$266, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$266, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$266, DW_AT_accessibility(DW_ACCESS_public)
DW$267	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$267, DW_AT_name("rsvd2"), DW_AT_symbol_name("_rsvd2")
	.dwattr DW$267, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr DW$267, DW_AT_accessibility(DW_ACCESS_public)
DW$268	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$268, DW_AT_name("rsvd3"), DW_AT_symbol_name("_rsvd3")
	.dwattr DW$268, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$268, DW_AT_accessibility(DW_ACCESS_public)
DW$269	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$269, DW_AT_name("rsvd4"), DW_AT_symbol_name("_rsvd4")
	.dwattr DW$269, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr DW$269, DW_AT_accessibility(DW_ACCESS_public)
DW$270	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$270, DW_AT_name("rsvd5"), DW_AT_symbol_name("_rsvd5")
	.dwattr DW$270, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$270, DW_AT_accessibility(DW_ACCESS_public)
DW$271	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$271, DW_AT_name("rsvd6"), DW_AT_symbol_name("_rsvd6")
	.dwattr DW$271, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr DW$271, DW_AT_accessibility(DW_ACCESS_public)
DW$272	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$272, DW_AT_name("rsvd7"), DW_AT_symbol_name("_rsvd7")
	.dwattr DW$272, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$272, DW_AT_accessibility(DW_ACCESS_public)
DW$273	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$61)
	.dwattr DW$273, DW_AT_name("CSMSCR"), DW_AT_symbol_name("_CSMSCR")
	.dwattr DW$273, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr DW$273, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$62


DW$T$68	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$68, DW_AT_name("DEV_EMU_REGS")
	.dwattr DW$T$68, DW_AT_byte_size(0xd0)
DW$274	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$64)
	.dwattr DW$274, DW_AT_name("DEVICECNF"), DW_AT_symbol_name("_DEVICECNF")
	.dwattr DW$274, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$274, DW_AT_accessibility(DW_ACCESS_public)
DW$275	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$66)
	.dwattr DW$275, DW_AT_name("PARTID"), DW_AT_symbol_name("_PARTID")
	.dwattr DW$275, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$275, DW_AT_accessibility(DW_ACCESS_public)
DW$276	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$276, DW_AT_name("REVID"), DW_AT_symbol_name("_REVID")
	.dwattr DW$276, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$276, DW_AT_accessibility(DW_ACCESS_public)
DW$277	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$277, DW_AT_name("PROTSTART"), DW_AT_symbol_name("_PROTSTART")
	.dwattr DW$277, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$277, DW_AT_accessibility(DW_ACCESS_public)
DW$278	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$278, DW_AT_name("PROTRANGE"), DW_AT_symbol_name("_PROTRANGE")
	.dwattr DW$278, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr DW$278, DW_AT_accessibility(DW_ACCESS_public)
DW$279	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$67)
	.dwattr DW$279, DW_AT_name("rsvd2"), DW_AT_symbol_name("_rsvd2")
	.dwattr DW$279, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$279, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$68


DW$T$119	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$119, DW_AT_name("ECAN_REGS")
	.dwattr DW$T$119, DW_AT_byte_size(0x34)
DW$280	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$70)
	.dwattr DW$280, DW_AT_name("CANME"), DW_AT_symbol_name("_CANME")
	.dwattr DW$280, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$280, DW_AT_accessibility(DW_ACCESS_public)
DW$281	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$72)
	.dwattr DW$281, DW_AT_name("CANMD"), DW_AT_symbol_name("_CANMD")
	.dwattr DW$281, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$281, DW_AT_accessibility(DW_ACCESS_public)
DW$282	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$74)
	.dwattr DW$282, DW_AT_name("CANTRS"), DW_AT_symbol_name("_CANTRS")
	.dwattr DW$282, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$282, DW_AT_accessibility(DW_ACCESS_public)
DW$283	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$76)
	.dwattr DW$283, DW_AT_name("CANTRR"), DW_AT_symbol_name("_CANTRR")
	.dwattr DW$283, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$283, DW_AT_accessibility(DW_ACCESS_public)
DW$284	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$78)
	.dwattr DW$284, DW_AT_name("CANTA"), DW_AT_symbol_name("_CANTA")
	.dwattr DW$284, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$284, DW_AT_accessibility(DW_ACCESS_public)
DW$285	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$80)
	.dwattr DW$285, DW_AT_name("CANAA"), DW_AT_symbol_name("_CANAA")
	.dwattr DW$285, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$285, DW_AT_accessibility(DW_ACCESS_public)
DW$286	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$82)
	.dwattr DW$286, DW_AT_name("CANRMP"), DW_AT_symbol_name("_CANRMP")
	.dwattr DW$286, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$286, DW_AT_accessibility(DW_ACCESS_public)
DW$287	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$84)
	.dwattr DW$287, DW_AT_name("CANRML"), DW_AT_symbol_name("_CANRML")
	.dwattr DW$287, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$287, DW_AT_accessibility(DW_ACCESS_public)
DW$288	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$86)
	.dwattr DW$288, DW_AT_name("CANRFP"), DW_AT_symbol_name("_CANRFP")
	.dwattr DW$288, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$288, DW_AT_accessibility(DW_ACCESS_public)
DW$289	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$88)
	.dwattr DW$289, DW_AT_name("CANGAM"), DW_AT_symbol_name("_CANGAM")
	.dwattr DW$289, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr DW$289, DW_AT_accessibility(DW_ACCESS_public)
DW$290	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$90)
	.dwattr DW$290, DW_AT_name("CANMC"), DW_AT_symbol_name("_CANMC")
	.dwattr DW$290, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr DW$290, DW_AT_accessibility(DW_ACCESS_public)
DW$291	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$92)
	.dwattr DW$291, DW_AT_name("CANBTC"), DW_AT_symbol_name("_CANBTC")
	.dwattr DW$291, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr DW$291, DW_AT_accessibility(DW_ACCESS_public)
DW$292	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$94)
	.dwattr DW$292, DW_AT_name("CANES"), DW_AT_symbol_name("_CANES")
	.dwattr DW$292, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr DW$292, DW_AT_accessibility(DW_ACCESS_public)
DW$293	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$96)
	.dwattr DW$293, DW_AT_name("CANTEC"), DW_AT_symbol_name("_CANTEC")
	.dwattr DW$293, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr DW$293, DW_AT_accessibility(DW_ACCESS_public)
DW$294	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$98)
	.dwattr DW$294, DW_AT_name("CANREC"), DW_AT_symbol_name("_CANREC")
	.dwattr DW$294, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr DW$294, DW_AT_accessibility(DW_ACCESS_public)
DW$295	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$100)
	.dwattr DW$295, DW_AT_name("CANGIF0"), DW_AT_symbol_name("_CANGIF0")
	.dwattr DW$295, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr DW$295, DW_AT_accessibility(DW_ACCESS_public)
DW$296	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$102)
	.dwattr DW$296, DW_AT_name("CANGIM"), DW_AT_symbol_name("_CANGIM")
	.dwattr DW$296, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr DW$296, DW_AT_accessibility(DW_ACCESS_public)
DW$297	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$104)
	.dwattr DW$297, DW_AT_name("CANGIF1"), DW_AT_symbol_name("_CANGIF1")
	.dwattr DW$297, DW_AT_data_member_location[DW_OP_plus_uconst 0x22]
	.dwattr DW$297, DW_AT_accessibility(DW_ACCESS_public)
DW$298	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$106)
	.dwattr DW$298, DW_AT_name("CANMIM"), DW_AT_symbol_name("_CANMIM")
	.dwattr DW$298, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr DW$298, DW_AT_accessibility(DW_ACCESS_public)
DW$299	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$108)
	.dwattr DW$299, DW_AT_name("CANMIL"), DW_AT_symbol_name("_CANMIL")
	.dwattr DW$299, DW_AT_data_member_location[DW_OP_plus_uconst 0x26]
	.dwattr DW$299, DW_AT_accessibility(DW_ACCESS_public)
DW$300	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$110)
	.dwattr DW$300, DW_AT_name("CANOPC"), DW_AT_symbol_name("_CANOPC")
	.dwattr DW$300, DW_AT_data_member_location[DW_OP_plus_uconst 0x28]
	.dwattr DW$300, DW_AT_accessibility(DW_ACCESS_public)
DW$301	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$112)
	.dwattr DW$301, DW_AT_name("CANTIOC"), DW_AT_symbol_name("_CANTIOC")
	.dwattr DW$301, DW_AT_data_member_location[DW_OP_plus_uconst 0x2a]
	.dwattr DW$301, DW_AT_accessibility(DW_ACCESS_public)
DW$302	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$114)
	.dwattr DW$302, DW_AT_name("CANRIOC"), DW_AT_symbol_name("_CANRIOC")
	.dwattr DW$302, DW_AT_data_member_location[DW_OP_plus_uconst 0x2c]
	.dwattr DW$302, DW_AT_accessibility(DW_ACCESS_public)
DW$303	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$48)
	.dwattr DW$303, DW_AT_name("CANTSC"), DW_AT_symbol_name("_CANTSC")
	.dwattr DW$303, DW_AT_data_member_location[DW_OP_plus_uconst 0x2e]
	.dwattr DW$303, DW_AT_accessibility(DW_ACCESS_public)
DW$304	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$116)
	.dwattr DW$304, DW_AT_name("CANTOC"), DW_AT_symbol_name("_CANTOC")
	.dwattr DW$304, DW_AT_data_member_location[DW_OP_plus_uconst 0x30]
	.dwattr DW$304, DW_AT_accessibility(DW_ACCESS_public)
DW$305	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$118)
	.dwattr DW$305, DW_AT_name("CANTOS"), DW_AT_symbol_name("_CANTOS")
	.dwattr DW$305, DW_AT_data_member_location[DW_OP_plus_uconst 0x32]
	.dwattr DW$305, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$119


DW$T$131	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$131, DW_AT_name("ECAN_MBOXES")
	.dwattr DW$T$131, DW_AT_byte_size(0x100)
DW$306	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$130)
	.dwattr DW$306, DW_AT_name("MBOX0"), DW_AT_symbol_name("_MBOX0")
	.dwattr DW$306, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$306, DW_AT_accessibility(DW_ACCESS_public)
DW$307	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$130)
	.dwattr DW$307, DW_AT_name("MBOX1"), DW_AT_symbol_name("_MBOX1")
	.dwattr DW$307, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$307, DW_AT_accessibility(DW_ACCESS_public)
DW$308	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$130)
	.dwattr DW$308, DW_AT_name("MBOX2"), DW_AT_symbol_name("_MBOX2")
	.dwattr DW$308, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$308, DW_AT_accessibility(DW_ACCESS_public)
DW$309	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$130)
	.dwattr DW$309, DW_AT_name("MBOX3"), DW_AT_symbol_name("_MBOX3")
	.dwattr DW$309, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr DW$309, DW_AT_accessibility(DW_ACCESS_public)
DW$310	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$130)
	.dwattr DW$310, DW_AT_name("MBOX4"), DW_AT_symbol_name("_MBOX4")
	.dwattr DW$310, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr DW$310, DW_AT_accessibility(DW_ACCESS_public)
DW$311	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$130)
	.dwattr DW$311, DW_AT_name("MBOX5"), DW_AT_symbol_name("_MBOX5")
	.dwattr DW$311, DW_AT_data_member_location[DW_OP_plus_uconst 0x28]
	.dwattr DW$311, DW_AT_accessibility(DW_ACCESS_public)
DW$312	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$130)
	.dwattr DW$312, DW_AT_name("MBOX6"), DW_AT_symbol_name("_MBOX6")
	.dwattr DW$312, DW_AT_data_member_location[DW_OP_plus_uconst 0x30]
	.dwattr DW$312, DW_AT_accessibility(DW_ACCESS_public)
DW$313	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$130)
	.dwattr DW$313, DW_AT_name("MBOX7"), DW_AT_symbol_name("_MBOX7")
	.dwattr DW$313, DW_AT_data_member_location[DW_OP_plus_uconst 0x38]
	.dwattr DW$313, DW_AT_accessibility(DW_ACCESS_public)
DW$314	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$130)
	.dwattr DW$314, DW_AT_name("MBOX8"), DW_AT_symbol_name("_MBOX8")
	.dwattr DW$314, DW_AT_data_member_location[DW_OP_plus_uconst 0x40]
	.dwattr DW$314, DW_AT_accessibility(DW_ACCESS_public)
DW$315	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$130)
	.dwattr DW$315, DW_AT_name("MBOX9"), DW_AT_symbol_name("_MBOX9")
	.dwattr DW$315, DW_AT_data_member_location[DW_OP_plus_uconst 0x48]
	.dwattr DW$315, DW_AT_accessibility(DW_ACCESS_public)
DW$316	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$130)
	.dwattr DW$316, DW_AT_name("MBOX10"), DW_AT_symbol_name("_MBOX10")
	.dwattr DW$316, DW_AT_data_member_location[DW_OP_plus_uconst 0x50]
	.dwattr DW$316, DW_AT_accessibility(DW_ACCESS_public)
DW$317	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$130)
	.dwattr DW$317, DW_AT_name("MBOX11"), DW_AT_symbol_name("_MBOX11")
	.dwattr DW$317, DW_AT_data_member_location[DW_OP_plus_uconst 0x58]
	.dwattr DW$317, DW_AT_accessibility(DW_ACCESS_public)
DW$318	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$130)
	.dwattr DW$318, DW_AT_name("MBOX12"), DW_AT_symbol_name("_MBOX12")
	.dwattr DW$318, DW_AT_data_member_location[DW_OP_plus_uconst 0x60]
	.dwattr DW$318, DW_AT_accessibility(DW_ACCESS_public)
DW$319	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$130)
	.dwattr DW$319, DW_AT_name("MBOX13"), DW_AT_symbol_name("_MBOX13")
	.dwattr DW$319, DW_AT_data_member_location[DW_OP_plus_uconst 0x68]
	.dwattr DW$319, DW_AT_accessibility(DW_ACCESS_public)
DW$320	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$130)
	.dwattr DW$320, DW_AT_name("MBOX14"), DW_AT_symbol_name("_MBOX14")
	.dwattr DW$320, DW_AT_data_member_location[DW_OP_plus_uconst 0x70]
	.dwattr DW$320, DW_AT_accessibility(DW_ACCESS_public)
DW$321	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$130)
	.dwattr DW$321, DW_AT_name("MBOX15"), DW_AT_symbol_name("_MBOX15")
	.dwattr DW$321, DW_AT_data_member_location[DW_OP_plus_uconst 0x78]
	.dwattr DW$321, DW_AT_accessibility(DW_ACCESS_public)
DW$322	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$130)
	.dwattr DW$322, DW_AT_name("MBOX16"), DW_AT_symbol_name("_MBOX16")
	.dwattr DW$322, DW_AT_data_member_location[DW_OP_plus_uconst 0x80]
	.dwattr DW$322, DW_AT_accessibility(DW_ACCESS_public)
DW$323	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$130)
	.dwattr DW$323, DW_AT_name("MBOX17"), DW_AT_symbol_name("_MBOX17")
	.dwattr DW$323, DW_AT_data_member_location[DW_OP_plus_uconst 0x88]
	.dwattr DW$323, DW_AT_accessibility(DW_ACCESS_public)
DW$324	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$130)
	.dwattr DW$324, DW_AT_name("MBOX18"), DW_AT_symbol_name("_MBOX18")
	.dwattr DW$324, DW_AT_data_member_location[DW_OP_plus_uconst 0x90]
	.dwattr DW$324, DW_AT_accessibility(DW_ACCESS_public)
DW$325	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$130)
	.dwattr DW$325, DW_AT_name("MBOX19"), DW_AT_symbol_name("_MBOX19")
	.dwattr DW$325, DW_AT_data_member_location[DW_OP_plus_uconst 0x98]
	.dwattr DW$325, DW_AT_accessibility(DW_ACCESS_public)
DW$326	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$130)
	.dwattr DW$326, DW_AT_name("MBOX20"), DW_AT_symbol_name("_MBOX20")
	.dwattr DW$326, DW_AT_data_member_location[DW_OP_plus_uconst 0xa0]
	.dwattr DW$326, DW_AT_accessibility(DW_ACCESS_public)
DW$327	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$130)
	.dwattr DW$327, DW_AT_name("MBOX21"), DW_AT_symbol_name("_MBOX21")
	.dwattr DW$327, DW_AT_data_member_location[DW_OP_plus_uconst 0xa8]
	.dwattr DW$327, DW_AT_accessibility(DW_ACCESS_public)
DW$328	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$130)
	.dwattr DW$328, DW_AT_name("MBOX22"), DW_AT_symbol_name("_MBOX22")
	.dwattr DW$328, DW_AT_data_member_location[DW_OP_plus_uconst 0xb0]
	.dwattr DW$328, DW_AT_accessibility(DW_ACCESS_public)
DW$329	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$130)
	.dwattr DW$329, DW_AT_name("MBOX23"), DW_AT_symbol_name("_MBOX23")
	.dwattr DW$329, DW_AT_data_member_location[DW_OP_plus_uconst 0xb8]
	.dwattr DW$329, DW_AT_accessibility(DW_ACCESS_public)
DW$330	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$130)
	.dwattr DW$330, DW_AT_name("MBOX24"), DW_AT_symbol_name("_MBOX24")
	.dwattr DW$330, DW_AT_data_member_location[DW_OP_plus_uconst 0xc0]
	.dwattr DW$330, DW_AT_accessibility(DW_ACCESS_public)
DW$331	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$130)
	.dwattr DW$331, DW_AT_name("MBOX25"), DW_AT_symbol_name("_MBOX25")
	.dwattr DW$331, DW_AT_data_member_location[DW_OP_plus_uconst 0xc8]
	.dwattr DW$331, DW_AT_accessibility(DW_ACCESS_public)
DW$332	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$130)
	.dwattr DW$332, DW_AT_name("MBOX26"), DW_AT_symbol_name("_MBOX26")
	.dwattr DW$332, DW_AT_data_member_location[DW_OP_plus_uconst 0xd0]
	.dwattr DW$332, DW_AT_accessibility(DW_ACCESS_public)
DW$333	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$130)
	.dwattr DW$333, DW_AT_name("MBOX27"), DW_AT_symbol_name("_MBOX27")
	.dwattr DW$333, DW_AT_data_member_location[DW_OP_plus_uconst 0xd8]
	.dwattr DW$333, DW_AT_accessibility(DW_ACCESS_public)
DW$334	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$130)
	.dwattr DW$334, DW_AT_name("MBOX28"), DW_AT_symbol_name("_MBOX28")
	.dwattr DW$334, DW_AT_data_member_location[DW_OP_plus_uconst 0xe0]
	.dwattr DW$334, DW_AT_accessibility(DW_ACCESS_public)
DW$335	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$130)
	.dwattr DW$335, DW_AT_name("MBOX29"), DW_AT_symbol_name("_MBOX29")
	.dwattr DW$335, DW_AT_data_member_location[DW_OP_plus_uconst 0xe8]
	.dwattr DW$335, DW_AT_accessibility(DW_ACCESS_public)
DW$336	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$130)
	.dwattr DW$336, DW_AT_name("MBOX30"), DW_AT_symbol_name("_MBOX30")
	.dwattr DW$336, DW_AT_data_member_location[DW_OP_plus_uconst 0xf0]
	.dwattr DW$336, DW_AT_accessibility(DW_ACCESS_public)
DW$337	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$130)
	.dwattr DW$337, DW_AT_name("MBOX31"), DW_AT_symbol_name("_MBOX31")
	.dwattr DW$337, DW_AT_data_member_location[DW_OP_plus_uconst 0xf8]
	.dwattr DW$337, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$131


DW$T$134	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$134, DW_AT_name("LAM_REGS")
	.dwattr DW$T$134, DW_AT_byte_size(0x40)
DW$338	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$133)
	.dwattr DW$338, DW_AT_name("LAM0"), DW_AT_symbol_name("_LAM0")
	.dwattr DW$338, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$338, DW_AT_accessibility(DW_ACCESS_public)
DW$339	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$133)
	.dwattr DW$339, DW_AT_name("LAM1"), DW_AT_symbol_name("_LAM1")
	.dwattr DW$339, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$339, DW_AT_accessibility(DW_ACCESS_public)
DW$340	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$133)
	.dwattr DW$340, DW_AT_name("LAM2"), DW_AT_symbol_name("_LAM2")
	.dwattr DW$340, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$340, DW_AT_accessibility(DW_ACCESS_public)
DW$341	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$133)
	.dwattr DW$341, DW_AT_name("LAM3"), DW_AT_symbol_name("_LAM3")
	.dwattr DW$341, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$341, DW_AT_accessibility(DW_ACCESS_public)
DW$342	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$133)
	.dwattr DW$342, DW_AT_name("LAM4"), DW_AT_symbol_name("_LAM4")
	.dwattr DW$342, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$342, DW_AT_accessibility(DW_ACCESS_public)
DW$343	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$133)
	.dwattr DW$343, DW_AT_name("LAM5"), DW_AT_symbol_name("_LAM5")
	.dwattr DW$343, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$343, DW_AT_accessibility(DW_ACCESS_public)
DW$344	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$133)
	.dwattr DW$344, DW_AT_name("LAM6"), DW_AT_symbol_name("_LAM6")
	.dwattr DW$344, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$344, DW_AT_accessibility(DW_ACCESS_public)
DW$345	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$133)
	.dwattr DW$345, DW_AT_name("LAM7"), DW_AT_symbol_name("_LAM7")
	.dwattr DW$345, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$345, DW_AT_accessibility(DW_ACCESS_public)
DW$346	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$133)
	.dwattr DW$346, DW_AT_name("LAM8"), DW_AT_symbol_name("_LAM8")
	.dwattr DW$346, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$346, DW_AT_accessibility(DW_ACCESS_public)
DW$347	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$133)
	.dwattr DW$347, DW_AT_name("LAM9"), DW_AT_symbol_name("_LAM9")
	.dwattr DW$347, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr DW$347, DW_AT_accessibility(DW_ACCESS_public)
DW$348	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$133)
	.dwattr DW$348, DW_AT_name("LAM10"), DW_AT_symbol_name("_LAM10")
	.dwattr DW$348, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr DW$348, DW_AT_accessibility(DW_ACCESS_public)
DW$349	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$133)
	.dwattr DW$349, DW_AT_name("LAM11"), DW_AT_symbol_name("_LAM11")
	.dwattr DW$349, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr DW$349, DW_AT_accessibility(DW_ACCESS_public)
DW$350	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$133)
	.dwattr DW$350, DW_AT_name("LAM12"), DW_AT_symbol_name("_LAM12")
	.dwattr DW$350, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr DW$350, DW_AT_accessibility(DW_ACCESS_public)
DW$351	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$133)
	.dwattr DW$351, DW_AT_name("LAM13"), DW_AT_symbol_name("_LAM13")
	.dwattr DW$351, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr DW$351, DW_AT_accessibility(DW_ACCESS_public)
DW$352	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$133)
	.dwattr DW$352, DW_AT_name("LAM14"), DW_AT_symbol_name("_LAM14")
	.dwattr DW$352, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr DW$352, DW_AT_accessibility(DW_ACCESS_public)
DW$353	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$133)
	.dwattr DW$353, DW_AT_name("LAM15"), DW_AT_symbol_name("_LAM15")
	.dwattr DW$353, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr DW$353, DW_AT_accessibility(DW_ACCESS_public)
DW$354	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$133)
	.dwattr DW$354, DW_AT_name("LAM16"), DW_AT_symbol_name("_LAM16")
	.dwattr DW$354, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr DW$354, DW_AT_accessibility(DW_ACCESS_public)
DW$355	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$133)
	.dwattr DW$355, DW_AT_name("LAM17"), DW_AT_symbol_name("_LAM17")
	.dwattr DW$355, DW_AT_data_member_location[DW_OP_plus_uconst 0x22]
	.dwattr DW$355, DW_AT_accessibility(DW_ACCESS_public)
DW$356	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$133)
	.dwattr DW$356, DW_AT_name("LAM18"), DW_AT_symbol_name("_LAM18")
	.dwattr DW$356, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr DW$356, DW_AT_accessibility(DW_ACCESS_public)
DW$357	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$133)
	.dwattr DW$357, DW_AT_name("LAM19"), DW_AT_symbol_name("_LAM19")
	.dwattr DW$357, DW_AT_data_member_location[DW_OP_plus_uconst 0x26]
	.dwattr DW$357, DW_AT_accessibility(DW_ACCESS_public)
DW$358	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$133)
	.dwattr DW$358, DW_AT_name("LAM20"), DW_AT_symbol_name("_LAM20")
	.dwattr DW$358, DW_AT_data_member_location[DW_OP_plus_uconst 0x28]
	.dwattr DW$358, DW_AT_accessibility(DW_ACCESS_public)
DW$359	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$133)
	.dwattr DW$359, DW_AT_name("LAM21"), DW_AT_symbol_name("_LAM21")
	.dwattr DW$359, DW_AT_data_member_location[DW_OP_plus_uconst 0x2a]
	.dwattr DW$359, DW_AT_accessibility(DW_ACCESS_public)
DW$360	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$133)
	.dwattr DW$360, DW_AT_name("LAM22"), DW_AT_symbol_name("_LAM22")
	.dwattr DW$360, DW_AT_data_member_location[DW_OP_plus_uconst 0x2c]
	.dwattr DW$360, DW_AT_accessibility(DW_ACCESS_public)
DW$361	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$133)
	.dwattr DW$361, DW_AT_name("LAM23"), DW_AT_symbol_name("_LAM23")
	.dwattr DW$361, DW_AT_data_member_location[DW_OP_plus_uconst 0x2e]
	.dwattr DW$361, DW_AT_accessibility(DW_ACCESS_public)
DW$362	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$133)
	.dwattr DW$362, DW_AT_name("LAM24"), DW_AT_symbol_name("_LAM24")
	.dwattr DW$362, DW_AT_data_member_location[DW_OP_plus_uconst 0x30]
	.dwattr DW$362, DW_AT_accessibility(DW_ACCESS_public)
DW$363	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$133)
	.dwattr DW$363, DW_AT_name("LAM25"), DW_AT_symbol_name("_LAM25")
	.dwattr DW$363, DW_AT_data_member_location[DW_OP_plus_uconst 0x32]
	.dwattr DW$363, DW_AT_accessibility(DW_ACCESS_public)
DW$364	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$133)
	.dwattr DW$364, DW_AT_name("LAM26"), DW_AT_symbol_name("_LAM26")
	.dwattr DW$364, DW_AT_data_member_location[DW_OP_plus_uconst 0x34]
	.dwattr DW$364, DW_AT_accessibility(DW_ACCESS_public)
DW$365	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$133)
	.dwattr DW$365, DW_AT_name("LAM27"), DW_AT_symbol_name("_LAM27")
	.dwattr DW$365, DW_AT_data_member_location[DW_OP_plus_uconst 0x36]
	.dwattr DW$365, DW_AT_accessibility(DW_ACCESS_public)
DW$366	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$133)
	.dwattr DW$366, DW_AT_name("LAM28"), DW_AT_symbol_name("_LAM28")
	.dwattr DW$366, DW_AT_data_member_location[DW_OP_plus_uconst 0x38]
	.dwattr DW$366, DW_AT_accessibility(DW_ACCESS_public)
DW$367	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$133)
	.dwattr DW$367, DW_AT_name("LAM29"), DW_AT_symbol_name("_LAM29")
	.dwattr DW$367, DW_AT_data_member_location[DW_OP_plus_uconst 0x3a]
	.dwattr DW$367, DW_AT_accessibility(DW_ACCESS_public)
DW$368	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$133)
	.dwattr DW$368, DW_AT_name("LAM30"), DW_AT_symbol_name("_LAM30")
	.dwattr DW$368, DW_AT_data_member_location[DW_OP_plus_uconst 0x3c]
	.dwattr DW$368, DW_AT_accessibility(DW_ACCESS_public)
DW$369	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$133)
	.dwattr DW$369, DW_AT_name("LAM31"), DW_AT_symbol_name("_LAM31")
	.dwattr DW$369, DW_AT_data_member_location[DW_OP_plus_uconst 0x3e]
	.dwattr DW$369, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$134


DW$T$135	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$135, DW_AT_name("MOTS_REGS")
	.dwattr DW$T$135, DW_AT_byte_size(0x40)
DW$370	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$48)
	.dwattr DW$370, DW_AT_name("MOTS0"), DW_AT_symbol_name("_MOTS0")
	.dwattr DW$370, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$370, DW_AT_accessibility(DW_ACCESS_public)
DW$371	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$48)
	.dwattr DW$371, DW_AT_name("MOTS1"), DW_AT_symbol_name("_MOTS1")
	.dwattr DW$371, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$371, DW_AT_accessibility(DW_ACCESS_public)
DW$372	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$48)
	.dwattr DW$372, DW_AT_name("MOTS2"), DW_AT_symbol_name("_MOTS2")
	.dwattr DW$372, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$372, DW_AT_accessibility(DW_ACCESS_public)
DW$373	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$48)
	.dwattr DW$373, DW_AT_name("MOTS3"), DW_AT_symbol_name("_MOTS3")
	.dwattr DW$373, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$373, DW_AT_accessibility(DW_ACCESS_public)
DW$374	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$48)
	.dwattr DW$374, DW_AT_name("MOTS4"), DW_AT_symbol_name("_MOTS4")
	.dwattr DW$374, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$374, DW_AT_accessibility(DW_ACCESS_public)
DW$375	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$48)
	.dwattr DW$375, DW_AT_name("MOTS5"), DW_AT_symbol_name("_MOTS5")
	.dwattr DW$375, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$375, DW_AT_accessibility(DW_ACCESS_public)
DW$376	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$48)
	.dwattr DW$376, DW_AT_name("MOTS6"), DW_AT_symbol_name("_MOTS6")
	.dwattr DW$376, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$376, DW_AT_accessibility(DW_ACCESS_public)
DW$377	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$48)
	.dwattr DW$377, DW_AT_name("MOTS7"), DW_AT_symbol_name("_MOTS7")
	.dwattr DW$377, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$377, DW_AT_accessibility(DW_ACCESS_public)
DW$378	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$48)
	.dwattr DW$378, DW_AT_name("MOTS8"), DW_AT_symbol_name("_MOTS8")
	.dwattr DW$378, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$378, DW_AT_accessibility(DW_ACCESS_public)
DW$379	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$48)
	.dwattr DW$379, DW_AT_name("MOTS9"), DW_AT_symbol_name("_MOTS9")
	.dwattr DW$379, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr DW$379, DW_AT_accessibility(DW_ACCESS_public)
DW$380	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$48)
	.dwattr DW$380, DW_AT_name("MOTS10"), DW_AT_symbol_name("_MOTS10")
	.dwattr DW$380, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr DW$380, DW_AT_accessibility(DW_ACCESS_public)
DW$381	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$48)
	.dwattr DW$381, DW_AT_name("MOTS11"), DW_AT_symbol_name("_MOTS11")
	.dwattr DW$381, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr DW$381, DW_AT_accessibility(DW_ACCESS_public)
DW$382	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$48)
	.dwattr DW$382, DW_AT_name("MOTS12"), DW_AT_symbol_name("_MOTS12")
	.dwattr DW$382, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr DW$382, DW_AT_accessibility(DW_ACCESS_public)
DW$383	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$48)
	.dwattr DW$383, DW_AT_name("MOTS13"), DW_AT_symbol_name("_MOTS13")
	.dwattr DW$383, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr DW$383, DW_AT_accessibility(DW_ACCESS_public)
DW$384	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$48)
	.dwattr DW$384, DW_AT_name("MOTS14"), DW_AT_symbol_name("_MOTS14")
	.dwattr DW$384, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr DW$384, DW_AT_accessibility(DW_ACCESS_public)
DW$385	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$48)
	.dwattr DW$385, DW_AT_name("MOTS15"), DW_AT_symbol_name("_MOTS15")
	.dwattr DW$385, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr DW$385, DW_AT_accessibility(DW_ACCESS_public)
DW$386	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$48)
	.dwattr DW$386, DW_AT_name("MOTS16"), DW_AT_symbol_name("_MOTS16")
	.dwattr DW$386, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr DW$386, DW_AT_accessibility(DW_ACCESS_public)
DW$387	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$48)
	.dwattr DW$387, DW_AT_name("MOTS17"), DW_AT_symbol_name("_MOTS17")
	.dwattr DW$387, DW_AT_data_member_location[DW_OP_plus_uconst 0x22]
	.dwattr DW$387, DW_AT_accessibility(DW_ACCESS_public)
DW$388	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$48)
	.dwattr DW$388, DW_AT_name("MOTS18"), DW_AT_symbol_name("_MOTS18")
	.dwattr DW$388, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr DW$388, DW_AT_accessibility(DW_ACCESS_public)
DW$389	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$48)
	.dwattr DW$389, DW_AT_name("MOTS19"), DW_AT_symbol_name("_MOTS19")
	.dwattr DW$389, DW_AT_data_member_location[DW_OP_plus_uconst 0x26]
	.dwattr DW$389, DW_AT_accessibility(DW_ACCESS_public)
DW$390	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$48)
	.dwattr DW$390, DW_AT_name("MOTS20"), DW_AT_symbol_name("_MOTS20")
	.dwattr DW$390, DW_AT_data_member_location[DW_OP_plus_uconst 0x28]
	.dwattr DW$390, DW_AT_accessibility(DW_ACCESS_public)
DW$391	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$48)
	.dwattr DW$391, DW_AT_name("MOTS21"), DW_AT_symbol_name("_MOTS21")
	.dwattr DW$391, DW_AT_data_member_location[DW_OP_plus_uconst 0x2a]
	.dwattr DW$391, DW_AT_accessibility(DW_ACCESS_public)
DW$392	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$48)
	.dwattr DW$392, DW_AT_name("MOTS22"), DW_AT_symbol_name("_MOTS22")
	.dwattr DW$392, DW_AT_data_member_location[DW_OP_plus_uconst 0x2c]
	.dwattr DW$392, DW_AT_accessibility(DW_ACCESS_public)
DW$393	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$48)
	.dwattr DW$393, DW_AT_name("MOTS23"), DW_AT_symbol_name("_MOTS23")
	.dwattr DW$393, DW_AT_data_member_location[DW_OP_plus_uconst 0x2e]
	.dwattr DW$393, DW_AT_accessibility(DW_ACCESS_public)
DW$394	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$48)
	.dwattr DW$394, DW_AT_name("MOTS24"), DW_AT_symbol_name("_MOTS24")
	.dwattr DW$394, DW_AT_data_member_location[DW_OP_plus_uconst 0x30]
	.dwattr DW$394, DW_AT_accessibility(DW_ACCESS_public)
DW$395	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$48)
	.dwattr DW$395, DW_AT_name("MOTS25"), DW_AT_symbol_name("_MOTS25")
	.dwattr DW$395, DW_AT_data_member_location[DW_OP_plus_uconst 0x32]
	.dwattr DW$395, DW_AT_accessibility(DW_ACCESS_public)
DW$396	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$48)
	.dwattr DW$396, DW_AT_name("MOTS26"), DW_AT_symbol_name("_MOTS26")
	.dwattr DW$396, DW_AT_data_member_location[DW_OP_plus_uconst 0x34]
	.dwattr DW$396, DW_AT_accessibility(DW_ACCESS_public)
DW$397	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$48)
	.dwattr DW$397, DW_AT_name("MOTS27"), DW_AT_symbol_name("_MOTS27")
	.dwattr DW$397, DW_AT_data_member_location[DW_OP_plus_uconst 0x36]
	.dwattr DW$397, DW_AT_accessibility(DW_ACCESS_public)
DW$398	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$48)
	.dwattr DW$398, DW_AT_name("MOTS28"), DW_AT_symbol_name("_MOTS28")
	.dwattr DW$398, DW_AT_data_member_location[DW_OP_plus_uconst 0x38]
	.dwattr DW$398, DW_AT_accessibility(DW_ACCESS_public)
DW$399	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$48)
	.dwattr DW$399, DW_AT_name("MOTS29"), DW_AT_symbol_name("_MOTS29")
	.dwattr DW$399, DW_AT_data_member_location[DW_OP_plus_uconst 0x3a]
	.dwattr DW$399, DW_AT_accessibility(DW_ACCESS_public)
DW$400	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$48)
	.dwattr DW$400, DW_AT_name("MOTS30"), DW_AT_symbol_name("_MOTS30")
	.dwattr DW$400, DW_AT_data_member_location[DW_OP_plus_uconst 0x3c]
	.dwattr DW$400, DW_AT_accessibility(DW_ACCESS_public)
DW$401	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$48)
	.dwattr DW$401, DW_AT_name("MOTS31"), DW_AT_symbol_name("_MOTS31")
	.dwattr DW$401, DW_AT_data_member_location[DW_OP_plus_uconst 0x3e]
	.dwattr DW$401, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$135


DW$T$136	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$136, DW_AT_name("MOTO_REGS")
	.dwattr DW$T$136, DW_AT_byte_size(0x40)
DW$402	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$48)
	.dwattr DW$402, DW_AT_name("MOTO0"), DW_AT_symbol_name("_MOTO0")
	.dwattr DW$402, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$402, DW_AT_accessibility(DW_ACCESS_public)
DW$403	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$48)
	.dwattr DW$403, DW_AT_name("MOTO1"), DW_AT_symbol_name("_MOTO1")
	.dwattr DW$403, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$403, DW_AT_accessibility(DW_ACCESS_public)
DW$404	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$48)
	.dwattr DW$404, DW_AT_name("MOTO2"), DW_AT_symbol_name("_MOTO2")
	.dwattr DW$404, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$404, DW_AT_accessibility(DW_ACCESS_public)
DW$405	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$48)
	.dwattr DW$405, DW_AT_name("MOTO3"), DW_AT_symbol_name("_MOTO3")
	.dwattr DW$405, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$405, DW_AT_accessibility(DW_ACCESS_public)
DW$406	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$48)
	.dwattr DW$406, DW_AT_name("MOTO4"), DW_AT_symbol_name("_MOTO4")
	.dwattr DW$406, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$406, DW_AT_accessibility(DW_ACCESS_public)
DW$407	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$48)
	.dwattr DW$407, DW_AT_name("MOTO5"), DW_AT_symbol_name("_MOTO5")
	.dwattr DW$407, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$407, DW_AT_accessibility(DW_ACCESS_public)
DW$408	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$48)
	.dwattr DW$408, DW_AT_name("MOTO6"), DW_AT_symbol_name("_MOTO6")
	.dwattr DW$408, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$408, DW_AT_accessibility(DW_ACCESS_public)
DW$409	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$48)
	.dwattr DW$409, DW_AT_name("MOTO7"), DW_AT_symbol_name("_MOTO7")
	.dwattr DW$409, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$409, DW_AT_accessibility(DW_ACCESS_public)
DW$410	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$48)
	.dwattr DW$410, DW_AT_name("MOTO8"), DW_AT_symbol_name("_MOTO8")
	.dwattr DW$410, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$410, DW_AT_accessibility(DW_ACCESS_public)
DW$411	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$48)
	.dwattr DW$411, DW_AT_name("MOTO9"), DW_AT_symbol_name("_MOTO9")
	.dwattr DW$411, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr DW$411, DW_AT_accessibility(DW_ACCESS_public)
DW$412	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$48)
	.dwattr DW$412, DW_AT_name("MOTO10"), DW_AT_symbol_name("_MOTO10")
	.dwattr DW$412, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr DW$412, DW_AT_accessibility(DW_ACCESS_public)
DW$413	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$48)
	.dwattr DW$413, DW_AT_name("MOTO11"), DW_AT_symbol_name("_MOTO11")
	.dwattr DW$413, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr DW$413, DW_AT_accessibility(DW_ACCESS_public)
DW$414	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$48)
	.dwattr DW$414, DW_AT_name("MOTO12"), DW_AT_symbol_name("_MOTO12")
	.dwattr DW$414, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr DW$414, DW_AT_accessibility(DW_ACCESS_public)
DW$415	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$48)
	.dwattr DW$415, DW_AT_name("MOTO13"), DW_AT_symbol_name("_MOTO13")
	.dwattr DW$415, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr DW$415, DW_AT_accessibility(DW_ACCESS_public)
DW$416	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$48)
	.dwattr DW$416, DW_AT_name("MOTO14"), DW_AT_symbol_name("_MOTO14")
	.dwattr DW$416, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr DW$416, DW_AT_accessibility(DW_ACCESS_public)
DW$417	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$48)
	.dwattr DW$417, DW_AT_name("MOTO15"), DW_AT_symbol_name("_MOTO15")
	.dwattr DW$417, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr DW$417, DW_AT_accessibility(DW_ACCESS_public)
DW$418	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$48)
	.dwattr DW$418, DW_AT_name("MOTO16"), DW_AT_symbol_name("_MOTO16")
	.dwattr DW$418, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr DW$418, DW_AT_accessibility(DW_ACCESS_public)
DW$419	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$48)
	.dwattr DW$419, DW_AT_name("MOTO17"), DW_AT_symbol_name("_MOTO17")
	.dwattr DW$419, DW_AT_data_member_location[DW_OP_plus_uconst 0x22]
	.dwattr DW$419, DW_AT_accessibility(DW_ACCESS_public)
DW$420	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$48)
	.dwattr DW$420, DW_AT_name("MOTO18"), DW_AT_symbol_name("_MOTO18")
	.dwattr DW$420, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr DW$420, DW_AT_accessibility(DW_ACCESS_public)
DW$421	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$48)
	.dwattr DW$421, DW_AT_name("MOTO19"), DW_AT_symbol_name("_MOTO19")
	.dwattr DW$421, DW_AT_data_member_location[DW_OP_plus_uconst 0x26]
	.dwattr DW$421, DW_AT_accessibility(DW_ACCESS_public)
DW$422	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$48)
	.dwattr DW$422, DW_AT_name("MOTO20"), DW_AT_symbol_name("_MOTO20")
	.dwattr DW$422, DW_AT_data_member_location[DW_OP_plus_uconst 0x28]
	.dwattr DW$422, DW_AT_accessibility(DW_ACCESS_public)
DW$423	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$48)
	.dwattr DW$423, DW_AT_name("MOTO21"), DW_AT_symbol_name("_MOTO21")
	.dwattr DW$423, DW_AT_data_member_location[DW_OP_plus_uconst 0x2a]
	.dwattr DW$423, DW_AT_accessibility(DW_ACCESS_public)
DW$424	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$48)
	.dwattr DW$424, DW_AT_name("MOTO22"), DW_AT_symbol_name("_MOTO22")
	.dwattr DW$424, DW_AT_data_member_location[DW_OP_plus_uconst 0x2c]
	.dwattr DW$424, DW_AT_accessibility(DW_ACCESS_public)
DW$425	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$48)
	.dwattr DW$425, DW_AT_name("MOTO23"), DW_AT_symbol_name("_MOTO23")
	.dwattr DW$425, DW_AT_data_member_location[DW_OP_plus_uconst 0x2e]
	.dwattr DW$425, DW_AT_accessibility(DW_ACCESS_public)
DW$426	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$48)
	.dwattr DW$426, DW_AT_name("MOTO24"), DW_AT_symbol_name("_MOTO24")
	.dwattr DW$426, DW_AT_data_member_location[DW_OP_plus_uconst 0x30]
	.dwattr DW$426, DW_AT_accessibility(DW_ACCESS_public)
DW$427	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$48)
	.dwattr DW$427, DW_AT_name("MOTO25"), DW_AT_symbol_name("_MOTO25")
	.dwattr DW$427, DW_AT_data_member_location[DW_OP_plus_uconst 0x32]
	.dwattr DW$427, DW_AT_accessibility(DW_ACCESS_public)
DW$428	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$48)
	.dwattr DW$428, DW_AT_name("MOTO26"), DW_AT_symbol_name("_MOTO26")
	.dwattr DW$428, DW_AT_data_member_location[DW_OP_plus_uconst 0x34]
	.dwattr DW$428, DW_AT_accessibility(DW_ACCESS_public)
DW$429	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$48)
	.dwattr DW$429, DW_AT_name("MOTO27"), DW_AT_symbol_name("_MOTO27")
	.dwattr DW$429, DW_AT_data_member_location[DW_OP_plus_uconst 0x36]
	.dwattr DW$429, DW_AT_accessibility(DW_ACCESS_public)
DW$430	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$48)
	.dwattr DW$430, DW_AT_name("MOTO28"), DW_AT_symbol_name("_MOTO28")
	.dwattr DW$430, DW_AT_data_member_location[DW_OP_plus_uconst 0x38]
	.dwattr DW$430, DW_AT_accessibility(DW_ACCESS_public)
DW$431	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$48)
	.dwattr DW$431, DW_AT_name("MOTO29"), DW_AT_symbol_name("_MOTO29")
	.dwattr DW$431, DW_AT_data_member_location[DW_OP_plus_uconst 0x3a]
	.dwattr DW$431, DW_AT_accessibility(DW_ACCESS_public)
DW$432	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$48)
	.dwattr DW$432, DW_AT_name("MOTO30"), DW_AT_symbol_name("_MOTO30")
	.dwattr DW$432, DW_AT_data_member_location[DW_OP_plus_uconst 0x3c]
	.dwattr DW$432, DW_AT_accessibility(DW_ACCESS_public)
DW$433	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$48)
	.dwattr DW$433, DW_AT_name("MOTO31"), DW_AT_symbol_name("_MOTO31")
	.dwattr DW$433, DW_AT_data_member_location[DW_OP_plus_uconst 0x3e]
	.dwattr DW$433, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$136


DW$T$181	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$181, DW_AT_name("EPWM_REGS")
	.dwattr DW$T$181, DW_AT_byte_size(0x22)
DW$434	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$138)
	.dwattr DW$434, DW_AT_name("TBCTL"), DW_AT_symbol_name("_TBCTL")
	.dwattr DW$434, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$434, DW_AT_accessibility(DW_ACCESS_public)
DW$435	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$140)
	.dwattr DW$435, DW_AT_name("TBSTS"), DW_AT_symbol_name("_TBSTS")
	.dwattr DW$435, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$435, DW_AT_accessibility(DW_ACCESS_public)
DW$436	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$142)
	.dwattr DW$436, DW_AT_name("TBPHS"), DW_AT_symbol_name("_TBPHS")
	.dwattr DW$436, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$436, DW_AT_accessibility(DW_ACCESS_public)
DW$437	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$437, DW_AT_name("TBCTR"), DW_AT_symbol_name("_TBCTR")
	.dwattr DW$437, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$437, DW_AT_accessibility(DW_ACCESS_public)
DW$438	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$438, DW_AT_name("TBPRD"), DW_AT_symbol_name("_TBPRD")
	.dwattr DW$438, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr DW$438, DW_AT_accessibility(DW_ACCESS_public)
DW$439	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$439, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$439, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$439, DW_AT_accessibility(DW_ACCESS_public)
DW$440	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$144)
	.dwattr DW$440, DW_AT_name("CMPCTL"), DW_AT_symbol_name("_CMPCTL")
	.dwattr DW$440, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr DW$440, DW_AT_accessibility(DW_ACCESS_public)
DW$441	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$146)
	.dwattr DW$441, DW_AT_name("CMPA"), DW_AT_symbol_name("_CMPA")
	.dwattr DW$441, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$441, DW_AT_accessibility(DW_ACCESS_public)
DW$442	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$442, DW_AT_name("CMPB"), DW_AT_symbol_name("_CMPB")
	.dwattr DW$442, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$442, DW_AT_accessibility(DW_ACCESS_public)
DW$443	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$148)
	.dwattr DW$443, DW_AT_name("AQCTLA"), DW_AT_symbol_name("_AQCTLA")
	.dwattr DW$443, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr DW$443, DW_AT_accessibility(DW_ACCESS_public)
DW$444	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$148)
	.dwattr DW$444, DW_AT_name("AQCTLB"), DW_AT_symbol_name("_AQCTLB")
	.dwattr DW$444, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$444, DW_AT_accessibility(DW_ACCESS_public)
DW$445	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$150)
	.dwattr DW$445, DW_AT_name("AQSFRC"), DW_AT_symbol_name("_AQSFRC")
	.dwattr DW$445, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr DW$445, DW_AT_accessibility(DW_ACCESS_public)
DW$446	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$152)
	.dwattr DW$446, DW_AT_name("AQCSFRC"), DW_AT_symbol_name("_AQCSFRC")
	.dwattr DW$446, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$446, DW_AT_accessibility(DW_ACCESS_public)
DW$447	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$154)
	.dwattr DW$447, DW_AT_name("DBCTL"), DW_AT_symbol_name("_DBCTL")
	.dwattr DW$447, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr DW$447, DW_AT_accessibility(DW_ACCESS_public)
DW$448	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$448, DW_AT_name("DBRED"), DW_AT_symbol_name("_DBRED")
	.dwattr DW$448, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$448, DW_AT_accessibility(DW_ACCESS_public)
DW$449	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$449, DW_AT_name("DBFED"), DW_AT_symbol_name("_DBFED")
	.dwattr DW$449, DW_AT_data_member_location[DW_OP_plus_uconst 0x11]
	.dwattr DW$449, DW_AT_accessibility(DW_ACCESS_public)
DW$450	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$156)
	.dwattr DW$450, DW_AT_name("TZSEL"), DW_AT_symbol_name("_TZSEL")
	.dwattr DW$450, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr DW$450, DW_AT_accessibility(DW_ACCESS_public)
DW$451	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$451, DW_AT_name("rsvd2"), DW_AT_symbol_name("_rsvd2")
	.dwattr DW$451, DW_AT_data_member_location[DW_OP_plus_uconst 0x13]
	.dwattr DW$451, DW_AT_accessibility(DW_ACCESS_public)
DW$452	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$158)
	.dwattr DW$452, DW_AT_name("TZCTL"), DW_AT_symbol_name("_TZCTL")
	.dwattr DW$452, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr DW$452, DW_AT_accessibility(DW_ACCESS_public)
DW$453	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$160)
	.dwattr DW$453, DW_AT_name("TZEINT"), DW_AT_symbol_name("_TZEINT")
	.dwattr DW$453, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr DW$453, DW_AT_accessibility(DW_ACCESS_public)
DW$454	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$162)
	.dwattr DW$454, DW_AT_name("TZFLG"), DW_AT_symbol_name("_TZFLG")
	.dwattr DW$454, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr DW$454, DW_AT_accessibility(DW_ACCESS_public)
DW$455	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$164)
	.dwattr DW$455, DW_AT_name("TZCLR"), DW_AT_symbol_name("_TZCLR")
	.dwattr DW$455, DW_AT_data_member_location[DW_OP_plus_uconst 0x17]
	.dwattr DW$455, DW_AT_accessibility(DW_ACCESS_public)
DW$456	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$166)
	.dwattr DW$456, DW_AT_name("TZFRC"), DW_AT_symbol_name("_TZFRC")
	.dwattr DW$456, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr DW$456, DW_AT_accessibility(DW_ACCESS_public)
DW$457	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$168)
	.dwattr DW$457, DW_AT_name("ETSEL"), DW_AT_symbol_name("_ETSEL")
	.dwattr DW$457, DW_AT_data_member_location[DW_OP_plus_uconst 0x19]
	.dwattr DW$457, DW_AT_accessibility(DW_ACCESS_public)
DW$458	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$170)
	.dwattr DW$458, DW_AT_name("ETPS"), DW_AT_symbol_name("_ETPS")
	.dwattr DW$458, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr DW$458, DW_AT_accessibility(DW_ACCESS_public)
DW$459	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$172)
	.dwattr DW$459, DW_AT_name("ETFLG"), DW_AT_symbol_name("_ETFLG")
	.dwattr DW$459, DW_AT_data_member_location[DW_OP_plus_uconst 0x1b]
	.dwattr DW$459, DW_AT_accessibility(DW_ACCESS_public)
DW$460	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$174)
	.dwattr DW$460, DW_AT_name("ETCLR"), DW_AT_symbol_name("_ETCLR")
	.dwattr DW$460, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr DW$460, DW_AT_accessibility(DW_ACCESS_public)
DW$461	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$176)
	.dwattr DW$461, DW_AT_name("ETFRC"), DW_AT_symbol_name("_ETFRC")
	.dwattr DW$461, DW_AT_data_member_location[DW_OP_plus_uconst 0x1d]
	.dwattr DW$461, DW_AT_accessibility(DW_ACCESS_public)
DW$462	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$178)
	.dwattr DW$462, DW_AT_name("PCCTL"), DW_AT_symbol_name("_PCCTL")
	.dwattr DW$462, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr DW$462, DW_AT_accessibility(DW_ACCESS_public)
DW$463	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$463, DW_AT_name("rsvd3"), DW_AT_symbol_name("_rsvd3")
	.dwattr DW$463, DW_AT_data_member_location[DW_OP_plus_uconst 0x1f]
	.dwattr DW$463, DW_AT_accessibility(DW_ACCESS_public)
DW$464	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$180)
	.dwattr DW$464, DW_AT_name("HRCNFG"), DW_AT_symbol_name("_HRCNFG")
	.dwattr DW$464, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr DW$464, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$181


DW$T$192	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$192, DW_AT_name("ECAP_REGS")
	.dwattr DW$T$192, DW_AT_byte_size(0x20)
DW$465	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$48)
	.dwattr DW$465, DW_AT_name("TSCTR"), DW_AT_symbol_name("_TSCTR")
	.dwattr DW$465, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$465, DW_AT_accessibility(DW_ACCESS_public)
DW$466	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$48)
	.dwattr DW$466, DW_AT_name("CTRPHS"), DW_AT_symbol_name("_CTRPHS")
	.dwattr DW$466, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$466, DW_AT_accessibility(DW_ACCESS_public)
DW$467	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$48)
	.dwattr DW$467, DW_AT_name("CAP1"), DW_AT_symbol_name("_CAP1")
	.dwattr DW$467, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$467, DW_AT_accessibility(DW_ACCESS_public)
DW$468	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$48)
	.dwattr DW$468, DW_AT_name("CAP2"), DW_AT_symbol_name("_CAP2")
	.dwattr DW$468, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$468, DW_AT_accessibility(DW_ACCESS_public)
DW$469	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$48)
	.dwattr DW$469, DW_AT_name("CAP3"), DW_AT_symbol_name("_CAP3")
	.dwattr DW$469, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$469, DW_AT_accessibility(DW_ACCESS_public)
DW$470	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$48)
	.dwattr DW$470, DW_AT_name("CAP4"), DW_AT_symbol_name("_CAP4")
	.dwattr DW$470, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$470, DW_AT_accessibility(DW_ACCESS_public)
DW$471	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$190)
	.dwattr DW$471, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$471, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$471, DW_AT_accessibility(DW_ACCESS_public)
DW$472	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$183)
	.dwattr DW$472, DW_AT_name("ECCTL1"), DW_AT_symbol_name("_ECCTL1")
	.dwattr DW$472, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr DW$472, DW_AT_accessibility(DW_ACCESS_public)
DW$473	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$185)
	.dwattr DW$473, DW_AT_name("ECCTL2"), DW_AT_symbol_name("_ECCTL2")
	.dwattr DW$473, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr DW$473, DW_AT_accessibility(DW_ACCESS_public)
DW$474	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$187)
	.dwattr DW$474, DW_AT_name("ECEINT"), DW_AT_symbol_name("_ECEINT")
	.dwattr DW$474, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr DW$474, DW_AT_accessibility(DW_ACCESS_public)
DW$475	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$189)
	.dwattr DW$475, DW_AT_name("ECFLG"), DW_AT_symbol_name("_ECFLG")
	.dwattr DW$475, DW_AT_data_member_location[DW_OP_plus_uconst 0x17]
	.dwattr DW$475, DW_AT_accessibility(DW_ACCESS_public)
DW$476	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$189)
	.dwattr DW$476, DW_AT_name("ECCLR"), DW_AT_symbol_name("_ECCLR")
	.dwattr DW$476, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr DW$476, DW_AT_accessibility(DW_ACCESS_public)
DW$477	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$187)
	.dwattr DW$477, DW_AT_name("ECFRC"), DW_AT_symbol_name("_ECFRC")
	.dwattr DW$477, DW_AT_data_member_location[DW_OP_plus_uconst 0x19]
	.dwattr DW$477, DW_AT_accessibility(DW_ACCESS_public)
DW$478	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$191)
	.dwattr DW$478, DW_AT_name("rsvd2"), DW_AT_symbol_name("_rsvd2")
	.dwattr DW$478, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr DW$478, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$192


DW$T$210	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$210, DW_AT_name("EQEP_REGS")
	.dwattr DW$T$210, DW_AT_byte_size(0x40)
DW$479	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$48)
	.dwattr DW$479, DW_AT_name("QPOSCNT"), DW_AT_symbol_name("_QPOSCNT")
	.dwattr DW$479, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$479, DW_AT_accessibility(DW_ACCESS_public)
DW$480	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$48)
	.dwattr DW$480, DW_AT_name("QPOSINIT"), DW_AT_symbol_name("_QPOSINIT")
	.dwattr DW$480, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$480, DW_AT_accessibility(DW_ACCESS_public)
DW$481	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$48)
	.dwattr DW$481, DW_AT_name("QPOSMAX"), DW_AT_symbol_name("_QPOSMAX")
	.dwattr DW$481, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$481, DW_AT_accessibility(DW_ACCESS_public)
DW$482	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$48)
	.dwattr DW$482, DW_AT_name("QPOSCMP"), DW_AT_symbol_name("_QPOSCMP")
	.dwattr DW$482, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$482, DW_AT_accessibility(DW_ACCESS_public)
DW$483	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$48)
	.dwattr DW$483, DW_AT_name("QPOSILAT"), DW_AT_symbol_name("_QPOSILAT")
	.dwattr DW$483, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$483, DW_AT_accessibility(DW_ACCESS_public)
DW$484	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$48)
	.dwattr DW$484, DW_AT_name("QPOSSLAT"), DW_AT_symbol_name("_QPOSSLAT")
	.dwattr DW$484, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$484, DW_AT_accessibility(DW_ACCESS_public)
DW$485	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$48)
	.dwattr DW$485, DW_AT_name("QPOSLAT"), DW_AT_symbol_name("_QPOSLAT")
	.dwattr DW$485, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$485, DW_AT_accessibility(DW_ACCESS_public)
DW$486	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$48)
	.dwattr DW$486, DW_AT_name("QUTMR"), DW_AT_symbol_name("_QUTMR")
	.dwattr DW$486, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$486, DW_AT_accessibility(DW_ACCESS_public)
DW$487	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$48)
	.dwattr DW$487, DW_AT_name("QUPRD"), DW_AT_symbol_name("_QUPRD")
	.dwattr DW$487, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$487, DW_AT_accessibility(DW_ACCESS_public)
DW$488	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$488, DW_AT_name("QWDTMR"), DW_AT_symbol_name("_QWDTMR")
	.dwattr DW$488, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr DW$488, DW_AT_accessibility(DW_ACCESS_public)
DW$489	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$489, DW_AT_name("QWDPRD"), DW_AT_symbol_name("_QWDPRD")
	.dwattr DW$489, DW_AT_data_member_location[DW_OP_plus_uconst 0x13]
	.dwattr DW$489, DW_AT_accessibility(DW_ACCESS_public)
DW$490	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$194)
	.dwattr DW$490, DW_AT_name("QDECCTL"), DW_AT_symbol_name("_QDECCTL")
	.dwattr DW$490, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr DW$490, DW_AT_accessibility(DW_ACCESS_public)
DW$491	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$196)
	.dwattr DW$491, DW_AT_name("QEPCTL"), DW_AT_symbol_name("_QEPCTL")
	.dwattr DW$491, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr DW$491, DW_AT_accessibility(DW_ACCESS_public)
DW$492	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$198)
	.dwattr DW$492, DW_AT_name("QCAPCTL"), DW_AT_symbol_name("_QCAPCTL")
	.dwattr DW$492, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr DW$492, DW_AT_accessibility(DW_ACCESS_public)
DW$493	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$200)
	.dwattr DW$493, DW_AT_name("QPOSCTL"), DW_AT_symbol_name("_QPOSCTL")
	.dwattr DW$493, DW_AT_data_member_location[DW_OP_plus_uconst 0x17]
	.dwattr DW$493, DW_AT_accessibility(DW_ACCESS_public)
DW$494	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$202)
	.dwattr DW$494, DW_AT_name("QEINT"), DW_AT_symbol_name("_QEINT")
	.dwattr DW$494, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr DW$494, DW_AT_accessibility(DW_ACCESS_public)
DW$495	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$204)
	.dwattr DW$495, DW_AT_name("QFLG"), DW_AT_symbol_name("_QFLG")
	.dwattr DW$495, DW_AT_data_member_location[DW_OP_plus_uconst 0x19]
	.dwattr DW$495, DW_AT_accessibility(DW_ACCESS_public)
DW$496	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$204)
	.dwattr DW$496, DW_AT_name("QCLR"), DW_AT_symbol_name("_QCLR")
	.dwattr DW$496, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr DW$496, DW_AT_accessibility(DW_ACCESS_public)
DW$497	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$206)
	.dwattr DW$497, DW_AT_name("QFRC"), DW_AT_symbol_name("_QFRC")
	.dwattr DW$497, DW_AT_data_member_location[DW_OP_plus_uconst 0x1b]
	.dwattr DW$497, DW_AT_accessibility(DW_ACCESS_public)
DW$498	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$208)
	.dwattr DW$498, DW_AT_name("QEPSTS"), DW_AT_symbol_name("_QEPSTS")
	.dwattr DW$498, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr DW$498, DW_AT_accessibility(DW_ACCESS_public)
DW$499	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$499, DW_AT_name("QCTMR"), DW_AT_symbol_name("_QCTMR")
	.dwattr DW$499, DW_AT_data_member_location[DW_OP_plus_uconst 0x1d]
	.dwattr DW$499, DW_AT_accessibility(DW_ACCESS_public)
DW$500	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$500, DW_AT_name("QCPRD"), DW_AT_symbol_name("_QCPRD")
	.dwattr DW$500, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr DW$500, DW_AT_accessibility(DW_ACCESS_public)
DW$501	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$501, DW_AT_name("QCTMRLAT"), DW_AT_symbol_name("_QCTMRLAT")
	.dwattr DW$501, DW_AT_data_member_location[DW_OP_plus_uconst 0x1f]
	.dwattr DW$501, DW_AT_accessibility(DW_ACCESS_public)
DW$502	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$502, DW_AT_name("QCPRDLAT"), DW_AT_symbol_name("_QCPRDLAT")
	.dwattr DW$502, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr DW$502, DW_AT_accessibility(DW_ACCESS_public)
DW$503	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$209)
	.dwattr DW$503, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$503, DW_AT_data_member_location[DW_OP_plus_uconst 0x21]
	.dwattr DW$503, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$210


DW$T$230	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$230, DW_AT_name("GPIO_CTRL_REGS")
	.dwattr DW$T$230, DW_AT_byte_size(0x40)
DW$504	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$212)
	.dwattr DW$504, DW_AT_name("GPACTRL"), DW_AT_symbol_name("_GPACTRL")
	.dwattr DW$504, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$504, DW_AT_accessibility(DW_ACCESS_public)
DW$505	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$214)
	.dwattr DW$505, DW_AT_name("GPAQSEL1"), DW_AT_symbol_name("_GPAQSEL1")
	.dwattr DW$505, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$505, DW_AT_accessibility(DW_ACCESS_public)
DW$506	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$216)
	.dwattr DW$506, DW_AT_name("GPAQSEL2"), DW_AT_symbol_name("_GPAQSEL2")
	.dwattr DW$506, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$506, DW_AT_accessibility(DW_ACCESS_public)
DW$507	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$214)
	.dwattr DW$507, DW_AT_name("GPAMUX1"), DW_AT_symbol_name("_GPAMUX1")
	.dwattr DW$507, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$507, DW_AT_accessibility(DW_ACCESS_public)
DW$508	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$216)
	.dwattr DW$508, DW_AT_name("GPAMUX2"), DW_AT_symbol_name("_GPAMUX2")
	.dwattr DW$508, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$508, DW_AT_accessibility(DW_ACCESS_public)
DW$509	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$218)
	.dwattr DW$509, DW_AT_name("GPADIR"), DW_AT_symbol_name("_GPADIR")
	.dwattr DW$509, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$509, DW_AT_accessibility(DW_ACCESS_public)
DW$510	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$218)
	.dwattr DW$510, DW_AT_name("GPAPUD"), DW_AT_symbol_name("_GPAPUD")
	.dwattr DW$510, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$510, DW_AT_accessibility(DW_ACCESS_public)
DW$511	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$48)
	.dwattr DW$511, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$511, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$511, DW_AT_accessibility(DW_ACCESS_public)
DW$512	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$220)
	.dwattr DW$512, DW_AT_name("GPBCTRL"), DW_AT_symbol_name("_GPBCTRL")
	.dwattr DW$512, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$512, DW_AT_accessibility(DW_ACCESS_public)
DW$513	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$222)
	.dwattr DW$513, DW_AT_name("GPBQSEL1"), DW_AT_symbol_name("_GPBQSEL1")
	.dwattr DW$513, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr DW$513, DW_AT_accessibility(DW_ACCESS_public)
DW$514	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$224)
	.dwattr DW$514, DW_AT_name("GPBQSEL2"), DW_AT_symbol_name("_GPBQSEL2")
	.dwattr DW$514, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr DW$514, DW_AT_accessibility(DW_ACCESS_public)
DW$515	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$222)
	.dwattr DW$515, DW_AT_name("GPBMUX1"), DW_AT_symbol_name("_GPBMUX1")
	.dwattr DW$515, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr DW$515, DW_AT_accessibility(DW_ACCESS_public)
DW$516	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$224)
	.dwattr DW$516, DW_AT_name("GPBMUX2"), DW_AT_symbol_name("_GPBMUX2")
	.dwattr DW$516, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr DW$516, DW_AT_accessibility(DW_ACCESS_public)
DW$517	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$226)
	.dwattr DW$517, DW_AT_name("GPBDIR"), DW_AT_symbol_name("_GPBDIR")
	.dwattr DW$517, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr DW$517, DW_AT_accessibility(DW_ACCESS_public)
DW$518	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$228)
	.dwattr DW$518, DW_AT_name("GPBPUD"), DW_AT_symbol_name("_GPBPUD")
	.dwattr DW$518, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr DW$518, DW_AT_accessibility(DW_ACCESS_public)
DW$519	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$229)
	.dwattr DW$519, DW_AT_name("rsvd2"), DW_AT_symbol_name("_rsvd2")
	.dwattr DW$519, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr DW$519, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$230


DW$T$232	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$232, DW_AT_name("GPIO_DATA_REGS")
	.dwattr DW$T$232, DW_AT_byte_size(0x20)
DW$520	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$218)
	.dwattr DW$520, DW_AT_name("GPADAT"), DW_AT_symbol_name("_GPADAT")
	.dwattr DW$520, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$520, DW_AT_accessibility(DW_ACCESS_public)
DW$521	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$218)
	.dwattr DW$521, DW_AT_name("GPASET"), DW_AT_symbol_name("_GPASET")
	.dwattr DW$521, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$521, DW_AT_accessibility(DW_ACCESS_public)
DW$522	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$218)
	.dwattr DW$522, DW_AT_name("GPACLEAR"), DW_AT_symbol_name("_GPACLEAR")
	.dwattr DW$522, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$522, DW_AT_accessibility(DW_ACCESS_public)
DW$523	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$218)
	.dwattr DW$523, DW_AT_name("GPATOGGLE"), DW_AT_symbol_name("_GPATOGGLE")
	.dwattr DW$523, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$523, DW_AT_accessibility(DW_ACCESS_public)
DW$524	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$228)
	.dwattr DW$524, DW_AT_name("GPBDAT"), DW_AT_symbol_name("_GPBDAT")
	.dwattr DW$524, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$524, DW_AT_accessibility(DW_ACCESS_public)
DW$525	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$226)
	.dwattr DW$525, DW_AT_name("GPBSET"), DW_AT_symbol_name("_GPBSET")
	.dwattr DW$525, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$525, DW_AT_accessibility(DW_ACCESS_public)
DW$526	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$226)
	.dwattr DW$526, DW_AT_name("GPBCLEAR"), DW_AT_symbol_name("_GPBCLEAR")
	.dwattr DW$526, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$526, DW_AT_accessibility(DW_ACCESS_public)
DW$527	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$226)
	.dwattr DW$527, DW_AT_name("GPBTOGGLE"), DW_AT_symbol_name("_GPBTOGGLE")
	.dwattr DW$527, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$527, DW_AT_accessibility(DW_ACCESS_public)
DW$528	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$231)
	.dwattr DW$528, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$528, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$528, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$232


DW$T$236	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$236, DW_AT_name("GPIO_INT_REGS")
	.dwattr DW$T$236, DW_AT_byte_size(0x0a)
DW$529	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$234)
	.dwattr DW$529, DW_AT_name("GPIOXINT1SEL"), DW_AT_symbol_name("_GPIOXINT1SEL")
	.dwattr DW$529, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$529, DW_AT_accessibility(DW_ACCESS_public)
DW$530	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$234)
	.dwattr DW$530, DW_AT_name("GPIOXINT2SEL"), DW_AT_symbol_name("_GPIOXINT2SEL")
	.dwattr DW$530, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$530, DW_AT_accessibility(DW_ACCESS_public)
DW$531	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$234)
	.dwattr DW$531, DW_AT_name("GPIOXNMISEL"), DW_AT_symbol_name("_GPIOXNMISEL")
	.dwattr DW$531, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$531, DW_AT_accessibility(DW_ACCESS_public)
DW$532	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$235)
	.dwattr DW$532, DW_AT_name("rsvd2"), DW_AT_symbol_name("_rsvd2")
	.dwattr DW$532, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$532, DW_AT_accessibility(DW_ACCESS_public)
DW$533	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$218)
	.dwattr DW$533, DW_AT_name("GPIOLPMSEL"), DW_AT_symbol_name("_GPIOLPMSEL")
	.dwattr DW$533, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$533, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$236


DW$T$252	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$252, DW_AT_name("I2C_REGS")
	.dwattr DW$T$252, DW_AT_byte_size(0x22)
DW$534	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$534, DW_AT_name("I2COAR"), DW_AT_symbol_name("_I2COAR")
	.dwattr DW$534, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$534, DW_AT_accessibility(DW_ACCESS_public)
DW$535	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$238)
	.dwattr DW$535, DW_AT_name("I2CIER"), DW_AT_symbol_name("_I2CIER")
	.dwattr DW$535, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$535, DW_AT_accessibility(DW_ACCESS_public)
DW$536	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$240)
	.dwattr DW$536, DW_AT_name("I2CSTR"), DW_AT_symbol_name("_I2CSTR")
	.dwattr DW$536, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$536, DW_AT_accessibility(DW_ACCESS_public)
DW$537	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$537, DW_AT_name("I2CCLKL"), DW_AT_symbol_name("_I2CCLKL")
	.dwattr DW$537, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$537, DW_AT_accessibility(DW_ACCESS_public)
DW$538	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$538, DW_AT_name("I2CCLKH"), DW_AT_symbol_name("_I2CCLKH")
	.dwattr DW$538, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$538, DW_AT_accessibility(DW_ACCESS_public)
DW$539	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$539, DW_AT_name("I2CCNT"), DW_AT_symbol_name("_I2CCNT")
	.dwattr DW$539, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr DW$539, DW_AT_accessibility(DW_ACCESS_public)
DW$540	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$540, DW_AT_name("I2CDRR"), DW_AT_symbol_name("_I2CDRR")
	.dwattr DW$540, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$540, DW_AT_accessibility(DW_ACCESS_public)
DW$541	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$541, DW_AT_name("I2CSAR"), DW_AT_symbol_name("_I2CSAR")
	.dwattr DW$541, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr DW$541, DW_AT_accessibility(DW_ACCESS_public)
DW$542	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$542, DW_AT_name("I2CDXR"), DW_AT_symbol_name("_I2CDXR")
	.dwattr DW$542, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$542, DW_AT_accessibility(DW_ACCESS_public)
DW$543	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$242)
	.dwattr DW$543, DW_AT_name("I2CMDR"), DW_AT_symbol_name("_I2CMDR")
	.dwattr DW$543, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr DW$543, DW_AT_accessibility(DW_ACCESS_public)
DW$544	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$244)
	.dwattr DW$544, DW_AT_name("I2CISRC"), DW_AT_symbol_name("_I2CISRC")
	.dwattr DW$544, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$544, DW_AT_accessibility(DW_ACCESS_public)
DW$545	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$545, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$545, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr DW$545, DW_AT_accessibility(DW_ACCESS_public)
DW$546	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$246)
	.dwattr DW$546, DW_AT_name("I2CPSC"), DW_AT_symbol_name("_I2CPSC")
	.dwattr DW$546, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$546, DW_AT_accessibility(DW_ACCESS_public)
DW$547	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$251)
	.dwattr DW$547, DW_AT_name("rsvd2"), DW_AT_symbol_name("_rsvd2")
	.dwattr DW$547, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr DW$547, DW_AT_accessibility(DW_ACCESS_public)
DW$548	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$248)
	.dwattr DW$548, DW_AT_name("I2CFFTX"), DW_AT_symbol_name("_I2CFFTX")
	.dwattr DW$548, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr DW$548, DW_AT_accessibility(DW_ACCESS_public)
DW$549	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$250)
	.dwattr DW$549, DW_AT_name("I2CFFRX"), DW_AT_symbol_name("_I2CFFRX")
	.dwattr DW$549, DW_AT_data_member_location[DW_OP_plus_uconst 0x21]
	.dwattr DW$549, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$252


DW$T$261	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$261, DW_AT_name("PIE_CTRL_REGS")
	.dwattr DW$T$261, DW_AT_byte_size(0x1a)
DW$550	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$254)
	.dwattr DW$550, DW_AT_name("PIECTRL"), DW_AT_symbol_name("_PIECTRL")
	.dwattr DW$550, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$550, DW_AT_accessibility(DW_ACCESS_public)
DW$551	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$256)
	.dwattr DW$551, DW_AT_name("PIEACK"), DW_AT_symbol_name("_PIEACK")
	.dwattr DW$551, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$551, DW_AT_accessibility(DW_ACCESS_public)
DW$552	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$258)
	.dwattr DW$552, DW_AT_name("PIEIER1"), DW_AT_symbol_name("_PIEIER1")
	.dwattr DW$552, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$552, DW_AT_accessibility(DW_ACCESS_public)
DW$553	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$260)
	.dwattr DW$553, DW_AT_name("PIEIFR1"), DW_AT_symbol_name("_PIEIFR1")
	.dwattr DW$553, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$553, DW_AT_accessibility(DW_ACCESS_public)
DW$554	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$258)
	.dwattr DW$554, DW_AT_name("PIEIER2"), DW_AT_symbol_name("_PIEIER2")
	.dwattr DW$554, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$554, DW_AT_accessibility(DW_ACCESS_public)
DW$555	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$260)
	.dwattr DW$555, DW_AT_name("PIEIFR2"), DW_AT_symbol_name("_PIEIFR2")
	.dwattr DW$555, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr DW$555, DW_AT_accessibility(DW_ACCESS_public)
DW$556	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$258)
	.dwattr DW$556, DW_AT_name("PIEIER3"), DW_AT_symbol_name("_PIEIER3")
	.dwattr DW$556, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$556, DW_AT_accessibility(DW_ACCESS_public)
DW$557	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$260)
	.dwattr DW$557, DW_AT_name("PIEIFR3"), DW_AT_symbol_name("_PIEIFR3")
	.dwattr DW$557, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr DW$557, DW_AT_accessibility(DW_ACCESS_public)
DW$558	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$258)
	.dwattr DW$558, DW_AT_name("PIEIER4"), DW_AT_symbol_name("_PIEIER4")
	.dwattr DW$558, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$558, DW_AT_accessibility(DW_ACCESS_public)
DW$559	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$260)
	.dwattr DW$559, DW_AT_name("PIEIFR4"), DW_AT_symbol_name("_PIEIFR4")
	.dwattr DW$559, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr DW$559, DW_AT_accessibility(DW_ACCESS_public)
DW$560	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$258)
	.dwattr DW$560, DW_AT_name("PIEIER5"), DW_AT_symbol_name("_PIEIER5")
	.dwattr DW$560, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$560, DW_AT_accessibility(DW_ACCESS_public)
DW$561	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$260)
	.dwattr DW$561, DW_AT_name("PIEIFR5"), DW_AT_symbol_name("_PIEIFR5")
	.dwattr DW$561, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr DW$561, DW_AT_accessibility(DW_ACCESS_public)
DW$562	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$258)
	.dwattr DW$562, DW_AT_name("PIEIER6"), DW_AT_symbol_name("_PIEIER6")
	.dwattr DW$562, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$562, DW_AT_accessibility(DW_ACCESS_public)
DW$563	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$260)
	.dwattr DW$563, DW_AT_name("PIEIFR6"), DW_AT_symbol_name("_PIEIFR6")
	.dwattr DW$563, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr DW$563, DW_AT_accessibility(DW_ACCESS_public)
DW$564	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$258)
	.dwattr DW$564, DW_AT_name("PIEIER7"), DW_AT_symbol_name("_PIEIER7")
	.dwattr DW$564, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$564, DW_AT_accessibility(DW_ACCESS_public)
DW$565	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$260)
	.dwattr DW$565, DW_AT_name("PIEIFR7"), DW_AT_symbol_name("_PIEIFR7")
	.dwattr DW$565, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr DW$565, DW_AT_accessibility(DW_ACCESS_public)
DW$566	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$258)
	.dwattr DW$566, DW_AT_name("PIEIER8"), DW_AT_symbol_name("_PIEIER8")
	.dwattr DW$566, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$566, DW_AT_accessibility(DW_ACCESS_public)
DW$567	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$260)
	.dwattr DW$567, DW_AT_name("PIEIFR8"), DW_AT_symbol_name("_PIEIFR8")
	.dwattr DW$567, DW_AT_data_member_location[DW_OP_plus_uconst 0x11]
	.dwattr DW$567, DW_AT_accessibility(DW_ACCESS_public)
DW$568	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$258)
	.dwattr DW$568, DW_AT_name("PIEIER9"), DW_AT_symbol_name("_PIEIER9")
	.dwattr DW$568, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr DW$568, DW_AT_accessibility(DW_ACCESS_public)
DW$569	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$260)
	.dwattr DW$569, DW_AT_name("PIEIFR9"), DW_AT_symbol_name("_PIEIFR9")
	.dwattr DW$569, DW_AT_data_member_location[DW_OP_plus_uconst 0x13]
	.dwattr DW$569, DW_AT_accessibility(DW_ACCESS_public)
DW$570	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$258)
	.dwattr DW$570, DW_AT_name("PIEIER10"), DW_AT_symbol_name("_PIEIER10")
	.dwattr DW$570, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr DW$570, DW_AT_accessibility(DW_ACCESS_public)
DW$571	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$260)
	.dwattr DW$571, DW_AT_name("PIEIFR10"), DW_AT_symbol_name("_PIEIFR10")
	.dwattr DW$571, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr DW$571, DW_AT_accessibility(DW_ACCESS_public)
DW$572	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$258)
	.dwattr DW$572, DW_AT_name("PIEIER11"), DW_AT_symbol_name("_PIEIER11")
	.dwattr DW$572, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr DW$572, DW_AT_accessibility(DW_ACCESS_public)
DW$573	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$260)
	.dwattr DW$573, DW_AT_name("PIEIFR11"), DW_AT_symbol_name("_PIEIFR11")
	.dwattr DW$573, DW_AT_data_member_location[DW_OP_plus_uconst 0x17]
	.dwattr DW$573, DW_AT_accessibility(DW_ACCESS_public)
DW$574	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$258)
	.dwattr DW$574, DW_AT_name("PIEIER12"), DW_AT_symbol_name("_PIEIER12")
	.dwattr DW$574, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr DW$574, DW_AT_accessibility(DW_ACCESS_public)
DW$575	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$260)
	.dwattr DW$575, DW_AT_name("PIEIFR12"), DW_AT_symbol_name("_PIEIFR12")
	.dwattr DW$575, DW_AT_data_member_location[DW_OP_plus_uconst 0x19]
	.dwattr DW$575, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$261


DW$T$284	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$284, DW_AT_name("SCI_REGS")
	.dwattr DW$T$284, DW_AT_byte_size(0x10)
DW$576	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$267)
	.dwattr DW$576, DW_AT_name("SCICCR"), DW_AT_symbol_name("_SCICCR")
	.dwattr DW$576, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$576, DW_AT_accessibility(DW_ACCESS_public)
DW$577	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$269)
	.dwattr DW$577, DW_AT_name("SCICTL1"), DW_AT_symbol_name("_SCICTL1")
	.dwattr DW$577, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$577, DW_AT_accessibility(DW_ACCESS_public)
DW$578	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$578, DW_AT_name("SCIHBAUD"), DW_AT_symbol_name("_SCIHBAUD")
	.dwattr DW$578, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$578, DW_AT_accessibility(DW_ACCESS_public)
DW$579	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$579, DW_AT_name("SCILBAUD"), DW_AT_symbol_name("_SCILBAUD")
	.dwattr DW$579, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$579, DW_AT_accessibility(DW_ACCESS_public)
DW$580	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$271)
	.dwattr DW$580, DW_AT_name("SCICTL2"), DW_AT_symbol_name("_SCICTL2")
	.dwattr DW$580, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$580, DW_AT_accessibility(DW_ACCESS_public)
DW$581	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$273)
	.dwattr DW$581, DW_AT_name("SCIRXST"), DW_AT_symbol_name("_SCIRXST")
	.dwattr DW$581, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr DW$581, DW_AT_accessibility(DW_ACCESS_public)
DW$582	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$582, DW_AT_name("SCIRXEMU"), DW_AT_symbol_name("_SCIRXEMU")
	.dwattr DW$582, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$582, DW_AT_accessibility(DW_ACCESS_public)
DW$583	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$275)
	.dwattr DW$583, DW_AT_name("SCIRXBUF"), DW_AT_symbol_name("_SCIRXBUF")
	.dwattr DW$583, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr DW$583, DW_AT_accessibility(DW_ACCESS_public)
DW$584	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$584, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$584, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$584, DW_AT_accessibility(DW_ACCESS_public)
DW$585	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$585, DW_AT_name("SCITXBUF"), DW_AT_symbol_name("_SCITXBUF")
	.dwattr DW$585, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr DW$585, DW_AT_accessibility(DW_ACCESS_public)
DW$586	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$277)
	.dwattr DW$586, DW_AT_name("SCIFFTX"), DW_AT_symbol_name("_SCIFFTX")
	.dwattr DW$586, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$586, DW_AT_accessibility(DW_ACCESS_public)
DW$587	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$279)
	.dwattr DW$587, DW_AT_name("SCIFFRX"), DW_AT_symbol_name("_SCIFFRX")
	.dwattr DW$587, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr DW$587, DW_AT_accessibility(DW_ACCESS_public)
DW$588	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$281)
	.dwattr DW$588, DW_AT_name("SCIFFCT"), DW_AT_symbol_name("_SCIFFCT")
	.dwattr DW$588, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$588, DW_AT_accessibility(DW_ACCESS_public)
DW$589	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$589, DW_AT_name("rsvd2"), DW_AT_symbol_name("_rsvd2")
	.dwattr DW$589, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr DW$589, DW_AT_accessibility(DW_ACCESS_public)
DW$590	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$590, DW_AT_name("rsvd3"), DW_AT_symbol_name("_rsvd3")
	.dwattr DW$590, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$590, DW_AT_accessibility(DW_ACCESS_public)
DW$591	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$283)
	.dwattr DW$591, DW_AT_name("SCIPRI"), DW_AT_symbol_name("_SCIPRI")
	.dwattr DW$591, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr DW$591, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$284


DW$T$300	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$300, DW_AT_name("SPI_REGS")
	.dwattr DW$T$300, DW_AT_byte_size(0x10)
DW$592	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$286)
	.dwattr DW$592, DW_AT_name("SPICCR"), DW_AT_symbol_name("_SPICCR")
	.dwattr DW$592, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$592, DW_AT_accessibility(DW_ACCESS_public)
DW$593	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$288)
	.dwattr DW$593, DW_AT_name("SPICTL"), DW_AT_symbol_name("_SPICTL")
	.dwattr DW$593, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$593, DW_AT_accessibility(DW_ACCESS_public)
DW$594	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$290)
	.dwattr DW$594, DW_AT_name("SPISTS"), DW_AT_symbol_name("_SPISTS")
	.dwattr DW$594, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$594, DW_AT_accessibility(DW_ACCESS_public)
DW$595	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$595, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$595, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$595, DW_AT_accessibility(DW_ACCESS_public)
DW$596	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$596, DW_AT_name("SPIBRR"), DW_AT_symbol_name("_SPIBRR")
	.dwattr DW$596, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$596, DW_AT_accessibility(DW_ACCESS_public)
DW$597	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$597, DW_AT_name("rsvd2"), DW_AT_symbol_name("_rsvd2")
	.dwattr DW$597, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr DW$597, DW_AT_accessibility(DW_ACCESS_public)
DW$598	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$598, DW_AT_name("SPIRXEMU"), DW_AT_symbol_name("_SPIRXEMU")
	.dwattr DW$598, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$598, DW_AT_accessibility(DW_ACCESS_public)
DW$599	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$599, DW_AT_name("SPIRXBUF"), DW_AT_symbol_name("_SPIRXBUF")
	.dwattr DW$599, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr DW$599, DW_AT_accessibility(DW_ACCESS_public)
DW$600	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$600, DW_AT_name("SPITXBUF"), DW_AT_symbol_name("_SPITXBUF")
	.dwattr DW$600, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$600, DW_AT_accessibility(DW_ACCESS_public)
DW$601	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$601, DW_AT_name("SPIDAT"), DW_AT_symbol_name("_SPIDAT")
	.dwattr DW$601, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr DW$601, DW_AT_accessibility(DW_ACCESS_public)
DW$602	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$292)
	.dwattr DW$602, DW_AT_name("SPIFFTX"), DW_AT_symbol_name("_SPIFFTX")
	.dwattr DW$602, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$602, DW_AT_accessibility(DW_ACCESS_public)
DW$603	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$294)
	.dwattr DW$603, DW_AT_name("SPIFFRX"), DW_AT_symbol_name("_SPIFFRX")
	.dwattr DW$603, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr DW$603, DW_AT_accessibility(DW_ACCESS_public)
DW$604	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$296)
	.dwattr DW$604, DW_AT_name("SPIFFCT"), DW_AT_symbol_name("_SPIFFCT")
	.dwattr DW$604, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$604, DW_AT_accessibility(DW_ACCESS_public)
DW$605	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$299)
	.dwattr DW$605, DW_AT_name("rsvd3"), DW_AT_symbol_name("_rsvd3")
	.dwattr DW$605, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr DW$605, DW_AT_accessibility(DW_ACCESS_public)
DW$606	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$298)
	.dwattr DW$606, DW_AT_name("SPIPRI"), DW_AT_symbol_name("_SPIPRI")
	.dwattr DW$606, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr DW$606, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$300


DW$T$318	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$318, DW_AT_name("SYS_CTRL_REGS")
	.dwattr DW$T$318, DW_AT_byte_size(0x20)
DW$607	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$302)
	.dwattr DW$607, DW_AT_name("XCLK"), DW_AT_symbol_name("_XCLK")
	.dwattr DW$607, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$607, DW_AT_accessibility(DW_ACCESS_public)
DW$608	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$304)
	.dwattr DW$608, DW_AT_name("PLLSTS"), DW_AT_symbol_name("_PLLSTS")
	.dwattr DW$608, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$608, DW_AT_accessibility(DW_ACCESS_public)
DW$609	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$190)
	.dwattr DW$609, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$609, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$609, DW_AT_accessibility(DW_ACCESS_public)
DW$610	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$306)
	.dwattr DW$610, DW_AT_name("HISPCP"), DW_AT_symbol_name("_HISPCP")
	.dwattr DW$610, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$610, DW_AT_accessibility(DW_ACCESS_public)
DW$611	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$308)
	.dwattr DW$611, DW_AT_name("LOSPCP"), DW_AT_symbol_name("_LOSPCP")
	.dwattr DW$611, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr DW$611, DW_AT_accessibility(DW_ACCESS_public)
DW$612	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$310)
	.dwattr DW$612, DW_AT_name("PCLKCR0"), DW_AT_symbol_name("_PCLKCR0")
	.dwattr DW$612, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$612, DW_AT_accessibility(DW_ACCESS_public)
DW$613	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$312)
	.dwattr DW$613, DW_AT_name("PCLKCR1"), DW_AT_symbol_name("_PCLKCR1")
	.dwattr DW$613, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr DW$613, DW_AT_accessibility(DW_ACCESS_public)
DW$614	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$314)
	.dwattr DW$614, DW_AT_name("LPMCR0"), DW_AT_symbol_name("_LPMCR0")
	.dwattr DW$614, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$614, DW_AT_accessibility(DW_ACCESS_public)
DW$615	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$615, DW_AT_name("rsvd2"), DW_AT_symbol_name("_rsvd2")
	.dwattr DW$615, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr DW$615, DW_AT_accessibility(DW_ACCESS_public)
DW$616	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$616, DW_AT_name("rsvd3"), DW_AT_symbol_name("_rsvd3")
	.dwattr DW$616, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$616, DW_AT_accessibility(DW_ACCESS_public)
DW$617	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$316)
	.dwattr DW$617, DW_AT_name("PLLCR"), DW_AT_symbol_name("_PLLCR")
	.dwattr DW$617, DW_AT_data_member_location[DW_OP_plus_uconst 0x11]
	.dwattr DW$617, DW_AT_accessibility(DW_ACCESS_public)
DW$618	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$618, DW_AT_name("SCSR"), DW_AT_symbol_name("_SCSR")
	.dwattr DW$618, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr DW$618, DW_AT_accessibility(DW_ACCESS_public)
DW$619	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$619, DW_AT_name("WDCNTR"), DW_AT_symbol_name("_WDCNTR")
	.dwattr DW$619, DW_AT_data_member_location[DW_OP_plus_uconst 0x13]
	.dwattr DW$619, DW_AT_accessibility(DW_ACCESS_public)
DW$620	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$620, DW_AT_name("rsvd4"), DW_AT_symbol_name("_rsvd4")
	.dwattr DW$620, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr DW$620, DW_AT_accessibility(DW_ACCESS_public)
DW$621	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$621, DW_AT_name("WDKEY"), DW_AT_symbol_name("_WDKEY")
	.dwattr DW$621, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr DW$621, DW_AT_accessibility(DW_ACCESS_public)
DW$622	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$317)
	.dwattr DW$622, DW_AT_name("rsvd5"), DW_AT_symbol_name("_rsvd5")
	.dwattr DW$622, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr DW$622, DW_AT_accessibility(DW_ACCESS_public)
DW$623	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$623, DW_AT_name("WDCR"), DW_AT_symbol_name("_WDCR")
	.dwattr DW$623, DW_AT_data_member_location[DW_OP_plus_uconst 0x19]
	.dwattr DW$623, DW_AT_accessibility(DW_ACCESS_public)
DW$624	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$191)
	.dwattr DW$624, DW_AT_name("rsvd6"), DW_AT_symbol_name("_rsvd6")
	.dwattr DW$624, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr DW$624, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$318


DW$T$333	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$333, DW_AT_name("FLASH_REGS")
	.dwattr DW$T$333, DW_AT_byte_size(0x08)
DW$625	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$320)
	.dwattr DW$625, DW_AT_name("FOPT"), DW_AT_symbol_name("_FOPT")
	.dwattr DW$625, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$625, DW_AT_accessibility(DW_ACCESS_public)
DW$626	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$626, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$626, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$626, DW_AT_accessibility(DW_ACCESS_public)
DW$627	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$322)
	.dwattr DW$627, DW_AT_name("FPWR"), DW_AT_symbol_name("_FPWR")
	.dwattr DW$627, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$627, DW_AT_accessibility(DW_ACCESS_public)
DW$628	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$324)
	.dwattr DW$628, DW_AT_name("FSTATUS"), DW_AT_symbol_name("_FSTATUS")
	.dwattr DW$628, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$628, DW_AT_accessibility(DW_ACCESS_public)
DW$629	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$326)
	.dwattr DW$629, DW_AT_name("FSTDBYWAIT"), DW_AT_symbol_name("_FSTDBYWAIT")
	.dwattr DW$629, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$629, DW_AT_accessibility(DW_ACCESS_public)
DW$630	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$328)
	.dwattr DW$630, DW_AT_name("FACTIVEWAIT"), DW_AT_symbol_name("_FACTIVEWAIT")
	.dwattr DW$630, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr DW$630, DW_AT_accessibility(DW_ACCESS_public)
DW$631	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$330)
	.dwattr DW$631, DW_AT_name("FBANKWAIT"), DW_AT_symbol_name("_FBANKWAIT")
	.dwattr DW$631, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$631, DW_AT_accessibility(DW_ACCESS_public)
DW$632	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$332)
	.dwattr DW$632, DW_AT_name("FOTPWAIT"), DW_AT_symbol_name("_FOTPWAIT")
	.dwattr DW$632, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr DW$632, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$333


DW$T$338	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$338, DW_AT_name("XINTRUPT_REGS")
	.dwattr DW$T$338, DW_AT_byte_size(0x10)
DW$633	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$335)
	.dwattr DW$633, DW_AT_name("XINT1CR"), DW_AT_symbol_name("_XINT1CR")
	.dwattr DW$633, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$633, DW_AT_accessibility(DW_ACCESS_public)
DW$634	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$335)
	.dwattr DW$634, DW_AT_name("XINT2CR"), DW_AT_symbol_name("_XINT2CR")
	.dwattr DW$634, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$634, DW_AT_accessibility(DW_ACCESS_public)
DW$635	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$235)
	.dwattr DW$635, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$635, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$635, DW_AT_accessibility(DW_ACCESS_public)
DW$636	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$337)
	.dwattr DW$636, DW_AT_name("XNMICR"), DW_AT_symbol_name("_XNMICR")
	.dwattr DW$636, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr DW$636, DW_AT_accessibility(DW_ACCESS_public)
DW$637	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$637, DW_AT_name("XINT1CTR"), DW_AT_symbol_name("_XINT1CTR")
	.dwattr DW$637, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$637, DW_AT_accessibility(DW_ACCESS_public)
DW$638	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$638, DW_AT_name("XINT2CTR"), DW_AT_symbol_name("_XINT2CTR")
	.dwattr DW$638, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr DW$638, DW_AT_accessibility(DW_ACCESS_public)
DW$639	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$235)
	.dwattr DW$639, DW_AT_name("rsvd"), DW_AT_symbol_name("_rsvd")
	.dwattr DW$639, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$639, DW_AT_accessibility(DW_ACCESS_public)
DW$640	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$640, DW_AT_name("XNMICTR"), DW_AT_symbol_name("_XNMICTR")
	.dwattr DW$640, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr DW$640, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$338

DW$T$263	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$262)
	.dwattr DW$T$263, DW_AT_address_class(0x16)
DW$T$19	.dwtag  DW_TAG_typedef, DW_AT_name("Uint16"), DW_AT_type(*DW$T$11)
	.dwattr DW$T$19, DW_AT_language(DW_LANG_C)

DW$T$67	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$19)
	.dwattr DW$T$67, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$67, DW_AT_byte_size(0xca)
DW$641	.dwtag  DW_TAG_subrange_type
	.dwattr DW$641, DW_AT_upper_bound(0xc9)
	.dwendtag DW$T$67


DW$T$190	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$19)
	.dwattr DW$T$190, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$190, DW_AT_byte_size(0x08)
DW$642	.dwtag  DW_TAG_subrange_type
	.dwattr DW$642, DW_AT_upper_bound(0x07)
	.dwendtag DW$T$190


DW$T$191	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$19)
	.dwattr DW$T$191, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$191, DW_AT_byte_size(0x06)
DW$643	.dwtag  DW_TAG_subrange_type
	.dwattr DW$643, DW_AT_upper_bound(0x05)
	.dwendtag DW$T$191


DW$T$209	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$19)
	.dwattr DW$T$209, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$209, DW_AT_byte_size(0x1e)
DW$644	.dwtag  DW_TAG_subrange_type
	.dwattr DW$644, DW_AT_upper_bound(0x1d)
	.dwendtag DW$T$209


DW$T$229	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$19)
	.dwattr DW$T$229, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$229, DW_AT_byte_size(0x21)
DW$645	.dwtag  DW_TAG_subrange_type
	.dwattr DW$645, DW_AT_upper_bound(0x20)
	.dwendtag DW$T$229


DW$T$231	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$19)
	.dwattr DW$T$231, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$231, DW_AT_byte_size(0x10)
DW$646	.dwtag  DW_TAG_subrange_type
	.dwattr DW$646, DW_AT_upper_bound(0x0f)
	.dwendtag DW$T$231


DW$T$235	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$19)
	.dwattr DW$T$235, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$235, DW_AT_byte_size(0x05)
DW$647	.dwtag  DW_TAG_subrange_type
	.dwattr DW$647, DW_AT_upper_bound(0x04)
	.dwendtag DW$T$235


DW$T$251	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$19)
	.dwattr DW$T$251, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$251, DW_AT_byte_size(0x13)
DW$648	.dwtag  DW_TAG_subrange_type
	.dwattr DW$648, DW_AT_upper_bound(0x12)
	.dwendtag DW$T$251


DW$T$299	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$19)
	.dwattr DW$T$299, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$299, DW_AT_byte_size(0x02)
DW$649	.dwtag  DW_TAG_subrange_type
	.dwattr DW$649, DW_AT_upper_bound(0x01)
	.dwendtag DW$T$299


DW$T$317	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$19)
	.dwattr DW$T$317, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$317, DW_AT_byte_size(0x03)
DW$650	.dwtag  DW_TAG_subrange_type
	.dwattr DW$650, DW_AT_upper_bound(0x02)
	.dwendtag DW$T$317

DW$T$48	.dwtag  DW_TAG_typedef, DW_AT_name("Uint32"), DW_AT_type(*DW$T$13)
	.dwattr DW$T$48, DW_AT_language(DW_LANG_C)

DW$T$21	.dwtag  DW_TAG_union_type
	.dwattr DW$T$21, DW_AT_name("ADCTRL1_REG")
	.dwattr DW$T$21, DW_AT_byte_size(0x01)
DW$651	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$651, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$651, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$651, DW_AT_accessibility(DW_ACCESS_public)
DW$652	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$652, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$652, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$652, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$21


DW$T$23	.dwtag  DW_TAG_union_type
	.dwattr DW$T$23, DW_AT_name("ADCTRL2_REG")
	.dwattr DW$T$23, DW_AT_byte_size(0x01)
DW$653	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$653, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$653, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$653, DW_AT_accessibility(DW_ACCESS_public)
DW$654	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$654, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$654, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$654, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$23


DW$T$25	.dwtag  DW_TAG_union_type
	.dwattr DW$T$25, DW_AT_name("ADCMAXCONV_REG")
	.dwattr DW$T$25, DW_AT_byte_size(0x01)
DW$655	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$655, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$655, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$655, DW_AT_accessibility(DW_ACCESS_public)
DW$656	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$24)
	.dwattr DW$656, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$656, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$656, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$25


DW$T$27	.dwtag  DW_TAG_union_type
	.dwattr DW$T$27, DW_AT_name("ADCCHSELSEQ1_REG")
	.dwattr DW$T$27, DW_AT_byte_size(0x01)
DW$657	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$657, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$657, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$657, DW_AT_accessibility(DW_ACCESS_public)
DW$658	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$26)
	.dwattr DW$658, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$658, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$658, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$27


DW$T$29	.dwtag  DW_TAG_union_type
	.dwattr DW$T$29, DW_AT_name("ADCCHSELSEQ2_REG")
	.dwattr DW$T$29, DW_AT_byte_size(0x01)
DW$659	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$659, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$659, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$659, DW_AT_accessibility(DW_ACCESS_public)
DW$660	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$28)
	.dwattr DW$660, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$660, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$660, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$29


DW$T$31	.dwtag  DW_TAG_union_type
	.dwattr DW$T$31, DW_AT_name("ADCCHSELSEQ3_REG")
	.dwattr DW$T$31, DW_AT_byte_size(0x01)
DW$661	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$661, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$661, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$661, DW_AT_accessibility(DW_ACCESS_public)
DW$662	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$30)
	.dwattr DW$662, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$662, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$662, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$31


DW$T$33	.dwtag  DW_TAG_union_type
	.dwattr DW$T$33, DW_AT_name("ADCCHSELSEQ4_REG")
	.dwattr DW$T$33, DW_AT_byte_size(0x01)
DW$663	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$663, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$663, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$663, DW_AT_accessibility(DW_ACCESS_public)
DW$664	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$32)
	.dwattr DW$664, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$664, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$664, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$33


DW$T$35	.dwtag  DW_TAG_union_type
	.dwattr DW$T$35, DW_AT_name("ADCASEQSR_REG")
	.dwattr DW$T$35, DW_AT_byte_size(0x01)
DW$665	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$665, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$665, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$665, DW_AT_accessibility(DW_ACCESS_public)
DW$666	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$34)
	.dwattr DW$666, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$666, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$666, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$35


DW$T$37	.dwtag  DW_TAG_union_type
	.dwattr DW$T$37, DW_AT_name("ADCTRL3_REG")
	.dwattr DW$T$37, DW_AT_byte_size(0x01)
DW$667	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$667, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$667, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$667, DW_AT_accessibility(DW_ACCESS_public)
DW$668	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$36)
	.dwattr DW$668, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$668, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$668, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$37


DW$T$39	.dwtag  DW_TAG_union_type
	.dwattr DW$T$39, DW_AT_name("ADCST_REG")
	.dwattr DW$T$39, DW_AT_byte_size(0x01)
DW$669	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$669, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$669, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$669, DW_AT_accessibility(DW_ACCESS_public)
DW$670	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$38)
	.dwattr DW$670, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$670, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$670, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$39


DW$T$41	.dwtag  DW_TAG_union_type
	.dwattr DW$T$41, DW_AT_name("ADCREFSEL_REG")
	.dwattr DW$T$41, DW_AT_byte_size(0x01)
DW$671	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$671, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$671, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$671, DW_AT_accessibility(DW_ACCESS_public)
DW$672	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$40)
	.dwattr DW$672, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$672, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$672, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$41


DW$T$44	.dwtag  DW_TAG_union_type
	.dwattr DW$T$44, DW_AT_name("ADCOFFTRIM_REG")
	.dwattr DW$T$44, DW_AT_byte_size(0x01)
DW$673	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$673, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$673, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$673, DW_AT_accessibility(DW_ACCESS_public)
DW$674	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$43)
	.dwattr DW$674, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$674, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$674, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$44


DW$T$49	.dwtag  DW_TAG_union_type
	.dwattr DW$T$49, DW_AT_name("TIM_GROUP")
	.dwattr DW$T$49, DW_AT_byte_size(0x02)
DW$675	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$48)
	.dwattr DW$675, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$675, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$675, DW_AT_accessibility(DW_ACCESS_public)
DW$676	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$47)
	.dwattr DW$676, DW_AT_name("half"), DW_AT_symbol_name("_half")
	.dwattr DW$676, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$676, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$49


DW$T$51	.dwtag  DW_TAG_union_type
	.dwattr DW$T$51, DW_AT_name("PRD_GROUP")
	.dwattr DW$T$51, DW_AT_byte_size(0x02)
DW$677	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$48)
	.dwattr DW$677, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$677, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$677, DW_AT_accessibility(DW_ACCESS_public)
DW$678	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$50)
	.dwattr DW$678, DW_AT_name("half"), DW_AT_symbol_name("_half")
	.dwattr DW$678, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$678, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$51


DW$T$53	.dwtag  DW_TAG_union_type
	.dwattr DW$T$53, DW_AT_name("TCR_REG")
	.dwattr DW$T$53, DW_AT_byte_size(0x01)
DW$679	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$679, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$679, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$679, DW_AT_accessibility(DW_ACCESS_public)
DW$680	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$52)
	.dwattr DW$680, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$680, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$680, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$53


DW$T$55	.dwtag  DW_TAG_union_type
	.dwattr DW$T$55, DW_AT_name("TPR_REG")
	.dwattr DW$T$55, DW_AT_byte_size(0x01)
DW$681	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$681, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$681, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$681, DW_AT_accessibility(DW_ACCESS_public)
DW$682	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$54)
	.dwattr DW$682, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$682, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$682, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$55


DW$T$57	.dwtag  DW_TAG_union_type
	.dwattr DW$T$57, DW_AT_name("TPRH_REG")
	.dwattr DW$T$57, DW_AT_byte_size(0x01)
DW$683	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$683, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$683, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$683, DW_AT_accessibility(DW_ACCESS_public)
DW$684	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$56)
	.dwattr DW$684, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$684, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$684, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$57


DW$T$61	.dwtag  DW_TAG_union_type
	.dwattr DW$T$61, DW_AT_name("CSMSCR_REG")
	.dwattr DW$T$61, DW_AT_byte_size(0x01)
DW$685	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$685, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$685, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$685, DW_AT_accessibility(DW_ACCESS_public)
DW$686	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$60)
	.dwattr DW$686, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$686, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$686, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$61


DW$T$64	.dwtag  DW_TAG_union_type
	.dwattr DW$T$64, DW_AT_name("DEVICECNF_REG")
	.dwattr DW$T$64, DW_AT_byte_size(0x02)
DW$687	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$48)
	.dwattr DW$687, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$687, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$687, DW_AT_accessibility(DW_ACCESS_public)
DW$688	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$63)
	.dwattr DW$688, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$688, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$688, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$64


DW$T$66	.dwtag  DW_TAG_union_type
	.dwattr DW$T$66, DW_AT_name("PARTID_REG")
	.dwattr DW$T$66, DW_AT_byte_size(0x01)
DW$689	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$689, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$689, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$689, DW_AT_accessibility(DW_ACCESS_public)
DW$690	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$65)
	.dwattr DW$690, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$690, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$690, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$66


DW$T$70	.dwtag  DW_TAG_union_type
	.dwattr DW$T$70, DW_AT_name("CANME_REG")
	.dwattr DW$T$70, DW_AT_byte_size(0x02)
DW$691	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$48)
	.dwattr DW$691, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$691, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$691, DW_AT_accessibility(DW_ACCESS_public)
DW$692	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$69)
	.dwattr DW$692, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$692, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$692, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$70


DW$T$72	.dwtag  DW_TAG_union_type
	.dwattr DW$T$72, DW_AT_name("CANMD_REG")
	.dwattr DW$T$72, DW_AT_byte_size(0x02)
DW$693	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$48)
	.dwattr DW$693, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$693, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$693, DW_AT_accessibility(DW_ACCESS_public)
DW$694	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$71)
	.dwattr DW$694, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$694, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$694, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$72


DW$T$74	.dwtag  DW_TAG_union_type
	.dwattr DW$T$74, DW_AT_name("CANTRS_REG")
	.dwattr DW$T$74, DW_AT_byte_size(0x02)
DW$695	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$48)
	.dwattr DW$695, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$695, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$695, DW_AT_accessibility(DW_ACCESS_public)
DW$696	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$73)
	.dwattr DW$696, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$696, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$696, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$74


DW$T$76	.dwtag  DW_TAG_union_type
	.dwattr DW$T$76, DW_AT_name("CANTRR_REG")
	.dwattr DW$T$76, DW_AT_byte_size(0x02)
DW$697	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$48)
	.dwattr DW$697, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$697, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$697, DW_AT_accessibility(DW_ACCESS_public)
DW$698	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$75)
	.dwattr DW$698, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$698, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$698, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$76


DW$T$78	.dwtag  DW_TAG_union_type
	.dwattr DW$T$78, DW_AT_name("CANTA_REG")
	.dwattr DW$T$78, DW_AT_byte_size(0x02)
DW$699	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$48)
	.dwattr DW$699, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$699, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$699, DW_AT_accessibility(DW_ACCESS_public)
DW$700	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$77)
	.dwattr DW$700, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$700, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$700, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$78


DW$T$80	.dwtag  DW_TAG_union_type
	.dwattr DW$T$80, DW_AT_name("CANAA_REG")
	.dwattr DW$T$80, DW_AT_byte_size(0x02)
DW$701	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$48)
	.dwattr DW$701, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$701, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$701, DW_AT_accessibility(DW_ACCESS_public)
DW$702	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$79)
	.dwattr DW$702, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$702, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$702, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$80


DW$T$82	.dwtag  DW_TAG_union_type
	.dwattr DW$T$82, DW_AT_name("CANRMP_REG")
	.dwattr DW$T$82, DW_AT_byte_size(0x02)
DW$703	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$48)
	.dwattr DW$703, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$703, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$703, DW_AT_accessibility(DW_ACCESS_public)
DW$704	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$81)
	.dwattr DW$704, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$704, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$704, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$82


DW$T$84	.dwtag  DW_TAG_union_type
	.dwattr DW$T$84, DW_AT_name("CANRML_REG")
	.dwattr DW$T$84, DW_AT_byte_size(0x02)
DW$705	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$48)
	.dwattr DW$705, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$705, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$705, DW_AT_accessibility(DW_ACCESS_public)
DW$706	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$83)
	.dwattr DW$706, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$706, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$706, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$84


DW$T$86	.dwtag  DW_TAG_union_type
	.dwattr DW$T$86, DW_AT_name("CANRFP_REG")
	.dwattr DW$T$86, DW_AT_byte_size(0x02)
DW$707	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$48)
	.dwattr DW$707, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$707, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$707, DW_AT_accessibility(DW_ACCESS_public)
DW$708	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$85)
	.dwattr DW$708, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$708, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$708, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$86


DW$T$88	.dwtag  DW_TAG_union_type
	.dwattr DW$T$88, DW_AT_name("CANGAM_REG")
	.dwattr DW$T$88, DW_AT_byte_size(0x02)
DW$709	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$48)
	.dwattr DW$709, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$709, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$709, DW_AT_accessibility(DW_ACCESS_public)
DW$710	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$87)
	.dwattr DW$710, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$710, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$710, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$88


DW$T$90	.dwtag  DW_TAG_union_type
	.dwattr DW$T$90, DW_AT_name("CANMC_REG")
	.dwattr DW$T$90, DW_AT_byte_size(0x02)
DW$711	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$48)
	.dwattr DW$711, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$711, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$711, DW_AT_accessibility(DW_ACCESS_public)
DW$712	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$89)
	.dwattr DW$712, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$712, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$712, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$90


DW$T$92	.dwtag  DW_TAG_union_type
	.dwattr DW$T$92, DW_AT_name("CANBTC_REG")
	.dwattr DW$T$92, DW_AT_byte_size(0x02)
DW$713	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$48)
	.dwattr DW$713, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$713, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$713, DW_AT_accessibility(DW_ACCESS_public)
DW$714	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$91)
	.dwattr DW$714, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$714, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$714, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$92


DW$T$94	.dwtag  DW_TAG_union_type
	.dwattr DW$T$94, DW_AT_name("CANES_REG")
	.dwattr DW$T$94, DW_AT_byte_size(0x02)
DW$715	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$48)
	.dwattr DW$715, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$715, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$715, DW_AT_accessibility(DW_ACCESS_public)
DW$716	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$93)
	.dwattr DW$716, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$716, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$716, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$94


DW$T$96	.dwtag  DW_TAG_union_type
	.dwattr DW$T$96, DW_AT_name("CANTEC_REG")
	.dwattr DW$T$96, DW_AT_byte_size(0x02)
DW$717	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$48)
	.dwattr DW$717, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$717, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$717, DW_AT_accessibility(DW_ACCESS_public)
DW$718	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$95)
	.dwattr DW$718, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$718, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$718, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$96


DW$T$98	.dwtag  DW_TAG_union_type
	.dwattr DW$T$98, DW_AT_name("CANREC_REG")
	.dwattr DW$T$98, DW_AT_byte_size(0x02)
DW$719	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$48)
	.dwattr DW$719, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$719, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$719, DW_AT_accessibility(DW_ACCESS_public)
DW$720	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$97)
	.dwattr DW$720, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$720, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$720, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$98


DW$T$100	.dwtag  DW_TAG_union_type
	.dwattr DW$T$100, DW_AT_name("CANGIF0_REG")
	.dwattr DW$T$100, DW_AT_byte_size(0x02)
DW$721	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$48)
	.dwattr DW$721, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$721, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$721, DW_AT_accessibility(DW_ACCESS_public)
DW$722	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$99)
	.dwattr DW$722, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$722, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$722, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$100


DW$T$102	.dwtag  DW_TAG_union_type
	.dwattr DW$T$102, DW_AT_name("CANGIM_REG")
	.dwattr DW$T$102, DW_AT_byte_size(0x02)
DW$723	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$48)
	.dwattr DW$723, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$723, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$723, DW_AT_accessibility(DW_ACCESS_public)
DW$724	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$101)
	.dwattr DW$724, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$724, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$724, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$102


DW$T$104	.dwtag  DW_TAG_union_type
	.dwattr DW$T$104, DW_AT_name("CANGIF1_REG")
	.dwattr DW$T$104, DW_AT_byte_size(0x02)
DW$725	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$48)
	.dwattr DW$725, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$725, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$725, DW_AT_accessibility(DW_ACCESS_public)
DW$726	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$103)
	.dwattr DW$726, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$726, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$726, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$104


DW$T$106	.dwtag  DW_TAG_union_type
	.dwattr DW$T$106, DW_AT_name("CANMIM_REG")
	.dwattr DW$T$106, DW_AT_byte_size(0x02)
DW$727	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$48)
	.dwattr DW$727, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$727, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$727, DW_AT_accessibility(DW_ACCESS_public)
DW$728	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$105)
	.dwattr DW$728, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$728, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$728, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$106


DW$T$108	.dwtag  DW_TAG_union_type
	.dwattr DW$T$108, DW_AT_name("CANMIL_REG")
	.dwattr DW$T$108, DW_AT_byte_size(0x02)
DW$729	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$48)
	.dwattr DW$729, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$729, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$729, DW_AT_accessibility(DW_ACCESS_public)
DW$730	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$107)
	.dwattr DW$730, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$730, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$730, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$108


DW$T$110	.dwtag  DW_TAG_union_type
	.dwattr DW$T$110, DW_AT_name("CANOPC_REG")
	.dwattr DW$T$110, DW_AT_byte_size(0x02)
DW$731	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$48)
	.dwattr DW$731, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$731, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$731, DW_AT_accessibility(DW_ACCESS_public)
DW$732	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$109)
	.dwattr DW$732, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$732, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$732, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$110


DW$T$112	.dwtag  DW_TAG_union_type
	.dwattr DW$T$112, DW_AT_name("CANTIOC_REG")
	.dwattr DW$T$112, DW_AT_byte_size(0x02)
DW$733	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$48)
	.dwattr DW$733, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$733, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$733, DW_AT_accessibility(DW_ACCESS_public)
DW$734	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$111)
	.dwattr DW$734, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$734, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$734, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$112


DW$T$114	.dwtag  DW_TAG_union_type
	.dwattr DW$T$114, DW_AT_name("CANRIOC_REG")
	.dwattr DW$T$114, DW_AT_byte_size(0x02)
DW$735	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$48)
	.dwattr DW$735, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$735, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$735, DW_AT_accessibility(DW_ACCESS_public)
DW$736	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$113)
	.dwattr DW$736, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$736, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$736, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$114


DW$T$116	.dwtag  DW_TAG_union_type
	.dwattr DW$T$116, DW_AT_name("CANTOC_REG")
	.dwattr DW$T$116, DW_AT_byte_size(0x02)
DW$737	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$48)
	.dwattr DW$737, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$737, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$737, DW_AT_accessibility(DW_ACCESS_public)
DW$738	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$115)
	.dwattr DW$738, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$738, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$738, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$116


DW$T$118	.dwtag  DW_TAG_union_type
	.dwattr DW$T$118, DW_AT_name("CANTOS_REG")
	.dwattr DW$T$118, DW_AT_byte_size(0x02)
DW$739	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$48)
	.dwattr DW$739, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$739, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$739, DW_AT_accessibility(DW_ACCESS_public)
DW$740	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$117)
	.dwattr DW$740, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$740, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$740, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$118


DW$T$130	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$130, DW_AT_name("MBOX")
	.dwattr DW$T$130, DW_AT_byte_size(0x08)
DW$741	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$121)
	.dwattr DW$741, DW_AT_name("MSGID"), DW_AT_symbol_name("_MSGID")
	.dwattr DW$741, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$741, DW_AT_accessibility(DW_ACCESS_public)
DW$742	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$123)
	.dwattr DW$742, DW_AT_name("MSGCTRL"), DW_AT_symbol_name("_MSGCTRL")
	.dwattr DW$742, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$742, DW_AT_accessibility(DW_ACCESS_public)
DW$743	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$126)
	.dwattr DW$743, DW_AT_name("MDL"), DW_AT_symbol_name("_MDL")
	.dwattr DW$743, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$743, DW_AT_accessibility(DW_ACCESS_public)
DW$744	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$129)
	.dwattr DW$744, DW_AT_name("MDH"), DW_AT_symbol_name("_MDH")
	.dwattr DW$744, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$744, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$130


DW$T$133	.dwtag  DW_TAG_union_type
	.dwattr DW$T$133, DW_AT_name("CANLAM_REG")
	.dwattr DW$T$133, DW_AT_byte_size(0x02)
DW$745	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$48)
	.dwattr DW$745, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$745, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$745, DW_AT_accessibility(DW_ACCESS_public)
DW$746	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$132)
	.dwattr DW$746, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$746, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$746, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$133


DW$T$138	.dwtag  DW_TAG_union_type
	.dwattr DW$T$138, DW_AT_name("TBCTL_REG")
	.dwattr DW$T$138, DW_AT_byte_size(0x01)
DW$747	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$747, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$747, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$747, DW_AT_accessibility(DW_ACCESS_public)
DW$748	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$137)
	.dwattr DW$748, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$748, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$748, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$138


DW$T$140	.dwtag  DW_TAG_union_type
	.dwattr DW$T$140, DW_AT_name("TBSTS_REG")
	.dwattr DW$T$140, DW_AT_byte_size(0x01)
DW$749	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$749, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$749, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$749, DW_AT_accessibility(DW_ACCESS_public)
DW$750	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$139)
	.dwattr DW$750, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$750, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$750, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$140


DW$T$142	.dwtag  DW_TAG_union_type
	.dwattr DW$T$142, DW_AT_name("TBPHS_HRPWM_GROUP")
	.dwattr DW$T$142, DW_AT_byte_size(0x02)
DW$751	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$48)
	.dwattr DW$751, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$751, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$751, DW_AT_accessibility(DW_ACCESS_public)
DW$752	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$141)
	.dwattr DW$752, DW_AT_name("half"), DW_AT_symbol_name("_half")
	.dwattr DW$752, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$752, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$142


DW$T$144	.dwtag  DW_TAG_union_type
	.dwattr DW$T$144, DW_AT_name("CMPCTL_REG")
	.dwattr DW$T$144, DW_AT_byte_size(0x01)
DW$753	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$753, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$753, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$753, DW_AT_accessibility(DW_ACCESS_public)
DW$754	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$143)
	.dwattr DW$754, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$754, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$754, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$144


DW$T$146	.dwtag  DW_TAG_union_type
	.dwattr DW$T$146, DW_AT_name("CMPA_HRPWM_GROUP")
	.dwattr DW$T$146, DW_AT_byte_size(0x02)
DW$755	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$48)
	.dwattr DW$755, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$755, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$755, DW_AT_accessibility(DW_ACCESS_public)
DW$756	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$145)
	.dwattr DW$756, DW_AT_name("half"), DW_AT_symbol_name("_half")
	.dwattr DW$756, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$756, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$146


DW$T$148	.dwtag  DW_TAG_union_type
	.dwattr DW$T$148, DW_AT_name("AQCTL_REG")
	.dwattr DW$T$148, DW_AT_byte_size(0x01)
DW$757	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$757, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$757, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$757, DW_AT_accessibility(DW_ACCESS_public)
DW$758	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$147)
	.dwattr DW$758, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$758, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$758, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$148


DW$T$150	.dwtag  DW_TAG_union_type
	.dwattr DW$T$150, DW_AT_name("AQSFRC_REG")
	.dwattr DW$T$150, DW_AT_byte_size(0x01)
DW$759	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$759, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$759, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$759, DW_AT_accessibility(DW_ACCESS_public)
DW$760	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$149)
	.dwattr DW$760, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$760, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$760, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$150


DW$T$152	.dwtag  DW_TAG_union_type
	.dwattr DW$T$152, DW_AT_name("AQCSFRC_REG")
	.dwattr DW$T$152, DW_AT_byte_size(0x01)
DW$761	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$761, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$761, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$761, DW_AT_accessibility(DW_ACCESS_public)
DW$762	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$151)
	.dwattr DW$762, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$762, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$762, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$152


DW$T$154	.dwtag  DW_TAG_union_type
	.dwattr DW$T$154, DW_AT_name("DBCTL_REG")
	.dwattr DW$T$154, DW_AT_byte_size(0x01)
DW$763	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$763, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$763, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$763, DW_AT_accessibility(DW_ACCESS_public)
DW$764	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$153)
	.dwattr DW$764, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$764, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$764, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$154


DW$T$156	.dwtag  DW_TAG_union_type
	.dwattr DW$T$156, DW_AT_name("TZSEL_REG")
	.dwattr DW$T$156, DW_AT_byte_size(0x01)
DW$765	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$765, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$765, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$765, DW_AT_accessibility(DW_ACCESS_public)
DW$766	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$155)
	.dwattr DW$766, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$766, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$766, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$156


DW$T$158	.dwtag  DW_TAG_union_type
	.dwattr DW$T$158, DW_AT_name("TZCTL_REG")
	.dwattr DW$T$158, DW_AT_byte_size(0x01)
DW$767	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$767, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$767, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$767, DW_AT_accessibility(DW_ACCESS_public)
DW$768	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$157)
	.dwattr DW$768, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$768, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$768, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$158


DW$T$160	.dwtag  DW_TAG_union_type
	.dwattr DW$T$160, DW_AT_name("TZEINT_REG")
	.dwattr DW$T$160, DW_AT_byte_size(0x01)
DW$769	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$769, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$769, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$769, DW_AT_accessibility(DW_ACCESS_public)
DW$770	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$159)
	.dwattr DW$770, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$770, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$770, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$160


DW$T$162	.dwtag  DW_TAG_union_type
	.dwattr DW$T$162, DW_AT_name("TZFLG_REG")
	.dwattr DW$T$162, DW_AT_byte_size(0x01)
DW$771	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$771, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$771, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$771, DW_AT_accessibility(DW_ACCESS_public)
DW$772	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$161)
	.dwattr DW$772, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$772, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$772, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$162


DW$T$164	.dwtag  DW_TAG_union_type
	.dwattr DW$T$164, DW_AT_name("TZCLR_REG")
	.dwattr DW$T$164, DW_AT_byte_size(0x01)
DW$773	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$773, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$773, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$773, DW_AT_accessibility(DW_ACCESS_public)
DW$774	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$163)
	.dwattr DW$774, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$774, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$774, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$164


DW$T$166	.dwtag  DW_TAG_union_type
	.dwattr DW$T$166, DW_AT_name("TZFRC_REG")
	.dwattr DW$T$166, DW_AT_byte_size(0x01)
DW$775	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$775, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$775, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$775, DW_AT_accessibility(DW_ACCESS_public)
DW$776	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$165)
	.dwattr DW$776, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$776, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$776, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$166


DW$T$168	.dwtag  DW_TAG_union_type
	.dwattr DW$T$168, DW_AT_name("ETSEL_REG")
	.dwattr DW$T$168, DW_AT_byte_size(0x01)
DW$777	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$777, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$777, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$777, DW_AT_accessibility(DW_ACCESS_public)
DW$778	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$167)
	.dwattr DW$778, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$778, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$778, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$168


DW$T$170	.dwtag  DW_TAG_union_type
	.dwattr DW$T$170, DW_AT_name("ETPS_REG")
	.dwattr DW$T$170, DW_AT_byte_size(0x01)
DW$779	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$779, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$779, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$779, DW_AT_accessibility(DW_ACCESS_public)
DW$780	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$169)
	.dwattr DW$780, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$780, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$780, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$170


DW$T$172	.dwtag  DW_TAG_union_type
	.dwattr DW$T$172, DW_AT_name("ETFLG_REG")
	.dwattr DW$T$172, DW_AT_byte_size(0x01)
DW$781	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$781, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$781, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$781, DW_AT_accessibility(DW_ACCESS_public)
DW$782	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$171)
	.dwattr DW$782, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$782, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$782, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$172


DW$T$174	.dwtag  DW_TAG_union_type
	.dwattr DW$T$174, DW_AT_name("ETCLR_REG")
	.dwattr DW$T$174, DW_AT_byte_size(0x01)
DW$783	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$783, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$783, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$783, DW_AT_accessibility(DW_ACCESS_public)
DW$784	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$173)
	.dwattr DW$784, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$784, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$784, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$174


DW$T$176	.dwtag  DW_TAG_union_type
	.dwattr DW$T$176, DW_AT_name("ETFRC_REG")
	.dwattr DW$T$176, DW_AT_byte_size(0x01)
DW$785	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$785, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$785, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$785, DW_AT_accessibility(DW_ACCESS_public)
DW$786	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$175)
	.dwattr DW$786, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$786, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$786, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$176


DW$T$178	.dwtag  DW_TAG_union_type
	.dwattr DW$T$178, DW_AT_name("PCCTL_REG")
	.dwattr DW$T$178, DW_AT_byte_size(0x01)
DW$787	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$787, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$787, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$787, DW_AT_accessibility(DW_ACCESS_public)
DW$788	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$177)
	.dwattr DW$788, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$788, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$788, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$178


DW$T$180	.dwtag  DW_TAG_union_type
	.dwattr DW$T$180, DW_AT_name("HRCNFG_REG")
	.dwattr DW$T$180, DW_AT_byte_size(0x01)
DW$789	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$789, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$789, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$789, DW_AT_accessibility(DW_ACCESS_public)
DW$790	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$179)
	.dwattr DW$790, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$790, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$790, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$180


DW$T$183	.dwtag  DW_TAG_union_type
	.dwattr DW$T$183, DW_AT_name("ECCTL1_REG")
	.dwattr DW$T$183, DW_AT_byte_size(0x01)
DW$791	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$791, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$791, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$791, DW_AT_accessibility(DW_ACCESS_public)
DW$792	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$182)
	.dwattr DW$792, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$792, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$792, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$183


DW$T$185	.dwtag  DW_TAG_union_type
	.dwattr DW$T$185, DW_AT_name("ECCTL2_REG")
	.dwattr DW$T$185, DW_AT_byte_size(0x01)
DW$793	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$793, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$793, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$793, DW_AT_accessibility(DW_ACCESS_public)
DW$794	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$184)
	.dwattr DW$794, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$794, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$794, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$185


DW$T$187	.dwtag  DW_TAG_union_type
	.dwattr DW$T$187, DW_AT_name("ECEINT_REG")
	.dwattr DW$T$187, DW_AT_byte_size(0x01)
DW$795	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$795, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$795, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$795, DW_AT_accessibility(DW_ACCESS_public)
DW$796	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$186)
	.dwattr DW$796, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$796, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$796, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$187


DW$T$189	.dwtag  DW_TAG_union_type
	.dwattr DW$T$189, DW_AT_name("ECFLG_REG")
	.dwattr DW$T$189, DW_AT_byte_size(0x01)
DW$797	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$797, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$797, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$797, DW_AT_accessibility(DW_ACCESS_public)
DW$798	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$188)
	.dwattr DW$798, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$798, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$798, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$189


DW$T$194	.dwtag  DW_TAG_union_type
	.dwattr DW$T$194, DW_AT_name("QDECCTL_REG")
	.dwattr DW$T$194, DW_AT_byte_size(0x01)
DW$799	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$799, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$799, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$799, DW_AT_accessibility(DW_ACCESS_public)
DW$800	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$193)
	.dwattr DW$800, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$800, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$800, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$194


DW$T$196	.dwtag  DW_TAG_union_type
	.dwattr DW$T$196, DW_AT_name("QEPCTL_REG")
	.dwattr DW$T$196, DW_AT_byte_size(0x01)
DW$801	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$801, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$801, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$801, DW_AT_accessibility(DW_ACCESS_public)
DW$802	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$195)
	.dwattr DW$802, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$802, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$802, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$196


DW$T$198	.dwtag  DW_TAG_union_type
	.dwattr DW$T$198, DW_AT_name("QCAPCTL_REG")
	.dwattr DW$T$198, DW_AT_byte_size(0x01)
DW$803	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$803, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$803, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$803, DW_AT_accessibility(DW_ACCESS_public)
DW$804	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$197)
	.dwattr DW$804, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$804, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$804, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$198


DW$T$200	.dwtag  DW_TAG_union_type
	.dwattr DW$T$200, DW_AT_name("QPOSCTL_REG")
	.dwattr DW$T$200, DW_AT_byte_size(0x01)
DW$805	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$805, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$805, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$805, DW_AT_accessibility(DW_ACCESS_public)
DW$806	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$199)
	.dwattr DW$806, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$806, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$806, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$200


DW$T$202	.dwtag  DW_TAG_union_type
	.dwattr DW$T$202, DW_AT_name("QEINT_REG")
	.dwattr DW$T$202, DW_AT_byte_size(0x01)
DW$807	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$807, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$807, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$807, DW_AT_accessibility(DW_ACCESS_public)
DW$808	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$201)
	.dwattr DW$808, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$808, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$808, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$202


DW$T$204	.dwtag  DW_TAG_union_type
	.dwattr DW$T$204, DW_AT_name("QFLG_REG")
	.dwattr DW$T$204, DW_AT_byte_size(0x01)
DW$809	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$809, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$809, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$809, DW_AT_accessibility(DW_ACCESS_public)
DW$810	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$203)
	.dwattr DW$810, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$810, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$810, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$204


DW$T$206	.dwtag  DW_TAG_union_type
	.dwattr DW$T$206, DW_AT_name("QFRC_REG")
	.dwattr DW$T$206, DW_AT_byte_size(0x01)
DW$811	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$811, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$811, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$811, DW_AT_accessibility(DW_ACCESS_public)
DW$812	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$205)
	.dwattr DW$812, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$812, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$812, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$206


DW$T$208	.dwtag  DW_TAG_union_type
	.dwattr DW$T$208, DW_AT_name("QEPSTS_REG")
	.dwattr DW$T$208, DW_AT_byte_size(0x01)
DW$813	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$813, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$813, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$813, DW_AT_accessibility(DW_ACCESS_public)
DW$814	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$207)
	.dwattr DW$814, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$814, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$814, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$208


DW$T$212	.dwtag  DW_TAG_union_type
	.dwattr DW$T$212, DW_AT_name("GPACTRL_REG")
	.dwattr DW$T$212, DW_AT_byte_size(0x02)
DW$815	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$48)
	.dwattr DW$815, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$815, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$815, DW_AT_accessibility(DW_ACCESS_public)
DW$816	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$211)
	.dwattr DW$816, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$816, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$816, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$212


DW$T$214	.dwtag  DW_TAG_union_type
	.dwattr DW$T$214, DW_AT_name("GPA1_REG")
	.dwattr DW$T$214, DW_AT_byte_size(0x02)
DW$817	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$48)
	.dwattr DW$817, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$817, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$817, DW_AT_accessibility(DW_ACCESS_public)
DW$818	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$213)
	.dwattr DW$818, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$818, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$818, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$214


DW$T$216	.dwtag  DW_TAG_union_type
	.dwattr DW$T$216, DW_AT_name("GPA2_REG")
	.dwattr DW$T$216, DW_AT_byte_size(0x02)
DW$819	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$48)
	.dwattr DW$819, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$819, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$819, DW_AT_accessibility(DW_ACCESS_public)
DW$820	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$215)
	.dwattr DW$820, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$820, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$820, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$216


DW$T$218	.dwtag  DW_TAG_union_type
	.dwattr DW$T$218, DW_AT_name("GPADAT_REG")
	.dwattr DW$T$218, DW_AT_byte_size(0x02)
DW$821	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$48)
	.dwattr DW$821, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$821, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$821, DW_AT_accessibility(DW_ACCESS_public)
DW$822	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$217)
	.dwattr DW$822, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$822, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$822, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$218


DW$T$220	.dwtag  DW_TAG_union_type
	.dwattr DW$T$220, DW_AT_name("GPBCTRL_REG")
	.dwattr DW$T$220, DW_AT_byte_size(0x02)
DW$823	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$48)
	.dwattr DW$823, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$823, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$823, DW_AT_accessibility(DW_ACCESS_public)
DW$824	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$219)
	.dwattr DW$824, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$824, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$824, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$220


DW$T$222	.dwtag  DW_TAG_union_type
	.dwattr DW$T$222, DW_AT_name("GPB1_REG")
	.dwattr DW$T$222, DW_AT_byte_size(0x02)
DW$825	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$48)
	.dwattr DW$825, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$825, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$825, DW_AT_accessibility(DW_ACCESS_public)
DW$826	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$221)
	.dwattr DW$826, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$826, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$826, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$222


DW$T$224	.dwtag  DW_TAG_union_type
	.dwattr DW$T$224, DW_AT_name("GPB2_REG")
	.dwattr DW$T$224, DW_AT_byte_size(0x02)
DW$827	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$48)
	.dwattr DW$827, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$827, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$827, DW_AT_accessibility(DW_ACCESS_public)
DW$828	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$223)
	.dwattr DW$828, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$828, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$828, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$224


DW$T$226	.dwtag  DW_TAG_union_type
	.dwattr DW$T$226, DW_AT_name("GPBDAT_REG")
	.dwattr DW$T$226, DW_AT_byte_size(0x02)
DW$829	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$48)
	.dwattr DW$829, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$829, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$829, DW_AT_accessibility(DW_ACCESS_public)
DW$830	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$225)
	.dwattr DW$830, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$830, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$830, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$226


DW$T$228	.dwtag  DW_TAG_union_type
	.dwattr DW$T$228, DW_AT_name("GPBPUD_REG")
	.dwattr DW$T$228, DW_AT_byte_size(0x02)
DW$831	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$48)
	.dwattr DW$831, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$831, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$831, DW_AT_accessibility(DW_ACCESS_public)
DW$832	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$227)
	.dwattr DW$832, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$832, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$832, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$228


DW$T$234	.dwtag  DW_TAG_union_type
	.dwattr DW$T$234, DW_AT_name("GPIOXINT_REG")
	.dwattr DW$T$234, DW_AT_byte_size(0x01)
DW$833	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$833, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$833, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$833, DW_AT_accessibility(DW_ACCESS_public)
DW$834	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$233)
	.dwattr DW$834, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$834, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$834, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$234


DW$T$238	.dwtag  DW_TAG_union_type
	.dwattr DW$T$238, DW_AT_name("I2CIER_REG")
	.dwattr DW$T$238, DW_AT_byte_size(0x01)
DW$835	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$835, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$835, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$835, DW_AT_accessibility(DW_ACCESS_public)
DW$836	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$237)
	.dwattr DW$836, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$836, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$836, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$238


DW$T$240	.dwtag  DW_TAG_union_type
	.dwattr DW$T$240, DW_AT_name("I2CSTR_REG")
	.dwattr DW$T$240, DW_AT_byte_size(0x01)
DW$837	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$837, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$837, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$837, DW_AT_accessibility(DW_ACCESS_public)
DW$838	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$239)
	.dwattr DW$838, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$838, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$838, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$240


DW$T$242	.dwtag  DW_TAG_union_type
	.dwattr DW$T$242, DW_AT_name("I2CMDR_REG")
	.dwattr DW$T$242, DW_AT_byte_size(0x01)
DW$839	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$839, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$839, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$839, DW_AT_accessibility(DW_ACCESS_public)
DW$840	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$241)
	.dwattr DW$840, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$840, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$840, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$242


DW$T$244	.dwtag  DW_TAG_union_type
	.dwattr DW$T$244, DW_AT_name("I2CISRC_REG")
	.dwattr DW$T$244, DW_AT_byte_size(0x01)
DW$841	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$841, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$841, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$841, DW_AT_accessibility(DW_ACCESS_public)
DW$842	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$243)
	.dwattr DW$842, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$842, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$842, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$244


DW$T$246	.dwtag  DW_TAG_union_type
	.dwattr DW$T$246, DW_AT_name("I2CPSC_REG")
	.dwattr DW$T$246, DW_AT_byte_size(0x01)
DW$843	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$843, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$843, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$843, DW_AT_accessibility(DW_ACCESS_public)
DW$844	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$245)
	.dwattr DW$844, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$844, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$844, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$246


DW$T$248	.dwtag  DW_TAG_union_type
	.dwattr DW$T$248, DW_AT_name("I2CFFTX_REG")
	.dwattr DW$T$248, DW_AT_byte_size(0x01)
DW$845	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$845, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$845, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$845, DW_AT_accessibility(DW_ACCESS_public)
DW$846	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$247)
	.dwattr DW$846, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$846, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$846, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$248


DW$T$250	.dwtag  DW_TAG_union_type
	.dwattr DW$T$250, DW_AT_name("I2CFFRX_REG")
	.dwattr DW$T$250, DW_AT_byte_size(0x01)
DW$847	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$847, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$847, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$847, DW_AT_accessibility(DW_ACCESS_public)
DW$848	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$249)
	.dwattr DW$848, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$848, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$848, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$250


DW$T$254	.dwtag  DW_TAG_union_type
	.dwattr DW$T$254, DW_AT_name("PIECTRL_REG")
	.dwattr DW$T$254, DW_AT_byte_size(0x01)
DW$849	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$849, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$849, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$849, DW_AT_accessibility(DW_ACCESS_public)
DW$850	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$253)
	.dwattr DW$850, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$850, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$850, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$254


DW$T$256	.dwtag  DW_TAG_union_type
	.dwattr DW$T$256, DW_AT_name("PIEACK_REG")
	.dwattr DW$T$256, DW_AT_byte_size(0x01)
DW$851	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$851, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$851, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$851, DW_AT_accessibility(DW_ACCESS_public)
DW$852	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$255)
	.dwattr DW$852, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$852, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$852, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$256


DW$T$258	.dwtag  DW_TAG_union_type
	.dwattr DW$T$258, DW_AT_name("PIEIER_REG")
	.dwattr DW$T$258, DW_AT_byte_size(0x01)
DW$853	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$853, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$853, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$853, DW_AT_accessibility(DW_ACCESS_public)
DW$854	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$257)
	.dwattr DW$854, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$854, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$854, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$258


DW$T$260	.dwtag  DW_TAG_union_type
	.dwattr DW$T$260, DW_AT_name("PIEIFR_REG")
	.dwattr DW$T$260, DW_AT_byte_size(0x01)
DW$855	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$855, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$855, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$855, DW_AT_accessibility(DW_ACCESS_public)
DW$856	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$259)
	.dwattr DW$856, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$856, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$856, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$260


DW$T$267	.dwtag  DW_TAG_union_type
	.dwattr DW$T$267, DW_AT_name("SCICCR_REG")
	.dwattr DW$T$267, DW_AT_byte_size(0x01)
DW$857	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$857, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$857, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$857, DW_AT_accessibility(DW_ACCESS_public)
DW$858	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$266)
	.dwattr DW$858, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$858, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$858, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$267


DW$T$269	.dwtag  DW_TAG_union_type
	.dwattr DW$T$269, DW_AT_name("SCICTL1_REG")
	.dwattr DW$T$269, DW_AT_byte_size(0x01)
DW$859	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$859, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$859, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$859, DW_AT_accessibility(DW_ACCESS_public)
DW$860	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$268)
	.dwattr DW$860, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$860, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$860, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$269


DW$T$271	.dwtag  DW_TAG_union_type
	.dwattr DW$T$271, DW_AT_name("SCICTL2_REG")
	.dwattr DW$T$271, DW_AT_byte_size(0x01)
DW$861	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$861, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$861, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$861, DW_AT_accessibility(DW_ACCESS_public)
DW$862	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$270)
	.dwattr DW$862, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$862, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$862, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$271


DW$T$273	.dwtag  DW_TAG_union_type
	.dwattr DW$T$273, DW_AT_name("SCIRXST_REG")
	.dwattr DW$T$273, DW_AT_byte_size(0x01)
DW$863	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$863, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$863, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$863, DW_AT_accessibility(DW_ACCESS_public)
DW$864	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$272)
	.dwattr DW$864, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$864, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$864, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$273


DW$T$275	.dwtag  DW_TAG_union_type
	.dwattr DW$T$275, DW_AT_name("SCIRXBUF_REG")
	.dwattr DW$T$275, DW_AT_byte_size(0x01)
DW$865	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$865, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$865, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$865, DW_AT_accessibility(DW_ACCESS_public)
DW$866	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$274)
	.dwattr DW$866, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$866, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$866, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$275


DW$T$277	.dwtag  DW_TAG_union_type
	.dwattr DW$T$277, DW_AT_name("SCIFFTX_REG")
	.dwattr DW$T$277, DW_AT_byte_size(0x01)
DW$867	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$867, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$867, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$867, DW_AT_accessibility(DW_ACCESS_public)
DW$868	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$276)
	.dwattr DW$868, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$868, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$868, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$277


DW$T$279	.dwtag  DW_TAG_union_type
	.dwattr DW$T$279, DW_AT_name("SCIFFRX_REG")
	.dwattr DW$T$279, DW_AT_byte_size(0x01)
DW$869	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$869, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$869, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$869, DW_AT_accessibility(DW_ACCESS_public)
DW$870	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$278)
	.dwattr DW$870, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$870, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$870, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$279


DW$T$281	.dwtag  DW_TAG_union_type
	.dwattr DW$T$281, DW_AT_name("SCIFFCT_REG")
	.dwattr DW$T$281, DW_AT_byte_size(0x01)
DW$871	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$871, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$871, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$871, DW_AT_accessibility(DW_ACCESS_public)
DW$872	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$280)
	.dwattr DW$872, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$872, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$872, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$281


DW$T$283	.dwtag  DW_TAG_union_type
	.dwattr DW$T$283, DW_AT_name("SCIPRI_REG")
	.dwattr DW$T$283, DW_AT_byte_size(0x01)
DW$873	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$873, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$873, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$873, DW_AT_accessibility(DW_ACCESS_public)
DW$874	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$282)
	.dwattr DW$874, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$874, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$874, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$283


DW$T$286	.dwtag  DW_TAG_union_type
	.dwattr DW$T$286, DW_AT_name("SPICCR_REG")
	.dwattr DW$T$286, DW_AT_byte_size(0x01)
DW$875	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$875, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$875, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$875, DW_AT_accessibility(DW_ACCESS_public)
DW$876	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$285)
	.dwattr DW$876, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$876, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$876, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$286


DW$T$288	.dwtag  DW_TAG_union_type
	.dwattr DW$T$288, DW_AT_name("SPICTL_REG")
	.dwattr DW$T$288, DW_AT_byte_size(0x01)
DW$877	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$877, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$877, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$877, DW_AT_accessibility(DW_ACCESS_public)
DW$878	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$287)
	.dwattr DW$878, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$878, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$878, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$288


DW$T$290	.dwtag  DW_TAG_union_type
	.dwattr DW$T$290, DW_AT_name("SPISTS_REG")
	.dwattr DW$T$290, DW_AT_byte_size(0x01)
DW$879	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$879, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$879, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$879, DW_AT_accessibility(DW_ACCESS_public)
DW$880	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$289)
	.dwattr DW$880, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$880, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$880, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$290


DW$T$292	.dwtag  DW_TAG_union_type
	.dwattr DW$T$292, DW_AT_name("SPIFFTX_REG")
	.dwattr DW$T$292, DW_AT_byte_size(0x01)
DW$881	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$881, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$881, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$881, DW_AT_accessibility(DW_ACCESS_public)
DW$882	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$291)
	.dwattr DW$882, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$882, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$882, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$292


DW$T$294	.dwtag  DW_TAG_union_type
	.dwattr DW$T$294, DW_AT_name("SPIFFRX_REG")
	.dwattr DW$T$294, DW_AT_byte_size(0x01)
DW$883	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$883, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$883, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$883, DW_AT_accessibility(DW_ACCESS_public)
DW$884	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$293)
	.dwattr DW$884, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$884, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$884, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$294


DW$T$296	.dwtag  DW_TAG_union_type
	.dwattr DW$T$296, DW_AT_name("SPIFFCT_REG")
	.dwattr DW$T$296, DW_AT_byte_size(0x01)
DW$885	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$885, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$885, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$885, DW_AT_accessibility(DW_ACCESS_public)
DW$886	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$295)
	.dwattr DW$886, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$886, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$886, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$296


DW$T$298	.dwtag  DW_TAG_union_type
	.dwattr DW$T$298, DW_AT_name("SPIPRI_REG")
	.dwattr DW$T$298, DW_AT_byte_size(0x01)
DW$887	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$887, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$887, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$887, DW_AT_accessibility(DW_ACCESS_public)
DW$888	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$297)
	.dwattr DW$888, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$888, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$888, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$298


DW$T$302	.dwtag  DW_TAG_union_type
	.dwattr DW$T$302, DW_AT_name("XCLK_REG")
	.dwattr DW$T$302, DW_AT_byte_size(0x01)
DW$889	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$889, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$889, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$889, DW_AT_accessibility(DW_ACCESS_public)
DW$890	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$301)
	.dwattr DW$890, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$890, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$890, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$302


DW$T$304	.dwtag  DW_TAG_union_type
	.dwattr DW$T$304, DW_AT_name("PLLSTS_REG")
	.dwattr DW$T$304, DW_AT_byte_size(0x01)
DW$891	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$891, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$891, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$891, DW_AT_accessibility(DW_ACCESS_public)
DW$892	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$303)
	.dwattr DW$892, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$892, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$892, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$304


DW$T$306	.dwtag  DW_TAG_union_type
	.dwattr DW$T$306, DW_AT_name("HISPCP_REG")
	.dwattr DW$T$306, DW_AT_byte_size(0x01)
DW$893	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$893, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$893, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$893, DW_AT_accessibility(DW_ACCESS_public)
DW$894	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$305)
	.dwattr DW$894, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$894, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$894, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$306


DW$T$308	.dwtag  DW_TAG_union_type
	.dwattr DW$T$308, DW_AT_name("LOSPCP_REG")
	.dwattr DW$T$308, DW_AT_byte_size(0x01)
DW$895	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$895, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$895, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$895, DW_AT_accessibility(DW_ACCESS_public)
DW$896	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$307)
	.dwattr DW$896, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$896, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$896, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$308


DW$T$310	.dwtag  DW_TAG_union_type
	.dwattr DW$T$310, DW_AT_name("PCLKCR0_REG")
	.dwattr DW$T$310, DW_AT_byte_size(0x01)
DW$897	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$897, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$897, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$897, DW_AT_accessibility(DW_ACCESS_public)
DW$898	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$309)
	.dwattr DW$898, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$898, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$898, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$310


DW$T$312	.dwtag  DW_TAG_union_type
	.dwattr DW$T$312, DW_AT_name("PCLKCR1_REG")
	.dwattr DW$T$312, DW_AT_byte_size(0x01)
DW$899	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$899, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$899, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$899, DW_AT_accessibility(DW_ACCESS_public)
DW$900	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$311)
	.dwattr DW$900, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$900, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$900, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$312


DW$T$314	.dwtag  DW_TAG_union_type
	.dwattr DW$T$314, DW_AT_name("LPMCR0_REG")
	.dwattr DW$T$314, DW_AT_byte_size(0x01)
DW$901	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$901, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$901, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$901, DW_AT_accessibility(DW_ACCESS_public)
DW$902	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$313)
	.dwattr DW$902, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$902, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$902, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$314


DW$T$316	.dwtag  DW_TAG_union_type
	.dwattr DW$T$316, DW_AT_name("PLLCR_REG")
	.dwattr DW$T$316, DW_AT_byte_size(0x01)
DW$903	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$903, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$903, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$903, DW_AT_accessibility(DW_ACCESS_public)
DW$904	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$315)
	.dwattr DW$904, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$904, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$904, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$316


DW$T$320	.dwtag  DW_TAG_union_type
	.dwattr DW$T$320, DW_AT_name("FOPT_REG")
	.dwattr DW$T$320, DW_AT_byte_size(0x01)
DW$905	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$905, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$905, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$905, DW_AT_accessibility(DW_ACCESS_public)
DW$906	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$319)
	.dwattr DW$906, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$906, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$906, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$320


DW$T$322	.dwtag  DW_TAG_union_type
	.dwattr DW$T$322, DW_AT_name("FPWR_REG")
	.dwattr DW$T$322, DW_AT_byte_size(0x01)
DW$907	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$907, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$907, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$907, DW_AT_accessibility(DW_ACCESS_public)
DW$908	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$321)
	.dwattr DW$908, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$908, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$908, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$322


DW$T$324	.dwtag  DW_TAG_union_type
	.dwattr DW$T$324, DW_AT_name("FSTATUS_REG")
	.dwattr DW$T$324, DW_AT_byte_size(0x01)
DW$909	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$909, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$909, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$909, DW_AT_accessibility(DW_ACCESS_public)
DW$910	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$323)
	.dwattr DW$910, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$910, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$910, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$324


DW$T$326	.dwtag  DW_TAG_union_type
	.dwattr DW$T$326, DW_AT_name("FSTDBYWAIT_REG")
	.dwattr DW$T$326, DW_AT_byte_size(0x01)
DW$911	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$911, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$911, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$911, DW_AT_accessibility(DW_ACCESS_public)
DW$912	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$325)
	.dwattr DW$912, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$912, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$912, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$326


DW$T$328	.dwtag  DW_TAG_union_type
	.dwattr DW$T$328, DW_AT_name("FACTIVEWAIT_REG")
	.dwattr DW$T$328, DW_AT_byte_size(0x01)
DW$913	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$913, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$913, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$913, DW_AT_accessibility(DW_ACCESS_public)
DW$914	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$327)
	.dwattr DW$914, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$914, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$914, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$328


DW$T$330	.dwtag  DW_TAG_union_type
	.dwattr DW$T$330, DW_AT_name("FBANKWAIT_REG")
	.dwattr DW$T$330, DW_AT_byte_size(0x01)
DW$915	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$915, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$915, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$915, DW_AT_accessibility(DW_ACCESS_public)
DW$916	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$329)
	.dwattr DW$916, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$916, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$916, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$330


DW$T$332	.dwtag  DW_TAG_union_type
	.dwattr DW$T$332, DW_AT_name("FOTPWAIT_REG")
	.dwattr DW$T$332, DW_AT_byte_size(0x01)
DW$917	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$917, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$917, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$917, DW_AT_accessibility(DW_ACCESS_public)
DW$918	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$331)
	.dwattr DW$918, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$918, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$918, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$332


DW$T$335	.dwtag  DW_TAG_union_type
	.dwattr DW$T$335, DW_AT_name("XINTCR_REG")
	.dwattr DW$T$335, DW_AT_byte_size(0x01)
DW$919	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$919, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$919, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$919, DW_AT_accessibility(DW_ACCESS_public)
DW$920	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$334)
	.dwattr DW$920, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$920, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$920, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$335


DW$T$337	.dwtag  DW_TAG_union_type
	.dwattr DW$T$337, DW_AT_name("XNMICR_REG")
	.dwattr DW$T$337, DW_AT_byte_size(0x01)
DW$921	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$921, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$921, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$921, DW_AT_accessibility(DW_ACCESS_public)
DW$922	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$336)
	.dwattr DW$922, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$922, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$922, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$337


DW$T$262	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$262, DW_AT_language(DW_LANG_C)
DW$T$11	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned int")
	.dwattr DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr DW$T$11, DW_AT_byte_size(0x01)
DW$T$13	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned long")
	.dwattr DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr DW$T$13, DW_AT_byte_size(0x02)

DW$T$20	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$20, DW_AT_name("ADCTRL1_BITS")
	.dwattr DW$T$20, DW_AT_byte_size(0x01)
DW$923	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$923, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$923, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x04)
	.dwattr DW$923, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$923, DW_AT_accessibility(DW_ACCESS_public)
DW$924	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$924, DW_AT_name("SEQ_CASC"), DW_AT_symbol_name("_SEQ_CASC")
	.dwattr DW$924, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$924, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$924, DW_AT_accessibility(DW_ACCESS_public)
DW$925	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$925, DW_AT_name("SEQ_OVRD"), DW_AT_symbol_name("_SEQ_OVRD")
	.dwattr DW$925, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$925, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$925, DW_AT_accessibility(DW_ACCESS_public)
DW$926	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$926, DW_AT_name("CONT_RUN"), DW_AT_symbol_name("_CONT_RUN")
	.dwattr DW$926, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$926, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$926, DW_AT_accessibility(DW_ACCESS_public)
DW$927	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$927, DW_AT_name("CPS"), DW_AT_symbol_name("_CPS")
	.dwattr DW$927, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$927, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$927, DW_AT_accessibility(DW_ACCESS_public)
DW$928	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$928, DW_AT_name("ACQ_PS"), DW_AT_symbol_name("_ACQ_PS")
	.dwattr DW$928, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x04)
	.dwattr DW$928, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$928, DW_AT_accessibility(DW_ACCESS_public)
DW$929	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$929, DW_AT_name("SUSMOD"), DW_AT_symbol_name("_SUSMOD")
	.dwattr DW$929, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x02)
	.dwattr DW$929, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$929, DW_AT_accessibility(DW_ACCESS_public)
DW$930	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$930, DW_AT_name("RESET"), DW_AT_symbol_name("_RESET")
	.dwattr DW$930, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$930, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$930, DW_AT_accessibility(DW_ACCESS_public)
DW$931	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$931, DW_AT_name("rsvd2"), DW_AT_symbol_name("_rsvd2")
	.dwattr DW$931, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$931, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$931, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$20


DW$T$22	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$22, DW_AT_name("ADCTRL2_BITS")
	.dwattr DW$T$22, DW_AT_byte_size(0x01)
DW$932	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$932, DW_AT_name("EPWM_SOCB_SEQ2"), DW_AT_symbol_name("_EPWM_SOCB_SEQ2")
	.dwattr DW$932, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$932, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$932, DW_AT_accessibility(DW_ACCESS_public)
DW$933	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$933, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$933, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$933, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$933, DW_AT_accessibility(DW_ACCESS_public)
DW$934	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$934, DW_AT_name("INT_MOD_SEQ2"), DW_AT_symbol_name("_INT_MOD_SEQ2")
	.dwattr DW$934, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$934, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$934, DW_AT_accessibility(DW_ACCESS_public)
DW$935	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$935, DW_AT_name("INT_ENA_SEQ2"), DW_AT_symbol_name("_INT_ENA_SEQ2")
	.dwattr DW$935, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$935, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$935, DW_AT_accessibility(DW_ACCESS_public)
DW$936	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$936, DW_AT_name("rsvd2"), DW_AT_symbol_name("_rsvd2")
	.dwattr DW$936, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$936, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$936, DW_AT_accessibility(DW_ACCESS_public)
DW$937	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$937, DW_AT_name("SOC_SEQ2"), DW_AT_symbol_name("_SOC_SEQ2")
	.dwattr DW$937, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$937, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$937, DW_AT_accessibility(DW_ACCESS_public)
DW$938	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$938, DW_AT_name("RST_SEQ2"), DW_AT_symbol_name("_RST_SEQ2")
	.dwattr DW$938, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$938, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$938, DW_AT_accessibility(DW_ACCESS_public)
DW$939	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$939, DW_AT_name("EXT_SOC_SEQ1"), DW_AT_symbol_name("_EXT_SOC_SEQ1")
	.dwattr DW$939, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$939, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$939, DW_AT_accessibility(DW_ACCESS_public)
DW$940	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$940, DW_AT_name("EPWM_SOCA_SEQ1"), DW_AT_symbol_name("_EPWM_SOCA_SEQ1")
	.dwattr DW$940, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$940, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$940, DW_AT_accessibility(DW_ACCESS_public)
DW$941	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$941, DW_AT_name("rsvd3"), DW_AT_symbol_name("_rsvd3")
	.dwattr DW$941, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$941, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$941, DW_AT_accessibility(DW_ACCESS_public)
DW$942	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$942, DW_AT_name("INT_MOD_SEQ1"), DW_AT_symbol_name("_INT_MOD_SEQ1")
	.dwattr DW$942, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$942, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$942, DW_AT_accessibility(DW_ACCESS_public)
DW$943	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$943, DW_AT_name("INT_ENA_SEQ1"), DW_AT_symbol_name("_INT_ENA_SEQ1")
	.dwattr DW$943, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$943, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$943, DW_AT_accessibility(DW_ACCESS_public)
DW$944	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$944, DW_AT_name("rsvd4"), DW_AT_symbol_name("_rsvd4")
	.dwattr DW$944, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$944, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$944, DW_AT_accessibility(DW_ACCESS_public)
DW$945	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$945, DW_AT_name("SOC_SEQ1"), DW_AT_symbol_name("_SOC_SEQ1")
	.dwattr DW$945, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$945, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$945, DW_AT_accessibility(DW_ACCESS_public)
DW$946	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$946, DW_AT_name("RST_SEQ1"), DW_AT_symbol_name("_RST_SEQ1")
	.dwattr DW$946, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$946, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$946, DW_AT_accessibility(DW_ACCESS_public)
DW$947	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$947, DW_AT_name("EPWM_SOCB_SEQ"), DW_AT_symbol_name("_EPWM_SOCB_SEQ")
	.dwattr DW$947, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$947, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$947, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$22


DW$T$24	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$24, DW_AT_name("ADCMAXCONV_BITS")
	.dwattr DW$T$24, DW_AT_byte_size(0x01)
DW$948	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$948, DW_AT_name("MAX_CONV1"), DW_AT_symbol_name("_MAX_CONV1")
	.dwattr DW$948, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x04)
	.dwattr DW$948, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$948, DW_AT_accessibility(DW_ACCESS_public)
DW$949	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$949, DW_AT_name("MAX_CONV2"), DW_AT_symbol_name("_MAX_CONV2")
	.dwattr DW$949, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x03)
	.dwattr DW$949, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$949, DW_AT_accessibility(DW_ACCESS_public)
DW$950	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$950, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$950, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x09)
	.dwattr DW$950, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$950, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$24


DW$T$26	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$26, DW_AT_name("ADCCHSELSEQ1_BITS")
	.dwattr DW$T$26, DW_AT_byte_size(0x01)
DW$951	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$951, DW_AT_name("CONV00"), DW_AT_symbol_name("_CONV00")
	.dwattr DW$951, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x04)
	.dwattr DW$951, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$951, DW_AT_accessibility(DW_ACCESS_public)
DW$952	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$952, DW_AT_name("CONV01"), DW_AT_symbol_name("_CONV01")
	.dwattr DW$952, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x04)
	.dwattr DW$952, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$952, DW_AT_accessibility(DW_ACCESS_public)
DW$953	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$953, DW_AT_name("CONV02"), DW_AT_symbol_name("_CONV02")
	.dwattr DW$953, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x04)
	.dwattr DW$953, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$953, DW_AT_accessibility(DW_ACCESS_public)
DW$954	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$954, DW_AT_name("CONV03"), DW_AT_symbol_name("_CONV03")
	.dwattr DW$954, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x04)
	.dwattr DW$954, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$954, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$26


DW$T$28	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$28, DW_AT_name("ADCCHSELSEQ2_BITS")
	.dwattr DW$T$28, DW_AT_byte_size(0x01)
DW$955	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$955, DW_AT_name("CONV04"), DW_AT_symbol_name("_CONV04")
	.dwattr DW$955, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x04)
	.dwattr DW$955, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$955, DW_AT_accessibility(DW_ACCESS_public)
DW$956	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$956, DW_AT_name("CONV05"), DW_AT_symbol_name("_CONV05")
	.dwattr DW$956, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x04)
	.dwattr DW$956, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$956, DW_AT_accessibility(DW_ACCESS_public)
DW$957	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$957, DW_AT_name("CONV06"), DW_AT_symbol_name("_CONV06")
	.dwattr DW$957, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x04)
	.dwattr DW$957, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$957, DW_AT_accessibility(DW_ACCESS_public)
DW$958	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$958, DW_AT_name("CONV07"), DW_AT_symbol_name("_CONV07")
	.dwattr DW$958, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x04)
	.dwattr DW$958, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$958, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$28


DW$T$30	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$30, DW_AT_name("ADCCHSELSEQ3_BITS")
	.dwattr DW$T$30, DW_AT_byte_size(0x01)
DW$959	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$959, DW_AT_name("CONV08"), DW_AT_symbol_name("_CONV08")
	.dwattr DW$959, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x04)
	.dwattr DW$959, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$959, DW_AT_accessibility(DW_ACCESS_public)
DW$960	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$960, DW_AT_name("CONV09"), DW_AT_symbol_name("_CONV09")
	.dwattr DW$960, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x04)
	.dwattr DW$960, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$960, DW_AT_accessibility(DW_ACCESS_public)
DW$961	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$961, DW_AT_name("CONV10"), DW_AT_symbol_name("_CONV10")
	.dwattr DW$961, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x04)
	.dwattr DW$961, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$961, DW_AT_accessibility(DW_ACCESS_public)
DW$962	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$962, DW_AT_name("CONV11"), DW_AT_symbol_name("_CONV11")
	.dwattr DW$962, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x04)
	.dwattr DW$962, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$962, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$30


DW$T$32	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$32, DW_AT_name("ADCCHSELSEQ4_BITS")
	.dwattr DW$T$32, DW_AT_byte_size(0x01)
DW$963	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$963, DW_AT_name("CONV12"), DW_AT_symbol_name("_CONV12")
	.dwattr DW$963, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x04)
	.dwattr DW$963, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$963, DW_AT_accessibility(DW_ACCESS_public)
DW$964	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$964, DW_AT_name("CONV13"), DW_AT_symbol_name("_CONV13")
	.dwattr DW$964, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x04)
	.dwattr DW$964, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$964, DW_AT_accessibility(DW_ACCESS_public)
DW$965	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$965, DW_AT_name("CONV14"), DW_AT_symbol_name("_CONV14")
	.dwattr DW$965, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x04)
	.dwattr DW$965, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$965, DW_AT_accessibility(DW_ACCESS_public)
DW$966	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$966, DW_AT_name("CONV15"), DW_AT_symbol_name("_CONV15")
	.dwattr DW$966, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x04)
	.dwattr DW$966, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$966, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$32


DW$T$34	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$34, DW_AT_name("ADCASEQSR_BITS")
	.dwattr DW$T$34, DW_AT_byte_size(0x01)
DW$967	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$967, DW_AT_name("SEQ1_STATE"), DW_AT_symbol_name("_SEQ1_STATE")
	.dwattr DW$967, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x04)
	.dwattr DW$967, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$967, DW_AT_accessibility(DW_ACCESS_public)
DW$968	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$968, DW_AT_name("SEQ2_STATE"), DW_AT_symbol_name("_SEQ2_STATE")
	.dwattr DW$968, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x03)
	.dwattr DW$968, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$968, DW_AT_accessibility(DW_ACCESS_public)
DW$969	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$969, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$969, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$969, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$969, DW_AT_accessibility(DW_ACCESS_public)
DW$970	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$970, DW_AT_name("SEQ_CNTR"), DW_AT_symbol_name("_SEQ_CNTR")
	.dwattr DW$970, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x04)
	.dwattr DW$970, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$970, DW_AT_accessibility(DW_ACCESS_public)
DW$971	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$971, DW_AT_name("rsvd2"), DW_AT_symbol_name("_rsvd2")
	.dwattr DW$971, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x04)
	.dwattr DW$971, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$971, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$34


DW$T$36	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$36, DW_AT_name("ADCTRL3_BITS")
	.dwattr DW$T$36, DW_AT_byte_size(0x01)
DW$972	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$972, DW_AT_name("SMODE_SEL"), DW_AT_symbol_name("_SMODE_SEL")
	.dwattr DW$972, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$972, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$972, DW_AT_accessibility(DW_ACCESS_public)
DW$973	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$973, DW_AT_name("ADCCLKPS"), DW_AT_symbol_name("_ADCCLKPS")
	.dwattr DW$973, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x04)
	.dwattr DW$973, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$973, DW_AT_accessibility(DW_ACCESS_public)
DW$974	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$974, DW_AT_name("ADCPWDN"), DW_AT_symbol_name("_ADCPWDN")
	.dwattr DW$974, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$974, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$974, DW_AT_accessibility(DW_ACCESS_public)
DW$975	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$975, DW_AT_name("ADCBGRFDN"), DW_AT_symbol_name("_ADCBGRFDN")
	.dwattr DW$975, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x02)
	.dwattr DW$975, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$975, DW_AT_accessibility(DW_ACCESS_public)
DW$976	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$976, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$976, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x08)
	.dwattr DW$976, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$976, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$36


DW$T$38	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$38, DW_AT_name("ADCST_BITS")
	.dwattr DW$T$38, DW_AT_byte_size(0x01)
DW$977	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$977, DW_AT_name("INT_SEQ1"), DW_AT_symbol_name("_INT_SEQ1")
	.dwattr DW$977, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$977, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$977, DW_AT_accessibility(DW_ACCESS_public)
DW$978	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$978, DW_AT_name("INT_SEQ2"), DW_AT_symbol_name("_INT_SEQ2")
	.dwattr DW$978, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$978, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$978, DW_AT_accessibility(DW_ACCESS_public)
DW$979	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$979, DW_AT_name("SEQ1_BSY"), DW_AT_symbol_name("_SEQ1_BSY")
	.dwattr DW$979, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$979, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$979, DW_AT_accessibility(DW_ACCESS_public)
DW$980	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$980, DW_AT_name("SEQ2_BSY"), DW_AT_symbol_name("_SEQ2_BSY")
	.dwattr DW$980, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$980, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$980, DW_AT_accessibility(DW_ACCESS_public)
DW$981	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$981, DW_AT_name("INT_SEQ1_CLR"), DW_AT_symbol_name("_INT_SEQ1_CLR")
	.dwattr DW$981, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$981, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$981, DW_AT_accessibility(DW_ACCESS_public)
DW$982	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$982, DW_AT_name("INT_SEQ2_CLR"), DW_AT_symbol_name("_INT_SEQ2_CLR")
	.dwattr DW$982, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$982, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$982, DW_AT_accessibility(DW_ACCESS_public)
DW$983	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$983, DW_AT_name("EOS_BUF1"), DW_AT_symbol_name("_EOS_BUF1")
	.dwattr DW$983, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$983, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$983, DW_AT_accessibility(DW_ACCESS_public)
DW$984	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$984, DW_AT_name("EOS_BUF2"), DW_AT_symbol_name("_EOS_BUF2")
	.dwattr DW$984, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$984, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$984, DW_AT_accessibility(DW_ACCESS_public)
DW$985	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$985, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$985, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x08)
	.dwattr DW$985, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$985, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$38


DW$T$40	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$40, DW_AT_name("ADCREFSEL_BITS")
	.dwattr DW$T$40, DW_AT_byte_size(0x01)
DW$986	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$986, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$986, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x0e)
	.dwattr DW$986, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$986, DW_AT_accessibility(DW_ACCESS_public)
DW$987	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$987, DW_AT_name("REF_SEL"), DW_AT_symbol_name("_REF_SEL")
	.dwattr DW$987, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x02)
	.dwattr DW$987, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$987, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$40


DW$T$43	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$43, DW_AT_name("ADCOFFTRIM_BITS")
	.dwattr DW$T$43, DW_AT_byte_size(0x01)
DW$988	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$42)
	.dwattr DW$988, DW_AT_name("OFFSET_TRIM"), DW_AT_symbol_name("_OFFSET_TRIM")
	.dwattr DW$988, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x09)
	.dwattr DW$988, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$988, DW_AT_accessibility(DW_ACCESS_public)
DW$989	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$989, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$989, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x07)
	.dwattr DW$989, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$989, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$43


DW$T$47	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$47, DW_AT_name("TIM_REG")
	.dwattr DW$T$47, DW_AT_byte_size(0x02)
DW$990	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$990, DW_AT_name("LSW"), DW_AT_symbol_name("_LSW")
	.dwattr DW$990, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$990, DW_AT_accessibility(DW_ACCESS_public)
DW$991	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$991, DW_AT_name("MSW"), DW_AT_symbol_name("_MSW")
	.dwattr DW$991, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$991, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$47


DW$T$50	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$50, DW_AT_name("PRD_REG")
	.dwattr DW$T$50, DW_AT_byte_size(0x02)
DW$992	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$992, DW_AT_name("LSW"), DW_AT_symbol_name("_LSW")
	.dwattr DW$992, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$992, DW_AT_accessibility(DW_ACCESS_public)
DW$993	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$993, DW_AT_name("MSW"), DW_AT_symbol_name("_MSW")
	.dwattr DW$993, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$993, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$50


DW$T$52	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$52, DW_AT_name("TCR_BITS")
	.dwattr DW$T$52, DW_AT_byte_size(0x01)
DW$994	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$994, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$994, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x04)
	.dwattr DW$994, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$994, DW_AT_accessibility(DW_ACCESS_public)
DW$995	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$995, DW_AT_name("TSS"), DW_AT_symbol_name("_TSS")
	.dwattr DW$995, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$995, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$995, DW_AT_accessibility(DW_ACCESS_public)
DW$996	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$996, DW_AT_name("TRB"), DW_AT_symbol_name("_TRB")
	.dwattr DW$996, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$996, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$996, DW_AT_accessibility(DW_ACCESS_public)
DW$997	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$997, DW_AT_name("rsvd2"), DW_AT_symbol_name("_rsvd2")
	.dwattr DW$997, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x04)
	.dwattr DW$997, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$997, DW_AT_accessibility(DW_ACCESS_public)
DW$998	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$998, DW_AT_name("SOFT"), DW_AT_symbol_name("_SOFT")
	.dwattr DW$998, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$998, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$998, DW_AT_accessibility(DW_ACCESS_public)
DW$999	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$999, DW_AT_name("FREE"), DW_AT_symbol_name("_FREE")
	.dwattr DW$999, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$999, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$999, DW_AT_accessibility(DW_ACCESS_public)
DW$1000	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1000, DW_AT_name("rsvd3"), DW_AT_symbol_name("_rsvd3")
	.dwattr DW$1000, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x02)
	.dwattr DW$1000, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1000, DW_AT_accessibility(DW_ACCESS_public)
DW$1001	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1001, DW_AT_name("TIE"), DW_AT_symbol_name("_TIE")
	.dwattr DW$1001, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$1001, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1001, DW_AT_accessibility(DW_ACCESS_public)
DW$1002	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1002, DW_AT_name("TIF"), DW_AT_symbol_name("_TIF")
	.dwattr DW$1002, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$1002, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1002, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$52


DW$T$54	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$54, DW_AT_name("TPR_BITS")
	.dwattr DW$T$54, DW_AT_byte_size(0x01)
DW$1003	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1003, DW_AT_name("TDDR"), DW_AT_symbol_name("_TDDR")
	.dwattr DW$1003, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x08)
	.dwattr DW$1003, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1003, DW_AT_accessibility(DW_ACCESS_public)
DW$1004	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1004, DW_AT_name("PSC"), DW_AT_symbol_name("_PSC")
	.dwattr DW$1004, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x08)
	.dwattr DW$1004, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1004, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$54


DW$T$56	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$56, DW_AT_name("TPRH_BITS")
	.dwattr DW$T$56, DW_AT_byte_size(0x01)
DW$1005	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1005, DW_AT_name("TDDRH"), DW_AT_symbol_name("_TDDRH")
	.dwattr DW$1005, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x08)
	.dwattr DW$1005, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1005, DW_AT_accessibility(DW_ACCESS_public)
DW$1006	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1006, DW_AT_name("PSCH"), DW_AT_symbol_name("_PSCH")
	.dwattr DW$1006, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x08)
	.dwattr DW$1006, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1006, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$56


DW$T$60	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$60, DW_AT_name("CSMSCR_BITS")
	.dwattr DW$T$60, DW_AT_byte_size(0x01)
DW$1007	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1007, DW_AT_name("SECURE"), DW_AT_symbol_name("_SECURE")
	.dwattr DW$1007, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$1007, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1007, DW_AT_accessibility(DW_ACCESS_public)
DW$1008	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1008, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$1008, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x0e)
	.dwattr DW$1008, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1008, DW_AT_accessibility(DW_ACCESS_public)
DW$1009	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1009, DW_AT_name("FORCESEC"), DW_AT_symbol_name("_FORCESEC")
	.dwattr DW$1009, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$1009, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1009, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$60


DW$T$63	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$63, DW_AT_name("DEVICECNF_BITS")
	.dwattr DW$T$63, DW_AT_byte_size(0x02)
DW$1010	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1010, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$1010, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x03)
	.dwattr DW$1010, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1010, DW_AT_accessibility(DW_ACCESS_public)
DW$1011	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1011, DW_AT_name("VMAPS"), DW_AT_symbol_name("_VMAPS")
	.dwattr DW$1011, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$1011, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1011, DW_AT_accessibility(DW_ACCESS_public)
DW$1012	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1012, DW_AT_name("rsvd2"), DW_AT_symbol_name("_rsvd2")
	.dwattr DW$1012, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$1012, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1012, DW_AT_accessibility(DW_ACCESS_public)
DW$1013	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1013, DW_AT_name("XRSn"), DW_AT_symbol_name("_XRSn")
	.dwattr DW$1013, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$1013, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1013, DW_AT_accessibility(DW_ACCESS_public)
DW$1014	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1014, DW_AT_name("rsvd3"), DW_AT_symbol_name("_rsvd3")
	.dwattr DW$1014, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x0a)
	.dwattr DW$1014, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1014, DW_AT_accessibility(DW_ACCESS_public)
DW$1015	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1015, DW_AT_name("rsvd4"), DW_AT_symbol_name("_rsvd4")
	.dwattr DW$1015, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x03)
	.dwattr DW$1015, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1015, DW_AT_accessibility(DW_ACCESS_public)
DW$1016	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1016, DW_AT_name("ENPROT"), DW_AT_symbol_name("_ENPROT")
	.dwattr DW$1016, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$1016, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1016, DW_AT_accessibility(DW_ACCESS_public)
DW$1017	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1017, DW_AT_name("MONPRIV"), DW_AT_symbol_name("_MONPRIV")
	.dwattr DW$1017, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$1017, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1017, DW_AT_accessibility(DW_ACCESS_public)
DW$1018	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1018, DW_AT_name("rsvd5"), DW_AT_symbol_name("_rsvd5")
	.dwattr DW$1018, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$1018, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1018, DW_AT_accessibility(DW_ACCESS_public)
DW$1019	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1019, DW_AT_name("EMU0SEL"), DW_AT_symbol_name("_EMU0SEL")
	.dwattr DW$1019, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x02)
	.dwattr DW$1019, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1019, DW_AT_accessibility(DW_ACCESS_public)
DW$1020	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1020, DW_AT_name("EMU1SEL"), DW_AT_symbol_name("_EMU1SEL")
	.dwattr DW$1020, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x02)
	.dwattr DW$1020, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1020, DW_AT_accessibility(DW_ACCESS_public)
DW$1021	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1021, DW_AT_name("rsvd6"), DW_AT_symbol_name("_rsvd6")
	.dwattr DW$1021, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x06)
	.dwattr DW$1021, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1021, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$63


DW$T$65	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$65, DW_AT_name("PARTID_BITS")
	.dwattr DW$T$65, DW_AT_byte_size(0x01)
DW$1022	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1022, DW_AT_name("PARTNO"), DW_AT_symbol_name("_PARTNO")
	.dwattr DW$1022, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x08)
	.dwattr DW$1022, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1022, DW_AT_accessibility(DW_ACCESS_public)
DW$1023	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1023, DW_AT_name("PARTTYPE"), DW_AT_symbol_name("_PARTTYPE")
	.dwattr DW$1023, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x08)
	.dwattr DW$1023, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1023, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$65


DW$T$69	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$69, DW_AT_name("CANME_BITS")
	.dwattr DW$T$69, DW_AT_byte_size(0x02)
DW$1024	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1024, DW_AT_name("ME0"), DW_AT_symbol_name("_ME0")
	.dwattr DW$1024, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$1024, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1024, DW_AT_accessibility(DW_ACCESS_public)
DW$1025	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1025, DW_AT_name("ME1"), DW_AT_symbol_name("_ME1")
	.dwattr DW$1025, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$1025, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1025, DW_AT_accessibility(DW_ACCESS_public)
DW$1026	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1026, DW_AT_name("ME2"), DW_AT_symbol_name("_ME2")
	.dwattr DW$1026, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$1026, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1026, DW_AT_accessibility(DW_ACCESS_public)
DW$1027	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1027, DW_AT_name("ME3"), DW_AT_symbol_name("_ME3")
	.dwattr DW$1027, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$1027, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1027, DW_AT_accessibility(DW_ACCESS_public)
DW$1028	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1028, DW_AT_name("ME4"), DW_AT_symbol_name("_ME4")
	.dwattr DW$1028, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$1028, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1028, DW_AT_accessibility(DW_ACCESS_public)
DW$1029	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1029, DW_AT_name("ME5"), DW_AT_symbol_name("_ME5")
	.dwattr DW$1029, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$1029, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1029, DW_AT_accessibility(DW_ACCESS_public)
DW$1030	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1030, DW_AT_name("ME6"), DW_AT_symbol_name("_ME6")
	.dwattr DW$1030, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$1030, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1030, DW_AT_accessibility(DW_ACCESS_public)
DW$1031	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1031, DW_AT_name("ME7"), DW_AT_symbol_name("_ME7")
	.dwattr DW$1031, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$1031, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1031, DW_AT_accessibility(DW_ACCESS_public)
DW$1032	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1032, DW_AT_name("ME8"), DW_AT_symbol_name("_ME8")
	.dwattr DW$1032, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$1032, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1032, DW_AT_accessibility(DW_ACCESS_public)
DW$1033	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1033, DW_AT_name("ME9"), DW_AT_symbol_name("_ME9")
	.dwattr DW$1033, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$1033, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1033, DW_AT_accessibility(DW_ACCESS_public)
DW$1034	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1034, DW_AT_name("ME10"), DW_AT_symbol_name("_ME10")
	.dwattr DW$1034, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$1034, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1034, DW_AT_accessibility(DW_ACCESS_public)
DW$1035	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1035, DW_AT_name("ME11"), DW_AT_symbol_name("_ME11")
	.dwattr DW$1035, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$1035, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1035, DW_AT_accessibility(DW_ACCESS_public)
DW$1036	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1036, DW_AT_name("ME12"), DW_AT_symbol_name("_ME12")
	.dwattr DW$1036, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$1036, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1036, DW_AT_accessibility(DW_ACCESS_public)
DW$1037	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1037, DW_AT_name("ME13"), DW_AT_symbol_name("_ME13")
	.dwattr DW$1037, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$1037, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1037, DW_AT_accessibility(DW_ACCESS_public)
DW$1038	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1038, DW_AT_name("ME14"), DW_AT_symbol_name("_ME14")
	.dwattr DW$1038, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$1038, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1038, DW_AT_accessibility(DW_ACCESS_public)
DW$1039	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1039, DW_AT_name("ME15"), DW_AT_symbol_name("_ME15")
	.dwattr DW$1039, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$1039, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1039, DW_AT_accessibility(DW_ACCESS_public)
DW$1040	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1040, DW_AT_name("ME16"), DW_AT_symbol_name("_ME16")
	.dwattr DW$1040, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$1040, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1040, DW_AT_accessibility(DW_ACCESS_public)
DW$1041	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1041, DW_AT_name("ME17"), DW_AT_symbol_name("_ME17")
	.dwattr DW$1041, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$1041, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1041, DW_AT_accessibility(DW_ACCESS_public)
DW$1042	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1042, DW_AT_name("ME18"), DW_AT_symbol_name("_ME18")
	.dwattr DW$1042, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$1042, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1042, DW_AT_accessibility(DW_ACCESS_public)
DW$1043	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1043, DW_AT_name("ME19"), DW_AT_symbol_name("_ME19")
	.dwattr DW$1043, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$1043, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1043, DW_AT_accessibility(DW_ACCESS_public)
DW$1044	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1044, DW_AT_name("ME20"), DW_AT_symbol_name("_ME20")
	.dwattr DW$1044, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$1044, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1044, DW_AT_accessibility(DW_ACCESS_public)
DW$1045	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1045, DW_AT_name("ME21"), DW_AT_symbol_name("_ME21")
	.dwattr DW$1045, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$1045, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1045, DW_AT_accessibility(DW_ACCESS_public)
DW$1046	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1046, DW_AT_name("ME22"), DW_AT_symbol_name("_ME22")
	.dwattr DW$1046, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$1046, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1046, DW_AT_accessibility(DW_ACCESS_public)
DW$1047	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1047, DW_AT_name("ME23"), DW_AT_symbol_name("_ME23")
	.dwattr DW$1047, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$1047, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1047, DW_AT_accessibility(DW_ACCESS_public)
DW$1048	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1048, DW_AT_name("ME24"), DW_AT_symbol_name("_ME24")
	.dwattr DW$1048, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$1048, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1048, DW_AT_accessibility(DW_ACCESS_public)
DW$1049	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1049, DW_AT_name("ME25"), DW_AT_symbol_name("_ME25")
	.dwattr DW$1049, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$1049, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1049, DW_AT_accessibility(DW_ACCESS_public)
DW$1050	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1050, DW_AT_name("ME26"), DW_AT_symbol_name("_ME26")
	.dwattr DW$1050, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$1050, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1050, DW_AT_accessibility(DW_ACCESS_public)
DW$1051	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1051, DW_AT_name("ME27"), DW_AT_symbol_name("_ME27")
	.dwattr DW$1051, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$1051, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1051, DW_AT_accessibility(DW_ACCESS_public)
DW$1052	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1052, DW_AT_name("ME28"), DW_AT_symbol_name("_ME28")
	.dwattr DW$1052, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$1052, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1052, DW_AT_accessibility(DW_ACCESS_public)
DW$1053	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1053, DW_AT_name("ME29"), DW_AT_symbol_name("_ME29")
	.dwattr DW$1053, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$1053, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1053, DW_AT_accessibility(DW_ACCESS_public)
DW$1054	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1054, DW_AT_name("ME30"), DW_AT_symbol_name("_ME30")
	.dwattr DW$1054, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$1054, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1054, DW_AT_accessibility(DW_ACCESS_public)
DW$1055	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1055, DW_AT_name("ME31"), DW_AT_symbol_name("_ME31")
	.dwattr DW$1055, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$1055, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1055, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$69


DW$T$71	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$71, DW_AT_name("CANMD_BITS")
	.dwattr DW$T$71, DW_AT_byte_size(0x02)
DW$1056	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1056, DW_AT_name("MD0"), DW_AT_symbol_name("_MD0")
	.dwattr DW$1056, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$1056, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1056, DW_AT_accessibility(DW_ACCESS_public)
DW$1057	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1057, DW_AT_name("MD1"), DW_AT_symbol_name("_MD1")
	.dwattr DW$1057, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$1057, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1057, DW_AT_accessibility(DW_ACCESS_public)
DW$1058	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1058, DW_AT_name("MD2"), DW_AT_symbol_name("_MD2")
	.dwattr DW$1058, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$1058, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1058, DW_AT_accessibility(DW_ACCESS_public)
DW$1059	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1059, DW_AT_name("MD3"), DW_AT_symbol_name("_MD3")
	.dwattr DW$1059, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$1059, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1059, DW_AT_accessibility(DW_ACCESS_public)
DW$1060	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1060, DW_AT_name("MD4"), DW_AT_symbol_name("_MD4")
	.dwattr DW$1060, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$1060, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1060, DW_AT_accessibility(DW_ACCESS_public)
DW$1061	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1061, DW_AT_name("MD5"), DW_AT_symbol_name("_MD5")
	.dwattr DW$1061, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$1061, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1061, DW_AT_accessibility(DW_ACCESS_public)
DW$1062	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1062, DW_AT_name("MD6"), DW_AT_symbol_name("_MD6")
	.dwattr DW$1062, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$1062, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1062, DW_AT_accessibility(DW_ACCESS_public)
DW$1063	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1063, DW_AT_name("MD7"), DW_AT_symbol_name("_MD7")
	.dwattr DW$1063, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$1063, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1063, DW_AT_accessibility(DW_ACCESS_public)
DW$1064	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1064, DW_AT_name("MD8"), DW_AT_symbol_name("_MD8")
	.dwattr DW$1064, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$1064, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1064, DW_AT_accessibility(DW_ACCESS_public)
DW$1065	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1065, DW_AT_name("MD9"), DW_AT_symbol_name("_MD9")
	.dwattr DW$1065, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$1065, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1065, DW_AT_accessibility(DW_ACCESS_public)
DW$1066	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1066, DW_AT_name("MD10"), DW_AT_symbol_name("_MD10")
	.dwattr DW$1066, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$1066, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1066, DW_AT_accessibility(DW_ACCESS_public)
DW$1067	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1067, DW_AT_name("MD11"), DW_AT_symbol_name("_MD11")
	.dwattr DW$1067, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$1067, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1067, DW_AT_accessibility(DW_ACCESS_public)
DW$1068	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1068, DW_AT_name("MD12"), DW_AT_symbol_name("_MD12")
	.dwattr DW$1068, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$1068, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1068, DW_AT_accessibility(DW_ACCESS_public)
DW$1069	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1069, DW_AT_name("MD13"), DW_AT_symbol_name("_MD13")
	.dwattr DW$1069, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$1069, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1069, DW_AT_accessibility(DW_ACCESS_public)
DW$1070	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1070, DW_AT_name("MD14"), DW_AT_symbol_name("_MD14")
	.dwattr DW$1070, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$1070, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1070, DW_AT_accessibility(DW_ACCESS_public)
DW$1071	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1071, DW_AT_name("MD15"), DW_AT_symbol_name("_MD15")
	.dwattr DW$1071, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$1071, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1071, DW_AT_accessibility(DW_ACCESS_public)
DW$1072	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1072, DW_AT_name("MD16"), DW_AT_symbol_name("_MD16")
	.dwattr DW$1072, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$1072, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1072, DW_AT_accessibility(DW_ACCESS_public)
DW$1073	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1073, DW_AT_name("MD17"), DW_AT_symbol_name("_MD17")
	.dwattr DW$1073, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$1073, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1073, DW_AT_accessibility(DW_ACCESS_public)
DW$1074	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1074, DW_AT_name("MD18"), DW_AT_symbol_name("_MD18")
	.dwattr DW$1074, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$1074, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1074, DW_AT_accessibility(DW_ACCESS_public)
DW$1075	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1075, DW_AT_name("MD19"), DW_AT_symbol_name("_MD19")
	.dwattr DW$1075, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$1075, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1075, DW_AT_accessibility(DW_ACCESS_public)
DW$1076	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1076, DW_AT_name("MD20"), DW_AT_symbol_name("_MD20")
	.dwattr DW$1076, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$1076, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1076, DW_AT_accessibility(DW_ACCESS_public)
DW$1077	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1077, DW_AT_name("MD21"), DW_AT_symbol_name("_MD21")
	.dwattr DW$1077, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$1077, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1077, DW_AT_accessibility(DW_ACCESS_public)
DW$1078	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1078, DW_AT_name("MD22"), DW_AT_symbol_name("_MD22")
	.dwattr DW$1078, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$1078, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1078, DW_AT_accessibility(DW_ACCESS_public)
DW$1079	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1079, DW_AT_name("MD23"), DW_AT_symbol_name("_MD23")
	.dwattr DW$1079, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$1079, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1079, DW_AT_accessibility(DW_ACCESS_public)
DW$1080	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1080, DW_AT_name("MD24"), DW_AT_symbol_name("_MD24")
	.dwattr DW$1080, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$1080, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1080, DW_AT_accessibility(DW_ACCESS_public)
DW$1081	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1081, DW_AT_name("MD25"), DW_AT_symbol_name("_MD25")
	.dwattr DW$1081, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$1081, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1081, DW_AT_accessibility(DW_ACCESS_public)
DW$1082	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1082, DW_AT_name("MD26"), DW_AT_symbol_name("_MD26")
	.dwattr DW$1082, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$1082, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1082, DW_AT_accessibility(DW_ACCESS_public)
DW$1083	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1083, DW_AT_name("MD27"), DW_AT_symbol_name("_MD27")
	.dwattr DW$1083, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$1083, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1083, DW_AT_accessibility(DW_ACCESS_public)
DW$1084	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1084, DW_AT_name("MD28"), DW_AT_symbol_name("_MD28")
	.dwattr DW$1084, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$1084, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1084, DW_AT_accessibility(DW_ACCESS_public)
DW$1085	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1085, DW_AT_name("MD29"), DW_AT_symbol_name("_MD29")
	.dwattr DW$1085, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$1085, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1085, DW_AT_accessibility(DW_ACCESS_public)
DW$1086	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1086, DW_AT_name("MD30"), DW_AT_symbol_name("_MD30")
	.dwattr DW$1086, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$1086, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1086, DW_AT_accessibility(DW_ACCESS_public)
DW$1087	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1087, DW_AT_name("MD31"), DW_AT_symbol_name("_MD31")
	.dwattr DW$1087, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$1087, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1087, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$71


DW$T$73	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$73, DW_AT_name("CANTRS_BITS")
	.dwattr DW$T$73, DW_AT_byte_size(0x02)
DW$1088	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1088, DW_AT_name("TRS0"), DW_AT_symbol_name("_TRS0")
	.dwattr DW$1088, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$1088, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1088, DW_AT_accessibility(DW_ACCESS_public)
DW$1089	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1089, DW_AT_name("TRS1"), DW_AT_symbol_name("_TRS1")
	.dwattr DW$1089, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$1089, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1089, DW_AT_accessibility(DW_ACCESS_public)
DW$1090	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1090, DW_AT_name("TRS2"), DW_AT_symbol_name("_TRS2")
	.dwattr DW$1090, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$1090, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1090, DW_AT_accessibility(DW_ACCESS_public)
DW$1091	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1091, DW_AT_name("TRS3"), DW_AT_symbol_name("_TRS3")
	.dwattr DW$1091, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$1091, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1091, DW_AT_accessibility(DW_ACCESS_public)
DW$1092	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1092, DW_AT_name("TRS4"), DW_AT_symbol_name("_TRS4")
	.dwattr DW$1092, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$1092, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1092, DW_AT_accessibility(DW_ACCESS_public)
DW$1093	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1093, DW_AT_name("TRS5"), DW_AT_symbol_name("_TRS5")
	.dwattr DW$1093, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$1093, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1093, DW_AT_accessibility(DW_ACCESS_public)
DW$1094	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1094, DW_AT_name("TRS6"), DW_AT_symbol_name("_TRS6")
	.dwattr DW$1094, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$1094, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1094, DW_AT_accessibility(DW_ACCESS_public)
DW$1095	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1095, DW_AT_name("TRS7"), DW_AT_symbol_name("_TRS7")
	.dwattr DW$1095, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$1095, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1095, DW_AT_accessibility(DW_ACCESS_public)
DW$1096	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1096, DW_AT_name("TRS8"), DW_AT_symbol_name("_TRS8")
	.dwattr DW$1096, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$1096, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1096, DW_AT_accessibility(DW_ACCESS_public)
DW$1097	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1097, DW_AT_name("TRS9"), DW_AT_symbol_name("_TRS9")
	.dwattr DW$1097, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$1097, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1097, DW_AT_accessibility(DW_ACCESS_public)
DW$1098	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1098, DW_AT_name("TRS10"), DW_AT_symbol_name("_TRS10")
	.dwattr DW$1098, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$1098, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1098, DW_AT_accessibility(DW_ACCESS_public)
DW$1099	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1099, DW_AT_name("TRS11"), DW_AT_symbol_name("_TRS11")
	.dwattr DW$1099, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$1099, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1099, DW_AT_accessibility(DW_ACCESS_public)
DW$1100	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1100, DW_AT_name("TRS12"), DW_AT_symbol_name("_TRS12")
	.dwattr DW$1100, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$1100, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1100, DW_AT_accessibility(DW_ACCESS_public)
DW$1101	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1101, DW_AT_name("TRS13"), DW_AT_symbol_name("_TRS13")
	.dwattr DW$1101, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$1101, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1101, DW_AT_accessibility(DW_ACCESS_public)
DW$1102	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1102, DW_AT_name("TRS14"), DW_AT_symbol_name("_TRS14")
	.dwattr DW$1102, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$1102, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1102, DW_AT_accessibility(DW_ACCESS_public)
DW$1103	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1103, DW_AT_name("TRS15"), DW_AT_symbol_name("_TRS15")
	.dwattr DW$1103, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$1103, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1103, DW_AT_accessibility(DW_ACCESS_public)
DW$1104	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1104, DW_AT_name("TRS16"), DW_AT_symbol_name("_TRS16")
	.dwattr DW$1104, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$1104, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1104, DW_AT_accessibility(DW_ACCESS_public)
DW$1105	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1105, DW_AT_name("TRS17"), DW_AT_symbol_name("_TRS17")
	.dwattr DW$1105, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$1105, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1105, DW_AT_accessibility(DW_ACCESS_public)
DW$1106	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1106, DW_AT_name("TRS18"), DW_AT_symbol_name("_TRS18")
	.dwattr DW$1106, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$1106, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1106, DW_AT_accessibility(DW_ACCESS_public)
DW$1107	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1107, DW_AT_name("TRS19"), DW_AT_symbol_name("_TRS19")
	.dwattr DW$1107, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$1107, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1107, DW_AT_accessibility(DW_ACCESS_public)
DW$1108	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1108, DW_AT_name("TRS20"), DW_AT_symbol_name("_TRS20")
	.dwattr DW$1108, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$1108, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1108, DW_AT_accessibility(DW_ACCESS_public)
DW$1109	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1109, DW_AT_name("TRS21"), DW_AT_symbol_name("_TRS21")
	.dwattr DW$1109, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$1109, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1109, DW_AT_accessibility(DW_ACCESS_public)
DW$1110	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1110, DW_AT_name("TRS22"), DW_AT_symbol_name("_TRS22")
	.dwattr DW$1110, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$1110, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1110, DW_AT_accessibility(DW_ACCESS_public)
DW$1111	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1111, DW_AT_name("TRS23"), DW_AT_symbol_name("_TRS23")
	.dwattr DW$1111, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$1111, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1111, DW_AT_accessibility(DW_ACCESS_public)
DW$1112	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1112, DW_AT_name("TRS24"), DW_AT_symbol_name("_TRS24")
	.dwattr DW$1112, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$1112, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1112, DW_AT_accessibility(DW_ACCESS_public)
DW$1113	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1113, DW_AT_name("TRS25"), DW_AT_symbol_name("_TRS25")
	.dwattr DW$1113, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$1113, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1113, DW_AT_accessibility(DW_ACCESS_public)
DW$1114	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1114, DW_AT_name("TRS26"), DW_AT_symbol_name("_TRS26")
	.dwattr DW$1114, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$1114, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1114, DW_AT_accessibility(DW_ACCESS_public)
DW$1115	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1115, DW_AT_name("TRS27"), DW_AT_symbol_name("_TRS27")
	.dwattr DW$1115, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$1115, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1115, DW_AT_accessibility(DW_ACCESS_public)
DW$1116	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1116, DW_AT_name("TRS28"), DW_AT_symbol_name("_TRS28")
	.dwattr DW$1116, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$1116, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1116, DW_AT_accessibility(DW_ACCESS_public)
DW$1117	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1117, DW_AT_name("TRS29"), DW_AT_symbol_name("_TRS29")
	.dwattr DW$1117, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$1117, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1117, DW_AT_accessibility(DW_ACCESS_public)
DW$1118	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1118, DW_AT_name("TRS30"), DW_AT_symbol_name("_TRS30")
	.dwattr DW$1118, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$1118, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1118, DW_AT_accessibility(DW_ACCESS_public)
DW$1119	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1119, DW_AT_name("TRS31"), DW_AT_symbol_name("_TRS31")
	.dwattr DW$1119, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$1119, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1119, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$73


DW$T$75	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$75, DW_AT_name("CANTRR_BITS")
	.dwattr DW$T$75, DW_AT_byte_size(0x02)
DW$1120	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1120, DW_AT_name("TRR0"), DW_AT_symbol_name("_TRR0")
	.dwattr DW$1120, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$1120, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1120, DW_AT_accessibility(DW_ACCESS_public)
DW$1121	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1121, DW_AT_name("TRR1"), DW_AT_symbol_name("_TRR1")
	.dwattr DW$1121, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$1121, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1121, DW_AT_accessibility(DW_ACCESS_public)
DW$1122	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1122, DW_AT_name("TRR2"), DW_AT_symbol_name("_TRR2")
	.dwattr DW$1122, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$1122, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1122, DW_AT_accessibility(DW_ACCESS_public)
DW$1123	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1123, DW_AT_name("TRR3"), DW_AT_symbol_name("_TRR3")
	.dwattr DW$1123, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$1123, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1123, DW_AT_accessibility(DW_ACCESS_public)
DW$1124	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1124, DW_AT_name("TRR4"), DW_AT_symbol_name("_TRR4")
	.dwattr DW$1124, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$1124, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1124, DW_AT_accessibility(DW_ACCESS_public)
DW$1125	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1125, DW_AT_name("TRR5"), DW_AT_symbol_name("_TRR5")
	.dwattr DW$1125, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$1125, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1125, DW_AT_accessibility(DW_ACCESS_public)
DW$1126	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1126, DW_AT_name("TRR6"), DW_AT_symbol_name("_TRR6")
	.dwattr DW$1126, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$1126, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1126, DW_AT_accessibility(DW_ACCESS_public)
DW$1127	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1127, DW_AT_name("TRR7"), DW_AT_symbol_name("_TRR7")
	.dwattr DW$1127, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$1127, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1127, DW_AT_accessibility(DW_ACCESS_public)
DW$1128	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1128, DW_AT_name("TRR8"), DW_AT_symbol_name("_TRR8")
	.dwattr DW$1128, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$1128, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1128, DW_AT_accessibility(DW_ACCESS_public)
DW$1129	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1129, DW_AT_name("TRR9"), DW_AT_symbol_name("_TRR9")
	.dwattr DW$1129, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$1129, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1129, DW_AT_accessibility(DW_ACCESS_public)
DW$1130	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1130, DW_AT_name("TRR10"), DW_AT_symbol_name("_TRR10")
	.dwattr DW$1130, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$1130, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1130, DW_AT_accessibility(DW_ACCESS_public)
DW$1131	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1131, DW_AT_name("TRR11"), DW_AT_symbol_name("_TRR11")
	.dwattr DW$1131, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$1131, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1131, DW_AT_accessibility(DW_ACCESS_public)
DW$1132	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1132, DW_AT_name("TRR12"), DW_AT_symbol_name("_TRR12")
	.dwattr DW$1132, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$1132, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1132, DW_AT_accessibility(DW_ACCESS_public)
DW$1133	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1133, DW_AT_name("TRR13"), DW_AT_symbol_name("_TRR13")
	.dwattr DW$1133, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$1133, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1133, DW_AT_accessibility(DW_ACCESS_public)
DW$1134	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1134, DW_AT_name("TRR14"), DW_AT_symbol_name("_TRR14")
	.dwattr DW$1134, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$1134, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1134, DW_AT_accessibility(DW_ACCESS_public)
DW$1135	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1135, DW_AT_name("TRR15"), DW_AT_symbol_name("_TRR15")
	.dwattr DW$1135, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$1135, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1135, DW_AT_accessibility(DW_ACCESS_public)
DW$1136	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1136, DW_AT_name("TRR16"), DW_AT_symbol_name("_TRR16")
	.dwattr DW$1136, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$1136, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1136, DW_AT_accessibility(DW_ACCESS_public)
DW$1137	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1137, DW_AT_name("TRR17"), DW_AT_symbol_name("_TRR17")
	.dwattr DW$1137, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$1137, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1137, DW_AT_accessibility(DW_ACCESS_public)
DW$1138	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1138, DW_AT_name("TRR18"), DW_AT_symbol_name("_TRR18")
	.dwattr DW$1138, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$1138, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1138, DW_AT_accessibility(DW_ACCESS_public)
DW$1139	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1139, DW_AT_name("TRR19"), DW_AT_symbol_name("_TRR19")
	.dwattr DW$1139, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$1139, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1139, DW_AT_accessibility(DW_ACCESS_public)
DW$1140	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1140, DW_AT_name("TRR20"), DW_AT_symbol_name("_TRR20")
	.dwattr DW$1140, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$1140, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1140, DW_AT_accessibility(DW_ACCESS_public)
DW$1141	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1141, DW_AT_name("TRR21"), DW_AT_symbol_name("_TRR21")
	.dwattr DW$1141, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$1141, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1141, DW_AT_accessibility(DW_ACCESS_public)
DW$1142	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1142, DW_AT_name("TRR22"), DW_AT_symbol_name("_TRR22")
	.dwattr DW$1142, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$1142, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1142, DW_AT_accessibility(DW_ACCESS_public)
DW$1143	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1143, DW_AT_name("TRR23"), DW_AT_symbol_name("_TRR23")
	.dwattr DW$1143, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$1143, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1143, DW_AT_accessibility(DW_ACCESS_public)
DW$1144	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1144, DW_AT_name("TRR24"), DW_AT_symbol_name("_TRR24")
	.dwattr DW$1144, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$1144, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1144, DW_AT_accessibility(DW_ACCESS_public)
DW$1145	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1145, DW_AT_name("TRR25"), DW_AT_symbol_name("_TRR25")
	.dwattr DW$1145, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$1145, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1145, DW_AT_accessibility(DW_ACCESS_public)
DW$1146	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1146, DW_AT_name("TRR26"), DW_AT_symbol_name("_TRR26")
	.dwattr DW$1146, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$1146, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1146, DW_AT_accessibility(DW_ACCESS_public)
DW$1147	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1147, DW_AT_name("TRR27"), DW_AT_symbol_name("_TRR27")
	.dwattr DW$1147, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$1147, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1147, DW_AT_accessibility(DW_ACCESS_public)
DW$1148	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1148, DW_AT_name("TRR28"), DW_AT_symbol_name("_TRR28")
	.dwattr DW$1148, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$1148, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1148, DW_AT_accessibility(DW_ACCESS_public)
DW$1149	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1149, DW_AT_name("TRR29"), DW_AT_symbol_name("_TRR29")
	.dwattr DW$1149, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$1149, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1149, DW_AT_accessibility(DW_ACCESS_public)
DW$1150	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1150, DW_AT_name("TRR30"), DW_AT_symbol_name("_TRR30")
	.dwattr DW$1150, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$1150, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1150, DW_AT_accessibility(DW_ACCESS_public)
DW$1151	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1151, DW_AT_name("TRR31"), DW_AT_symbol_name("_TRR31")
	.dwattr DW$1151, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$1151, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1151, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$75


DW$T$77	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$77, DW_AT_name("CANTA_BITS")
	.dwattr DW$T$77, DW_AT_byte_size(0x02)
DW$1152	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1152, DW_AT_name("TA0"), DW_AT_symbol_name("_TA0")
	.dwattr DW$1152, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$1152, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1152, DW_AT_accessibility(DW_ACCESS_public)
DW$1153	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1153, DW_AT_name("TA1"), DW_AT_symbol_name("_TA1")
	.dwattr DW$1153, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$1153, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1153, DW_AT_accessibility(DW_ACCESS_public)
DW$1154	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1154, DW_AT_name("TA2"), DW_AT_symbol_name("_TA2")
	.dwattr DW$1154, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$1154, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1154, DW_AT_accessibility(DW_ACCESS_public)
DW$1155	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1155, DW_AT_name("TA3"), DW_AT_symbol_name("_TA3")
	.dwattr DW$1155, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$1155, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1155, DW_AT_accessibility(DW_ACCESS_public)
DW$1156	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1156, DW_AT_name("TA4"), DW_AT_symbol_name("_TA4")
	.dwattr DW$1156, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$1156, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1156, DW_AT_accessibility(DW_ACCESS_public)
DW$1157	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1157, DW_AT_name("TA5"), DW_AT_symbol_name("_TA5")
	.dwattr DW$1157, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$1157, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1157, DW_AT_accessibility(DW_ACCESS_public)
DW$1158	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1158, DW_AT_name("TA6"), DW_AT_symbol_name("_TA6")
	.dwattr DW$1158, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$1158, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1158, DW_AT_accessibility(DW_ACCESS_public)
DW$1159	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1159, DW_AT_name("TA7"), DW_AT_symbol_name("_TA7")
	.dwattr DW$1159, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$1159, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1159, DW_AT_accessibility(DW_ACCESS_public)
DW$1160	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1160, DW_AT_name("TA8"), DW_AT_symbol_name("_TA8")
	.dwattr DW$1160, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$1160, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1160, DW_AT_accessibility(DW_ACCESS_public)
DW$1161	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1161, DW_AT_name("TA9"), DW_AT_symbol_name("_TA9")
	.dwattr DW$1161, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$1161, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1161, DW_AT_accessibility(DW_ACCESS_public)
DW$1162	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1162, DW_AT_name("TA10"), DW_AT_symbol_name("_TA10")
	.dwattr DW$1162, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$1162, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1162, DW_AT_accessibility(DW_ACCESS_public)
DW$1163	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1163, DW_AT_name("TA11"), DW_AT_symbol_name("_TA11")
	.dwattr DW$1163, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$1163, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1163, DW_AT_accessibility(DW_ACCESS_public)
DW$1164	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1164, DW_AT_name("TA12"), DW_AT_symbol_name("_TA12")
	.dwattr DW$1164, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$1164, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1164, DW_AT_accessibility(DW_ACCESS_public)
DW$1165	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1165, DW_AT_name("TA13"), DW_AT_symbol_name("_TA13")
	.dwattr DW$1165, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$1165, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1165, DW_AT_accessibility(DW_ACCESS_public)
DW$1166	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1166, DW_AT_name("TA14"), DW_AT_symbol_name("_TA14")
	.dwattr DW$1166, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$1166, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1166, DW_AT_accessibility(DW_ACCESS_public)
DW$1167	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1167, DW_AT_name("TA15"), DW_AT_symbol_name("_TA15")
	.dwattr DW$1167, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$1167, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1167, DW_AT_accessibility(DW_ACCESS_public)
DW$1168	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1168, DW_AT_name("TA16"), DW_AT_symbol_name("_TA16")
	.dwattr DW$1168, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$1168, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1168, DW_AT_accessibility(DW_ACCESS_public)
DW$1169	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1169, DW_AT_name("TA17"), DW_AT_symbol_name("_TA17")
	.dwattr DW$1169, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$1169, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1169, DW_AT_accessibility(DW_ACCESS_public)
DW$1170	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1170, DW_AT_name("TA18"), DW_AT_symbol_name("_TA18")
	.dwattr DW$1170, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$1170, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1170, DW_AT_accessibility(DW_ACCESS_public)
DW$1171	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1171, DW_AT_name("TA19"), DW_AT_symbol_name("_TA19")
	.dwattr DW$1171, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$1171, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1171, DW_AT_accessibility(DW_ACCESS_public)
DW$1172	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1172, DW_AT_name("TA20"), DW_AT_symbol_name("_TA20")
	.dwattr DW$1172, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$1172, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1172, DW_AT_accessibility(DW_ACCESS_public)
DW$1173	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1173, DW_AT_name("TA21"), DW_AT_symbol_name("_TA21")
	.dwattr DW$1173, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$1173, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1173, DW_AT_accessibility(DW_ACCESS_public)
DW$1174	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1174, DW_AT_name("TA22"), DW_AT_symbol_name("_TA22")
	.dwattr DW$1174, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$1174, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1174, DW_AT_accessibility(DW_ACCESS_public)
DW$1175	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1175, DW_AT_name("TA23"), DW_AT_symbol_name("_TA23")
	.dwattr DW$1175, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$1175, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1175, DW_AT_accessibility(DW_ACCESS_public)
DW$1176	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1176, DW_AT_name("TA24"), DW_AT_symbol_name("_TA24")
	.dwattr DW$1176, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$1176, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1176, DW_AT_accessibility(DW_ACCESS_public)
DW$1177	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1177, DW_AT_name("TA25"), DW_AT_symbol_name("_TA25")
	.dwattr DW$1177, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$1177, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1177, DW_AT_accessibility(DW_ACCESS_public)
DW$1178	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1178, DW_AT_name("TA26"), DW_AT_symbol_name("_TA26")
	.dwattr DW$1178, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$1178, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1178, DW_AT_accessibility(DW_ACCESS_public)
DW$1179	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1179, DW_AT_name("TA27"), DW_AT_symbol_name("_TA27")
	.dwattr DW$1179, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$1179, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1179, DW_AT_accessibility(DW_ACCESS_public)
DW$1180	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1180, DW_AT_name("TA28"), DW_AT_symbol_name("_TA28")
	.dwattr DW$1180, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$1180, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1180, DW_AT_accessibility(DW_ACCESS_public)
DW$1181	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1181, DW_AT_name("TA29"), DW_AT_symbol_name("_TA29")
	.dwattr DW$1181, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$1181, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1181, DW_AT_accessibility(DW_ACCESS_public)
DW$1182	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1182, DW_AT_name("TA30"), DW_AT_symbol_name("_TA30")
	.dwattr DW$1182, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$1182, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1182, DW_AT_accessibility(DW_ACCESS_public)
DW$1183	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1183, DW_AT_name("TA31"), DW_AT_symbol_name("_TA31")
	.dwattr DW$1183, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$1183, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1183, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$77


DW$T$79	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$79, DW_AT_name("CANAA_BITS")
	.dwattr DW$T$79, DW_AT_byte_size(0x02)
DW$1184	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1184, DW_AT_name("AA0"), DW_AT_symbol_name("_AA0")
	.dwattr DW$1184, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$1184, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1184, DW_AT_accessibility(DW_ACCESS_public)
DW$1185	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1185, DW_AT_name("AA1"), DW_AT_symbol_name("_AA1")
	.dwattr DW$1185, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$1185, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1185, DW_AT_accessibility(DW_ACCESS_public)
DW$1186	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1186, DW_AT_name("AA2"), DW_AT_symbol_name("_AA2")
	.dwattr DW$1186, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$1186, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1186, DW_AT_accessibility(DW_ACCESS_public)
DW$1187	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1187, DW_AT_name("AA3"), DW_AT_symbol_name("_AA3")
	.dwattr DW$1187, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$1187, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1187, DW_AT_accessibility(DW_ACCESS_public)
DW$1188	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1188, DW_AT_name("AA4"), DW_AT_symbol_name("_AA4")
	.dwattr DW$1188, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$1188, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1188, DW_AT_accessibility(DW_ACCESS_public)
DW$1189	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1189, DW_AT_name("AA5"), DW_AT_symbol_name("_AA5")
	.dwattr DW$1189, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$1189, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1189, DW_AT_accessibility(DW_ACCESS_public)
DW$1190	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1190, DW_AT_name("AA6"), DW_AT_symbol_name("_AA6")
	.dwattr DW$1190, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$1190, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1190, DW_AT_accessibility(DW_ACCESS_public)
DW$1191	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1191, DW_AT_name("AA7"), DW_AT_symbol_name("_AA7")
	.dwattr DW$1191, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$1191, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1191, DW_AT_accessibility(DW_ACCESS_public)
DW$1192	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1192, DW_AT_name("AA8"), DW_AT_symbol_name("_AA8")
	.dwattr DW$1192, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$1192, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1192, DW_AT_accessibility(DW_ACCESS_public)
DW$1193	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1193, DW_AT_name("AA9"), DW_AT_symbol_name("_AA9")
	.dwattr DW$1193, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$1193, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1193, DW_AT_accessibility(DW_ACCESS_public)
DW$1194	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1194, DW_AT_name("AA10"), DW_AT_symbol_name("_AA10")
	.dwattr DW$1194, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$1194, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1194, DW_AT_accessibility(DW_ACCESS_public)
DW$1195	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1195, DW_AT_name("AA11"), DW_AT_symbol_name("_AA11")
	.dwattr DW$1195, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$1195, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1195, DW_AT_accessibility(DW_ACCESS_public)
DW$1196	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1196, DW_AT_name("AA12"), DW_AT_symbol_name("_AA12")
	.dwattr DW$1196, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$1196, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1196, DW_AT_accessibility(DW_ACCESS_public)
DW$1197	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1197, DW_AT_name("AA13"), DW_AT_symbol_name("_AA13")
	.dwattr DW$1197, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$1197, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1197, DW_AT_accessibility(DW_ACCESS_public)
DW$1198	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1198, DW_AT_name("AA14"), DW_AT_symbol_name("_AA14")
	.dwattr DW$1198, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$1198, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1198, DW_AT_accessibility(DW_ACCESS_public)
DW$1199	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1199, DW_AT_name("AA15"), DW_AT_symbol_name("_AA15")
	.dwattr DW$1199, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$1199, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1199, DW_AT_accessibility(DW_ACCESS_public)
DW$1200	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1200, DW_AT_name("AA16"), DW_AT_symbol_name("_AA16")
	.dwattr DW$1200, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$1200, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1200, DW_AT_accessibility(DW_ACCESS_public)
DW$1201	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1201, DW_AT_name("AA17"), DW_AT_symbol_name("_AA17")
	.dwattr DW$1201, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$1201, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1201, DW_AT_accessibility(DW_ACCESS_public)
DW$1202	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1202, DW_AT_name("AA18"), DW_AT_symbol_name("_AA18")
	.dwattr DW$1202, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$1202, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1202, DW_AT_accessibility(DW_ACCESS_public)
DW$1203	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1203, DW_AT_name("AA19"), DW_AT_symbol_name("_AA19")
	.dwattr DW$1203, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$1203, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1203, DW_AT_accessibility(DW_ACCESS_public)
DW$1204	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1204, DW_AT_name("AA20"), DW_AT_symbol_name("_AA20")
	.dwattr DW$1204, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$1204, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1204, DW_AT_accessibility(DW_ACCESS_public)
DW$1205	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1205, DW_AT_name("AA21"), DW_AT_symbol_name("_AA21")
	.dwattr DW$1205, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$1205, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1205, DW_AT_accessibility(DW_ACCESS_public)
DW$1206	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1206, DW_AT_name("AA22"), DW_AT_symbol_name("_AA22")
	.dwattr DW$1206, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$1206, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1206, DW_AT_accessibility(DW_ACCESS_public)
DW$1207	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1207, DW_AT_name("AA23"), DW_AT_symbol_name("_AA23")
	.dwattr DW$1207, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$1207, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1207, DW_AT_accessibility(DW_ACCESS_public)
DW$1208	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1208, DW_AT_name("AA24"), DW_AT_symbol_name("_AA24")
	.dwattr DW$1208, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$1208, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1208, DW_AT_accessibility(DW_ACCESS_public)
DW$1209	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1209, DW_AT_name("AA25"), DW_AT_symbol_name("_AA25")
	.dwattr DW$1209, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$1209, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1209, DW_AT_accessibility(DW_ACCESS_public)
DW$1210	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1210, DW_AT_name("AA26"), DW_AT_symbol_name("_AA26")
	.dwattr DW$1210, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$1210, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1210, DW_AT_accessibility(DW_ACCESS_public)
DW$1211	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1211, DW_AT_name("AA27"), DW_AT_symbol_name("_AA27")
	.dwattr DW$1211, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$1211, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1211, DW_AT_accessibility(DW_ACCESS_public)
DW$1212	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1212, DW_AT_name("AA28"), DW_AT_symbol_name("_AA28")
	.dwattr DW$1212, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$1212, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1212, DW_AT_accessibility(DW_ACCESS_public)
DW$1213	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1213, DW_AT_name("AA29"), DW_AT_symbol_name("_AA29")
	.dwattr DW$1213, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$1213, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1213, DW_AT_accessibility(DW_ACCESS_public)
DW$1214	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1214, DW_AT_name("AA30"), DW_AT_symbol_name("_AA30")
	.dwattr DW$1214, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$1214, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1214, DW_AT_accessibility(DW_ACCESS_public)
DW$1215	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1215, DW_AT_name("AA31"), DW_AT_symbol_name("_AA31")
	.dwattr DW$1215, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$1215, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1215, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$79


DW$T$81	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$81, DW_AT_name("CANRMP_BITS")
	.dwattr DW$T$81, DW_AT_byte_size(0x02)
DW$1216	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1216, DW_AT_name("RMP0"), DW_AT_symbol_name("_RMP0")
	.dwattr DW$1216, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$1216, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1216, DW_AT_accessibility(DW_ACCESS_public)
DW$1217	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1217, DW_AT_name("RMP1"), DW_AT_symbol_name("_RMP1")
	.dwattr DW$1217, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$1217, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1217, DW_AT_accessibility(DW_ACCESS_public)
DW$1218	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1218, DW_AT_name("RMP2"), DW_AT_symbol_name("_RMP2")
	.dwattr DW$1218, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$1218, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1218, DW_AT_accessibility(DW_ACCESS_public)
DW$1219	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1219, DW_AT_name("RMP3"), DW_AT_symbol_name("_RMP3")
	.dwattr DW$1219, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$1219, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1219, DW_AT_accessibility(DW_ACCESS_public)
DW$1220	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1220, DW_AT_name("RMP4"), DW_AT_symbol_name("_RMP4")
	.dwattr DW$1220, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$1220, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1220, DW_AT_accessibility(DW_ACCESS_public)
DW$1221	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1221, DW_AT_name("RMP5"), DW_AT_symbol_name("_RMP5")
	.dwattr DW$1221, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$1221, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1221, DW_AT_accessibility(DW_ACCESS_public)
DW$1222	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1222, DW_AT_name("RMP6"), DW_AT_symbol_name("_RMP6")
	.dwattr DW$1222, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$1222, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1222, DW_AT_accessibility(DW_ACCESS_public)
DW$1223	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1223, DW_AT_name("RMP7"), DW_AT_symbol_name("_RMP7")
	.dwattr DW$1223, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$1223, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1223, DW_AT_accessibility(DW_ACCESS_public)
DW$1224	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1224, DW_AT_name("RMP8"), DW_AT_symbol_name("_RMP8")
	.dwattr DW$1224, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$1224, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1224, DW_AT_accessibility(DW_ACCESS_public)
DW$1225	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1225, DW_AT_name("RMP9"), DW_AT_symbol_name("_RMP9")
	.dwattr DW$1225, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$1225, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1225, DW_AT_accessibility(DW_ACCESS_public)
DW$1226	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1226, DW_AT_name("RMP10"), DW_AT_symbol_name("_RMP10")
	.dwattr DW$1226, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$1226, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1226, DW_AT_accessibility(DW_ACCESS_public)
DW$1227	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1227, DW_AT_name("RMP11"), DW_AT_symbol_name("_RMP11")
	.dwattr DW$1227, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$1227, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1227, DW_AT_accessibility(DW_ACCESS_public)
DW$1228	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1228, DW_AT_name("RMP12"), DW_AT_symbol_name("_RMP12")
	.dwattr DW$1228, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$1228, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1228, DW_AT_accessibility(DW_ACCESS_public)
DW$1229	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1229, DW_AT_name("RMP13"), DW_AT_symbol_name("_RMP13")
	.dwattr DW$1229, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$1229, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1229, DW_AT_accessibility(DW_ACCESS_public)
DW$1230	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1230, DW_AT_name("RMP14"), DW_AT_symbol_name("_RMP14")
	.dwattr DW$1230, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$1230, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1230, DW_AT_accessibility(DW_ACCESS_public)
DW$1231	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1231, DW_AT_name("RMP15"), DW_AT_symbol_name("_RMP15")
	.dwattr DW$1231, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$1231, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1231, DW_AT_accessibility(DW_ACCESS_public)
DW$1232	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1232, DW_AT_name("RMP16"), DW_AT_symbol_name("_RMP16")
	.dwattr DW$1232, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$1232, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1232, DW_AT_accessibility(DW_ACCESS_public)
DW$1233	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1233, DW_AT_name("RMP17"), DW_AT_symbol_name("_RMP17")
	.dwattr DW$1233, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$1233, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1233, DW_AT_accessibility(DW_ACCESS_public)
DW$1234	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1234, DW_AT_name("RMP18"), DW_AT_symbol_name("_RMP18")
	.dwattr DW$1234, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$1234, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1234, DW_AT_accessibility(DW_ACCESS_public)
DW$1235	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1235, DW_AT_name("RMP19"), DW_AT_symbol_name("_RMP19")
	.dwattr DW$1235, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$1235, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1235, DW_AT_accessibility(DW_ACCESS_public)
DW$1236	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1236, DW_AT_name("RMP20"), DW_AT_symbol_name("_RMP20")
	.dwattr DW$1236, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$1236, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1236, DW_AT_accessibility(DW_ACCESS_public)
DW$1237	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1237, DW_AT_name("RMP21"), DW_AT_symbol_name("_RMP21")
	.dwattr DW$1237, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$1237, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1237, DW_AT_accessibility(DW_ACCESS_public)
DW$1238	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1238, DW_AT_name("RMP22"), DW_AT_symbol_name("_RMP22")
	.dwattr DW$1238, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$1238, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1238, DW_AT_accessibility(DW_ACCESS_public)
DW$1239	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1239, DW_AT_name("RMP23"), DW_AT_symbol_name("_RMP23")
	.dwattr DW$1239, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$1239, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1239, DW_AT_accessibility(DW_ACCESS_public)
DW$1240	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1240, DW_AT_name("RMP24"), DW_AT_symbol_name("_RMP24")
	.dwattr DW$1240, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$1240, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1240, DW_AT_accessibility(DW_ACCESS_public)
DW$1241	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1241, DW_AT_name("RMP25"), DW_AT_symbol_name("_RMP25")
	.dwattr DW$1241, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$1241, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1241, DW_AT_accessibility(DW_ACCESS_public)
DW$1242	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1242, DW_AT_name("RMP26"), DW_AT_symbol_name("_RMP26")
	.dwattr DW$1242, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$1242, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1242, DW_AT_accessibility(DW_ACCESS_public)
DW$1243	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1243, DW_AT_name("RMP27"), DW_AT_symbol_name("_RMP27")
	.dwattr DW$1243, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$1243, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1243, DW_AT_accessibility(DW_ACCESS_public)
DW$1244	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1244, DW_AT_name("RMP28"), DW_AT_symbol_name("_RMP28")
	.dwattr DW$1244, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$1244, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1244, DW_AT_accessibility(DW_ACCESS_public)
DW$1245	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1245, DW_AT_name("RMP29"), DW_AT_symbol_name("_RMP29")
	.dwattr DW$1245, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$1245, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1245, DW_AT_accessibility(DW_ACCESS_public)
DW$1246	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1246, DW_AT_name("RMP30"), DW_AT_symbol_name("_RMP30")
	.dwattr DW$1246, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$1246, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1246, DW_AT_accessibility(DW_ACCESS_public)
DW$1247	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1247, DW_AT_name("RMP31"), DW_AT_symbol_name("_RMP31")
	.dwattr DW$1247, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$1247, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1247, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$81


DW$T$83	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$83, DW_AT_name("CANRML_BITS")
	.dwattr DW$T$83, DW_AT_byte_size(0x02)
DW$1248	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1248, DW_AT_name("RML0"), DW_AT_symbol_name("_RML0")
	.dwattr DW$1248, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$1248, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1248, DW_AT_accessibility(DW_ACCESS_public)
DW$1249	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1249, DW_AT_name("RML1"), DW_AT_symbol_name("_RML1")
	.dwattr DW$1249, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$1249, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1249, DW_AT_accessibility(DW_ACCESS_public)
DW$1250	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1250, DW_AT_name("RML2"), DW_AT_symbol_name("_RML2")
	.dwattr DW$1250, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$1250, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1250, DW_AT_accessibility(DW_ACCESS_public)
DW$1251	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1251, DW_AT_name("RML3"), DW_AT_symbol_name("_RML3")
	.dwattr DW$1251, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$1251, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1251, DW_AT_accessibility(DW_ACCESS_public)
DW$1252	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1252, DW_AT_name("RML4"), DW_AT_symbol_name("_RML4")
	.dwattr DW$1252, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$1252, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1252, DW_AT_accessibility(DW_ACCESS_public)
DW$1253	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1253, DW_AT_name("RML5"), DW_AT_symbol_name("_RML5")
	.dwattr DW$1253, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$1253, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1253, DW_AT_accessibility(DW_ACCESS_public)
DW$1254	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1254, DW_AT_name("RML6"), DW_AT_symbol_name("_RML6")
	.dwattr DW$1254, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$1254, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1254, DW_AT_accessibility(DW_ACCESS_public)
DW$1255	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1255, DW_AT_name("RML7"), DW_AT_symbol_name("_RML7")
	.dwattr DW$1255, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$1255, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1255, DW_AT_accessibility(DW_ACCESS_public)
DW$1256	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1256, DW_AT_name("RML8"), DW_AT_symbol_name("_RML8")
	.dwattr DW$1256, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$1256, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1256, DW_AT_accessibility(DW_ACCESS_public)
DW$1257	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1257, DW_AT_name("RML9"), DW_AT_symbol_name("_RML9")
	.dwattr DW$1257, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$1257, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1257, DW_AT_accessibility(DW_ACCESS_public)
DW$1258	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1258, DW_AT_name("RML10"), DW_AT_symbol_name("_RML10")
	.dwattr DW$1258, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$1258, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1258, DW_AT_accessibility(DW_ACCESS_public)
DW$1259	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1259, DW_AT_name("RML11"), DW_AT_symbol_name("_RML11")
	.dwattr DW$1259, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$1259, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1259, DW_AT_accessibility(DW_ACCESS_public)
DW$1260	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1260, DW_AT_name("RML12"), DW_AT_symbol_name("_RML12")
	.dwattr DW$1260, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$1260, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1260, DW_AT_accessibility(DW_ACCESS_public)
DW$1261	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1261, DW_AT_name("RML13"), DW_AT_symbol_name("_RML13")
	.dwattr DW$1261, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$1261, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1261, DW_AT_accessibility(DW_ACCESS_public)
DW$1262	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1262, DW_AT_name("RML14"), DW_AT_symbol_name("_RML14")
	.dwattr DW$1262, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$1262, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1262, DW_AT_accessibility(DW_ACCESS_public)
DW$1263	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1263, DW_AT_name("RML15"), DW_AT_symbol_name("_RML15")
	.dwattr DW$1263, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$1263, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1263, DW_AT_accessibility(DW_ACCESS_public)
DW$1264	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1264, DW_AT_name("RML16"), DW_AT_symbol_name("_RML16")
	.dwattr DW$1264, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$1264, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1264, DW_AT_accessibility(DW_ACCESS_public)
DW$1265	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1265, DW_AT_name("RML17"), DW_AT_symbol_name("_RML17")
	.dwattr DW$1265, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$1265, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1265, DW_AT_accessibility(DW_ACCESS_public)
DW$1266	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1266, DW_AT_name("RML18"), DW_AT_symbol_name("_RML18")
	.dwattr DW$1266, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$1266, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1266, DW_AT_accessibility(DW_ACCESS_public)
DW$1267	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1267, DW_AT_name("RML19"), DW_AT_symbol_name("_RML19")
	.dwattr DW$1267, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$1267, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1267, DW_AT_accessibility(DW_ACCESS_public)
DW$1268	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1268, DW_AT_name("RML20"), DW_AT_symbol_name("_RML20")
	.dwattr DW$1268, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$1268, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1268, DW_AT_accessibility(DW_ACCESS_public)
DW$1269	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1269, DW_AT_name("RML21"), DW_AT_symbol_name("_RML21")
	.dwattr DW$1269, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$1269, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1269, DW_AT_accessibility(DW_ACCESS_public)
DW$1270	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1270, DW_AT_name("RML22"), DW_AT_symbol_name("_RML22")
	.dwattr DW$1270, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$1270, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1270, DW_AT_accessibility(DW_ACCESS_public)
DW$1271	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1271, DW_AT_name("RML23"), DW_AT_symbol_name("_RML23")
	.dwattr DW$1271, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$1271, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1271, DW_AT_accessibility(DW_ACCESS_public)
DW$1272	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1272, DW_AT_name("RML24"), DW_AT_symbol_name("_RML24")
	.dwattr DW$1272, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$1272, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1272, DW_AT_accessibility(DW_ACCESS_public)
DW$1273	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1273, DW_AT_name("RML25"), DW_AT_symbol_name("_RML25")
	.dwattr DW$1273, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$1273, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1273, DW_AT_accessibility(DW_ACCESS_public)
DW$1274	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1274, DW_AT_name("RML26"), DW_AT_symbol_name("_RML26")
	.dwattr DW$1274, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$1274, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1274, DW_AT_accessibility(DW_ACCESS_public)
DW$1275	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1275, DW_AT_name("RML27"), DW_AT_symbol_name("_RML27")
	.dwattr DW$1275, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$1275, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1275, DW_AT_accessibility(DW_ACCESS_public)
DW$1276	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1276, DW_AT_name("RML28"), DW_AT_symbol_name("_RML28")
	.dwattr DW$1276, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$1276, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1276, DW_AT_accessibility(DW_ACCESS_public)
DW$1277	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1277, DW_AT_name("RML29"), DW_AT_symbol_name("_RML29")
	.dwattr DW$1277, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$1277, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1277, DW_AT_accessibility(DW_ACCESS_public)
DW$1278	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1278, DW_AT_name("RML30"), DW_AT_symbol_name("_RML30")
	.dwattr DW$1278, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$1278, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1278, DW_AT_accessibility(DW_ACCESS_public)
DW$1279	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1279, DW_AT_name("RML31"), DW_AT_symbol_name("_RML31")
	.dwattr DW$1279, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$1279, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1279, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$83


DW$T$85	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$85, DW_AT_name("CANRFP_BITS")
	.dwattr DW$T$85, DW_AT_byte_size(0x02)
DW$1280	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1280, DW_AT_name("RFP0"), DW_AT_symbol_name("_RFP0")
	.dwattr DW$1280, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$1280, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1280, DW_AT_accessibility(DW_ACCESS_public)
DW$1281	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1281, DW_AT_name("RFP1"), DW_AT_symbol_name("_RFP1")
	.dwattr DW$1281, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$1281, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1281, DW_AT_accessibility(DW_ACCESS_public)
DW$1282	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1282, DW_AT_name("RFP2"), DW_AT_symbol_name("_RFP2")
	.dwattr DW$1282, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$1282, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1282, DW_AT_accessibility(DW_ACCESS_public)
DW$1283	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1283, DW_AT_name("RFP3"), DW_AT_symbol_name("_RFP3")
	.dwattr DW$1283, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$1283, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1283, DW_AT_accessibility(DW_ACCESS_public)
DW$1284	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1284, DW_AT_name("RFP4"), DW_AT_symbol_name("_RFP4")
	.dwattr DW$1284, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$1284, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1284, DW_AT_accessibility(DW_ACCESS_public)
DW$1285	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1285, DW_AT_name("RFP5"), DW_AT_symbol_name("_RFP5")
	.dwattr DW$1285, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$1285, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1285, DW_AT_accessibility(DW_ACCESS_public)
DW$1286	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1286, DW_AT_name("RFP6"), DW_AT_symbol_name("_RFP6")
	.dwattr DW$1286, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$1286, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1286, DW_AT_accessibility(DW_ACCESS_public)
DW$1287	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1287, DW_AT_name("RFP7"), DW_AT_symbol_name("_RFP7")
	.dwattr DW$1287, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$1287, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1287, DW_AT_accessibility(DW_ACCESS_public)
DW$1288	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1288, DW_AT_name("RFP8"), DW_AT_symbol_name("_RFP8")
	.dwattr DW$1288, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$1288, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1288, DW_AT_accessibility(DW_ACCESS_public)
DW$1289	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1289, DW_AT_name("RFP9"), DW_AT_symbol_name("_RFP9")
	.dwattr DW$1289, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$1289, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1289, DW_AT_accessibility(DW_ACCESS_public)
DW$1290	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1290, DW_AT_name("RFP10"), DW_AT_symbol_name("_RFP10")
	.dwattr DW$1290, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$1290, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1290, DW_AT_accessibility(DW_ACCESS_public)
DW$1291	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1291, DW_AT_name("RFP11"), DW_AT_symbol_name("_RFP11")
	.dwattr DW$1291, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$1291, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1291, DW_AT_accessibility(DW_ACCESS_public)
DW$1292	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1292, DW_AT_name("RFP12"), DW_AT_symbol_name("_RFP12")
	.dwattr DW$1292, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$1292, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1292, DW_AT_accessibility(DW_ACCESS_public)
DW$1293	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1293, DW_AT_name("RFP13"), DW_AT_symbol_name("_RFP13")
	.dwattr DW$1293, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$1293, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1293, DW_AT_accessibility(DW_ACCESS_public)
DW$1294	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1294, DW_AT_name("RFP14"), DW_AT_symbol_name("_RFP14")
	.dwattr DW$1294, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$1294, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1294, DW_AT_accessibility(DW_ACCESS_public)
DW$1295	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1295, DW_AT_name("RFP15"), DW_AT_symbol_name("_RFP15")
	.dwattr DW$1295, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$1295, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1295, DW_AT_accessibility(DW_ACCESS_public)
DW$1296	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1296, DW_AT_name("RFP16"), DW_AT_symbol_name("_RFP16")
	.dwattr DW$1296, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$1296, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1296, DW_AT_accessibility(DW_ACCESS_public)
DW$1297	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1297, DW_AT_name("RFP17"), DW_AT_symbol_name("_RFP17")
	.dwattr DW$1297, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$1297, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1297, DW_AT_accessibility(DW_ACCESS_public)
DW$1298	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1298, DW_AT_name("RFP18"), DW_AT_symbol_name("_RFP18")
	.dwattr DW$1298, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$1298, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1298, DW_AT_accessibility(DW_ACCESS_public)
DW$1299	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1299, DW_AT_name("RFP19"), DW_AT_symbol_name("_RFP19")
	.dwattr DW$1299, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$1299, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1299, DW_AT_accessibility(DW_ACCESS_public)
DW$1300	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1300, DW_AT_name("RFP20"), DW_AT_symbol_name("_RFP20")
	.dwattr DW$1300, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$1300, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1300, DW_AT_accessibility(DW_ACCESS_public)
DW$1301	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1301, DW_AT_name("RFP21"), DW_AT_symbol_name("_RFP21")
	.dwattr DW$1301, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$1301, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1301, DW_AT_accessibility(DW_ACCESS_public)
DW$1302	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1302, DW_AT_name("RFP22"), DW_AT_symbol_name("_RFP22")
	.dwattr DW$1302, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$1302, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1302, DW_AT_accessibility(DW_ACCESS_public)
DW$1303	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1303, DW_AT_name("RFP23"), DW_AT_symbol_name("_RFP23")
	.dwattr DW$1303, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$1303, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1303, DW_AT_accessibility(DW_ACCESS_public)
DW$1304	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1304, DW_AT_name("RFP24"), DW_AT_symbol_name("_RFP24")
	.dwattr DW$1304, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$1304, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1304, DW_AT_accessibility(DW_ACCESS_public)
DW$1305	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1305, DW_AT_name("RFP25"), DW_AT_symbol_name("_RFP25")
	.dwattr DW$1305, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$1305, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1305, DW_AT_accessibility(DW_ACCESS_public)
DW$1306	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1306, DW_AT_name("RFP26"), DW_AT_symbol_name("_RFP26")
	.dwattr DW$1306, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$1306, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1306, DW_AT_accessibility(DW_ACCESS_public)
DW$1307	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1307, DW_AT_name("RFP27"), DW_AT_symbol_name("_RFP27")
	.dwattr DW$1307, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$1307, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1307, DW_AT_accessibility(DW_ACCESS_public)
DW$1308	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1308, DW_AT_name("RFP28"), DW_AT_symbol_name("_RFP28")
	.dwattr DW$1308, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$1308, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1308, DW_AT_accessibility(DW_ACCESS_public)
DW$1309	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1309, DW_AT_name("RFP29"), DW_AT_symbol_name("_RFP29")
	.dwattr DW$1309, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$1309, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1309, DW_AT_accessibility(DW_ACCESS_public)
DW$1310	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1310, DW_AT_name("RFP30"), DW_AT_symbol_name("_RFP30")
	.dwattr DW$1310, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$1310, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1310, DW_AT_accessibility(DW_ACCESS_public)
DW$1311	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1311, DW_AT_name("RFP31"), DW_AT_symbol_name("_RFP31")
	.dwattr DW$1311, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$1311, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1311, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$85


DW$T$87	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$87, DW_AT_name("CANGAM_BITS")
	.dwattr DW$T$87, DW_AT_byte_size(0x02)
DW$1312	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1312, DW_AT_name("GAM150"), DW_AT_symbol_name("_GAM150")
	.dwattr DW$1312, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x10)
	.dwattr DW$1312, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1312, DW_AT_accessibility(DW_ACCESS_public)
DW$1313	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1313, DW_AT_name("GAM2816"), DW_AT_symbol_name("_GAM2816")
	.dwattr DW$1313, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x0d)
	.dwattr DW$1313, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1313, DW_AT_accessibility(DW_ACCESS_public)
DW$1314	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1314, DW_AT_name("rsvd"), DW_AT_symbol_name("_rsvd")
	.dwattr DW$1314, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x02)
	.dwattr DW$1314, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1314, DW_AT_accessibility(DW_ACCESS_public)
DW$1315	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1315, DW_AT_name("AMI"), DW_AT_symbol_name("_AMI")
	.dwattr DW$1315, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$1315, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1315, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$87


DW$T$89	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$89, DW_AT_name("CANMC_BITS")
	.dwattr DW$T$89, DW_AT_byte_size(0x02)
DW$1316	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1316, DW_AT_name("MBNR"), DW_AT_symbol_name("_MBNR")
	.dwattr DW$1316, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x05)
	.dwattr DW$1316, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1316, DW_AT_accessibility(DW_ACCESS_public)
DW$1317	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1317, DW_AT_name("SRES"), DW_AT_symbol_name("_SRES")
	.dwattr DW$1317, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$1317, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1317, DW_AT_accessibility(DW_ACCESS_public)
DW$1318	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1318, DW_AT_name("STM"), DW_AT_symbol_name("_STM")
	.dwattr DW$1318, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$1318, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1318, DW_AT_accessibility(DW_ACCESS_public)
DW$1319	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1319, DW_AT_name("ABO"), DW_AT_symbol_name("_ABO")
	.dwattr DW$1319, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$1319, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1319, DW_AT_accessibility(DW_ACCESS_public)
DW$1320	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1320, DW_AT_name("CDR"), DW_AT_symbol_name("_CDR")
	.dwattr DW$1320, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$1320, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1320, DW_AT_accessibility(DW_ACCESS_public)
DW$1321	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1321, DW_AT_name("WUBA"), DW_AT_symbol_name("_WUBA")
	.dwattr DW$1321, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$1321, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1321, DW_AT_accessibility(DW_ACCESS_public)
DW$1322	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1322, DW_AT_name("DBO"), DW_AT_symbol_name("_DBO")
	.dwattr DW$1322, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$1322, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1322, DW_AT_accessibility(DW_ACCESS_public)
DW$1323	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1323, DW_AT_name("PDR"), DW_AT_symbol_name("_PDR")
	.dwattr DW$1323, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$1323, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1323, DW_AT_accessibility(DW_ACCESS_public)
DW$1324	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1324, DW_AT_name("CCR"), DW_AT_symbol_name("_CCR")
	.dwattr DW$1324, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$1324, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1324, DW_AT_accessibility(DW_ACCESS_public)
DW$1325	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1325, DW_AT_name("SCB"), DW_AT_symbol_name("_SCB")
	.dwattr DW$1325, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$1325, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1325, DW_AT_accessibility(DW_ACCESS_public)
DW$1326	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1326, DW_AT_name("TCC"), DW_AT_symbol_name("_TCC")
	.dwattr DW$1326, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$1326, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1326, DW_AT_accessibility(DW_ACCESS_public)
DW$1327	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1327, DW_AT_name("MBCC"), DW_AT_symbol_name("_MBCC")
	.dwattr DW$1327, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$1327, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1327, DW_AT_accessibility(DW_ACCESS_public)
DW$1328	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1328, DW_AT_name("SUSP"), DW_AT_symbol_name("_SUSP")
	.dwattr DW$1328, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$1328, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1328, DW_AT_accessibility(DW_ACCESS_public)
DW$1329	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1329, DW_AT_name("rsvd"), DW_AT_symbol_name("_rsvd")
	.dwattr DW$1329, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x0f)
	.dwattr DW$1329, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1329, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$89


DW$T$91	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$91, DW_AT_name("CANBTC_BITS")
	.dwattr DW$T$91, DW_AT_byte_size(0x02)
DW$1330	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1330, DW_AT_name("TSEG2REG"), DW_AT_symbol_name("_TSEG2REG")
	.dwattr DW$1330, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x03)
	.dwattr DW$1330, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1330, DW_AT_accessibility(DW_ACCESS_public)
DW$1331	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1331, DW_AT_name("TSEG1REG"), DW_AT_symbol_name("_TSEG1REG")
	.dwattr DW$1331, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x04)
	.dwattr DW$1331, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1331, DW_AT_accessibility(DW_ACCESS_public)
DW$1332	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1332, DW_AT_name("SAM"), DW_AT_symbol_name("_SAM")
	.dwattr DW$1332, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$1332, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1332, DW_AT_accessibility(DW_ACCESS_public)
DW$1333	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1333, DW_AT_name("SJWREG"), DW_AT_symbol_name("_SJWREG")
	.dwattr DW$1333, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x02)
	.dwattr DW$1333, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1333, DW_AT_accessibility(DW_ACCESS_public)
DW$1334	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1334, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$1334, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x06)
	.dwattr DW$1334, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1334, DW_AT_accessibility(DW_ACCESS_public)
DW$1335	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1335, DW_AT_name("BRPREG"), DW_AT_symbol_name("_BRPREG")
	.dwattr DW$1335, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x08)
	.dwattr DW$1335, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1335, DW_AT_accessibility(DW_ACCESS_public)
DW$1336	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1336, DW_AT_name("rsvd2"), DW_AT_symbol_name("_rsvd2")
	.dwattr DW$1336, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x08)
	.dwattr DW$1336, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1336, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$91


DW$T$93	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$93, DW_AT_name("CANES_BITS")
	.dwattr DW$T$93, DW_AT_byte_size(0x02)
DW$1337	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1337, DW_AT_name("TM"), DW_AT_symbol_name("_TM")
	.dwattr DW$1337, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$1337, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1337, DW_AT_accessibility(DW_ACCESS_public)
DW$1338	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1338, DW_AT_name("RM"), DW_AT_symbol_name("_RM")
	.dwattr DW$1338, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$1338, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1338, DW_AT_accessibility(DW_ACCESS_public)
DW$1339	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1339, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$1339, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$1339, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1339, DW_AT_accessibility(DW_ACCESS_public)
DW$1340	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1340, DW_AT_name("PDA"), DW_AT_symbol_name("_PDA")
	.dwattr DW$1340, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$1340, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1340, DW_AT_accessibility(DW_ACCESS_public)
DW$1341	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1341, DW_AT_name("CCE"), DW_AT_symbol_name("_CCE")
	.dwattr DW$1341, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$1341, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1341, DW_AT_accessibility(DW_ACCESS_public)
DW$1342	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1342, DW_AT_name("SMA"), DW_AT_symbol_name("_SMA")
	.dwattr DW$1342, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$1342, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1342, DW_AT_accessibility(DW_ACCESS_public)
DW$1343	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1343, DW_AT_name("rsvd2"), DW_AT_symbol_name("_rsvd2")
	.dwattr DW$1343, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x0a)
	.dwattr DW$1343, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1343, DW_AT_accessibility(DW_ACCESS_public)
DW$1344	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1344, DW_AT_name("EW"), DW_AT_symbol_name("_EW")
	.dwattr DW$1344, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$1344, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1344, DW_AT_accessibility(DW_ACCESS_public)
DW$1345	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1345, DW_AT_name("EP"), DW_AT_symbol_name("_EP")
	.dwattr DW$1345, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$1345, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1345, DW_AT_accessibility(DW_ACCESS_public)
DW$1346	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1346, DW_AT_name("BO"), DW_AT_symbol_name("_BO")
	.dwattr DW$1346, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$1346, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1346, DW_AT_accessibility(DW_ACCESS_public)
DW$1347	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1347, DW_AT_name("ACKE"), DW_AT_symbol_name("_ACKE")
	.dwattr DW$1347, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$1347, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1347, DW_AT_accessibility(DW_ACCESS_public)
DW$1348	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1348, DW_AT_name("SE"), DW_AT_symbol_name("_SE")
	.dwattr DW$1348, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$1348, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1348, DW_AT_accessibility(DW_ACCESS_public)
DW$1349	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1349, DW_AT_name("CRCE"), DW_AT_symbol_name("_CRCE")
	.dwattr DW$1349, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$1349, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1349, DW_AT_accessibility(DW_ACCESS_public)
DW$1350	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1350, DW_AT_name("SA1"), DW_AT_symbol_name("_SA1")
	.dwattr DW$1350, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$1350, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1350, DW_AT_accessibility(DW_ACCESS_public)
DW$1351	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1351, DW_AT_name("BE"), DW_AT_symbol_name("_BE")
	.dwattr DW$1351, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$1351, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1351, DW_AT_accessibility(DW_ACCESS_public)
DW$1352	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1352, DW_AT_name("FE"), DW_AT_symbol_name("_FE")
	.dwattr DW$1352, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$1352, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1352, DW_AT_accessibility(DW_ACCESS_public)
DW$1353	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1353, DW_AT_name("rsvd3"), DW_AT_symbol_name("_rsvd3")
	.dwattr DW$1353, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x07)
	.dwattr DW$1353, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1353, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$93


DW$T$95	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$95, DW_AT_name("CANTEC_BITS")
	.dwattr DW$T$95, DW_AT_byte_size(0x02)
DW$1354	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1354, DW_AT_name("TEC"), DW_AT_symbol_name("_TEC")
	.dwattr DW$1354, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x08)
	.dwattr DW$1354, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1354, DW_AT_accessibility(DW_ACCESS_public)
DW$1355	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1355, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$1355, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x08)
	.dwattr DW$1355, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1355, DW_AT_accessibility(DW_ACCESS_public)
DW$1356	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1356, DW_AT_name("rsvd2"), DW_AT_symbol_name("_rsvd2")
	.dwattr DW$1356, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x10)
	.dwattr DW$1356, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1356, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$95


DW$T$97	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$97, DW_AT_name("CANREC_BITS")
	.dwattr DW$T$97, DW_AT_byte_size(0x02)
DW$1357	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1357, DW_AT_name("REC"), DW_AT_symbol_name("_REC")
	.dwattr DW$1357, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x08)
	.dwattr DW$1357, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1357, DW_AT_accessibility(DW_ACCESS_public)
DW$1358	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1358, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$1358, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x08)
	.dwattr DW$1358, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1358, DW_AT_accessibility(DW_ACCESS_public)
DW$1359	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1359, DW_AT_name("rsvd2"), DW_AT_symbol_name("_rsvd2")
	.dwattr DW$1359, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x10)
	.dwattr DW$1359, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1359, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$97


DW$T$99	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$99, DW_AT_name("CANGIF0_BITS")
	.dwattr DW$T$99, DW_AT_byte_size(0x02)
DW$1360	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1360, DW_AT_name("MIV0"), DW_AT_symbol_name("_MIV0")
	.dwattr DW$1360, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x05)
	.dwattr DW$1360, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1360, DW_AT_accessibility(DW_ACCESS_public)
DW$1361	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1361, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$1361, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x03)
	.dwattr DW$1361, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1361, DW_AT_accessibility(DW_ACCESS_public)
DW$1362	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1362, DW_AT_name("WLIF0"), DW_AT_symbol_name("_WLIF0")
	.dwattr DW$1362, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$1362, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1362, DW_AT_accessibility(DW_ACCESS_public)
DW$1363	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1363, DW_AT_name("EPIF0"), DW_AT_symbol_name("_EPIF0")
	.dwattr DW$1363, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$1363, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1363, DW_AT_accessibility(DW_ACCESS_public)
DW$1364	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1364, DW_AT_name("BOIF0"), DW_AT_symbol_name("_BOIF0")
	.dwattr DW$1364, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$1364, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1364, DW_AT_accessibility(DW_ACCESS_public)
DW$1365	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1365, DW_AT_name("RMLIF0"), DW_AT_symbol_name("_RMLIF0")
	.dwattr DW$1365, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$1365, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1365, DW_AT_accessibility(DW_ACCESS_public)
DW$1366	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1366, DW_AT_name("WUIF0"), DW_AT_symbol_name("_WUIF0")
	.dwattr DW$1366, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$1366, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1366, DW_AT_accessibility(DW_ACCESS_public)
DW$1367	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1367, DW_AT_name("WDIF0"), DW_AT_symbol_name("_WDIF0")
	.dwattr DW$1367, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$1367, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1367, DW_AT_accessibility(DW_ACCESS_public)
DW$1368	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1368, DW_AT_name("AAIF0"), DW_AT_symbol_name("_AAIF0")
	.dwattr DW$1368, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$1368, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1368, DW_AT_accessibility(DW_ACCESS_public)
DW$1369	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1369, DW_AT_name("GMIF0"), DW_AT_symbol_name("_GMIF0")
	.dwattr DW$1369, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$1369, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1369, DW_AT_accessibility(DW_ACCESS_public)
DW$1370	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1370, DW_AT_name("TCOF0"), DW_AT_symbol_name("_TCOF0")
	.dwattr DW$1370, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$1370, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1370, DW_AT_accessibility(DW_ACCESS_public)
DW$1371	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1371, DW_AT_name("MTOF0"), DW_AT_symbol_name("_MTOF0")
	.dwattr DW$1371, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$1371, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1371, DW_AT_accessibility(DW_ACCESS_public)
DW$1372	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1372, DW_AT_name("rsvd2"), DW_AT_symbol_name("_rsvd2")
	.dwattr DW$1372, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x0e)
	.dwattr DW$1372, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1372, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$99


DW$T$101	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$101, DW_AT_name("CANGIM_BITS")
	.dwattr DW$T$101, DW_AT_byte_size(0x02)
DW$1373	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1373, DW_AT_name("I0EN"), DW_AT_symbol_name("_I0EN")
	.dwattr DW$1373, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$1373, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1373, DW_AT_accessibility(DW_ACCESS_public)
DW$1374	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1374, DW_AT_name("I1EN"), DW_AT_symbol_name("_I1EN")
	.dwattr DW$1374, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$1374, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1374, DW_AT_accessibility(DW_ACCESS_public)
DW$1375	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1375, DW_AT_name("GIL"), DW_AT_symbol_name("_GIL")
	.dwattr DW$1375, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$1375, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1375, DW_AT_accessibility(DW_ACCESS_public)
DW$1376	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1376, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$1376, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x05)
	.dwattr DW$1376, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1376, DW_AT_accessibility(DW_ACCESS_public)
DW$1377	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1377, DW_AT_name("WLIM"), DW_AT_symbol_name("_WLIM")
	.dwattr DW$1377, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$1377, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1377, DW_AT_accessibility(DW_ACCESS_public)
DW$1378	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1378, DW_AT_name("EPIM"), DW_AT_symbol_name("_EPIM")
	.dwattr DW$1378, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$1378, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1378, DW_AT_accessibility(DW_ACCESS_public)
DW$1379	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1379, DW_AT_name("BOIM"), DW_AT_symbol_name("_BOIM")
	.dwattr DW$1379, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$1379, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1379, DW_AT_accessibility(DW_ACCESS_public)
DW$1380	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1380, DW_AT_name("RMLIM"), DW_AT_symbol_name("_RMLIM")
	.dwattr DW$1380, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$1380, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1380, DW_AT_accessibility(DW_ACCESS_public)
DW$1381	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1381, DW_AT_name("WUIM"), DW_AT_symbol_name("_WUIM")
	.dwattr DW$1381, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$1381, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1381, DW_AT_accessibility(DW_ACCESS_public)
DW$1382	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1382, DW_AT_name("WDIM"), DW_AT_symbol_name("_WDIM")
	.dwattr DW$1382, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$1382, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1382, DW_AT_accessibility(DW_ACCESS_public)
DW$1383	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1383, DW_AT_name("AAIM"), DW_AT_symbol_name("_AAIM")
	.dwattr DW$1383, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$1383, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1383, DW_AT_accessibility(DW_ACCESS_public)
DW$1384	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1384, DW_AT_name("rsvd2"), DW_AT_symbol_name("_rsvd2")
	.dwattr DW$1384, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$1384, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1384, DW_AT_accessibility(DW_ACCESS_public)
DW$1385	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1385, DW_AT_name("TCOM"), DW_AT_symbol_name("_TCOM")
	.dwattr DW$1385, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$1385, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1385, DW_AT_accessibility(DW_ACCESS_public)
DW$1386	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1386, DW_AT_name("MTOM"), DW_AT_symbol_name("_MTOM")
	.dwattr DW$1386, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$1386, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1386, DW_AT_accessibility(DW_ACCESS_public)
DW$1387	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1387, DW_AT_name("rsvd3"), DW_AT_symbol_name("_rsvd3")
	.dwattr DW$1387, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x0e)
	.dwattr DW$1387, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1387, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$101


DW$T$103	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$103, DW_AT_name("CANGIF1_BITS")
	.dwattr DW$T$103, DW_AT_byte_size(0x02)
DW$1388	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1388, DW_AT_name("MIV1"), DW_AT_symbol_name("_MIV1")
	.dwattr DW$1388, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x05)
	.dwattr DW$1388, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1388, DW_AT_accessibility(DW_ACCESS_public)
DW$1389	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1389, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$1389, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x03)
	.dwattr DW$1389, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1389, DW_AT_accessibility(DW_ACCESS_public)
DW$1390	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1390, DW_AT_name("WLIF1"), DW_AT_symbol_name("_WLIF1")
	.dwattr DW$1390, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$1390, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1390, DW_AT_accessibility(DW_ACCESS_public)
DW$1391	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1391, DW_AT_name("EPIF1"), DW_AT_symbol_name("_EPIF1")
	.dwattr DW$1391, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$1391, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1391, DW_AT_accessibility(DW_ACCESS_public)
DW$1392	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1392, DW_AT_name("BOIF1"), DW_AT_symbol_name("_BOIF1")
	.dwattr DW$1392, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$1392, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1392, DW_AT_accessibility(DW_ACCESS_public)
DW$1393	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1393, DW_AT_name("RMLIF1"), DW_AT_symbol_name("_RMLIF1")
	.dwattr DW$1393, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$1393, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1393, DW_AT_accessibility(DW_ACCESS_public)
DW$1394	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1394, DW_AT_name("WUIF1"), DW_AT_symbol_name("_WUIF1")
	.dwattr DW$1394, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$1394, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1394, DW_AT_accessibility(DW_ACCESS_public)
DW$1395	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1395, DW_AT_name("WDIF1"), DW_AT_symbol_name("_WDIF1")
	.dwattr DW$1395, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$1395, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1395, DW_AT_accessibility(DW_ACCESS_public)
DW$1396	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1396, DW_AT_name("AAIF1"), DW_AT_symbol_name("_AAIF1")
	.dwattr DW$1396, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$1396, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1396, DW_AT_accessibility(DW_ACCESS_public)
DW$1397	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1397, DW_AT_name("GMIF1"), DW_AT_symbol_name("_GMIF1")
	.dwattr DW$1397, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$1397, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1397, DW_AT_accessibility(DW_ACCESS_public)
DW$1398	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1398, DW_AT_name("TCOF1"), DW_AT_symbol_name("_TCOF1")
	.dwattr DW$1398, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$1398, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1398, DW_AT_accessibility(DW_ACCESS_public)
DW$1399	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1399, DW_AT_name("MTOF1"), DW_AT_symbol_name("_MTOF1")
	.dwattr DW$1399, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$1399, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1399, DW_AT_accessibility(DW_ACCESS_public)
DW$1400	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1400, DW_AT_name("rsvd2"), DW_AT_symbol_name("_rsvd2")
	.dwattr DW$1400, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x0e)
	.dwattr DW$1400, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1400, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$103


DW$T$105	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$105, DW_AT_name("CANMIM_BITS")
	.dwattr DW$T$105, DW_AT_byte_size(0x02)
DW$1401	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1401, DW_AT_name("MIM0"), DW_AT_symbol_name("_MIM0")
	.dwattr DW$1401, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$1401, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1401, DW_AT_accessibility(DW_ACCESS_public)
DW$1402	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1402, DW_AT_name("MIM1"), DW_AT_symbol_name("_MIM1")
	.dwattr DW$1402, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$1402, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1402, DW_AT_accessibility(DW_ACCESS_public)
DW$1403	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1403, DW_AT_name("MIM2"), DW_AT_symbol_name("_MIM2")
	.dwattr DW$1403, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$1403, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1403, DW_AT_accessibility(DW_ACCESS_public)
DW$1404	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1404, DW_AT_name("MIM3"), DW_AT_symbol_name("_MIM3")
	.dwattr DW$1404, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$1404, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1404, DW_AT_accessibility(DW_ACCESS_public)
DW$1405	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1405, DW_AT_name("MIM4"), DW_AT_symbol_name("_MIM4")
	.dwattr DW$1405, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$1405, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1405, DW_AT_accessibility(DW_ACCESS_public)
DW$1406	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1406, DW_AT_name("MIM5"), DW_AT_symbol_name("_MIM5")
	.dwattr DW$1406, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$1406, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1406, DW_AT_accessibility(DW_ACCESS_public)
DW$1407	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1407, DW_AT_name("MIM6"), DW_AT_symbol_name("_MIM6")
	.dwattr DW$1407, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$1407, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1407, DW_AT_accessibility(DW_ACCESS_public)
DW$1408	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1408, DW_AT_name("MIM7"), DW_AT_symbol_name("_MIM7")
	.dwattr DW$1408, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$1408, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1408, DW_AT_accessibility(DW_ACCESS_public)
DW$1409	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1409, DW_AT_name("MIM8"), DW_AT_symbol_name("_MIM8")
	.dwattr DW$1409, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$1409, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1409, DW_AT_accessibility(DW_ACCESS_public)
DW$1410	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1410, DW_AT_name("MIM9"), DW_AT_symbol_name("_MIM9")
	.dwattr DW$1410, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$1410, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1410, DW_AT_accessibility(DW_ACCESS_public)
DW$1411	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1411, DW_AT_name("MIM10"), DW_AT_symbol_name("_MIM10")
	.dwattr DW$1411, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$1411, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1411, DW_AT_accessibility(DW_ACCESS_public)
DW$1412	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1412, DW_AT_name("MIM11"), DW_AT_symbol_name("_MIM11")
	.dwattr DW$1412, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$1412, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1412, DW_AT_accessibility(DW_ACCESS_public)
DW$1413	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1413, DW_AT_name("MIM12"), DW_AT_symbol_name("_MIM12")
	.dwattr DW$1413, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$1413, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1413, DW_AT_accessibility(DW_ACCESS_public)
DW$1414	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1414, DW_AT_name("MIM13"), DW_AT_symbol_name("_MIM13")
	.dwattr DW$1414, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$1414, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1414, DW_AT_accessibility(DW_ACCESS_public)
DW$1415	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1415, DW_AT_name("MIM14"), DW_AT_symbol_name("_MIM14")
	.dwattr DW$1415, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$1415, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1415, DW_AT_accessibility(DW_ACCESS_public)
DW$1416	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1416, DW_AT_name("MIM15"), DW_AT_symbol_name("_MIM15")
	.dwattr DW$1416, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$1416, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1416, DW_AT_accessibility(DW_ACCESS_public)
DW$1417	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1417, DW_AT_name("MIM16"), DW_AT_symbol_name("_MIM16")
	.dwattr DW$1417, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$1417, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1417, DW_AT_accessibility(DW_ACCESS_public)
DW$1418	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1418, DW_AT_name("MIM17"), DW_AT_symbol_name("_MIM17")
	.dwattr DW$1418, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$1418, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1418, DW_AT_accessibility(DW_ACCESS_public)
DW$1419	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1419, DW_AT_name("MIM18"), DW_AT_symbol_name("_MIM18")
	.dwattr DW$1419, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$1419, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1419, DW_AT_accessibility(DW_ACCESS_public)
DW$1420	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1420, DW_AT_name("MIM19"), DW_AT_symbol_name("_MIM19")
	.dwattr DW$1420, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$1420, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1420, DW_AT_accessibility(DW_ACCESS_public)
DW$1421	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1421, DW_AT_name("MIM20"), DW_AT_symbol_name("_MIM20")
	.dwattr DW$1421, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$1421, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1421, DW_AT_accessibility(DW_ACCESS_public)
DW$1422	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1422, DW_AT_name("MIM21"), DW_AT_symbol_name("_MIM21")
	.dwattr DW$1422, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$1422, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1422, DW_AT_accessibility(DW_ACCESS_public)
DW$1423	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1423, DW_AT_name("MIM22"), DW_AT_symbol_name("_MIM22")
	.dwattr DW$1423, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$1423, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1423, DW_AT_accessibility(DW_ACCESS_public)
DW$1424	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1424, DW_AT_name("MIM23"), DW_AT_symbol_name("_MIM23")
	.dwattr DW$1424, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$1424, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1424, DW_AT_accessibility(DW_ACCESS_public)
DW$1425	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1425, DW_AT_name("MIM24"), DW_AT_symbol_name("_MIM24")
	.dwattr DW$1425, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$1425, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1425, DW_AT_accessibility(DW_ACCESS_public)
DW$1426	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1426, DW_AT_name("MIM25"), DW_AT_symbol_name("_MIM25")
	.dwattr DW$1426, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$1426, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1426, DW_AT_accessibility(DW_ACCESS_public)
DW$1427	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1427, DW_AT_name("MIM26"), DW_AT_symbol_name("_MIM26")
	.dwattr DW$1427, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$1427, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1427, DW_AT_accessibility(DW_ACCESS_public)
DW$1428	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1428, DW_AT_name("MIM27"), DW_AT_symbol_name("_MIM27")
	.dwattr DW$1428, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$1428, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1428, DW_AT_accessibility(DW_ACCESS_public)
DW$1429	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1429, DW_AT_name("MIM28"), DW_AT_symbol_name("_MIM28")
	.dwattr DW$1429, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$1429, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1429, DW_AT_accessibility(DW_ACCESS_public)
DW$1430	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1430, DW_AT_name("MIM29"), DW_AT_symbol_name("_MIM29")
	.dwattr DW$1430, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$1430, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1430, DW_AT_accessibility(DW_ACCESS_public)
DW$1431	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1431, DW_AT_name("MIM30"), DW_AT_symbol_name("_MIM30")
	.dwattr DW$1431, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$1431, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1431, DW_AT_accessibility(DW_ACCESS_public)
DW$1432	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1432, DW_AT_name("MIM31"), DW_AT_symbol_name("_MIM31")
	.dwattr DW$1432, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$1432, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1432, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$105


DW$T$107	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$107, DW_AT_name("CANMIL_BITS")
	.dwattr DW$T$107, DW_AT_byte_size(0x02)
DW$1433	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1433, DW_AT_name("MIL0"), DW_AT_symbol_name("_MIL0")
	.dwattr DW$1433, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$1433, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1433, DW_AT_accessibility(DW_ACCESS_public)
DW$1434	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1434, DW_AT_name("MIL1"), DW_AT_symbol_name("_MIL1")
	.dwattr DW$1434, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$1434, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1434, DW_AT_accessibility(DW_ACCESS_public)
DW$1435	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1435, DW_AT_name("MIL2"), DW_AT_symbol_name("_MIL2")
	.dwattr DW$1435, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$1435, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1435, DW_AT_accessibility(DW_ACCESS_public)
DW$1436	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1436, DW_AT_name("MIL3"), DW_AT_symbol_name("_MIL3")
	.dwattr DW$1436, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$1436, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1436, DW_AT_accessibility(DW_ACCESS_public)
DW$1437	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1437, DW_AT_name("MIL4"), DW_AT_symbol_name("_MIL4")
	.dwattr DW$1437, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$1437, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1437, DW_AT_accessibility(DW_ACCESS_public)
DW$1438	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1438, DW_AT_name("MIL5"), DW_AT_symbol_name("_MIL5")
	.dwattr DW$1438, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$1438, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1438, DW_AT_accessibility(DW_ACCESS_public)
DW$1439	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1439, DW_AT_name("MIL6"), DW_AT_symbol_name("_MIL6")
	.dwattr DW$1439, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$1439, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1439, DW_AT_accessibility(DW_ACCESS_public)
DW$1440	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1440, DW_AT_name("MIL7"), DW_AT_symbol_name("_MIL7")
	.dwattr DW$1440, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$1440, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1440, DW_AT_accessibility(DW_ACCESS_public)
DW$1441	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1441, DW_AT_name("MIL8"), DW_AT_symbol_name("_MIL8")
	.dwattr DW$1441, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$1441, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1441, DW_AT_accessibility(DW_ACCESS_public)
DW$1442	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1442, DW_AT_name("MIL9"), DW_AT_symbol_name("_MIL9")
	.dwattr DW$1442, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$1442, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1442, DW_AT_accessibility(DW_ACCESS_public)
DW$1443	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1443, DW_AT_name("MIL10"), DW_AT_symbol_name("_MIL10")
	.dwattr DW$1443, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$1443, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1443, DW_AT_accessibility(DW_ACCESS_public)
DW$1444	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1444, DW_AT_name("MIL11"), DW_AT_symbol_name("_MIL11")
	.dwattr DW$1444, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$1444, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1444, DW_AT_accessibility(DW_ACCESS_public)
DW$1445	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1445, DW_AT_name("MIL12"), DW_AT_symbol_name("_MIL12")
	.dwattr DW$1445, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$1445, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1445, DW_AT_accessibility(DW_ACCESS_public)
DW$1446	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1446, DW_AT_name("MIL13"), DW_AT_symbol_name("_MIL13")
	.dwattr DW$1446, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$1446, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1446, DW_AT_accessibility(DW_ACCESS_public)
DW$1447	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1447, DW_AT_name("MIL14"), DW_AT_symbol_name("_MIL14")
	.dwattr DW$1447, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$1447, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1447, DW_AT_accessibility(DW_ACCESS_public)
DW$1448	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1448, DW_AT_name("MIL15"), DW_AT_symbol_name("_MIL15")
	.dwattr DW$1448, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$1448, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1448, DW_AT_accessibility(DW_ACCESS_public)
DW$1449	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1449, DW_AT_name("MIL16"), DW_AT_symbol_name("_MIL16")
	.dwattr DW$1449, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$1449, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1449, DW_AT_accessibility(DW_ACCESS_public)
DW$1450	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1450, DW_AT_name("MIL17"), DW_AT_symbol_name("_MIL17")
	.dwattr DW$1450, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$1450, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1450, DW_AT_accessibility(DW_ACCESS_public)
DW$1451	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1451, DW_AT_name("MIL18"), DW_AT_symbol_name("_MIL18")
	.dwattr DW$1451, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$1451, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1451, DW_AT_accessibility(DW_ACCESS_public)
DW$1452	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1452, DW_AT_name("MIL19"), DW_AT_symbol_name("_MIL19")
	.dwattr DW$1452, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$1452, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1452, DW_AT_accessibility(DW_ACCESS_public)
DW$1453	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1453, DW_AT_name("MIL20"), DW_AT_symbol_name("_MIL20")
	.dwattr DW$1453, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$1453, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1453, DW_AT_accessibility(DW_ACCESS_public)
DW$1454	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1454, DW_AT_name("MIL21"), DW_AT_symbol_name("_MIL21")
	.dwattr DW$1454, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$1454, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1454, DW_AT_accessibility(DW_ACCESS_public)
DW$1455	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1455, DW_AT_name("MIL22"), DW_AT_symbol_name("_MIL22")
	.dwattr DW$1455, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$1455, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1455, DW_AT_accessibility(DW_ACCESS_public)
DW$1456	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1456, DW_AT_name("MIL23"), DW_AT_symbol_name("_MIL23")
	.dwattr DW$1456, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$1456, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1456, DW_AT_accessibility(DW_ACCESS_public)
DW$1457	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1457, DW_AT_name("MIL24"), DW_AT_symbol_name("_MIL24")
	.dwattr DW$1457, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$1457, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1457, DW_AT_accessibility(DW_ACCESS_public)
DW$1458	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1458, DW_AT_name("MIL25"), DW_AT_symbol_name("_MIL25")
	.dwattr DW$1458, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$1458, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1458, DW_AT_accessibility(DW_ACCESS_public)
DW$1459	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1459, DW_AT_name("MIL26"), DW_AT_symbol_name("_MIL26")
	.dwattr DW$1459, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$1459, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1459, DW_AT_accessibility(DW_ACCESS_public)
DW$1460	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1460, DW_AT_name("MIL27"), DW_AT_symbol_name("_MIL27")
	.dwattr DW$1460, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$1460, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1460, DW_AT_accessibility(DW_ACCESS_public)
DW$1461	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1461, DW_AT_name("MIL28"), DW_AT_symbol_name("_MIL28")
	.dwattr DW$1461, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$1461, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1461, DW_AT_accessibility(DW_ACCESS_public)
DW$1462	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1462, DW_AT_name("MIL29"), DW_AT_symbol_name("_MIL29")
	.dwattr DW$1462, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$1462, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1462, DW_AT_accessibility(DW_ACCESS_public)
DW$1463	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1463, DW_AT_name("MIL30"), DW_AT_symbol_name("_MIL30")
	.dwattr DW$1463, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$1463, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1463, DW_AT_accessibility(DW_ACCESS_public)
DW$1464	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1464, DW_AT_name("MIL31"), DW_AT_symbol_name("_MIL31")
	.dwattr DW$1464, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$1464, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1464, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$107


DW$T$109	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$109, DW_AT_name("CANOPC_BITS")
	.dwattr DW$T$109, DW_AT_byte_size(0x02)
DW$1465	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1465, DW_AT_name("OPC0"), DW_AT_symbol_name("_OPC0")
	.dwattr DW$1465, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$1465, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1465, DW_AT_accessibility(DW_ACCESS_public)
DW$1466	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1466, DW_AT_name("OPC1"), DW_AT_symbol_name("_OPC1")
	.dwattr DW$1466, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$1466, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1466, DW_AT_accessibility(DW_ACCESS_public)
DW$1467	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1467, DW_AT_name("OPC2"), DW_AT_symbol_name("_OPC2")
	.dwattr DW$1467, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$1467, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1467, DW_AT_accessibility(DW_ACCESS_public)
DW$1468	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1468, DW_AT_name("OPC3"), DW_AT_symbol_name("_OPC3")
	.dwattr DW$1468, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$1468, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1468, DW_AT_accessibility(DW_ACCESS_public)
DW$1469	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1469, DW_AT_name("OPC4"), DW_AT_symbol_name("_OPC4")
	.dwattr DW$1469, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$1469, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1469, DW_AT_accessibility(DW_ACCESS_public)
DW$1470	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1470, DW_AT_name("OPC5"), DW_AT_symbol_name("_OPC5")
	.dwattr DW$1470, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$1470, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1470, DW_AT_accessibility(DW_ACCESS_public)
DW$1471	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1471, DW_AT_name("OPC6"), DW_AT_symbol_name("_OPC6")
	.dwattr DW$1471, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$1471, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1471, DW_AT_accessibility(DW_ACCESS_public)
DW$1472	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1472, DW_AT_name("OPC7"), DW_AT_symbol_name("_OPC7")
	.dwattr DW$1472, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$1472, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1472, DW_AT_accessibility(DW_ACCESS_public)
DW$1473	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1473, DW_AT_name("OPC8"), DW_AT_symbol_name("_OPC8")
	.dwattr DW$1473, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$1473, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1473, DW_AT_accessibility(DW_ACCESS_public)
DW$1474	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1474, DW_AT_name("OPC9"), DW_AT_symbol_name("_OPC9")
	.dwattr DW$1474, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$1474, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1474, DW_AT_accessibility(DW_ACCESS_public)
DW$1475	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1475, DW_AT_name("OPC10"), DW_AT_symbol_name("_OPC10")
	.dwattr DW$1475, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$1475, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1475, DW_AT_accessibility(DW_ACCESS_public)
DW$1476	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1476, DW_AT_name("OPC11"), DW_AT_symbol_name("_OPC11")
	.dwattr DW$1476, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$1476, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1476, DW_AT_accessibility(DW_ACCESS_public)
DW$1477	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1477, DW_AT_name("OPC12"), DW_AT_symbol_name("_OPC12")
	.dwattr DW$1477, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$1477, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1477, DW_AT_accessibility(DW_ACCESS_public)
DW$1478	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1478, DW_AT_name("OPC13"), DW_AT_symbol_name("_OPC13")
	.dwattr DW$1478, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$1478, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1478, DW_AT_accessibility(DW_ACCESS_public)
DW$1479	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1479, DW_AT_name("OPC14"), DW_AT_symbol_name("_OPC14")
	.dwattr DW$1479, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$1479, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1479, DW_AT_accessibility(DW_ACCESS_public)
DW$1480	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1480, DW_AT_name("OPC15"), DW_AT_symbol_name("_OPC15")
	.dwattr DW$1480, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$1480, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1480, DW_AT_accessibility(DW_ACCESS_public)
DW$1481	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1481, DW_AT_name("OPC16"), DW_AT_symbol_name("_OPC16")
	.dwattr DW$1481, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$1481, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1481, DW_AT_accessibility(DW_ACCESS_public)
DW$1482	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1482, DW_AT_name("OPC17"), DW_AT_symbol_name("_OPC17")
	.dwattr DW$1482, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$1482, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1482, DW_AT_accessibility(DW_ACCESS_public)
DW$1483	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1483, DW_AT_name("OPC18"), DW_AT_symbol_name("_OPC18")
	.dwattr DW$1483, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$1483, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1483, DW_AT_accessibility(DW_ACCESS_public)
DW$1484	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1484, DW_AT_name("OPC19"), DW_AT_symbol_name("_OPC19")
	.dwattr DW$1484, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$1484, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1484, DW_AT_accessibility(DW_ACCESS_public)
DW$1485	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1485, DW_AT_name("OPC20"), DW_AT_symbol_name("_OPC20")
	.dwattr DW$1485, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$1485, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1485, DW_AT_accessibility(DW_ACCESS_public)
DW$1486	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1486, DW_AT_name("OPC21"), DW_AT_symbol_name("_OPC21")
	.dwattr DW$1486, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$1486, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1486, DW_AT_accessibility(DW_ACCESS_public)
DW$1487	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1487, DW_AT_name("OPC22"), DW_AT_symbol_name("_OPC22")
	.dwattr DW$1487, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$1487, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1487, DW_AT_accessibility(DW_ACCESS_public)
DW$1488	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1488, DW_AT_name("OPC23"), DW_AT_symbol_name("_OPC23")
	.dwattr DW$1488, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$1488, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1488, DW_AT_accessibility(DW_ACCESS_public)
DW$1489	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1489, DW_AT_name("OPC24"), DW_AT_symbol_name("_OPC24")
	.dwattr DW$1489, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$1489, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1489, DW_AT_accessibility(DW_ACCESS_public)
DW$1490	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1490, DW_AT_name("OPC25"), DW_AT_symbol_name("_OPC25")
	.dwattr DW$1490, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$1490, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1490, DW_AT_accessibility(DW_ACCESS_public)
DW$1491	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1491, DW_AT_name("OPC26"), DW_AT_symbol_name("_OPC26")
	.dwattr DW$1491, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$1491, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1491, DW_AT_accessibility(DW_ACCESS_public)
DW$1492	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1492, DW_AT_name("OPC27"), DW_AT_symbol_name("_OPC27")
	.dwattr DW$1492, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$1492, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1492, DW_AT_accessibility(DW_ACCESS_public)
DW$1493	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1493, DW_AT_name("OPC28"), DW_AT_symbol_name("_OPC28")
	.dwattr DW$1493, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$1493, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1493, DW_AT_accessibility(DW_ACCESS_public)
DW$1494	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1494, DW_AT_name("OPC29"), DW_AT_symbol_name("_OPC29")
	.dwattr DW$1494, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$1494, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1494, DW_AT_accessibility(DW_ACCESS_public)
DW$1495	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1495, DW_AT_name("OPC30"), DW_AT_symbol_name("_OPC30")
	.dwattr DW$1495, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$1495, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1495, DW_AT_accessibility(DW_ACCESS_public)
DW$1496	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1496, DW_AT_name("OPC31"), DW_AT_symbol_name("_OPC31")
	.dwattr DW$1496, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$1496, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1496, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$109


DW$T$111	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$111, DW_AT_name("CANTIOC_BITS")
	.dwattr DW$T$111, DW_AT_byte_size(0x02)
DW$1497	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1497, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$1497, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x03)
	.dwattr DW$1497, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1497, DW_AT_accessibility(DW_ACCESS_public)
DW$1498	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1498, DW_AT_name("TXFUNC"), DW_AT_symbol_name("_TXFUNC")
	.dwattr DW$1498, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$1498, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1498, DW_AT_accessibility(DW_ACCESS_public)
DW$1499	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1499, DW_AT_name("rsvd2"), DW_AT_symbol_name("_rsvd2")
	.dwattr DW$1499, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x0c)
	.dwattr DW$1499, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1499, DW_AT_accessibility(DW_ACCESS_public)
DW$1500	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1500, DW_AT_name("rsvd3"), DW_AT_symbol_name("_rsvd3")
	.dwattr DW$1500, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x10)
	.dwattr DW$1500, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1500, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$111


DW$T$113	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$113, DW_AT_name("CANRIOC_BITS")
	.dwattr DW$T$113, DW_AT_byte_size(0x02)
DW$1501	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1501, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$1501, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x03)
	.dwattr DW$1501, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1501, DW_AT_accessibility(DW_ACCESS_public)
DW$1502	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1502, DW_AT_name("RXFUNC"), DW_AT_symbol_name("_RXFUNC")
	.dwattr DW$1502, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$1502, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1502, DW_AT_accessibility(DW_ACCESS_public)
DW$1503	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1503, DW_AT_name("rsvd2"), DW_AT_symbol_name("_rsvd2")
	.dwattr DW$1503, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x0c)
	.dwattr DW$1503, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1503, DW_AT_accessibility(DW_ACCESS_public)
DW$1504	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1504, DW_AT_name("rsvd3"), DW_AT_symbol_name("_rsvd3")
	.dwattr DW$1504, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x10)
	.dwattr DW$1504, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1504, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$113


DW$T$115	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$115, DW_AT_name("CANTOC_BITS")
	.dwattr DW$T$115, DW_AT_byte_size(0x02)
DW$1505	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1505, DW_AT_name("TOC0"), DW_AT_symbol_name("_TOC0")
	.dwattr DW$1505, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$1505, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1505, DW_AT_accessibility(DW_ACCESS_public)
DW$1506	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1506, DW_AT_name("TOC1"), DW_AT_symbol_name("_TOC1")
	.dwattr DW$1506, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$1506, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1506, DW_AT_accessibility(DW_ACCESS_public)
DW$1507	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1507, DW_AT_name("TOC2"), DW_AT_symbol_name("_TOC2")
	.dwattr DW$1507, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$1507, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1507, DW_AT_accessibility(DW_ACCESS_public)
DW$1508	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1508, DW_AT_name("TOC3"), DW_AT_symbol_name("_TOC3")
	.dwattr DW$1508, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$1508, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1508, DW_AT_accessibility(DW_ACCESS_public)
DW$1509	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1509, DW_AT_name("TOC4"), DW_AT_symbol_name("_TOC4")
	.dwattr DW$1509, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$1509, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1509, DW_AT_accessibility(DW_ACCESS_public)
DW$1510	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1510, DW_AT_name("TOC5"), DW_AT_symbol_name("_TOC5")
	.dwattr DW$1510, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$1510, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1510, DW_AT_accessibility(DW_ACCESS_public)
DW$1511	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1511, DW_AT_name("TOC6"), DW_AT_symbol_name("_TOC6")
	.dwattr DW$1511, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$1511, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1511, DW_AT_accessibility(DW_ACCESS_public)
DW$1512	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1512, DW_AT_name("TOC7"), DW_AT_symbol_name("_TOC7")
	.dwattr DW$1512, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$1512, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1512, DW_AT_accessibility(DW_ACCESS_public)
DW$1513	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1513, DW_AT_name("TOC8"), DW_AT_symbol_name("_TOC8")
	.dwattr DW$1513, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$1513, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1513, DW_AT_accessibility(DW_ACCESS_public)
DW$1514	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1514, DW_AT_name("TOC9"), DW_AT_symbol_name("_TOC9")
	.dwattr DW$1514, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$1514, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1514, DW_AT_accessibility(DW_ACCESS_public)
DW$1515	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1515, DW_AT_name("TOC10"), DW_AT_symbol_name("_TOC10")
	.dwattr DW$1515, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$1515, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1515, DW_AT_accessibility(DW_ACCESS_public)
DW$1516	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1516, DW_AT_name("TOC11"), DW_AT_symbol_name("_TOC11")
	.dwattr DW$1516, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$1516, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1516, DW_AT_accessibility(DW_ACCESS_public)
DW$1517	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1517, DW_AT_name("TOC12"), DW_AT_symbol_name("_TOC12")
	.dwattr DW$1517, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$1517, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1517, DW_AT_accessibility(DW_ACCESS_public)
DW$1518	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1518, DW_AT_name("TOC13"), DW_AT_symbol_name("_TOC13")
	.dwattr DW$1518, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$1518, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1518, DW_AT_accessibility(DW_ACCESS_public)
DW$1519	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1519, DW_AT_name("TOC14"), DW_AT_symbol_name("_TOC14")
	.dwattr DW$1519, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$1519, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1519, DW_AT_accessibility(DW_ACCESS_public)
DW$1520	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1520, DW_AT_name("TOC15"), DW_AT_symbol_name("_TOC15")
	.dwattr DW$1520, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$1520, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1520, DW_AT_accessibility(DW_ACCESS_public)
DW$1521	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1521, DW_AT_name("TOC16"), DW_AT_symbol_name("_TOC16")
	.dwattr DW$1521, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$1521, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1521, DW_AT_accessibility(DW_ACCESS_public)
DW$1522	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1522, DW_AT_name("TOC17"), DW_AT_symbol_name("_TOC17")
	.dwattr DW$1522, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$1522, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1522, DW_AT_accessibility(DW_ACCESS_public)
DW$1523	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1523, DW_AT_name("TOC18"), DW_AT_symbol_name("_TOC18")
	.dwattr DW$1523, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$1523, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1523, DW_AT_accessibility(DW_ACCESS_public)
DW$1524	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1524, DW_AT_name("TOC19"), DW_AT_symbol_name("_TOC19")
	.dwattr DW$1524, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$1524, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1524, DW_AT_accessibility(DW_ACCESS_public)
DW$1525	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1525, DW_AT_name("TOC20"), DW_AT_symbol_name("_TOC20")
	.dwattr DW$1525, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$1525, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1525, DW_AT_accessibility(DW_ACCESS_public)
DW$1526	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1526, DW_AT_name("TOC21"), DW_AT_symbol_name("_TOC21")
	.dwattr DW$1526, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$1526, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1526, DW_AT_accessibility(DW_ACCESS_public)
DW$1527	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1527, DW_AT_name("TOC22"), DW_AT_symbol_name("_TOC22")
	.dwattr DW$1527, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$1527, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1527, DW_AT_accessibility(DW_ACCESS_public)
DW$1528	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1528, DW_AT_name("TOC23"), DW_AT_symbol_name("_TOC23")
	.dwattr DW$1528, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$1528, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1528, DW_AT_accessibility(DW_ACCESS_public)
DW$1529	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1529, DW_AT_name("TOC24"), DW_AT_symbol_name("_TOC24")
	.dwattr DW$1529, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$1529, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1529, DW_AT_accessibility(DW_ACCESS_public)
DW$1530	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1530, DW_AT_name("TOC25"), DW_AT_symbol_name("_TOC25")
	.dwattr DW$1530, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$1530, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1530, DW_AT_accessibility(DW_ACCESS_public)
DW$1531	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1531, DW_AT_name("TOC26"), DW_AT_symbol_name("_TOC26")
	.dwattr DW$1531, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$1531, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1531, DW_AT_accessibility(DW_ACCESS_public)
DW$1532	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1532, DW_AT_name("TOC27"), DW_AT_symbol_name("_TOC27")
	.dwattr DW$1532, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$1532, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1532, DW_AT_accessibility(DW_ACCESS_public)
DW$1533	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1533, DW_AT_name("TOC28"), DW_AT_symbol_name("_TOC28")
	.dwattr DW$1533, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$1533, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1533, DW_AT_accessibility(DW_ACCESS_public)
DW$1534	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1534, DW_AT_name("TOC29"), DW_AT_symbol_name("_TOC29")
	.dwattr DW$1534, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$1534, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1534, DW_AT_accessibility(DW_ACCESS_public)
DW$1535	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1535, DW_AT_name("TOC30"), DW_AT_symbol_name("_TOC30")
	.dwattr DW$1535, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$1535, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1535, DW_AT_accessibility(DW_ACCESS_public)
DW$1536	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1536, DW_AT_name("TOC31"), DW_AT_symbol_name("_TOC31")
	.dwattr DW$1536, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$1536, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1536, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$115


DW$T$117	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$117, DW_AT_name("CANTOS_BITS")
	.dwattr DW$T$117, DW_AT_byte_size(0x02)
DW$1537	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1537, DW_AT_name("TOS0"), DW_AT_symbol_name("_TOS0")
	.dwattr DW$1537, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$1537, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1537, DW_AT_accessibility(DW_ACCESS_public)
DW$1538	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1538, DW_AT_name("TOS1"), DW_AT_symbol_name("_TOS1")
	.dwattr DW$1538, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$1538, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1538, DW_AT_accessibility(DW_ACCESS_public)
DW$1539	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1539, DW_AT_name("TOS2"), DW_AT_symbol_name("_TOS2")
	.dwattr DW$1539, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$1539, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1539, DW_AT_accessibility(DW_ACCESS_public)
DW$1540	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1540, DW_AT_name("TOS3"), DW_AT_symbol_name("_TOS3")
	.dwattr DW$1540, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$1540, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1540, DW_AT_accessibility(DW_ACCESS_public)
DW$1541	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1541, DW_AT_name("TOS4"), DW_AT_symbol_name("_TOS4")
	.dwattr DW$1541, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$1541, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1541, DW_AT_accessibility(DW_ACCESS_public)
DW$1542	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1542, DW_AT_name("TOS5"), DW_AT_symbol_name("_TOS5")
	.dwattr DW$1542, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$1542, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1542, DW_AT_accessibility(DW_ACCESS_public)
DW$1543	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1543, DW_AT_name("TOS6"), DW_AT_symbol_name("_TOS6")
	.dwattr DW$1543, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$1543, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1543, DW_AT_accessibility(DW_ACCESS_public)
DW$1544	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1544, DW_AT_name("TOS7"), DW_AT_symbol_name("_TOS7")
	.dwattr DW$1544, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$1544, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1544, DW_AT_accessibility(DW_ACCESS_public)
DW$1545	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1545, DW_AT_name("TOS8"), DW_AT_symbol_name("_TOS8")
	.dwattr DW$1545, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$1545, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1545, DW_AT_accessibility(DW_ACCESS_public)
DW$1546	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1546, DW_AT_name("TOS9"), DW_AT_symbol_name("_TOS9")
	.dwattr DW$1546, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$1546, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1546, DW_AT_accessibility(DW_ACCESS_public)
DW$1547	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1547, DW_AT_name("TOS10"), DW_AT_symbol_name("_TOS10")
	.dwattr DW$1547, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$1547, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1547, DW_AT_accessibility(DW_ACCESS_public)
DW$1548	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1548, DW_AT_name("TOS11"), DW_AT_symbol_name("_TOS11")
	.dwattr DW$1548, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$1548, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1548, DW_AT_accessibility(DW_ACCESS_public)
DW$1549	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1549, DW_AT_name("TOS12"), DW_AT_symbol_name("_TOS12")
	.dwattr DW$1549, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$1549, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1549, DW_AT_accessibility(DW_ACCESS_public)
DW$1550	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1550, DW_AT_name("TOS13"), DW_AT_symbol_name("_TOS13")
	.dwattr DW$1550, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$1550, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1550, DW_AT_accessibility(DW_ACCESS_public)
DW$1551	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1551, DW_AT_name("TOS14"), DW_AT_symbol_name("_TOS14")
	.dwattr DW$1551, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$1551, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1551, DW_AT_accessibility(DW_ACCESS_public)
DW$1552	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1552, DW_AT_name("TOS15"), DW_AT_symbol_name("_TOS15")
	.dwattr DW$1552, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$1552, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1552, DW_AT_accessibility(DW_ACCESS_public)
DW$1553	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1553, DW_AT_name("TOS16"), DW_AT_symbol_name("_TOS16")
	.dwattr DW$1553, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$1553, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1553, DW_AT_accessibility(DW_ACCESS_public)
DW$1554	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1554, DW_AT_name("TOS17"), DW_AT_symbol_name("_TOS17")
	.dwattr DW$1554, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$1554, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1554, DW_AT_accessibility(DW_ACCESS_public)
DW$1555	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1555, DW_AT_name("TOS18"), DW_AT_symbol_name("_TOS18")
	.dwattr DW$1555, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$1555, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1555, DW_AT_accessibility(DW_ACCESS_public)
DW$1556	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1556, DW_AT_name("TOS19"), DW_AT_symbol_name("_TOS19")
	.dwattr DW$1556, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$1556, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1556, DW_AT_accessibility(DW_ACCESS_public)
DW$1557	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1557, DW_AT_name("TOS20"), DW_AT_symbol_name("_TOS20")
	.dwattr DW$1557, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$1557, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1557, DW_AT_accessibility(DW_ACCESS_public)
DW$1558	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1558, DW_AT_name("TOS21"), DW_AT_symbol_name("_TOS21")
	.dwattr DW$1558, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$1558, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1558, DW_AT_accessibility(DW_ACCESS_public)
DW$1559	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1559, DW_AT_name("TOS22"), DW_AT_symbol_name("_TOS22")
	.dwattr DW$1559, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$1559, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1559, DW_AT_accessibility(DW_ACCESS_public)
DW$1560	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1560, DW_AT_name("TOS23"), DW_AT_symbol_name("_TOS23")
	.dwattr DW$1560, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$1560, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1560, DW_AT_accessibility(DW_ACCESS_public)
DW$1561	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1561, DW_AT_name("TOS24"), DW_AT_symbol_name("_TOS24")
	.dwattr DW$1561, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$1561, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1561, DW_AT_accessibility(DW_ACCESS_public)
DW$1562	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1562, DW_AT_name("TOS25"), DW_AT_symbol_name("_TOS25")
	.dwattr DW$1562, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$1562, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1562, DW_AT_accessibility(DW_ACCESS_public)
DW$1563	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1563, DW_AT_name("TOS26"), DW_AT_symbol_name("_TOS26")
	.dwattr DW$1563, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$1563, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1563, DW_AT_accessibility(DW_ACCESS_public)
DW$1564	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1564, DW_AT_name("TOS27"), DW_AT_symbol_name("_TOS27")
	.dwattr DW$1564, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$1564, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1564, DW_AT_accessibility(DW_ACCESS_public)
DW$1565	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1565, DW_AT_name("TOS28"), DW_AT_symbol_name("_TOS28")
	.dwattr DW$1565, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$1565, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1565, DW_AT_accessibility(DW_ACCESS_public)
DW$1566	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1566, DW_AT_name("TOS29"), DW_AT_symbol_name("_TOS29")
	.dwattr DW$1566, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$1566, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1566, DW_AT_accessibility(DW_ACCESS_public)
DW$1567	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1567, DW_AT_name("TOS30"), DW_AT_symbol_name("_TOS30")
	.dwattr DW$1567, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$1567, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1567, DW_AT_accessibility(DW_ACCESS_public)
DW$1568	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1568, DW_AT_name("TOS31"), DW_AT_symbol_name("_TOS31")
	.dwattr DW$1568, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$1568, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1568, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$117


DW$T$121	.dwtag  DW_TAG_union_type
	.dwattr DW$T$121, DW_AT_name("CANMSGID_REG")
	.dwattr DW$T$121, DW_AT_byte_size(0x02)
DW$1569	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$48)
	.dwattr DW$1569, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$1569, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1569, DW_AT_accessibility(DW_ACCESS_public)
DW$1570	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$120)
	.dwattr DW$1570, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$1570, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1570, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$121


DW$T$123	.dwtag  DW_TAG_union_type
	.dwattr DW$T$123, DW_AT_name("CANMSGCTRL_REG")
	.dwattr DW$T$123, DW_AT_byte_size(0x02)
DW$1571	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$48)
	.dwattr DW$1571, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$1571, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1571, DW_AT_accessibility(DW_ACCESS_public)
DW$1572	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$122)
	.dwattr DW$1572, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$1572, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1572, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$123


DW$T$126	.dwtag  DW_TAG_union_type
	.dwattr DW$T$126, DW_AT_name("CANMDL_REG")
	.dwattr DW$T$126, DW_AT_byte_size(0x02)
DW$1573	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$48)
	.dwattr DW$1573, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$1573, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1573, DW_AT_accessibility(DW_ACCESS_public)
DW$1574	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$124)
	.dwattr DW$1574, DW_AT_name("word"), DW_AT_symbol_name("_word")
	.dwattr DW$1574, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1574, DW_AT_accessibility(DW_ACCESS_public)
DW$1575	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$125)
	.dwattr DW$1575, DW_AT_name("byte"), DW_AT_symbol_name("_byte")
	.dwattr DW$1575, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1575, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$126


DW$T$129	.dwtag  DW_TAG_union_type
	.dwattr DW$T$129, DW_AT_name("CANMDH_REG")
	.dwattr DW$T$129, DW_AT_byte_size(0x02)
DW$1576	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$48)
	.dwattr DW$1576, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$1576, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1576, DW_AT_accessibility(DW_ACCESS_public)
DW$1577	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$127)
	.dwattr DW$1577, DW_AT_name("word"), DW_AT_symbol_name("_word")
	.dwattr DW$1577, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1577, DW_AT_accessibility(DW_ACCESS_public)
DW$1578	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$128)
	.dwattr DW$1578, DW_AT_name("byte"), DW_AT_symbol_name("_byte")
	.dwattr DW$1578, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1578, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$129


DW$T$132	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$132, DW_AT_name("CANLAM_BITS")
	.dwattr DW$T$132, DW_AT_byte_size(0x02)
DW$1579	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1579, DW_AT_name("LAM_L"), DW_AT_symbol_name("_LAM_L")
	.dwattr DW$1579, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x10)
	.dwattr DW$1579, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1579, DW_AT_accessibility(DW_ACCESS_public)
DW$1580	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1580, DW_AT_name("LAM_H"), DW_AT_symbol_name("_LAM_H")
	.dwattr DW$1580, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x0d)
	.dwattr DW$1580, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1580, DW_AT_accessibility(DW_ACCESS_public)
DW$1581	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1581, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$1581, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x02)
	.dwattr DW$1581, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1581, DW_AT_accessibility(DW_ACCESS_public)
DW$1582	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1582, DW_AT_name("LAMI"), DW_AT_symbol_name("_LAMI")
	.dwattr DW$1582, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$1582, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1582, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$132


DW$T$137	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$137, DW_AT_name("TBCTL_BITS")
	.dwattr DW$T$137, DW_AT_byte_size(0x01)
DW$1583	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1583, DW_AT_name("CTRMODE"), DW_AT_symbol_name("_CTRMODE")
	.dwattr DW$1583, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x02)
	.dwattr DW$1583, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1583, DW_AT_accessibility(DW_ACCESS_public)
DW$1584	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1584, DW_AT_name("PHSEN"), DW_AT_symbol_name("_PHSEN")
	.dwattr DW$1584, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$1584, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1584, DW_AT_accessibility(DW_ACCESS_public)
DW$1585	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1585, DW_AT_name("PRDLD"), DW_AT_symbol_name("_PRDLD")
	.dwattr DW$1585, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$1585, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1585, DW_AT_accessibility(DW_ACCESS_public)
DW$1586	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1586, DW_AT_name("SYNCOSEL"), DW_AT_symbol_name("_SYNCOSEL")
	.dwattr DW$1586, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x02)
	.dwattr DW$1586, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1586, DW_AT_accessibility(DW_ACCESS_public)
DW$1587	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1587, DW_AT_name("SWFSYNC"), DW_AT_symbol_name("_SWFSYNC")
	.dwattr DW$1587, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$1587, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1587, DW_AT_accessibility(DW_ACCESS_public)
DW$1588	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1588, DW_AT_name("HSPCLKDIV"), DW_AT_symbol_name("_HSPCLKDIV")
	.dwattr DW$1588, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x03)
	.dwattr DW$1588, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1588, DW_AT_accessibility(DW_ACCESS_public)
DW$1589	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1589, DW_AT_name("CLKDIV"), DW_AT_symbol_name("_CLKDIV")
	.dwattr DW$1589, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x03)
	.dwattr DW$1589, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1589, DW_AT_accessibility(DW_ACCESS_public)
DW$1590	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1590, DW_AT_name("PHSDIR"), DW_AT_symbol_name("_PHSDIR")
	.dwattr DW$1590, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$1590, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1590, DW_AT_accessibility(DW_ACCESS_public)
DW$1591	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1591, DW_AT_name("FREE_SOFT"), DW_AT_symbol_name("_FREE_SOFT")
	.dwattr DW$1591, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x02)
	.dwattr DW$1591, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1591, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$137


DW$T$139	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$139, DW_AT_name("TBSTS_BITS")
	.dwattr DW$T$139, DW_AT_byte_size(0x01)
DW$1592	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1592, DW_AT_name("CTRDIR"), DW_AT_symbol_name("_CTRDIR")
	.dwattr DW$1592, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$1592, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1592, DW_AT_accessibility(DW_ACCESS_public)
DW$1593	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1593, DW_AT_name("SYNCI"), DW_AT_symbol_name("_SYNCI")
	.dwattr DW$1593, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$1593, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1593, DW_AT_accessibility(DW_ACCESS_public)
DW$1594	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1594, DW_AT_name("CTRMAX"), DW_AT_symbol_name("_CTRMAX")
	.dwattr DW$1594, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$1594, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1594, DW_AT_accessibility(DW_ACCESS_public)
DW$1595	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1595, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$1595, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x0d)
	.dwattr DW$1595, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1595, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$139


DW$T$141	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$141, DW_AT_name("TBPHS_HRPWM_REG")
	.dwattr DW$T$141, DW_AT_byte_size(0x02)
DW$1596	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1596, DW_AT_name("TBPHSHR"), DW_AT_symbol_name("_TBPHSHR")
	.dwattr DW$1596, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1596, DW_AT_accessibility(DW_ACCESS_public)
DW$1597	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1597, DW_AT_name("TBPHS"), DW_AT_symbol_name("_TBPHS")
	.dwattr DW$1597, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1597, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$141


DW$T$143	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$143, DW_AT_name("CMPCTL_BITS")
	.dwattr DW$T$143, DW_AT_byte_size(0x01)
DW$1598	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1598, DW_AT_name("LOADAMODE"), DW_AT_symbol_name("_LOADAMODE")
	.dwattr DW$1598, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x02)
	.dwattr DW$1598, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1598, DW_AT_accessibility(DW_ACCESS_public)
DW$1599	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1599, DW_AT_name("LOADBMODE"), DW_AT_symbol_name("_LOADBMODE")
	.dwattr DW$1599, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x02)
	.dwattr DW$1599, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1599, DW_AT_accessibility(DW_ACCESS_public)
DW$1600	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1600, DW_AT_name("SHDWAMODE"), DW_AT_symbol_name("_SHDWAMODE")
	.dwattr DW$1600, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$1600, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1600, DW_AT_accessibility(DW_ACCESS_public)
DW$1601	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1601, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$1601, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$1601, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1601, DW_AT_accessibility(DW_ACCESS_public)
DW$1602	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1602, DW_AT_name("SHDWBMODE"), DW_AT_symbol_name("_SHDWBMODE")
	.dwattr DW$1602, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$1602, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1602, DW_AT_accessibility(DW_ACCESS_public)
DW$1603	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1603, DW_AT_name("rsvd2"), DW_AT_symbol_name("_rsvd2")
	.dwattr DW$1603, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$1603, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1603, DW_AT_accessibility(DW_ACCESS_public)
DW$1604	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1604, DW_AT_name("SHDWAFULL"), DW_AT_symbol_name("_SHDWAFULL")
	.dwattr DW$1604, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$1604, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1604, DW_AT_accessibility(DW_ACCESS_public)
DW$1605	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1605, DW_AT_name("SHDWBFULL"), DW_AT_symbol_name("_SHDWBFULL")
	.dwattr DW$1605, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$1605, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1605, DW_AT_accessibility(DW_ACCESS_public)
DW$1606	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1606, DW_AT_name("rsvd3"), DW_AT_symbol_name("_rsvd3")
	.dwattr DW$1606, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x06)
	.dwattr DW$1606, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1606, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$143


DW$T$145	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$145, DW_AT_name("CMPA_HRPWM_REG")
	.dwattr DW$T$145, DW_AT_byte_size(0x02)
DW$1607	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1607, DW_AT_name("CMPAHR"), DW_AT_symbol_name("_CMPAHR")
	.dwattr DW$1607, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1607, DW_AT_accessibility(DW_ACCESS_public)
DW$1608	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1608, DW_AT_name("CMPA"), DW_AT_symbol_name("_CMPA")
	.dwattr DW$1608, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1608, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$145


DW$T$147	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$147, DW_AT_name("AQCTL_BITS")
	.dwattr DW$T$147, DW_AT_byte_size(0x01)
DW$1609	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1609, DW_AT_name("ZRO"), DW_AT_symbol_name("_ZRO")
	.dwattr DW$1609, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x02)
	.dwattr DW$1609, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1609, DW_AT_accessibility(DW_ACCESS_public)
DW$1610	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1610, DW_AT_name("PRD"), DW_AT_symbol_name("_PRD")
	.dwattr DW$1610, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x02)
	.dwattr DW$1610, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1610, DW_AT_accessibility(DW_ACCESS_public)
DW$1611	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1611, DW_AT_name("CAU"), DW_AT_symbol_name("_CAU")
	.dwattr DW$1611, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x02)
	.dwattr DW$1611, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1611, DW_AT_accessibility(DW_ACCESS_public)
DW$1612	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1612, DW_AT_name("CAD"), DW_AT_symbol_name("_CAD")
	.dwattr DW$1612, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x02)
	.dwattr DW$1612, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1612, DW_AT_accessibility(DW_ACCESS_public)
DW$1613	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1613, DW_AT_name("CBU"), DW_AT_symbol_name("_CBU")
	.dwattr DW$1613, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x02)
	.dwattr DW$1613, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1613, DW_AT_accessibility(DW_ACCESS_public)
DW$1614	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1614, DW_AT_name("CBD"), DW_AT_symbol_name("_CBD")
	.dwattr DW$1614, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x02)
	.dwattr DW$1614, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1614, DW_AT_accessibility(DW_ACCESS_public)
DW$1615	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1615, DW_AT_name("rsvd"), DW_AT_symbol_name("_rsvd")
	.dwattr DW$1615, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x04)
	.dwattr DW$1615, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1615, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$147


DW$T$149	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$149, DW_AT_name("AQSFRC_BITS")
	.dwattr DW$T$149, DW_AT_byte_size(0x01)
DW$1616	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1616, DW_AT_name("ACTSFA"), DW_AT_symbol_name("_ACTSFA")
	.dwattr DW$1616, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x02)
	.dwattr DW$1616, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1616, DW_AT_accessibility(DW_ACCESS_public)
DW$1617	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1617, DW_AT_name("OTSFA"), DW_AT_symbol_name("_OTSFA")
	.dwattr DW$1617, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$1617, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1617, DW_AT_accessibility(DW_ACCESS_public)
DW$1618	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1618, DW_AT_name("ACTSFB"), DW_AT_symbol_name("_ACTSFB")
	.dwattr DW$1618, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x02)
	.dwattr DW$1618, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1618, DW_AT_accessibility(DW_ACCESS_public)
DW$1619	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1619, DW_AT_name("OTSFB"), DW_AT_symbol_name("_OTSFB")
	.dwattr DW$1619, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$1619, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1619, DW_AT_accessibility(DW_ACCESS_public)
DW$1620	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1620, DW_AT_name("RLDCSF"), DW_AT_symbol_name("_RLDCSF")
	.dwattr DW$1620, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x02)
	.dwattr DW$1620, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1620, DW_AT_accessibility(DW_ACCESS_public)
DW$1621	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1621, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$1621, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x08)
	.dwattr DW$1621, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1621, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$149


DW$T$151	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$151, DW_AT_name("AQCSFRC_BITS")
	.dwattr DW$T$151, DW_AT_byte_size(0x01)
DW$1622	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1622, DW_AT_name("CSFA"), DW_AT_symbol_name("_CSFA")
	.dwattr DW$1622, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x02)
	.dwattr DW$1622, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1622, DW_AT_accessibility(DW_ACCESS_public)
DW$1623	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1623, DW_AT_name("CSFB"), DW_AT_symbol_name("_CSFB")
	.dwattr DW$1623, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x02)
	.dwattr DW$1623, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1623, DW_AT_accessibility(DW_ACCESS_public)
DW$1624	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1624, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$1624, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x0c)
	.dwattr DW$1624, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1624, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$151


DW$T$153	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$153, DW_AT_name("DBCTL_BITS")
	.dwattr DW$T$153, DW_AT_byte_size(0x01)
DW$1625	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1625, DW_AT_name("OUT_MODE"), DW_AT_symbol_name("_OUT_MODE")
	.dwattr DW$1625, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x02)
	.dwattr DW$1625, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1625, DW_AT_accessibility(DW_ACCESS_public)
DW$1626	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1626, DW_AT_name("POLSEL"), DW_AT_symbol_name("_POLSEL")
	.dwattr DW$1626, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x02)
	.dwattr DW$1626, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1626, DW_AT_accessibility(DW_ACCESS_public)
DW$1627	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1627, DW_AT_name("IN_MODE"), DW_AT_symbol_name("_IN_MODE")
	.dwattr DW$1627, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x02)
	.dwattr DW$1627, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1627, DW_AT_accessibility(DW_ACCESS_public)
DW$1628	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1628, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$1628, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x0a)
	.dwattr DW$1628, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1628, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$153


DW$T$155	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$155, DW_AT_name("TZSEL_BITS")
	.dwattr DW$T$155, DW_AT_byte_size(0x01)
DW$1629	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1629, DW_AT_name("CBC1"), DW_AT_symbol_name("_CBC1")
	.dwattr DW$1629, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$1629, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1629, DW_AT_accessibility(DW_ACCESS_public)
DW$1630	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1630, DW_AT_name("CBC2"), DW_AT_symbol_name("_CBC2")
	.dwattr DW$1630, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$1630, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1630, DW_AT_accessibility(DW_ACCESS_public)
DW$1631	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1631, DW_AT_name("CBC3"), DW_AT_symbol_name("_CBC3")
	.dwattr DW$1631, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$1631, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1631, DW_AT_accessibility(DW_ACCESS_public)
DW$1632	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1632, DW_AT_name("CBC4"), DW_AT_symbol_name("_CBC4")
	.dwattr DW$1632, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$1632, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1632, DW_AT_accessibility(DW_ACCESS_public)
DW$1633	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1633, DW_AT_name("CBC5"), DW_AT_symbol_name("_CBC5")
	.dwattr DW$1633, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$1633, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1633, DW_AT_accessibility(DW_ACCESS_public)
DW$1634	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1634, DW_AT_name("CBC6"), DW_AT_symbol_name("_CBC6")
	.dwattr DW$1634, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$1634, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1634, DW_AT_accessibility(DW_ACCESS_public)
DW$1635	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1635, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$1635, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x02)
	.dwattr DW$1635, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1635, DW_AT_accessibility(DW_ACCESS_public)
DW$1636	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1636, DW_AT_name("OSHT1"), DW_AT_symbol_name("_OSHT1")
	.dwattr DW$1636, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$1636, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1636, DW_AT_accessibility(DW_ACCESS_public)
DW$1637	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1637, DW_AT_name("OSHT2"), DW_AT_symbol_name("_OSHT2")
	.dwattr DW$1637, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$1637, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1637, DW_AT_accessibility(DW_ACCESS_public)
DW$1638	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1638, DW_AT_name("OSHT3"), DW_AT_symbol_name("_OSHT3")
	.dwattr DW$1638, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$1638, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1638, DW_AT_accessibility(DW_ACCESS_public)
DW$1639	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1639, DW_AT_name("OSHT4"), DW_AT_symbol_name("_OSHT4")
	.dwattr DW$1639, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$1639, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1639, DW_AT_accessibility(DW_ACCESS_public)
DW$1640	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1640, DW_AT_name("OSHT5"), DW_AT_symbol_name("_OSHT5")
	.dwattr DW$1640, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$1640, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1640, DW_AT_accessibility(DW_ACCESS_public)
DW$1641	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1641, DW_AT_name("OSHT6"), DW_AT_symbol_name("_OSHT6")
	.dwattr DW$1641, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$1641, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1641, DW_AT_accessibility(DW_ACCESS_public)
DW$1642	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1642, DW_AT_name("rsvd2"), DW_AT_symbol_name("_rsvd2")
	.dwattr DW$1642, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x02)
	.dwattr DW$1642, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1642, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$155


DW$T$157	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$157, DW_AT_name("TZCTL_BITS")
	.dwattr DW$T$157, DW_AT_byte_size(0x01)
DW$1643	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1643, DW_AT_name("TZA"), DW_AT_symbol_name("_TZA")
	.dwattr DW$1643, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x02)
	.dwattr DW$1643, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1643, DW_AT_accessibility(DW_ACCESS_public)
DW$1644	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1644, DW_AT_name("TZB"), DW_AT_symbol_name("_TZB")
	.dwattr DW$1644, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x02)
	.dwattr DW$1644, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1644, DW_AT_accessibility(DW_ACCESS_public)
DW$1645	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1645, DW_AT_name("rsvd"), DW_AT_symbol_name("_rsvd")
	.dwattr DW$1645, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x0c)
	.dwattr DW$1645, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1645, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$157


DW$T$159	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$159, DW_AT_name("TZEINT_BITS")
	.dwattr DW$T$159, DW_AT_byte_size(0x01)
DW$1646	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1646, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$1646, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$1646, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1646, DW_AT_accessibility(DW_ACCESS_public)
DW$1647	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1647, DW_AT_name("CBC"), DW_AT_symbol_name("_CBC")
	.dwattr DW$1647, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$1647, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1647, DW_AT_accessibility(DW_ACCESS_public)
DW$1648	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1648, DW_AT_name("OST"), DW_AT_symbol_name("_OST")
	.dwattr DW$1648, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$1648, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1648, DW_AT_accessibility(DW_ACCESS_public)
DW$1649	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1649, DW_AT_name("rsvd2"), DW_AT_symbol_name("_rsvd2")
	.dwattr DW$1649, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x0d)
	.dwattr DW$1649, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1649, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$159


DW$T$161	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$161, DW_AT_name("TZFLG_BITS")
	.dwattr DW$T$161, DW_AT_byte_size(0x01)
DW$1650	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1650, DW_AT_name("INT"), DW_AT_symbol_name("_INT")
	.dwattr DW$1650, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$1650, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1650, DW_AT_accessibility(DW_ACCESS_public)
DW$1651	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1651, DW_AT_name("CBC"), DW_AT_symbol_name("_CBC")
	.dwattr DW$1651, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$1651, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1651, DW_AT_accessibility(DW_ACCESS_public)
DW$1652	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1652, DW_AT_name("OST"), DW_AT_symbol_name("_OST")
	.dwattr DW$1652, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$1652, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1652, DW_AT_accessibility(DW_ACCESS_public)
DW$1653	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1653, DW_AT_name("rsvd2"), DW_AT_symbol_name("_rsvd2")
	.dwattr DW$1653, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x0d)
	.dwattr DW$1653, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1653, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$161


DW$T$163	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$163, DW_AT_name("TZCLR_BITS")
	.dwattr DW$T$163, DW_AT_byte_size(0x01)
DW$1654	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1654, DW_AT_name("INT"), DW_AT_symbol_name("_INT")
	.dwattr DW$1654, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$1654, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1654, DW_AT_accessibility(DW_ACCESS_public)
DW$1655	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1655, DW_AT_name("CBC"), DW_AT_symbol_name("_CBC")
	.dwattr DW$1655, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$1655, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1655, DW_AT_accessibility(DW_ACCESS_public)
DW$1656	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1656, DW_AT_name("OST"), DW_AT_symbol_name("_OST")
	.dwattr DW$1656, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$1656, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1656, DW_AT_accessibility(DW_ACCESS_public)
DW$1657	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1657, DW_AT_name("rsvd2"), DW_AT_symbol_name("_rsvd2")
	.dwattr DW$1657, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x0d)
	.dwattr DW$1657, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1657, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$163


DW$T$165	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$165, DW_AT_name("TZFRC_BITS")
	.dwattr DW$T$165, DW_AT_byte_size(0x01)
DW$1658	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1658, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$1658, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$1658, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1658, DW_AT_accessibility(DW_ACCESS_public)
DW$1659	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1659, DW_AT_name("CBC"), DW_AT_symbol_name("_CBC")
	.dwattr DW$1659, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$1659, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1659, DW_AT_accessibility(DW_ACCESS_public)
DW$1660	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1660, DW_AT_name("OST"), DW_AT_symbol_name("_OST")
	.dwattr DW$1660, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$1660, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1660, DW_AT_accessibility(DW_ACCESS_public)
DW$1661	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1661, DW_AT_name("rsvd2"), DW_AT_symbol_name("_rsvd2")
	.dwattr DW$1661, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x0d)
	.dwattr DW$1661, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1661, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$165


DW$T$167	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$167, DW_AT_name("ETSEL_BITS")
	.dwattr DW$T$167, DW_AT_byte_size(0x01)
DW$1662	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1662, DW_AT_name("INTSEL"), DW_AT_symbol_name("_INTSEL")
	.dwattr DW$1662, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x03)
	.dwattr DW$1662, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1662, DW_AT_accessibility(DW_ACCESS_public)
DW$1663	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1663, DW_AT_name("INTEN"), DW_AT_symbol_name("_INTEN")
	.dwattr DW$1663, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$1663, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1663, DW_AT_accessibility(DW_ACCESS_public)
DW$1664	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1664, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$1664, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x04)
	.dwattr DW$1664, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1664, DW_AT_accessibility(DW_ACCESS_public)
DW$1665	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1665, DW_AT_name("SOCASEL"), DW_AT_symbol_name("_SOCASEL")
	.dwattr DW$1665, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x03)
	.dwattr DW$1665, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1665, DW_AT_accessibility(DW_ACCESS_public)
DW$1666	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1666, DW_AT_name("SOCAEN"), DW_AT_symbol_name("_SOCAEN")
	.dwattr DW$1666, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$1666, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1666, DW_AT_accessibility(DW_ACCESS_public)
DW$1667	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1667, DW_AT_name("SOCBSEL"), DW_AT_symbol_name("_SOCBSEL")
	.dwattr DW$1667, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x03)
	.dwattr DW$1667, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1667, DW_AT_accessibility(DW_ACCESS_public)
DW$1668	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1668, DW_AT_name("SOCBEN"), DW_AT_symbol_name("_SOCBEN")
	.dwattr DW$1668, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$1668, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1668, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$167


DW$T$169	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$169, DW_AT_name("ETPS_BITS")
	.dwattr DW$T$169, DW_AT_byte_size(0x01)
DW$1669	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1669, DW_AT_name("INTPRD"), DW_AT_symbol_name("_INTPRD")
	.dwattr DW$1669, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x02)
	.dwattr DW$1669, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1669, DW_AT_accessibility(DW_ACCESS_public)
DW$1670	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1670, DW_AT_name("INTCNT"), DW_AT_symbol_name("_INTCNT")
	.dwattr DW$1670, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x02)
	.dwattr DW$1670, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1670, DW_AT_accessibility(DW_ACCESS_public)
DW$1671	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1671, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$1671, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x04)
	.dwattr DW$1671, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1671, DW_AT_accessibility(DW_ACCESS_public)
DW$1672	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1672, DW_AT_name("SOCAPRD"), DW_AT_symbol_name("_SOCAPRD")
	.dwattr DW$1672, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x02)
	.dwattr DW$1672, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1672, DW_AT_accessibility(DW_ACCESS_public)
DW$1673	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1673, DW_AT_name("SOCACNT"), DW_AT_symbol_name("_SOCACNT")
	.dwattr DW$1673, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x02)
	.dwattr DW$1673, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1673, DW_AT_accessibility(DW_ACCESS_public)
DW$1674	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1674, DW_AT_name("SOCBPRD"), DW_AT_symbol_name("_SOCBPRD")
	.dwattr DW$1674, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x02)
	.dwattr DW$1674, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1674, DW_AT_accessibility(DW_ACCESS_public)
DW$1675	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1675, DW_AT_name("SOCBCNT"), DW_AT_symbol_name("_SOCBCNT")
	.dwattr DW$1675, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x02)
	.dwattr DW$1675, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1675, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$169


DW$T$171	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$171, DW_AT_name("ETFLG_BITS")
	.dwattr DW$T$171, DW_AT_byte_size(0x01)
DW$1676	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1676, DW_AT_name("INT"), DW_AT_symbol_name("_INT")
	.dwattr DW$1676, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$1676, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1676, DW_AT_accessibility(DW_ACCESS_public)
DW$1677	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1677, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$1677, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$1677, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1677, DW_AT_accessibility(DW_ACCESS_public)
DW$1678	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1678, DW_AT_name("SOCA"), DW_AT_symbol_name("_SOCA")
	.dwattr DW$1678, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$1678, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1678, DW_AT_accessibility(DW_ACCESS_public)
DW$1679	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1679, DW_AT_name("SOCB"), DW_AT_symbol_name("_SOCB")
	.dwattr DW$1679, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$1679, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1679, DW_AT_accessibility(DW_ACCESS_public)
DW$1680	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1680, DW_AT_name("rsvd2"), DW_AT_symbol_name("_rsvd2")
	.dwattr DW$1680, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x0c)
	.dwattr DW$1680, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1680, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$171


DW$T$173	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$173, DW_AT_name("ETCLR_BITS")
	.dwattr DW$T$173, DW_AT_byte_size(0x01)
DW$1681	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1681, DW_AT_name("INT"), DW_AT_symbol_name("_INT")
	.dwattr DW$1681, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$1681, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1681, DW_AT_accessibility(DW_ACCESS_public)
DW$1682	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1682, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$1682, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$1682, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1682, DW_AT_accessibility(DW_ACCESS_public)
DW$1683	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1683, DW_AT_name("SOCA"), DW_AT_symbol_name("_SOCA")
	.dwattr DW$1683, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$1683, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1683, DW_AT_accessibility(DW_ACCESS_public)
DW$1684	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1684, DW_AT_name("SOCB"), DW_AT_symbol_name("_SOCB")
	.dwattr DW$1684, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$1684, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1684, DW_AT_accessibility(DW_ACCESS_public)
DW$1685	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1685, DW_AT_name("rsvd2"), DW_AT_symbol_name("_rsvd2")
	.dwattr DW$1685, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x0c)
	.dwattr DW$1685, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1685, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$173


DW$T$175	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$175, DW_AT_name("ETFRC_BITS")
	.dwattr DW$T$175, DW_AT_byte_size(0x01)
DW$1686	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1686, DW_AT_name("INT"), DW_AT_symbol_name("_INT")
	.dwattr DW$1686, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$1686, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1686, DW_AT_accessibility(DW_ACCESS_public)
DW$1687	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1687, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$1687, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$1687, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1687, DW_AT_accessibility(DW_ACCESS_public)
DW$1688	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1688, DW_AT_name("SOCA"), DW_AT_symbol_name("_SOCA")
	.dwattr DW$1688, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$1688, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1688, DW_AT_accessibility(DW_ACCESS_public)
DW$1689	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1689, DW_AT_name("SOCB"), DW_AT_symbol_name("_SOCB")
	.dwattr DW$1689, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$1689, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1689, DW_AT_accessibility(DW_ACCESS_public)
DW$1690	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1690, DW_AT_name("rsvd2"), DW_AT_symbol_name("_rsvd2")
	.dwattr DW$1690, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x0c)
	.dwattr DW$1690, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1690, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$175


DW$T$177	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$177, DW_AT_name("PCCTL_BITS")
	.dwattr DW$T$177, DW_AT_byte_size(0x01)
DW$1691	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1691, DW_AT_name("CHPEN"), DW_AT_symbol_name("_CHPEN")
	.dwattr DW$1691, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$1691, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1691, DW_AT_accessibility(DW_ACCESS_public)
DW$1692	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1692, DW_AT_name("OSHTWTH"), DW_AT_symbol_name("_OSHTWTH")
	.dwattr DW$1692, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x04)
	.dwattr DW$1692, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1692, DW_AT_accessibility(DW_ACCESS_public)
DW$1693	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1693, DW_AT_name("CHPFREQ"), DW_AT_symbol_name("_CHPFREQ")
	.dwattr DW$1693, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x03)
	.dwattr DW$1693, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1693, DW_AT_accessibility(DW_ACCESS_public)
DW$1694	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1694, DW_AT_name("CHPDUTY"), DW_AT_symbol_name("_CHPDUTY")
	.dwattr DW$1694, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x03)
	.dwattr DW$1694, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1694, DW_AT_accessibility(DW_ACCESS_public)
DW$1695	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1695, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$1695, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x05)
	.dwattr DW$1695, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1695, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$177


DW$T$179	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$179, DW_AT_name("HRCNFG_BITS")
	.dwattr DW$T$179, DW_AT_byte_size(0x01)
DW$1696	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1696, DW_AT_name("EDGMODE"), DW_AT_symbol_name("_EDGMODE")
	.dwattr DW$1696, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x02)
	.dwattr DW$1696, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1696, DW_AT_accessibility(DW_ACCESS_public)
DW$1697	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1697, DW_AT_name("CTLMODE"), DW_AT_symbol_name("_CTLMODE")
	.dwattr DW$1697, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$1697, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1697, DW_AT_accessibility(DW_ACCESS_public)
DW$1698	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1698, DW_AT_name("HRLOAD"), DW_AT_symbol_name("_HRLOAD")
	.dwattr DW$1698, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$1698, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1698, DW_AT_accessibility(DW_ACCESS_public)
DW$1699	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1699, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$1699, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x0c)
	.dwattr DW$1699, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1699, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$179


DW$T$182	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$182, DW_AT_name("ECCTL1_BITS")
	.dwattr DW$T$182, DW_AT_byte_size(0x01)
DW$1700	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1700, DW_AT_name("CAP1POL"), DW_AT_symbol_name("_CAP1POL")
	.dwattr DW$1700, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$1700, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1700, DW_AT_accessibility(DW_ACCESS_public)
DW$1701	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1701, DW_AT_name("CTRRST1"), DW_AT_symbol_name("_CTRRST1")
	.dwattr DW$1701, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$1701, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1701, DW_AT_accessibility(DW_ACCESS_public)
DW$1702	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1702, DW_AT_name("CAP2POL"), DW_AT_symbol_name("_CAP2POL")
	.dwattr DW$1702, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$1702, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1702, DW_AT_accessibility(DW_ACCESS_public)
DW$1703	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1703, DW_AT_name("CTRRST2"), DW_AT_symbol_name("_CTRRST2")
	.dwattr DW$1703, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$1703, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1703, DW_AT_accessibility(DW_ACCESS_public)
DW$1704	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1704, DW_AT_name("CAP3POL"), DW_AT_symbol_name("_CAP3POL")
	.dwattr DW$1704, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$1704, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1704, DW_AT_accessibility(DW_ACCESS_public)
DW$1705	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1705, DW_AT_name("CTRRST3"), DW_AT_symbol_name("_CTRRST3")
	.dwattr DW$1705, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$1705, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1705, DW_AT_accessibility(DW_ACCESS_public)
DW$1706	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1706, DW_AT_name("CAP4POL"), DW_AT_symbol_name("_CAP4POL")
	.dwattr DW$1706, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$1706, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1706, DW_AT_accessibility(DW_ACCESS_public)
DW$1707	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1707, DW_AT_name("CTRRST4"), DW_AT_symbol_name("_CTRRST4")
	.dwattr DW$1707, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$1707, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1707, DW_AT_accessibility(DW_ACCESS_public)
DW$1708	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1708, DW_AT_name("CAPLDEN"), DW_AT_symbol_name("_CAPLDEN")
	.dwattr DW$1708, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$1708, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1708, DW_AT_accessibility(DW_ACCESS_public)
DW$1709	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1709, DW_AT_name("PRESCALE"), DW_AT_symbol_name("_PRESCALE")
	.dwattr DW$1709, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x05)
	.dwattr DW$1709, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1709, DW_AT_accessibility(DW_ACCESS_public)
DW$1710	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1710, DW_AT_name("FREE_SOFT"), DW_AT_symbol_name("_FREE_SOFT")
	.dwattr DW$1710, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x02)
	.dwattr DW$1710, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1710, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$182


DW$T$184	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$184, DW_AT_name("ECCTL2_BITS")
	.dwattr DW$T$184, DW_AT_byte_size(0x01)
DW$1711	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1711, DW_AT_name("CONT_ONESHT"), DW_AT_symbol_name("_CONT_ONESHT")
	.dwattr DW$1711, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$1711, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1711, DW_AT_accessibility(DW_ACCESS_public)
DW$1712	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1712, DW_AT_name("STOP_WRAP"), DW_AT_symbol_name("_STOP_WRAP")
	.dwattr DW$1712, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x02)
	.dwattr DW$1712, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1712, DW_AT_accessibility(DW_ACCESS_public)
DW$1713	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1713, DW_AT_name("REARM"), DW_AT_symbol_name("_REARM")
	.dwattr DW$1713, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$1713, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1713, DW_AT_accessibility(DW_ACCESS_public)
DW$1714	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1714, DW_AT_name("TSCTRSTOP"), DW_AT_symbol_name("_TSCTRSTOP")
	.dwattr DW$1714, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$1714, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1714, DW_AT_accessibility(DW_ACCESS_public)
DW$1715	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1715, DW_AT_name("SYNCI_EN"), DW_AT_symbol_name("_SYNCI_EN")
	.dwattr DW$1715, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$1715, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1715, DW_AT_accessibility(DW_ACCESS_public)
DW$1716	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1716, DW_AT_name("SYNCO_SEL"), DW_AT_symbol_name("_SYNCO_SEL")
	.dwattr DW$1716, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x02)
	.dwattr DW$1716, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1716, DW_AT_accessibility(DW_ACCESS_public)
DW$1717	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1717, DW_AT_name("SWSYNC"), DW_AT_symbol_name("_SWSYNC")
	.dwattr DW$1717, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$1717, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1717, DW_AT_accessibility(DW_ACCESS_public)
DW$1718	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1718, DW_AT_name("CAP_APWM"), DW_AT_symbol_name("_CAP_APWM")
	.dwattr DW$1718, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$1718, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1718, DW_AT_accessibility(DW_ACCESS_public)
DW$1719	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1719, DW_AT_name("APWMPOL"), DW_AT_symbol_name("_APWMPOL")
	.dwattr DW$1719, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$1719, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1719, DW_AT_accessibility(DW_ACCESS_public)
DW$1720	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1720, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$1720, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x05)
	.dwattr DW$1720, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1720, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$184


DW$T$186	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$186, DW_AT_name("ECEINT_BITS")
	.dwattr DW$T$186, DW_AT_byte_size(0x01)
DW$1721	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1721, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$1721, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$1721, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1721, DW_AT_accessibility(DW_ACCESS_public)
DW$1722	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1722, DW_AT_name("CEVT1"), DW_AT_symbol_name("_CEVT1")
	.dwattr DW$1722, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$1722, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1722, DW_AT_accessibility(DW_ACCESS_public)
DW$1723	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1723, DW_AT_name("CEVT2"), DW_AT_symbol_name("_CEVT2")
	.dwattr DW$1723, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$1723, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1723, DW_AT_accessibility(DW_ACCESS_public)
DW$1724	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1724, DW_AT_name("CEVT3"), DW_AT_symbol_name("_CEVT3")
	.dwattr DW$1724, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$1724, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1724, DW_AT_accessibility(DW_ACCESS_public)
DW$1725	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1725, DW_AT_name("CEVT4"), DW_AT_symbol_name("_CEVT4")
	.dwattr DW$1725, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$1725, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1725, DW_AT_accessibility(DW_ACCESS_public)
DW$1726	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1726, DW_AT_name("CTROVF"), DW_AT_symbol_name("_CTROVF")
	.dwattr DW$1726, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$1726, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1726, DW_AT_accessibility(DW_ACCESS_public)
DW$1727	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1727, DW_AT_name("CTR_EQ_PRD"), DW_AT_symbol_name("_CTR_EQ_PRD")
	.dwattr DW$1727, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$1727, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1727, DW_AT_accessibility(DW_ACCESS_public)
DW$1728	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1728, DW_AT_name("CTR_EQ_CMP"), DW_AT_symbol_name("_CTR_EQ_CMP")
	.dwattr DW$1728, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$1728, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1728, DW_AT_accessibility(DW_ACCESS_public)
DW$1729	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1729, DW_AT_name("rsvd2"), DW_AT_symbol_name("_rsvd2")
	.dwattr DW$1729, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x08)
	.dwattr DW$1729, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1729, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$186


DW$T$188	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$188, DW_AT_name("ECFLG_BITS")
	.dwattr DW$T$188, DW_AT_byte_size(0x01)
DW$1730	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1730, DW_AT_name("INT"), DW_AT_symbol_name("_INT")
	.dwattr DW$1730, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$1730, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1730, DW_AT_accessibility(DW_ACCESS_public)
DW$1731	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1731, DW_AT_name("CEVT1"), DW_AT_symbol_name("_CEVT1")
	.dwattr DW$1731, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$1731, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1731, DW_AT_accessibility(DW_ACCESS_public)
DW$1732	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1732, DW_AT_name("CEVT2"), DW_AT_symbol_name("_CEVT2")
	.dwattr DW$1732, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$1732, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1732, DW_AT_accessibility(DW_ACCESS_public)
DW$1733	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1733, DW_AT_name("CEVT3"), DW_AT_symbol_name("_CEVT3")
	.dwattr DW$1733, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$1733, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1733, DW_AT_accessibility(DW_ACCESS_public)
DW$1734	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1734, DW_AT_name("CEVT4"), DW_AT_symbol_name("_CEVT4")
	.dwattr DW$1734, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$1734, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1734, DW_AT_accessibility(DW_ACCESS_public)
DW$1735	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1735, DW_AT_name("CTROVF"), DW_AT_symbol_name("_CTROVF")
	.dwattr DW$1735, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$1735, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1735, DW_AT_accessibility(DW_ACCESS_public)
DW$1736	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1736, DW_AT_name("CTR_EQ_PRD"), DW_AT_symbol_name("_CTR_EQ_PRD")
	.dwattr DW$1736, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$1736, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1736, DW_AT_accessibility(DW_ACCESS_public)
DW$1737	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1737, DW_AT_name("CTR_EQ_CMP"), DW_AT_symbol_name("_CTR_EQ_CMP")
	.dwattr DW$1737, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$1737, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1737, DW_AT_accessibility(DW_ACCESS_public)
DW$1738	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1738, DW_AT_name("rsvd2"), DW_AT_symbol_name("_rsvd2")
	.dwattr DW$1738, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x08)
	.dwattr DW$1738, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1738, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$188


DW$T$193	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$193, DW_AT_name("QDECCTL_BITS")
	.dwattr DW$T$193, DW_AT_byte_size(0x01)
DW$1739	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1739, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$1739, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x05)
	.dwattr DW$1739, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1739, DW_AT_accessibility(DW_ACCESS_public)
DW$1740	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1740, DW_AT_name("QSP"), DW_AT_symbol_name("_QSP")
	.dwattr DW$1740, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$1740, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1740, DW_AT_accessibility(DW_ACCESS_public)
DW$1741	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1741, DW_AT_name("QIP"), DW_AT_symbol_name("_QIP")
	.dwattr DW$1741, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$1741, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1741, DW_AT_accessibility(DW_ACCESS_public)
DW$1742	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1742, DW_AT_name("QBP"), DW_AT_symbol_name("_QBP")
	.dwattr DW$1742, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$1742, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1742, DW_AT_accessibility(DW_ACCESS_public)
DW$1743	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1743, DW_AT_name("QAP"), DW_AT_symbol_name("_QAP")
	.dwattr DW$1743, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$1743, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1743, DW_AT_accessibility(DW_ACCESS_public)
DW$1744	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1744, DW_AT_name("IGATE"), DW_AT_symbol_name("_IGATE")
	.dwattr DW$1744, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$1744, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1744, DW_AT_accessibility(DW_ACCESS_public)
DW$1745	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1745, DW_AT_name("SWAP"), DW_AT_symbol_name("_SWAP")
	.dwattr DW$1745, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$1745, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1745, DW_AT_accessibility(DW_ACCESS_public)
DW$1746	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1746, DW_AT_name("XCR"), DW_AT_symbol_name("_XCR")
	.dwattr DW$1746, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$1746, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1746, DW_AT_accessibility(DW_ACCESS_public)
DW$1747	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1747, DW_AT_name("SPSEL"), DW_AT_symbol_name("_SPSEL")
	.dwattr DW$1747, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$1747, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1747, DW_AT_accessibility(DW_ACCESS_public)
DW$1748	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1748, DW_AT_name("SOEN"), DW_AT_symbol_name("_SOEN")
	.dwattr DW$1748, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$1748, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1748, DW_AT_accessibility(DW_ACCESS_public)
DW$1749	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1749, DW_AT_name("QSRC"), DW_AT_symbol_name("_QSRC")
	.dwattr DW$1749, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x02)
	.dwattr DW$1749, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1749, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$193


DW$T$195	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$195, DW_AT_name("QEPCTL_BITS")
	.dwattr DW$T$195, DW_AT_byte_size(0x01)
DW$1750	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1750, DW_AT_name("WDE"), DW_AT_symbol_name("_WDE")
	.dwattr DW$1750, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$1750, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1750, DW_AT_accessibility(DW_ACCESS_public)
DW$1751	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1751, DW_AT_name("UTE"), DW_AT_symbol_name("_UTE")
	.dwattr DW$1751, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$1751, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1751, DW_AT_accessibility(DW_ACCESS_public)
DW$1752	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1752, DW_AT_name("QCLM"), DW_AT_symbol_name("_QCLM")
	.dwattr DW$1752, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$1752, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1752, DW_AT_accessibility(DW_ACCESS_public)
DW$1753	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1753, DW_AT_name("QPEN"), DW_AT_symbol_name("_QPEN")
	.dwattr DW$1753, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$1753, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1753, DW_AT_accessibility(DW_ACCESS_public)
DW$1754	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1754, DW_AT_name("IEL"), DW_AT_symbol_name("_IEL")
	.dwattr DW$1754, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x02)
	.dwattr DW$1754, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1754, DW_AT_accessibility(DW_ACCESS_public)
DW$1755	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1755, DW_AT_name("SEL"), DW_AT_symbol_name("_SEL")
	.dwattr DW$1755, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$1755, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1755, DW_AT_accessibility(DW_ACCESS_public)
DW$1756	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1756, DW_AT_name("SWI"), DW_AT_symbol_name("_SWI")
	.dwattr DW$1756, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$1756, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1756, DW_AT_accessibility(DW_ACCESS_public)
DW$1757	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1757, DW_AT_name("IEI"), DW_AT_symbol_name("_IEI")
	.dwattr DW$1757, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x02)
	.dwattr DW$1757, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1757, DW_AT_accessibility(DW_ACCESS_public)
DW$1758	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1758, DW_AT_name("SEI"), DW_AT_symbol_name("_SEI")
	.dwattr DW$1758, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x02)
	.dwattr DW$1758, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1758, DW_AT_accessibility(DW_ACCESS_public)
DW$1759	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1759, DW_AT_name("PCRM"), DW_AT_symbol_name("_PCRM")
	.dwattr DW$1759, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x02)
	.dwattr DW$1759, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1759, DW_AT_accessibility(DW_ACCESS_public)
DW$1760	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1760, DW_AT_name("FREE_SOFT"), DW_AT_symbol_name("_FREE_SOFT")
	.dwattr DW$1760, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x02)
	.dwattr DW$1760, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1760, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$195


DW$T$197	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$197, DW_AT_name("QCAPCTL_BITS")
	.dwattr DW$T$197, DW_AT_byte_size(0x01)
DW$1761	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1761, DW_AT_name("UPPS"), DW_AT_symbol_name("_UPPS")
	.dwattr DW$1761, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x04)
	.dwattr DW$1761, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1761, DW_AT_accessibility(DW_ACCESS_public)
DW$1762	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1762, DW_AT_name("CCPS"), DW_AT_symbol_name("_CCPS")
	.dwattr DW$1762, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x03)
	.dwattr DW$1762, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1762, DW_AT_accessibility(DW_ACCESS_public)
DW$1763	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1763, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$1763, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x08)
	.dwattr DW$1763, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1763, DW_AT_accessibility(DW_ACCESS_public)
DW$1764	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1764, DW_AT_name("CEN"), DW_AT_symbol_name("_CEN")
	.dwattr DW$1764, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$1764, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1764, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$197


DW$T$199	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$199, DW_AT_name("QPOSCTL_BITS")
	.dwattr DW$T$199, DW_AT_byte_size(0x01)
DW$1765	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1765, DW_AT_name("PCSPW"), DW_AT_symbol_name("_PCSPW")
	.dwattr DW$1765, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x0c)
	.dwattr DW$1765, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1765, DW_AT_accessibility(DW_ACCESS_public)
DW$1766	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1766, DW_AT_name("PCE"), DW_AT_symbol_name("_PCE")
	.dwattr DW$1766, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$1766, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1766, DW_AT_accessibility(DW_ACCESS_public)
DW$1767	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1767, DW_AT_name("PCPOL"), DW_AT_symbol_name("_PCPOL")
	.dwattr DW$1767, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$1767, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1767, DW_AT_accessibility(DW_ACCESS_public)
DW$1768	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1768, DW_AT_name("PCLOAD"), DW_AT_symbol_name("_PCLOAD")
	.dwattr DW$1768, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$1768, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1768, DW_AT_accessibility(DW_ACCESS_public)
DW$1769	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1769, DW_AT_name("PCSHDW"), DW_AT_symbol_name("_PCSHDW")
	.dwattr DW$1769, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$1769, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1769, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$199


DW$T$201	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$201, DW_AT_name("QEINT_BITS")
	.dwattr DW$T$201, DW_AT_byte_size(0x01)
DW$1770	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1770, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$1770, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$1770, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1770, DW_AT_accessibility(DW_ACCESS_public)
DW$1771	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1771, DW_AT_name("PCE"), DW_AT_symbol_name("_PCE")
	.dwattr DW$1771, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$1771, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1771, DW_AT_accessibility(DW_ACCESS_public)
DW$1772	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1772, DW_AT_name("QPE"), DW_AT_symbol_name("_QPE")
	.dwattr DW$1772, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$1772, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1772, DW_AT_accessibility(DW_ACCESS_public)
DW$1773	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1773, DW_AT_name("QDC"), DW_AT_symbol_name("_QDC")
	.dwattr DW$1773, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$1773, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1773, DW_AT_accessibility(DW_ACCESS_public)
DW$1774	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1774, DW_AT_name("WTO"), DW_AT_symbol_name("_WTO")
	.dwattr DW$1774, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$1774, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1774, DW_AT_accessibility(DW_ACCESS_public)
DW$1775	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1775, DW_AT_name("PCU"), DW_AT_symbol_name("_PCU")
	.dwattr DW$1775, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$1775, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1775, DW_AT_accessibility(DW_ACCESS_public)
DW$1776	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1776, DW_AT_name("PCO"), DW_AT_symbol_name("_PCO")
	.dwattr DW$1776, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$1776, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1776, DW_AT_accessibility(DW_ACCESS_public)
DW$1777	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1777, DW_AT_name("PCR"), DW_AT_symbol_name("_PCR")
	.dwattr DW$1777, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$1777, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1777, DW_AT_accessibility(DW_ACCESS_public)
DW$1778	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1778, DW_AT_name("PCM"), DW_AT_symbol_name("_PCM")
	.dwattr DW$1778, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$1778, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1778, DW_AT_accessibility(DW_ACCESS_public)
DW$1779	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1779, DW_AT_name("SEL"), DW_AT_symbol_name("_SEL")
	.dwattr DW$1779, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$1779, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1779, DW_AT_accessibility(DW_ACCESS_public)
DW$1780	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1780, DW_AT_name("IEL"), DW_AT_symbol_name("_IEL")
	.dwattr DW$1780, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$1780, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1780, DW_AT_accessibility(DW_ACCESS_public)
DW$1781	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1781, DW_AT_name("UTO"), DW_AT_symbol_name("_UTO")
	.dwattr DW$1781, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$1781, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1781, DW_AT_accessibility(DW_ACCESS_public)
DW$1782	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1782, DW_AT_name("rsvd2"), DW_AT_symbol_name("_rsvd2")
	.dwattr DW$1782, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x04)
	.dwattr DW$1782, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1782, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$201


DW$T$203	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$203, DW_AT_name("QFLG_BITS")
	.dwattr DW$T$203, DW_AT_byte_size(0x01)
DW$1783	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1783, DW_AT_name("INT"), DW_AT_symbol_name("_INT")
	.dwattr DW$1783, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$1783, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1783, DW_AT_accessibility(DW_ACCESS_public)
DW$1784	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1784, DW_AT_name("PCE"), DW_AT_symbol_name("_PCE")
	.dwattr DW$1784, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$1784, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1784, DW_AT_accessibility(DW_ACCESS_public)
DW$1785	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1785, DW_AT_name("PHE"), DW_AT_symbol_name("_PHE")
	.dwattr DW$1785, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$1785, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1785, DW_AT_accessibility(DW_ACCESS_public)
DW$1786	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1786, DW_AT_name("QDC"), DW_AT_symbol_name("_QDC")
	.dwattr DW$1786, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$1786, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1786, DW_AT_accessibility(DW_ACCESS_public)
DW$1787	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1787, DW_AT_name("WTO"), DW_AT_symbol_name("_WTO")
	.dwattr DW$1787, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$1787, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1787, DW_AT_accessibility(DW_ACCESS_public)
DW$1788	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1788, DW_AT_name("PCU"), DW_AT_symbol_name("_PCU")
	.dwattr DW$1788, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$1788, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1788, DW_AT_accessibility(DW_ACCESS_public)
DW$1789	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1789, DW_AT_name("PCO"), DW_AT_symbol_name("_PCO")
	.dwattr DW$1789, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$1789, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1789, DW_AT_accessibility(DW_ACCESS_public)
DW$1790	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1790, DW_AT_name("PCR"), DW_AT_symbol_name("_PCR")
	.dwattr DW$1790, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$1790, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1790, DW_AT_accessibility(DW_ACCESS_public)
DW$1791	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1791, DW_AT_name("PCM"), DW_AT_symbol_name("_PCM")
	.dwattr DW$1791, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$1791, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1791, DW_AT_accessibility(DW_ACCESS_public)
DW$1792	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1792, DW_AT_name("SEL"), DW_AT_symbol_name("_SEL")
	.dwattr DW$1792, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$1792, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1792, DW_AT_accessibility(DW_ACCESS_public)
DW$1793	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1793, DW_AT_name("IEL"), DW_AT_symbol_name("_IEL")
	.dwattr DW$1793, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$1793, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1793, DW_AT_accessibility(DW_ACCESS_public)
DW$1794	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1794, DW_AT_name("UTO"), DW_AT_symbol_name("_UTO")
	.dwattr DW$1794, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$1794, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1794, DW_AT_accessibility(DW_ACCESS_public)
DW$1795	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1795, DW_AT_name("rsvd2"), DW_AT_symbol_name("_rsvd2")
	.dwattr DW$1795, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x04)
	.dwattr DW$1795, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1795, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$203


DW$T$205	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$205, DW_AT_name("QFRC_BITS")
	.dwattr DW$T$205, DW_AT_byte_size(0x01)
DW$1796	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1796, DW_AT_name("reserved"), DW_AT_symbol_name("_reserved")
	.dwattr DW$1796, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$1796, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1796, DW_AT_accessibility(DW_ACCESS_public)
DW$1797	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1797, DW_AT_name("PCE"), DW_AT_symbol_name("_PCE")
	.dwattr DW$1797, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$1797, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1797, DW_AT_accessibility(DW_ACCESS_public)
DW$1798	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1798, DW_AT_name("PHE"), DW_AT_symbol_name("_PHE")
	.dwattr DW$1798, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$1798, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1798, DW_AT_accessibility(DW_ACCESS_public)
DW$1799	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1799, DW_AT_name("QDC"), DW_AT_symbol_name("_QDC")
	.dwattr DW$1799, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$1799, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1799, DW_AT_accessibility(DW_ACCESS_public)
DW$1800	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1800, DW_AT_name("WTO"), DW_AT_symbol_name("_WTO")
	.dwattr DW$1800, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$1800, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1800, DW_AT_accessibility(DW_ACCESS_public)
DW$1801	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1801, DW_AT_name("PCU"), DW_AT_symbol_name("_PCU")
	.dwattr DW$1801, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$1801, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1801, DW_AT_accessibility(DW_ACCESS_public)
DW$1802	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1802, DW_AT_name("PCO"), DW_AT_symbol_name("_PCO")
	.dwattr DW$1802, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$1802, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1802, DW_AT_accessibility(DW_ACCESS_public)
DW$1803	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1803, DW_AT_name("PCR"), DW_AT_symbol_name("_PCR")
	.dwattr DW$1803, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$1803, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1803, DW_AT_accessibility(DW_ACCESS_public)
DW$1804	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1804, DW_AT_name("PCM"), DW_AT_symbol_name("_PCM")
	.dwattr DW$1804, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$1804, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1804, DW_AT_accessibility(DW_ACCESS_public)
DW$1805	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1805, DW_AT_name("SEL"), DW_AT_symbol_name("_SEL")
	.dwattr DW$1805, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$1805, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1805, DW_AT_accessibility(DW_ACCESS_public)
DW$1806	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1806, DW_AT_name("IEL"), DW_AT_symbol_name("_IEL")
	.dwattr DW$1806, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$1806, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1806, DW_AT_accessibility(DW_ACCESS_public)
DW$1807	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1807, DW_AT_name("UTO"), DW_AT_symbol_name("_UTO")
	.dwattr DW$1807, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$1807, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1807, DW_AT_accessibility(DW_ACCESS_public)
DW$1808	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1808, DW_AT_name("rsvd2"), DW_AT_symbol_name("_rsvd2")
	.dwattr DW$1808, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x04)
	.dwattr DW$1808, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1808, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$205


DW$T$207	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$207, DW_AT_name("QEPSTS_BITS")
	.dwattr DW$T$207, DW_AT_byte_size(0x01)
DW$1809	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1809, DW_AT_name("PCEF"), DW_AT_symbol_name("_PCEF")
	.dwattr DW$1809, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$1809, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1809, DW_AT_accessibility(DW_ACCESS_public)
DW$1810	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1810, DW_AT_name("FIMF"), DW_AT_symbol_name("_FIMF")
	.dwattr DW$1810, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$1810, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1810, DW_AT_accessibility(DW_ACCESS_public)
DW$1811	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1811, DW_AT_name("CDEF"), DW_AT_symbol_name("_CDEF")
	.dwattr DW$1811, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$1811, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1811, DW_AT_accessibility(DW_ACCESS_public)
DW$1812	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1812, DW_AT_name("COEF"), DW_AT_symbol_name("_COEF")
	.dwattr DW$1812, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$1812, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1812, DW_AT_accessibility(DW_ACCESS_public)
DW$1813	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1813, DW_AT_name("QDLF"), DW_AT_symbol_name("_QDLF")
	.dwattr DW$1813, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$1813, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1813, DW_AT_accessibility(DW_ACCESS_public)
DW$1814	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1814, DW_AT_name("QDF"), DW_AT_symbol_name("_QDF")
	.dwattr DW$1814, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$1814, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1814, DW_AT_accessibility(DW_ACCESS_public)
DW$1815	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1815, DW_AT_name("FIDF"), DW_AT_symbol_name("_FIDF")
	.dwattr DW$1815, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$1815, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1815, DW_AT_accessibility(DW_ACCESS_public)
DW$1816	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1816, DW_AT_name("UPEVNT"), DW_AT_symbol_name("_UPEVNT")
	.dwattr DW$1816, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$1816, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1816, DW_AT_accessibility(DW_ACCESS_public)
DW$1817	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1817, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$1817, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x08)
	.dwattr DW$1817, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1817, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$207


DW$T$211	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$211, DW_AT_name("GPACTRL_BITS")
	.dwattr DW$T$211, DW_AT_byte_size(0x02)
DW$1818	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1818, DW_AT_name("QUALPRD0"), DW_AT_symbol_name("_QUALPRD0")
	.dwattr DW$1818, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x08)
	.dwattr DW$1818, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1818, DW_AT_accessibility(DW_ACCESS_public)
DW$1819	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1819, DW_AT_name("QUALPRD1"), DW_AT_symbol_name("_QUALPRD1")
	.dwattr DW$1819, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x08)
	.dwattr DW$1819, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1819, DW_AT_accessibility(DW_ACCESS_public)
DW$1820	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1820, DW_AT_name("QUALPRD2"), DW_AT_symbol_name("_QUALPRD2")
	.dwattr DW$1820, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x08)
	.dwattr DW$1820, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1820, DW_AT_accessibility(DW_ACCESS_public)
DW$1821	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1821, DW_AT_name("QUALPRD3"), DW_AT_symbol_name("_QUALPRD3")
	.dwattr DW$1821, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x08)
	.dwattr DW$1821, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1821, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$211


DW$T$213	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$213, DW_AT_name("GPA1_BITS")
	.dwattr DW$T$213, DW_AT_byte_size(0x02)
DW$1822	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1822, DW_AT_name("GPIO0"), DW_AT_symbol_name("_GPIO0")
	.dwattr DW$1822, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x02)
	.dwattr DW$1822, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1822, DW_AT_accessibility(DW_ACCESS_public)
DW$1823	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1823, DW_AT_name("GPIO1"), DW_AT_symbol_name("_GPIO1")
	.dwattr DW$1823, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x02)
	.dwattr DW$1823, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1823, DW_AT_accessibility(DW_ACCESS_public)
DW$1824	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1824, DW_AT_name("GPIO2"), DW_AT_symbol_name("_GPIO2")
	.dwattr DW$1824, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x02)
	.dwattr DW$1824, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1824, DW_AT_accessibility(DW_ACCESS_public)
DW$1825	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1825, DW_AT_name("GPIO3"), DW_AT_symbol_name("_GPIO3")
	.dwattr DW$1825, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x02)
	.dwattr DW$1825, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1825, DW_AT_accessibility(DW_ACCESS_public)
DW$1826	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1826, DW_AT_name("GPIO4"), DW_AT_symbol_name("_GPIO4")
	.dwattr DW$1826, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x02)
	.dwattr DW$1826, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1826, DW_AT_accessibility(DW_ACCESS_public)
DW$1827	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1827, DW_AT_name("GPIO5"), DW_AT_symbol_name("_GPIO5")
	.dwattr DW$1827, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x02)
	.dwattr DW$1827, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1827, DW_AT_accessibility(DW_ACCESS_public)
DW$1828	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1828, DW_AT_name("GPIO6"), DW_AT_symbol_name("_GPIO6")
	.dwattr DW$1828, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x02)
	.dwattr DW$1828, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1828, DW_AT_accessibility(DW_ACCESS_public)
DW$1829	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1829, DW_AT_name("GPIO7"), DW_AT_symbol_name("_GPIO7")
	.dwattr DW$1829, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x02)
	.dwattr DW$1829, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1829, DW_AT_accessibility(DW_ACCESS_public)
DW$1830	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1830, DW_AT_name("GPIO8"), DW_AT_symbol_name("_GPIO8")
	.dwattr DW$1830, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x02)
	.dwattr DW$1830, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1830, DW_AT_accessibility(DW_ACCESS_public)
DW$1831	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1831, DW_AT_name("GPIO9"), DW_AT_symbol_name("_GPIO9")
	.dwattr DW$1831, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x02)
	.dwattr DW$1831, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1831, DW_AT_accessibility(DW_ACCESS_public)
DW$1832	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1832, DW_AT_name("GPIO10"), DW_AT_symbol_name("_GPIO10")
	.dwattr DW$1832, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x02)
	.dwattr DW$1832, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1832, DW_AT_accessibility(DW_ACCESS_public)
DW$1833	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1833, DW_AT_name("GPIO11"), DW_AT_symbol_name("_GPIO11")
	.dwattr DW$1833, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x02)
	.dwattr DW$1833, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1833, DW_AT_accessibility(DW_ACCESS_public)
DW$1834	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1834, DW_AT_name("GPIO12"), DW_AT_symbol_name("_GPIO12")
	.dwattr DW$1834, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x02)
	.dwattr DW$1834, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1834, DW_AT_accessibility(DW_ACCESS_public)
DW$1835	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1835, DW_AT_name("GPIO13"), DW_AT_symbol_name("_GPIO13")
	.dwattr DW$1835, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x02)
	.dwattr DW$1835, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1835, DW_AT_accessibility(DW_ACCESS_public)
DW$1836	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1836, DW_AT_name("GPIO14"), DW_AT_symbol_name("_GPIO14")
	.dwattr DW$1836, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x02)
	.dwattr DW$1836, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1836, DW_AT_accessibility(DW_ACCESS_public)
DW$1837	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1837, DW_AT_name("GPIO15"), DW_AT_symbol_name("_GPIO15")
	.dwattr DW$1837, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x02)
	.dwattr DW$1837, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1837, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$213


DW$T$215	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$215, DW_AT_name("GPA2_BITS")
	.dwattr DW$T$215, DW_AT_byte_size(0x02)
DW$1838	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1838, DW_AT_name("GPIO16"), DW_AT_symbol_name("_GPIO16")
	.dwattr DW$1838, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x02)
	.dwattr DW$1838, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1838, DW_AT_accessibility(DW_ACCESS_public)
DW$1839	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1839, DW_AT_name("GPIO17"), DW_AT_symbol_name("_GPIO17")
	.dwattr DW$1839, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x02)
	.dwattr DW$1839, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1839, DW_AT_accessibility(DW_ACCESS_public)
DW$1840	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1840, DW_AT_name("GPIO18"), DW_AT_symbol_name("_GPIO18")
	.dwattr DW$1840, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x02)
	.dwattr DW$1840, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1840, DW_AT_accessibility(DW_ACCESS_public)
DW$1841	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1841, DW_AT_name("GPIO19"), DW_AT_symbol_name("_GPIO19")
	.dwattr DW$1841, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x02)
	.dwattr DW$1841, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1841, DW_AT_accessibility(DW_ACCESS_public)
DW$1842	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1842, DW_AT_name("GPIO20"), DW_AT_symbol_name("_GPIO20")
	.dwattr DW$1842, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x02)
	.dwattr DW$1842, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1842, DW_AT_accessibility(DW_ACCESS_public)
DW$1843	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1843, DW_AT_name("GPIO21"), DW_AT_symbol_name("_GPIO21")
	.dwattr DW$1843, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x02)
	.dwattr DW$1843, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1843, DW_AT_accessibility(DW_ACCESS_public)
DW$1844	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1844, DW_AT_name("GPIO22"), DW_AT_symbol_name("_GPIO22")
	.dwattr DW$1844, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x02)
	.dwattr DW$1844, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1844, DW_AT_accessibility(DW_ACCESS_public)
DW$1845	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1845, DW_AT_name("GPIO23"), DW_AT_symbol_name("_GPIO23")
	.dwattr DW$1845, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x02)
	.dwattr DW$1845, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1845, DW_AT_accessibility(DW_ACCESS_public)
DW$1846	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1846, DW_AT_name("GPIO24"), DW_AT_symbol_name("_GPIO24")
	.dwattr DW$1846, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x02)
	.dwattr DW$1846, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1846, DW_AT_accessibility(DW_ACCESS_public)
DW$1847	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1847, DW_AT_name("GPIO25"), DW_AT_symbol_name("_GPIO25")
	.dwattr DW$1847, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x02)
	.dwattr DW$1847, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1847, DW_AT_accessibility(DW_ACCESS_public)
DW$1848	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1848, DW_AT_name("GPIO26"), DW_AT_symbol_name("_GPIO26")
	.dwattr DW$1848, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x02)
	.dwattr DW$1848, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1848, DW_AT_accessibility(DW_ACCESS_public)
DW$1849	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1849, DW_AT_name("GPIO27"), DW_AT_symbol_name("_GPIO27")
	.dwattr DW$1849, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x02)
	.dwattr DW$1849, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1849, DW_AT_accessibility(DW_ACCESS_public)
DW$1850	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1850, DW_AT_name("GPIO28"), DW_AT_symbol_name("_GPIO28")
	.dwattr DW$1850, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x02)
	.dwattr DW$1850, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1850, DW_AT_accessibility(DW_ACCESS_public)
DW$1851	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1851, DW_AT_name("GPIO29"), DW_AT_symbol_name("_GPIO29")
	.dwattr DW$1851, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x02)
	.dwattr DW$1851, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1851, DW_AT_accessibility(DW_ACCESS_public)
DW$1852	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1852, DW_AT_name("GPIO30"), DW_AT_symbol_name("_GPIO30")
	.dwattr DW$1852, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x02)
	.dwattr DW$1852, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1852, DW_AT_accessibility(DW_ACCESS_public)
DW$1853	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1853, DW_AT_name("GPIO31"), DW_AT_symbol_name("_GPIO31")
	.dwattr DW$1853, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x02)
	.dwattr DW$1853, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1853, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$215


DW$T$217	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$217, DW_AT_name("GPADAT_BITS")
	.dwattr DW$T$217, DW_AT_byte_size(0x02)
DW$1854	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1854, DW_AT_name("GPIO0"), DW_AT_symbol_name("_GPIO0")
	.dwattr DW$1854, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$1854, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1854, DW_AT_accessibility(DW_ACCESS_public)
DW$1855	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1855, DW_AT_name("GPIO1"), DW_AT_symbol_name("_GPIO1")
	.dwattr DW$1855, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$1855, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1855, DW_AT_accessibility(DW_ACCESS_public)
DW$1856	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1856, DW_AT_name("GPIO2"), DW_AT_symbol_name("_GPIO2")
	.dwattr DW$1856, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$1856, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1856, DW_AT_accessibility(DW_ACCESS_public)
DW$1857	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1857, DW_AT_name("GPIO3"), DW_AT_symbol_name("_GPIO3")
	.dwattr DW$1857, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$1857, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1857, DW_AT_accessibility(DW_ACCESS_public)
DW$1858	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1858, DW_AT_name("GPIO4"), DW_AT_symbol_name("_GPIO4")
	.dwattr DW$1858, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$1858, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1858, DW_AT_accessibility(DW_ACCESS_public)
DW$1859	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1859, DW_AT_name("GPIO5"), DW_AT_symbol_name("_GPIO5")
	.dwattr DW$1859, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$1859, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1859, DW_AT_accessibility(DW_ACCESS_public)
DW$1860	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1860, DW_AT_name("GPIO6"), DW_AT_symbol_name("_GPIO6")
	.dwattr DW$1860, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$1860, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1860, DW_AT_accessibility(DW_ACCESS_public)
DW$1861	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1861, DW_AT_name("GPIO7"), DW_AT_symbol_name("_GPIO7")
	.dwattr DW$1861, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$1861, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1861, DW_AT_accessibility(DW_ACCESS_public)
DW$1862	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1862, DW_AT_name("GPIO8"), DW_AT_symbol_name("_GPIO8")
	.dwattr DW$1862, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$1862, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1862, DW_AT_accessibility(DW_ACCESS_public)
DW$1863	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1863, DW_AT_name("GPIO9"), DW_AT_symbol_name("_GPIO9")
	.dwattr DW$1863, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$1863, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1863, DW_AT_accessibility(DW_ACCESS_public)
DW$1864	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1864, DW_AT_name("GPIO10"), DW_AT_symbol_name("_GPIO10")
	.dwattr DW$1864, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$1864, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1864, DW_AT_accessibility(DW_ACCESS_public)
DW$1865	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1865, DW_AT_name("GPIO11"), DW_AT_symbol_name("_GPIO11")
	.dwattr DW$1865, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$1865, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1865, DW_AT_accessibility(DW_ACCESS_public)
DW$1866	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1866, DW_AT_name("GPIO12"), DW_AT_symbol_name("_GPIO12")
	.dwattr DW$1866, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$1866, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1866, DW_AT_accessibility(DW_ACCESS_public)
DW$1867	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1867, DW_AT_name("GPIO13"), DW_AT_symbol_name("_GPIO13")
	.dwattr DW$1867, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$1867, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1867, DW_AT_accessibility(DW_ACCESS_public)
DW$1868	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1868, DW_AT_name("GPIO14"), DW_AT_symbol_name("_GPIO14")
	.dwattr DW$1868, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$1868, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1868, DW_AT_accessibility(DW_ACCESS_public)
DW$1869	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1869, DW_AT_name("GPIO15"), DW_AT_symbol_name("_GPIO15")
	.dwattr DW$1869, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$1869, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1869, DW_AT_accessibility(DW_ACCESS_public)
DW$1870	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1870, DW_AT_name("GPIO16"), DW_AT_symbol_name("_GPIO16")
	.dwattr DW$1870, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$1870, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1870, DW_AT_accessibility(DW_ACCESS_public)
DW$1871	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1871, DW_AT_name("GPIO17"), DW_AT_symbol_name("_GPIO17")
	.dwattr DW$1871, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$1871, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1871, DW_AT_accessibility(DW_ACCESS_public)
DW$1872	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1872, DW_AT_name("GPIO18"), DW_AT_symbol_name("_GPIO18")
	.dwattr DW$1872, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$1872, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1872, DW_AT_accessibility(DW_ACCESS_public)
DW$1873	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1873, DW_AT_name("GPIO19"), DW_AT_symbol_name("_GPIO19")
	.dwattr DW$1873, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$1873, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1873, DW_AT_accessibility(DW_ACCESS_public)
DW$1874	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1874, DW_AT_name("GPIO20"), DW_AT_symbol_name("_GPIO20")
	.dwattr DW$1874, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$1874, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1874, DW_AT_accessibility(DW_ACCESS_public)
DW$1875	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1875, DW_AT_name("GPIO21"), DW_AT_symbol_name("_GPIO21")
	.dwattr DW$1875, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$1875, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1875, DW_AT_accessibility(DW_ACCESS_public)
DW$1876	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1876, DW_AT_name("GPIO22"), DW_AT_symbol_name("_GPIO22")
	.dwattr DW$1876, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$1876, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1876, DW_AT_accessibility(DW_ACCESS_public)
DW$1877	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1877, DW_AT_name("GPIO23"), DW_AT_symbol_name("_GPIO23")
	.dwattr DW$1877, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$1877, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1877, DW_AT_accessibility(DW_ACCESS_public)
DW$1878	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1878, DW_AT_name("GPIO24"), DW_AT_symbol_name("_GPIO24")
	.dwattr DW$1878, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$1878, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1878, DW_AT_accessibility(DW_ACCESS_public)
DW$1879	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1879, DW_AT_name("GPIO25"), DW_AT_symbol_name("_GPIO25")
	.dwattr DW$1879, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$1879, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1879, DW_AT_accessibility(DW_ACCESS_public)
DW$1880	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1880, DW_AT_name("GPIO26"), DW_AT_symbol_name("_GPIO26")
	.dwattr DW$1880, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$1880, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1880, DW_AT_accessibility(DW_ACCESS_public)
DW$1881	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1881, DW_AT_name("GPIO27"), DW_AT_symbol_name("_GPIO27")
	.dwattr DW$1881, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$1881, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1881, DW_AT_accessibility(DW_ACCESS_public)
DW$1882	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1882, DW_AT_name("GPIO28"), DW_AT_symbol_name("_GPIO28")
	.dwattr DW$1882, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$1882, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1882, DW_AT_accessibility(DW_ACCESS_public)
DW$1883	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1883, DW_AT_name("GPIO29"), DW_AT_symbol_name("_GPIO29")
	.dwattr DW$1883, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$1883, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1883, DW_AT_accessibility(DW_ACCESS_public)
DW$1884	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1884, DW_AT_name("GPIO30"), DW_AT_symbol_name("_GPIO30")
	.dwattr DW$1884, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$1884, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1884, DW_AT_accessibility(DW_ACCESS_public)
DW$1885	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1885, DW_AT_name("GPIO31"), DW_AT_symbol_name("_GPIO31")
	.dwattr DW$1885, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$1885, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1885, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$217


DW$T$219	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$219, DW_AT_name("GPBCTRL_BITS")
	.dwattr DW$T$219, DW_AT_byte_size(0x02)
DW$1886	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1886, DW_AT_name("QUALPRD0"), DW_AT_symbol_name("_QUALPRD0")
	.dwattr DW$1886, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x08)
	.dwattr DW$1886, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1886, DW_AT_accessibility(DW_ACCESS_public)
DW$1887	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1887, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$1887, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x08)
	.dwattr DW$1887, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1887, DW_AT_accessibility(DW_ACCESS_public)
DW$1888	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1888, DW_AT_name("rsvd2"), DW_AT_symbol_name("_rsvd2")
	.dwattr DW$1888, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x10)
	.dwattr DW$1888, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1888, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$219


DW$T$221	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$221, DW_AT_name("GPB1_BITS")
	.dwattr DW$T$221, DW_AT_byte_size(0x02)
DW$1889	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1889, DW_AT_name("GPIO32"), DW_AT_symbol_name("_GPIO32")
	.dwattr DW$1889, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x02)
	.dwattr DW$1889, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1889, DW_AT_accessibility(DW_ACCESS_public)
DW$1890	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1890, DW_AT_name("GPIO33"), DW_AT_symbol_name("_GPIO33")
	.dwattr DW$1890, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x02)
	.dwattr DW$1890, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1890, DW_AT_accessibility(DW_ACCESS_public)
DW$1891	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1891, DW_AT_name("GPIO34"), DW_AT_symbol_name("_GPIO34")
	.dwattr DW$1891, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x02)
	.dwattr DW$1891, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1891, DW_AT_accessibility(DW_ACCESS_public)
DW$1892	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1892, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$1892, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x02)
	.dwattr DW$1892, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1892, DW_AT_accessibility(DW_ACCESS_public)
DW$1893	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1893, DW_AT_name("rsvd2"), DW_AT_symbol_name("_rsvd2")
	.dwattr DW$1893, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x08)
	.dwattr DW$1893, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1893, DW_AT_accessibility(DW_ACCESS_public)
DW$1894	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1894, DW_AT_name("rsvd3"), DW_AT_symbol_name("_rsvd3")
	.dwattr DW$1894, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x10)
	.dwattr DW$1894, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1894, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$221


DW$T$223	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$223, DW_AT_name("GPB2_BITS")
	.dwattr DW$T$223, DW_AT_byte_size(0x02)
DW$1895	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1895, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$1895, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x10)
	.dwattr DW$1895, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1895, DW_AT_accessibility(DW_ACCESS_public)
DW$1896	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1896, DW_AT_name("rsvd2"), DW_AT_symbol_name("_rsvd2")
	.dwattr DW$1896, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x10)
	.dwattr DW$1896, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1896, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$223


DW$T$225	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$225, DW_AT_name("GPBDAT_BITS")
	.dwattr DW$T$225, DW_AT_byte_size(0x02)
DW$1897	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1897, DW_AT_name("GPIO32"), DW_AT_symbol_name("_GPIO32")
	.dwattr DW$1897, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$1897, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1897, DW_AT_accessibility(DW_ACCESS_public)
DW$1898	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1898, DW_AT_name("GPIO33"), DW_AT_symbol_name("_GPIO33")
	.dwattr DW$1898, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$1898, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1898, DW_AT_accessibility(DW_ACCESS_public)
DW$1899	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1899, DW_AT_name("GPIO34"), DW_AT_symbol_name("_GPIO34")
	.dwattr DW$1899, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$1899, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1899, DW_AT_accessibility(DW_ACCESS_public)
DW$1900	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1900, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$1900, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x0d)
	.dwattr DW$1900, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1900, DW_AT_accessibility(DW_ACCESS_public)
DW$1901	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1901, DW_AT_name("rsvd2"), DW_AT_symbol_name("_rsvd2")
	.dwattr DW$1901, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x10)
	.dwattr DW$1901, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1901, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$225


DW$T$227	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$227, DW_AT_name("GPBPUD_BITS")
	.dwattr DW$T$227, DW_AT_byte_size(0x02)
DW$1902	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1902, DW_AT_name("GPIO32"), DW_AT_symbol_name("_GPIO32")
	.dwattr DW$1902, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$1902, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1902, DW_AT_accessibility(DW_ACCESS_public)
DW$1903	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1903, DW_AT_name("GPIO33"), DW_AT_symbol_name("_GPIO33")
	.dwattr DW$1903, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$1903, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1903, DW_AT_accessibility(DW_ACCESS_public)
DW$1904	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1904, DW_AT_name("GPIO34"), DW_AT_symbol_name("_GPIO34")
	.dwattr DW$1904, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$1904, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1904, DW_AT_accessibility(DW_ACCESS_public)
DW$1905	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1905, DW_AT_name("GPIO35"), DW_AT_symbol_name("_GPIO35")
	.dwattr DW$1905, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$1905, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1905, DW_AT_accessibility(DW_ACCESS_public)
DW$1906	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1906, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$1906, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x0c)
	.dwattr DW$1906, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1906, DW_AT_accessibility(DW_ACCESS_public)
DW$1907	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1907, DW_AT_name("rsvd2"), DW_AT_symbol_name("_rsvd2")
	.dwattr DW$1907, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x10)
	.dwattr DW$1907, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$1907, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$227


DW$T$233	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$233, DW_AT_name("GPIOXINT_BITS")
	.dwattr DW$T$233, DW_AT_byte_size(0x01)
DW$1908	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1908, DW_AT_name("GPIOSEL"), DW_AT_symbol_name("_GPIOSEL")
	.dwattr DW$1908, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x05)
	.dwattr DW$1908, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1908, DW_AT_accessibility(DW_ACCESS_public)
DW$1909	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1909, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$1909, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x0b)
	.dwattr DW$1909, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1909, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$233


DW$T$237	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$237, DW_AT_name("I2CIER_BITS")
	.dwattr DW$T$237, DW_AT_byte_size(0x01)
DW$1910	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1910, DW_AT_name("AL"), DW_AT_symbol_name("_AL")
	.dwattr DW$1910, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$1910, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1910, DW_AT_accessibility(DW_ACCESS_public)
DW$1911	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1911, DW_AT_name("NACK"), DW_AT_symbol_name("_NACK")
	.dwattr DW$1911, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$1911, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1911, DW_AT_accessibility(DW_ACCESS_public)
DW$1912	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1912, DW_AT_name("ARDY"), DW_AT_symbol_name("_ARDY")
	.dwattr DW$1912, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$1912, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1912, DW_AT_accessibility(DW_ACCESS_public)
DW$1913	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1913, DW_AT_name("RRDY"), DW_AT_symbol_name("_RRDY")
	.dwattr DW$1913, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$1913, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1913, DW_AT_accessibility(DW_ACCESS_public)
DW$1914	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1914, DW_AT_name("XRDY"), DW_AT_symbol_name("_XRDY")
	.dwattr DW$1914, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$1914, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1914, DW_AT_accessibility(DW_ACCESS_public)
DW$1915	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1915, DW_AT_name("SCD"), DW_AT_symbol_name("_SCD")
	.dwattr DW$1915, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$1915, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1915, DW_AT_accessibility(DW_ACCESS_public)
DW$1916	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1916, DW_AT_name("AAS"), DW_AT_symbol_name("_AAS")
	.dwattr DW$1916, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$1916, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1916, DW_AT_accessibility(DW_ACCESS_public)
DW$1917	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1917, DW_AT_name("rsvd"), DW_AT_symbol_name("_rsvd")
	.dwattr DW$1917, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x09)
	.dwattr DW$1917, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1917, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$237


DW$T$239	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$239, DW_AT_name("I2CSTR_BITS")
	.dwattr DW$T$239, DW_AT_byte_size(0x01)
DW$1918	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1918, DW_AT_name("AL"), DW_AT_symbol_name("_AL")
	.dwattr DW$1918, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$1918, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1918, DW_AT_accessibility(DW_ACCESS_public)
DW$1919	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1919, DW_AT_name("NACK"), DW_AT_symbol_name("_NACK")
	.dwattr DW$1919, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$1919, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1919, DW_AT_accessibility(DW_ACCESS_public)
DW$1920	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1920, DW_AT_name("ARDY"), DW_AT_symbol_name("_ARDY")
	.dwattr DW$1920, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$1920, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1920, DW_AT_accessibility(DW_ACCESS_public)
DW$1921	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1921, DW_AT_name("RRDY"), DW_AT_symbol_name("_RRDY")
	.dwattr DW$1921, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$1921, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1921, DW_AT_accessibility(DW_ACCESS_public)
DW$1922	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1922, DW_AT_name("XRDY"), DW_AT_symbol_name("_XRDY")
	.dwattr DW$1922, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$1922, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1922, DW_AT_accessibility(DW_ACCESS_public)
DW$1923	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1923, DW_AT_name("SCD"), DW_AT_symbol_name("_SCD")
	.dwattr DW$1923, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$1923, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1923, DW_AT_accessibility(DW_ACCESS_public)
DW$1924	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1924, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$1924, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x02)
	.dwattr DW$1924, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1924, DW_AT_accessibility(DW_ACCESS_public)
DW$1925	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1925, DW_AT_name("AD0"), DW_AT_symbol_name("_AD0")
	.dwattr DW$1925, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$1925, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1925, DW_AT_accessibility(DW_ACCESS_public)
DW$1926	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1926, DW_AT_name("AAS"), DW_AT_symbol_name("_AAS")
	.dwattr DW$1926, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$1926, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1926, DW_AT_accessibility(DW_ACCESS_public)
DW$1927	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1927, DW_AT_name("XSMT"), DW_AT_symbol_name("_XSMT")
	.dwattr DW$1927, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$1927, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1927, DW_AT_accessibility(DW_ACCESS_public)
DW$1928	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1928, DW_AT_name("RSFULL"), DW_AT_symbol_name("_RSFULL")
	.dwattr DW$1928, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$1928, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1928, DW_AT_accessibility(DW_ACCESS_public)
DW$1929	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1929, DW_AT_name("BB"), DW_AT_symbol_name("_BB")
	.dwattr DW$1929, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$1929, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1929, DW_AT_accessibility(DW_ACCESS_public)
DW$1930	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1930, DW_AT_name("NACKSNT"), DW_AT_symbol_name("_NACKSNT")
	.dwattr DW$1930, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$1930, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1930, DW_AT_accessibility(DW_ACCESS_public)
DW$1931	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1931, DW_AT_name("SDIR"), DW_AT_symbol_name("_SDIR")
	.dwattr DW$1931, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$1931, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1931, DW_AT_accessibility(DW_ACCESS_public)
DW$1932	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1932, DW_AT_name("rsvd2"), DW_AT_symbol_name("_rsvd2")
	.dwattr DW$1932, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$1932, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1932, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$239


DW$T$241	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$241, DW_AT_name("I2CMDR_BITS")
	.dwattr DW$T$241, DW_AT_byte_size(0x01)
DW$1933	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1933, DW_AT_name("BC"), DW_AT_symbol_name("_BC")
	.dwattr DW$1933, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x03)
	.dwattr DW$1933, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1933, DW_AT_accessibility(DW_ACCESS_public)
DW$1934	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1934, DW_AT_name("FDF"), DW_AT_symbol_name("_FDF")
	.dwattr DW$1934, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$1934, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1934, DW_AT_accessibility(DW_ACCESS_public)
DW$1935	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1935, DW_AT_name("STB"), DW_AT_symbol_name("_STB")
	.dwattr DW$1935, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$1935, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1935, DW_AT_accessibility(DW_ACCESS_public)
DW$1936	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1936, DW_AT_name("IRS"), DW_AT_symbol_name("_IRS")
	.dwattr DW$1936, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$1936, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1936, DW_AT_accessibility(DW_ACCESS_public)
DW$1937	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1937, DW_AT_name("DLB"), DW_AT_symbol_name("_DLB")
	.dwattr DW$1937, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$1937, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1937, DW_AT_accessibility(DW_ACCESS_public)
DW$1938	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1938, DW_AT_name("RM"), DW_AT_symbol_name("_RM")
	.dwattr DW$1938, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$1938, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1938, DW_AT_accessibility(DW_ACCESS_public)
DW$1939	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1939, DW_AT_name("XA"), DW_AT_symbol_name("_XA")
	.dwattr DW$1939, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$1939, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1939, DW_AT_accessibility(DW_ACCESS_public)
DW$1940	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1940, DW_AT_name("TRX"), DW_AT_symbol_name("_TRX")
	.dwattr DW$1940, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$1940, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1940, DW_AT_accessibility(DW_ACCESS_public)
DW$1941	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1941, DW_AT_name("MST"), DW_AT_symbol_name("_MST")
	.dwattr DW$1941, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$1941, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1941, DW_AT_accessibility(DW_ACCESS_public)
DW$1942	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1942, DW_AT_name("STP"), DW_AT_symbol_name("_STP")
	.dwattr DW$1942, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$1942, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1942, DW_AT_accessibility(DW_ACCESS_public)
DW$1943	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1943, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$1943, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$1943, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1943, DW_AT_accessibility(DW_ACCESS_public)
DW$1944	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1944, DW_AT_name("STT"), DW_AT_symbol_name("_STT")
	.dwattr DW$1944, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$1944, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1944, DW_AT_accessibility(DW_ACCESS_public)
DW$1945	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1945, DW_AT_name("FREE"), DW_AT_symbol_name("_FREE")
	.dwattr DW$1945, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$1945, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1945, DW_AT_accessibility(DW_ACCESS_public)
DW$1946	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1946, DW_AT_name("NACKMOD"), DW_AT_symbol_name("_NACKMOD")
	.dwattr DW$1946, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$1946, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1946, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$241


DW$T$243	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$243, DW_AT_name("I2CISRC_BITS")
	.dwattr DW$T$243, DW_AT_byte_size(0x01)
DW$1947	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1947, DW_AT_name("INTCODE"), DW_AT_symbol_name("_INTCODE")
	.dwattr DW$1947, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x03)
	.dwattr DW$1947, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1947, DW_AT_accessibility(DW_ACCESS_public)
DW$1948	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1948, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$1948, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x0d)
	.dwattr DW$1948, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1948, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$243


DW$T$245	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$245, DW_AT_name("I2CPSC_BITS")
	.dwattr DW$T$245, DW_AT_byte_size(0x01)
DW$1949	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1949, DW_AT_name("IPSC"), DW_AT_symbol_name("_IPSC")
	.dwattr DW$1949, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x08)
	.dwattr DW$1949, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1949, DW_AT_accessibility(DW_ACCESS_public)
DW$1950	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1950, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$1950, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x08)
	.dwattr DW$1950, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1950, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$245


DW$T$247	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$247, DW_AT_name("I2CFFTX_BITS")
	.dwattr DW$T$247, DW_AT_byte_size(0x01)
DW$1951	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1951, DW_AT_name("TXFFIL"), DW_AT_symbol_name("_TXFFIL")
	.dwattr DW$1951, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x05)
	.dwattr DW$1951, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1951, DW_AT_accessibility(DW_ACCESS_public)
DW$1952	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1952, DW_AT_name("TXFFIENA"), DW_AT_symbol_name("_TXFFIENA")
	.dwattr DW$1952, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$1952, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1952, DW_AT_accessibility(DW_ACCESS_public)
DW$1953	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1953, DW_AT_name("TXFFINTCLR"), DW_AT_symbol_name("_TXFFINTCLR")
	.dwattr DW$1953, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$1953, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1953, DW_AT_accessibility(DW_ACCESS_public)
DW$1954	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1954, DW_AT_name("TXFFINT"), DW_AT_symbol_name("_TXFFINT")
	.dwattr DW$1954, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$1954, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1954, DW_AT_accessibility(DW_ACCESS_public)
DW$1955	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1955, DW_AT_name("TXFFST"), DW_AT_symbol_name("_TXFFST")
	.dwattr DW$1955, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x05)
	.dwattr DW$1955, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1955, DW_AT_accessibility(DW_ACCESS_public)
DW$1956	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1956, DW_AT_name("TXFFRST"), DW_AT_symbol_name("_TXFFRST")
	.dwattr DW$1956, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$1956, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1956, DW_AT_accessibility(DW_ACCESS_public)
DW$1957	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1957, DW_AT_name("I2CFFEN"), DW_AT_symbol_name("_I2CFFEN")
	.dwattr DW$1957, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$1957, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1957, DW_AT_accessibility(DW_ACCESS_public)
DW$1958	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1958, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$1958, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$1958, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1958, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$247


DW$T$249	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$249, DW_AT_name("I2CFFRX_BITS")
	.dwattr DW$T$249, DW_AT_byte_size(0x01)
DW$1959	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1959, DW_AT_name("RXFFIL"), DW_AT_symbol_name("_RXFFIL")
	.dwattr DW$1959, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x05)
	.dwattr DW$1959, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1959, DW_AT_accessibility(DW_ACCESS_public)
DW$1960	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1960, DW_AT_name("RXFFIENA"), DW_AT_symbol_name("_RXFFIENA")
	.dwattr DW$1960, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$1960, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1960, DW_AT_accessibility(DW_ACCESS_public)
DW$1961	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1961, DW_AT_name("RXFFINTCLR"), DW_AT_symbol_name("_RXFFINTCLR")
	.dwattr DW$1961, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$1961, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1961, DW_AT_accessibility(DW_ACCESS_public)
DW$1962	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1962, DW_AT_name("RXFFINT"), DW_AT_symbol_name("_RXFFINT")
	.dwattr DW$1962, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$1962, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1962, DW_AT_accessibility(DW_ACCESS_public)
DW$1963	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1963, DW_AT_name("RXFFST"), DW_AT_symbol_name("_RXFFST")
	.dwattr DW$1963, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x05)
	.dwattr DW$1963, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1963, DW_AT_accessibility(DW_ACCESS_public)
DW$1964	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1964, DW_AT_name("RXFFRST"), DW_AT_symbol_name("_RXFFRST")
	.dwattr DW$1964, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$1964, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1964, DW_AT_accessibility(DW_ACCESS_public)
DW$1965	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1965, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$1965, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x02)
	.dwattr DW$1965, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1965, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$249


DW$T$253	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$253, DW_AT_name("PIECTRL_BITS")
	.dwattr DW$T$253, DW_AT_byte_size(0x01)
DW$1966	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1966, DW_AT_name("ENPIE"), DW_AT_symbol_name("_ENPIE")
	.dwattr DW$1966, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$1966, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1966, DW_AT_accessibility(DW_ACCESS_public)
DW$1967	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1967, DW_AT_name("PIEVECT"), DW_AT_symbol_name("_PIEVECT")
	.dwattr DW$1967, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x0f)
	.dwattr DW$1967, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1967, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$253


DW$T$255	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$255, DW_AT_name("PIEACK_BITS")
	.dwattr DW$T$255, DW_AT_byte_size(0x01)
DW$1968	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1968, DW_AT_name("ACK1"), DW_AT_symbol_name("_ACK1")
	.dwattr DW$1968, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$1968, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1968, DW_AT_accessibility(DW_ACCESS_public)
DW$1969	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1969, DW_AT_name("ACK2"), DW_AT_symbol_name("_ACK2")
	.dwattr DW$1969, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$1969, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1969, DW_AT_accessibility(DW_ACCESS_public)
DW$1970	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1970, DW_AT_name("ACK3"), DW_AT_symbol_name("_ACK3")
	.dwattr DW$1970, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$1970, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1970, DW_AT_accessibility(DW_ACCESS_public)
DW$1971	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1971, DW_AT_name("ACK4"), DW_AT_symbol_name("_ACK4")
	.dwattr DW$1971, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$1971, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1971, DW_AT_accessibility(DW_ACCESS_public)
DW$1972	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1972, DW_AT_name("ACK5"), DW_AT_symbol_name("_ACK5")
	.dwattr DW$1972, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$1972, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1972, DW_AT_accessibility(DW_ACCESS_public)
DW$1973	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1973, DW_AT_name("ACK6"), DW_AT_symbol_name("_ACK6")
	.dwattr DW$1973, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$1973, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1973, DW_AT_accessibility(DW_ACCESS_public)
DW$1974	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1974, DW_AT_name("ACK7"), DW_AT_symbol_name("_ACK7")
	.dwattr DW$1974, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$1974, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1974, DW_AT_accessibility(DW_ACCESS_public)
DW$1975	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1975, DW_AT_name("ACK8"), DW_AT_symbol_name("_ACK8")
	.dwattr DW$1975, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$1975, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1975, DW_AT_accessibility(DW_ACCESS_public)
DW$1976	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1976, DW_AT_name("ACK9"), DW_AT_symbol_name("_ACK9")
	.dwattr DW$1976, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$1976, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1976, DW_AT_accessibility(DW_ACCESS_public)
DW$1977	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1977, DW_AT_name("ACK10"), DW_AT_symbol_name("_ACK10")
	.dwattr DW$1977, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$1977, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1977, DW_AT_accessibility(DW_ACCESS_public)
DW$1978	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1978, DW_AT_name("ACK11"), DW_AT_symbol_name("_ACK11")
	.dwattr DW$1978, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$1978, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1978, DW_AT_accessibility(DW_ACCESS_public)
DW$1979	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1979, DW_AT_name("ACK12"), DW_AT_symbol_name("_ACK12")
	.dwattr DW$1979, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$1979, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1979, DW_AT_accessibility(DW_ACCESS_public)
DW$1980	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1980, DW_AT_name("rsvd"), DW_AT_symbol_name("_rsvd")
	.dwattr DW$1980, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x04)
	.dwattr DW$1980, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1980, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$255


DW$T$257	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$257, DW_AT_name("PIEIER_BITS")
	.dwattr DW$T$257, DW_AT_byte_size(0x01)
DW$1981	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1981, DW_AT_name("INTx1"), DW_AT_symbol_name("_INTx1")
	.dwattr DW$1981, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$1981, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1981, DW_AT_accessibility(DW_ACCESS_public)
DW$1982	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1982, DW_AT_name("INTx2"), DW_AT_symbol_name("_INTx2")
	.dwattr DW$1982, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$1982, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1982, DW_AT_accessibility(DW_ACCESS_public)
DW$1983	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1983, DW_AT_name("INTx3"), DW_AT_symbol_name("_INTx3")
	.dwattr DW$1983, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$1983, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1983, DW_AT_accessibility(DW_ACCESS_public)
DW$1984	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1984, DW_AT_name("INTx4"), DW_AT_symbol_name("_INTx4")
	.dwattr DW$1984, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$1984, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1984, DW_AT_accessibility(DW_ACCESS_public)
DW$1985	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1985, DW_AT_name("INTx5"), DW_AT_symbol_name("_INTx5")
	.dwattr DW$1985, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$1985, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1985, DW_AT_accessibility(DW_ACCESS_public)
DW$1986	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1986, DW_AT_name("INTx6"), DW_AT_symbol_name("_INTx6")
	.dwattr DW$1986, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$1986, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1986, DW_AT_accessibility(DW_ACCESS_public)
DW$1987	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1987, DW_AT_name("INTx7"), DW_AT_symbol_name("_INTx7")
	.dwattr DW$1987, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$1987, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1987, DW_AT_accessibility(DW_ACCESS_public)
DW$1988	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1988, DW_AT_name("INTx8"), DW_AT_symbol_name("_INTx8")
	.dwattr DW$1988, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$1988, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1988, DW_AT_accessibility(DW_ACCESS_public)
DW$1989	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1989, DW_AT_name("rsvd"), DW_AT_symbol_name("_rsvd")
	.dwattr DW$1989, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x08)
	.dwattr DW$1989, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1989, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$257


DW$T$259	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$259, DW_AT_name("PIEIFR_BITS")
	.dwattr DW$T$259, DW_AT_byte_size(0x01)
DW$1990	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1990, DW_AT_name("INTx1"), DW_AT_symbol_name("_INTx1")
	.dwattr DW$1990, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$1990, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1990, DW_AT_accessibility(DW_ACCESS_public)
DW$1991	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1991, DW_AT_name("INTx2"), DW_AT_symbol_name("_INTx2")
	.dwattr DW$1991, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$1991, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1991, DW_AT_accessibility(DW_ACCESS_public)
DW$1992	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1992, DW_AT_name("INTx3"), DW_AT_symbol_name("_INTx3")
	.dwattr DW$1992, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$1992, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1992, DW_AT_accessibility(DW_ACCESS_public)
DW$1993	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1993, DW_AT_name("INTx4"), DW_AT_symbol_name("_INTx4")
	.dwattr DW$1993, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$1993, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1993, DW_AT_accessibility(DW_ACCESS_public)
DW$1994	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1994, DW_AT_name("INTx5"), DW_AT_symbol_name("_INTx5")
	.dwattr DW$1994, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$1994, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1994, DW_AT_accessibility(DW_ACCESS_public)
DW$1995	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1995, DW_AT_name("INTx6"), DW_AT_symbol_name("_INTx6")
	.dwattr DW$1995, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$1995, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1995, DW_AT_accessibility(DW_ACCESS_public)
DW$1996	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1996, DW_AT_name("INTx7"), DW_AT_symbol_name("_INTx7")
	.dwattr DW$1996, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$1996, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1996, DW_AT_accessibility(DW_ACCESS_public)
DW$1997	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1997, DW_AT_name("INTx8"), DW_AT_symbol_name("_INTx8")
	.dwattr DW$1997, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$1997, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1997, DW_AT_accessibility(DW_ACCESS_public)
DW$1998	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1998, DW_AT_name("rsvd"), DW_AT_symbol_name("_rsvd")
	.dwattr DW$1998, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x08)
	.dwattr DW$1998, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1998, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$259


DW$T$266	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$266, DW_AT_name("SCICCR_BITS")
	.dwattr DW$T$266, DW_AT_byte_size(0x01)
DW$1999	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$1999, DW_AT_name("SCICHAR"), DW_AT_symbol_name("_SCICHAR")
	.dwattr DW$1999, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x03)
	.dwattr DW$1999, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$1999, DW_AT_accessibility(DW_ACCESS_public)
DW$2000	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2000, DW_AT_name("ADDRIDLE_MODE"), DW_AT_symbol_name("_ADDRIDLE_MODE")
	.dwattr DW$2000, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$2000, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2000, DW_AT_accessibility(DW_ACCESS_public)
DW$2001	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2001, DW_AT_name("LOOPBKENA"), DW_AT_symbol_name("_LOOPBKENA")
	.dwattr DW$2001, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$2001, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2001, DW_AT_accessibility(DW_ACCESS_public)
DW$2002	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2002, DW_AT_name("PARITYENA"), DW_AT_symbol_name("_PARITYENA")
	.dwattr DW$2002, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$2002, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2002, DW_AT_accessibility(DW_ACCESS_public)
DW$2003	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2003, DW_AT_name("PARITY"), DW_AT_symbol_name("_PARITY")
	.dwattr DW$2003, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$2003, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2003, DW_AT_accessibility(DW_ACCESS_public)
DW$2004	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2004, DW_AT_name("STOPBITS"), DW_AT_symbol_name("_STOPBITS")
	.dwattr DW$2004, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$2004, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2004, DW_AT_accessibility(DW_ACCESS_public)
DW$2005	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2005, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$2005, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x08)
	.dwattr DW$2005, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2005, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$266


DW$T$268	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$268, DW_AT_name("SCICTL1_BITS")
	.dwattr DW$T$268, DW_AT_byte_size(0x01)
DW$2006	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2006, DW_AT_name("RXENA"), DW_AT_symbol_name("_RXENA")
	.dwattr DW$2006, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$2006, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2006, DW_AT_accessibility(DW_ACCESS_public)
DW$2007	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2007, DW_AT_name("TXENA"), DW_AT_symbol_name("_TXENA")
	.dwattr DW$2007, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$2007, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2007, DW_AT_accessibility(DW_ACCESS_public)
DW$2008	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2008, DW_AT_name("SLEEP"), DW_AT_symbol_name("_SLEEP")
	.dwattr DW$2008, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$2008, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2008, DW_AT_accessibility(DW_ACCESS_public)
DW$2009	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2009, DW_AT_name("TXWAKE"), DW_AT_symbol_name("_TXWAKE")
	.dwattr DW$2009, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$2009, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2009, DW_AT_accessibility(DW_ACCESS_public)
DW$2010	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2010, DW_AT_name("rsvd"), DW_AT_symbol_name("_rsvd")
	.dwattr DW$2010, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$2010, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2010, DW_AT_accessibility(DW_ACCESS_public)
DW$2011	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2011, DW_AT_name("SWRESET"), DW_AT_symbol_name("_SWRESET")
	.dwattr DW$2011, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$2011, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2011, DW_AT_accessibility(DW_ACCESS_public)
DW$2012	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2012, DW_AT_name("RXERRINTENA"), DW_AT_symbol_name("_RXERRINTENA")
	.dwattr DW$2012, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$2012, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2012, DW_AT_accessibility(DW_ACCESS_public)
DW$2013	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2013, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$2013, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x09)
	.dwattr DW$2013, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2013, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$268


DW$T$270	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$270, DW_AT_name("SCICTL2_BITS")
	.dwattr DW$T$270, DW_AT_byte_size(0x01)
DW$2014	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2014, DW_AT_name("TXINTENA"), DW_AT_symbol_name("_TXINTENA")
	.dwattr DW$2014, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$2014, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2014, DW_AT_accessibility(DW_ACCESS_public)
DW$2015	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2015, DW_AT_name("RXBKINTENA"), DW_AT_symbol_name("_RXBKINTENA")
	.dwattr DW$2015, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$2015, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2015, DW_AT_accessibility(DW_ACCESS_public)
DW$2016	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2016, DW_AT_name("rsvd"), DW_AT_symbol_name("_rsvd")
	.dwattr DW$2016, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x04)
	.dwattr DW$2016, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2016, DW_AT_accessibility(DW_ACCESS_public)
DW$2017	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2017, DW_AT_name("TXEMPTY"), DW_AT_symbol_name("_TXEMPTY")
	.dwattr DW$2017, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$2017, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2017, DW_AT_accessibility(DW_ACCESS_public)
DW$2018	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2018, DW_AT_name("TXRDY"), DW_AT_symbol_name("_TXRDY")
	.dwattr DW$2018, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$2018, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2018, DW_AT_accessibility(DW_ACCESS_public)
DW$2019	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2019, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$2019, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x08)
	.dwattr DW$2019, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2019, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$270


DW$T$272	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$272, DW_AT_name("SCIRXST_BITS")
	.dwattr DW$T$272, DW_AT_byte_size(0x01)
DW$2020	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2020, DW_AT_name("rsvd"), DW_AT_symbol_name("_rsvd")
	.dwattr DW$2020, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$2020, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2020, DW_AT_accessibility(DW_ACCESS_public)
DW$2021	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2021, DW_AT_name("RXWAKE"), DW_AT_symbol_name("_RXWAKE")
	.dwattr DW$2021, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$2021, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2021, DW_AT_accessibility(DW_ACCESS_public)
DW$2022	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2022, DW_AT_name("PE"), DW_AT_symbol_name("_PE")
	.dwattr DW$2022, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$2022, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2022, DW_AT_accessibility(DW_ACCESS_public)
DW$2023	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2023, DW_AT_name("OE"), DW_AT_symbol_name("_OE")
	.dwattr DW$2023, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$2023, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2023, DW_AT_accessibility(DW_ACCESS_public)
DW$2024	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2024, DW_AT_name("FE"), DW_AT_symbol_name("_FE")
	.dwattr DW$2024, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$2024, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2024, DW_AT_accessibility(DW_ACCESS_public)
DW$2025	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2025, DW_AT_name("BRKDT"), DW_AT_symbol_name("_BRKDT")
	.dwattr DW$2025, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$2025, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2025, DW_AT_accessibility(DW_ACCESS_public)
DW$2026	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2026, DW_AT_name("RXRDY"), DW_AT_symbol_name("_RXRDY")
	.dwattr DW$2026, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$2026, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2026, DW_AT_accessibility(DW_ACCESS_public)
DW$2027	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2027, DW_AT_name("RXERROR"), DW_AT_symbol_name("_RXERROR")
	.dwattr DW$2027, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$2027, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2027, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$272


DW$T$274	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$274, DW_AT_name("SCIRXBUF_BITS")
	.dwattr DW$T$274, DW_AT_byte_size(0x01)
DW$2028	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2028, DW_AT_name("RXDT"), DW_AT_symbol_name("_RXDT")
	.dwattr DW$2028, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x08)
	.dwattr DW$2028, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2028, DW_AT_accessibility(DW_ACCESS_public)
DW$2029	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2029, DW_AT_name("rsvd"), DW_AT_symbol_name("_rsvd")
	.dwattr DW$2029, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x06)
	.dwattr DW$2029, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2029, DW_AT_accessibility(DW_ACCESS_public)
DW$2030	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2030, DW_AT_name("SCIFFPE"), DW_AT_symbol_name("_SCIFFPE")
	.dwattr DW$2030, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$2030, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2030, DW_AT_accessibility(DW_ACCESS_public)
DW$2031	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2031, DW_AT_name("SCIFFFE"), DW_AT_symbol_name("_SCIFFFE")
	.dwattr DW$2031, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$2031, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2031, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$274


DW$T$276	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$276, DW_AT_name("SCIFFTX_BITS")
	.dwattr DW$T$276, DW_AT_byte_size(0x01)
DW$2032	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2032, DW_AT_name("TXFFIL"), DW_AT_symbol_name("_TXFFIL")
	.dwattr DW$2032, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x05)
	.dwattr DW$2032, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2032, DW_AT_accessibility(DW_ACCESS_public)
DW$2033	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2033, DW_AT_name("TXFFIENA"), DW_AT_symbol_name("_TXFFIENA")
	.dwattr DW$2033, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$2033, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2033, DW_AT_accessibility(DW_ACCESS_public)
DW$2034	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2034, DW_AT_name("TXFFINTCLR"), DW_AT_symbol_name("_TXFFINTCLR")
	.dwattr DW$2034, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$2034, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2034, DW_AT_accessibility(DW_ACCESS_public)
DW$2035	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2035, DW_AT_name("TXFFINT"), DW_AT_symbol_name("_TXFFINT")
	.dwattr DW$2035, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$2035, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2035, DW_AT_accessibility(DW_ACCESS_public)
DW$2036	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2036, DW_AT_name("TXFFST"), DW_AT_symbol_name("_TXFFST")
	.dwattr DW$2036, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x05)
	.dwattr DW$2036, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2036, DW_AT_accessibility(DW_ACCESS_public)
DW$2037	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2037, DW_AT_name("TXFIFOXRESET"), DW_AT_symbol_name("_TXFIFOXRESET")
	.dwattr DW$2037, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$2037, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2037, DW_AT_accessibility(DW_ACCESS_public)
DW$2038	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2038, DW_AT_name("SCIFFENA"), DW_AT_symbol_name("_SCIFFENA")
	.dwattr DW$2038, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$2038, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2038, DW_AT_accessibility(DW_ACCESS_public)
DW$2039	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2039, DW_AT_name("SCIRST"), DW_AT_symbol_name("_SCIRST")
	.dwattr DW$2039, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$2039, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2039, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$276


DW$T$278	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$278, DW_AT_name("SCIFFRX_BITS")
	.dwattr DW$T$278, DW_AT_byte_size(0x01)
DW$2040	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2040, DW_AT_name("RXFFIL"), DW_AT_symbol_name("_RXFFIL")
	.dwattr DW$2040, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x05)
	.dwattr DW$2040, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2040, DW_AT_accessibility(DW_ACCESS_public)
DW$2041	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2041, DW_AT_name("RXFFIENA"), DW_AT_symbol_name("_RXFFIENA")
	.dwattr DW$2041, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$2041, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2041, DW_AT_accessibility(DW_ACCESS_public)
DW$2042	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2042, DW_AT_name("RXFFINTCLR"), DW_AT_symbol_name("_RXFFINTCLR")
	.dwattr DW$2042, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$2042, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2042, DW_AT_accessibility(DW_ACCESS_public)
DW$2043	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2043, DW_AT_name("RXFFINT"), DW_AT_symbol_name("_RXFFINT")
	.dwattr DW$2043, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$2043, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2043, DW_AT_accessibility(DW_ACCESS_public)
DW$2044	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2044, DW_AT_name("RXFFST"), DW_AT_symbol_name("_RXFFST")
	.dwattr DW$2044, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x05)
	.dwattr DW$2044, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2044, DW_AT_accessibility(DW_ACCESS_public)
DW$2045	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2045, DW_AT_name("RXFIFORESET"), DW_AT_symbol_name("_RXFIFORESET")
	.dwattr DW$2045, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$2045, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2045, DW_AT_accessibility(DW_ACCESS_public)
DW$2046	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2046, DW_AT_name("RXFFOVRCLR"), DW_AT_symbol_name("_RXFFOVRCLR")
	.dwattr DW$2046, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$2046, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2046, DW_AT_accessibility(DW_ACCESS_public)
DW$2047	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2047, DW_AT_name("RXFFOVF"), DW_AT_symbol_name("_RXFFOVF")
	.dwattr DW$2047, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$2047, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2047, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$278


DW$T$280	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$280, DW_AT_name("SCIFFCT_BITS")
	.dwattr DW$T$280, DW_AT_byte_size(0x01)
DW$2048	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2048, DW_AT_name("FFTXDLY"), DW_AT_symbol_name("_FFTXDLY")
	.dwattr DW$2048, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x08)
	.dwattr DW$2048, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2048, DW_AT_accessibility(DW_ACCESS_public)
DW$2049	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2049, DW_AT_name("rsvd"), DW_AT_symbol_name("_rsvd")
	.dwattr DW$2049, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x05)
	.dwattr DW$2049, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2049, DW_AT_accessibility(DW_ACCESS_public)
DW$2050	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2050, DW_AT_name("CDC"), DW_AT_symbol_name("_CDC")
	.dwattr DW$2050, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$2050, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2050, DW_AT_accessibility(DW_ACCESS_public)
DW$2051	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2051, DW_AT_name("ABDCLR"), DW_AT_symbol_name("_ABDCLR")
	.dwattr DW$2051, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$2051, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2051, DW_AT_accessibility(DW_ACCESS_public)
DW$2052	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2052, DW_AT_name("ABD"), DW_AT_symbol_name("_ABD")
	.dwattr DW$2052, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$2052, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2052, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$280


DW$T$282	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$282, DW_AT_name("SCIPRI_BITS")
	.dwattr DW$T$282, DW_AT_byte_size(0x01)
DW$2053	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2053, DW_AT_name("rsvd"), DW_AT_symbol_name("_rsvd")
	.dwattr DW$2053, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x03)
	.dwattr DW$2053, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2053, DW_AT_accessibility(DW_ACCESS_public)
DW$2054	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2054, DW_AT_name("FREE"), DW_AT_symbol_name("_FREE")
	.dwattr DW$2054, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$2054, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2054, DW_AT_accessibility(DW_ACCESS_public)
DW$2055	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2055, DW_AT_name("SOFT"), DW_AT_symbol_name("_SOFT")
	.dwattr DW$2055, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$2055, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2055, DW_AT_accessibility(DW_ACCESS_public)
DW$2056	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2056, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$2056, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x03)
	.dwattr DW$2056, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2056, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$282


DW$T$285	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$285, DW_AT_name("SPICCR_BITS")
	.dwattr DW$T$285, DW_AT_byte_size(0x01)
DW$2057	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2057, DW_AT_name("SPICHAR"), DW_AT_symbol_name("_SPICHAR")
	.dwattr DW$2057, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x04)
	.dwattr DW$2057, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2057, DW_AT_accessibility(DW_ACCESS_public)
DW$2058	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2058, DW_AT_name("SPILBK"), DW_AT_symbol_name("_SPILBK")
	.dwattr DW$2058, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$2058, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2058, DW_AT_accessibility(DW_ACCESS_public)
DW$2059	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2059, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$2059, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$2059, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2059, DW_AT_accessibility(DW_ACCESS_public)
DW$2060	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2060, DW_AT_name("CLKPOLARITY"), DW_AT_symbol_name("_CLKPOLARITY")
	.dwattr DW$2060, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$2060, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2060, DW_AT_accessibility(DW_ACCESS_public)
DW$2061	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2061, DW_AT_name("SPISWRESET"), DW_AT_symbol_name("_SPISWRESET")
	.dwattr DW$2061, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$2061, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2061, DW_AT_accessibility(DW_ACCESS_public)
DW$2062	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2062, DW_AT_name("rsvd2"), DW_AT_symbol_name("_rsvd2")
	.dwattr DW$2062, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x08)
	.dwattr DW$2062, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2062, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$285


DW$T$287	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$287, DW_AT_name("SPICTL_BITS")
	.dwattr DW$T$287, DW_AT_byte_size(0x01)
DW$2063	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2063, DW_AT_name("SPIINTENA"), DW_AT_symbol_name("_SPIINTENA")
	.dwattr DW$2063, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$2063, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2063, DW_AT_accessibility(DW_ACCESS_public)
DW$2064	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2064, DW_AT_name("TALK"), DW_AT_symbol_name("_TALK")
	.dwattr DW$2064, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$2064, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2064, DW_AT_accessibility(DW_ACCESS_public)
DW$2065	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2065, DW_AT_name("MASTER_SLAVE"), DW_AT_symbol_name("_MASTER_SLAVE")
	.dwattr DW$2065, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$2065, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2065, DW_AT_accessibility(DW_ACCESS_public)
DW$2066	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2066, DW_AT_name("CLK_PHASE"), DW_AT_symbol_name("_CLK_PHASE")
	.dwattr DW$2066, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$2066, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2066, DW_AT_accessibility(DW_ACCESS_public)
DW$2067	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2067, DW_AT_name("OVERRUNINTENA"), DW_AT_symbol_name("_OVERRUNINTENA")
	.dwattr DW$2067, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$2067, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2067, DW_AT_accessibility(DW_ACCESS_public)
DW$2068	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2068, DW_AT_name("rsvd"), DW_AT_symbol_name("_rsvd")
	.dwattr DW$2068, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x0b)
	.dwattr DW$2068, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2068, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$287


DW$T$289	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$289, DW_AT_name("SPISTS_BITS")
	.dwattr DW$T$289, DW_AT_byte_size(0x01)
DW$2069	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2069, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$2069, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x05)
	.dwattr DW$2069, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2069, DW_AT_accessibility(DW_ACCESS_public)
DW$2070	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2070, DW_AT_name("BUFFULL_FLAG"), DW_AT_symbol_name("_BUFFULL_FLAG")
	.dwattr DW$2070, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$2070, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2070, DW_AT_accessibility(DW_ACCESS_public)
DW$2071	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2071, DW_AT_name("INT_FLAG"), DW_AT_symbol_name("_INT_FLAG")
	.dwattr DW$2071, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$2071, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2071, DW_AT_accessibility(DW_ACCESS_public)
DW$2072	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2072, DW_AT_name("OVERRUN_FLAG"), DW_AT_symbol_name("_OVERRUN_FLAG")
	.dwattr DW$2072, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$2072, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2072, DW_AT_accessibility(DW_ACCESS_public)
DW$2073	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2073, DW_AT_name("rsvd2"), DW_AT_symbol_name("_rsvd2")
	.dwattr DW$2073, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x08)
	.dwattr DW$2073, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2073, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$289


DW$T$291	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$291, DW_AT_name("SPIFFTX_BITS")
	.dwattr DW$T$291, DW_AT_byte_size(0x01)
DW$2074	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2074, DW_AT_name("TXFFIL"), DW_AT_symbol_name("_TXFFIL")
	.dwattr DW$2074, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x05)
	.dwattr DW$2074, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2074, DW_AT_accessibility(DW_ACCESS_public)
DW$2075	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2075, DW_AT_name("TXFFIENA"), DW_AT_symbol_name("_TXFFIENA")
	.dwattr DW$2075, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$2075, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2075, DW_AT_accessibility(DW_ACCESS_public)
DW$2076	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2076, DW_AT_name("TXFFINTCLR"), DW_AT_symbol_name("_TXFFINTCLR")
	.dwattr DW$2076, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$2076, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2076, DW_AT_accessibility(DW_ACCESS_public)
DW$2077	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2077, DW_AT_name("TXFFINT"), DW_AT_symbol_name("_TXFFINT")
	.dwattr DW$2077, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$2077, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2077, DW_AT_accessibility(DW_ACCESS_public)
DW$2078	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2078, DW_AT_name("TXFFST"), DW_AT_symbol_name("_TXFFST")
	.dwattr DW$2078, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x05)
	.dwattr DW$2078, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2078, DW_AT_accessibility(DW_ACCESS_public)
DW$2079	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2079, DW_AT_name("TXFIFO"), DW_AT_symbol_name("_TXFIFO")
	.dwattr DW$2079, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$2079, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2079, DW_AT_accessibility(DW_ACCESS_public)
DW$2080	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2080, DW_AT_name("SPIFFENA"), DW_AT_symbol_name("_SPIFFENA")
	.dwattr DW$2080, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$2080, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2080, DW_AT_accessibility(DW_ACCESS_public)
DW$2081	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2081, DW_AT_name("SPIRST"), DW_AT_symbol_name("_SPIRST")
	.dwattr DW$2081, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$2081, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2081, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$291


DW$T$293	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$293, DW_AT_name("SPIFFRX_BITS")
	.dwattr DW$T$293, DW_AT_byte_size(0x01)
DW$2082	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2082, DW_AT_name("RXFFIL"), DW_AT_symbol_name("_RXFFIL")
	.dwattr DW$2082, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x05)
	.dwattr DW$2082, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2082, DW_AT_accessibility(DW_ACCESS_public)
DW$2083	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2083, DW_AT_name("RXFFIENA"), DW_AT_symbol_name("_RXFFIENA")
	.dwattr DW$2083, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$2083, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2083, DW_AT_accessibility(DW_ACCESS_public)
DW$2084	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2084, DW_AT_name("RXFFINTCLR"), DW_AT_symbol_name("_RXFFINTCLR")
	.dwattr DW$2084, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$2084, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2084, DW_AT_accessibility(DW_ACCESS_public)
DW$2085	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2085, DW_AT_name("RXFFINT"), DW_AT_symbol_name("_RXFFINT")
	.dwattr DW$2085, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$2085, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2085, DW_AT_accessibility(DW_ACCESS_public)
DW$2086	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2086, DW_AT_name("RXFFST"), DW_AT_symbol_name("_RXFFST")
	.dwattr DW$2086, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x05)
	.dwattr DW$2086, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2086, DW_AT_accessibility(DW_ACCESS_public)
DW$2087	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2087, DW_AT_name("RXFIFORESET"), DW_AT_symbol_name("_RXFIFORESET")
	.dwattr DW$2087, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$2087, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2087, DW_AT_accessibility(DW_ACCESS_public)
DW$2088	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2088, DW_AT_name("RXFFOVFCLR"), DW_AT_symbol_name("_RXFFOVFCLR")
	.dwattr DW$2088, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$2088, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2088, DW_AT_accessibility(DW_ACCESS_public)
DW$2089	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2089, DW_AT_name("RXFFOVF"), DW_AT_symbol_name("_RXFFOVF")
	.dwattr DW$2089, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$2089, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2089, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$293


DW$T$295	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$295, DW_AT_name("SPIFFCT_BITS")
	.dwattr DW$T$295, DW_AT_byte_size(0x01)
DW$2090	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2090, DW_AT_name("TXDLY"), DW_AT_symbol_name("_TXDLY")
	.dwattr DW$2090, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x08)
	.dwattr DW$2090, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2090, DW_AT_accessibility(DW_ACCESS_public)
DW$2091	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2091, DW_AT_name("rsvd"), DW_AT_symbol_name("_rsvd")
	.dwattr DW$2091, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x08)
	.dwattr DW$2091, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2091, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$295


DW$T$297	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$297, DW_AT_name("SPIPRI_BITS")
	.dwattr DW$T$297, DW_AT_byte_size(0x01)
DW$2092	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2092, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$2092, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x04)
	.dwattr DW$2092, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2092, DW_AT_accessibility(DW_ACCESS_public)
DW$2093	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2093, DW_AT_name("FREE"), DW_AT_symbol_name("_FREE")
	.dwattr DW$2093, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$2093, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2093, DW_AT_accessibility(DW_ACCESS_public)
DW$2094	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2094, DW_AT_name("SOFT"), DW_AT_symbol_name("_SOFT")
	.dwattr DW$2094, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$2094, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2094, DW_AT_accessibility(DW_ACCESS_public)
DW$2095	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2095, DW_AT_name("PRIORITY"), DW_AT_symbol_name("_PRIORITY")
	.dwattr DW$2095, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$2095, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2095, DW_AT_accessibility(DW_ACCESS_public)
DW$2096	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2096, DW_AT_name("rsvd2"), DW_AT_symbol_name("_rsvd2")
	.dwattr DW$2096, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x09)
	.dwattr DW$2096, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2096, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$297


DW$T$301	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$301, DW_AT_name("XCLK_BITS")
	.dwattr DW$T$301, DW_AT_byte_size(0x01)
DW$2097	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2097, DW_AT_name("XCLKOUTDIV"), DW_AT_symbol_name("_XCLKOUTDIV")
	.dwattr DW$2097, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x02)
	.dwattr DW$2097, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2097, DW_AT_accessibility(DW_ACCESS_public)
DW$2098	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2098, DW_AT_name("XCLKOUTDAT"), DW_AT_symbol_name("_XCLKOUTDAT")
	.dwattr DW$2098, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$2098, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2098, DW_AT_accessibility(DW_ACCESS_public)
DW$2099	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2099, DW_AT_name("X1DAT"), DW_AT_symbol_name("_X1DAT")
	.dwattr DW$2099, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$2099, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2099, DW_AT_accessibility(DW_ACCESS_public)
DW$2100	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2100, DW_AT_name("XCLKINDAT"), DW_AT_symbol_name("_XCLKINDAT")
	.dwattr DW$2100, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$2100, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2100, DW_AT_accessibility(DW_ACCESS_public)
DW$2101	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2101, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$2101, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x03)
	.dwattr DW$2101, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2101, DW_AT_accessibility(DW_ACCESS_public)
DW$2102	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2102, DW_AT_name("X1CNT"), DW_AT_symbol_name("_X1CNT")
	.dwattr DW$2102, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x04)
	.dwattr DW$2102, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2102, DW_AT_accessibility(DW_ACCESS_public)
DW$2103	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2103, DW_AT_name("XCLKINCNT"), DW_AT_symbol_name("_XCLKINCNT")
	.dwattr DW$2103, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x04)
	.dwattr DW$2103, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2103, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$301


DW$T$303	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$303, DW_AT_name("PLLSTS_BITS")
	.dwattr DW$T$303, DW_AT_byte_size(0x01)
DW$2104	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2104, DW_AT_name("PLLLOCKS"), DW_AT_symbol_name("_PLLLOCKS")
	.dwattr DW$2104, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$2104, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2104, DW_AT_accessibility(DW_ACCESS_public)
DW$2105	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2105, DW_AT_name("CLKINDIV"), DW_AT_symbol_name("_CLKINDIV")
	.dwattr DW$2105, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$2105, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2105, DW_AT_accessibility(DW_ACCESS_public)
DW$2106	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2106, DW_AT_name("PLLOFF"), DW_AT_symbol_name("_PLLOFF")
	.dwattr DW$2106, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$2106, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2106, DW_AT_accessibility(DW_ACCESS_public)
DW$2107	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2107, DW_AT_name("MCLKSTS"), DW_AT_symbol_name("_MCLKSTS")
	.dwattr DW$2107, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$2107, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2107, DW_AT_accessibility(DW_ACCESS_public)
DW$2108	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2108, DW_AT_name("MCLKCLR"), DW_AT_symbol_name("_MCLKCLR")
	.dwattr DW$2108, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$2108, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2108, DW_AT_accessibility(DW_ACCESS_public)
DW$2109	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2109, DW_AT_name("OSCOFF"), DW_AT_symbol_name("_OSCOFF")
	.dwattr DW$2109, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$2109, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2109, DW_AT_accessibility(DW_ACCESS_public)
DW$2110	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2110, DW_AT_name("MCLKOFF"), DW_AT_symbol_name("_MCLKOFF")
	.dwattr DW$2110, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$2110, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2110, DW_AT_accessibility(DW_ACCESS_public)
DW$2111	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2111, DW_AT_name("rsvd2"), DW_AT_symbol_name("_rsvd2")
	.dwattr DW$2111, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x09)
	.dwattr DW$2111, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2111, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$303


DW$T$305	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$305, DW_AT_name("HISPCP_BITS")
	.dwattr DW$T$305, DW_AT_byte_size(0x01)
DW$2112	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2112, DW_AT_name("HSPCLK"), DW_AT_symbol_name("_HSPCLK")
	.dwattr DW$2112, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x03)
	.dwattr DW$2112, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2112, DW_AT_accessibility(DW_ACCESS_public)
DW$2113	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2113, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$2113, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x0d)
	.dwattr DW$2113, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2113, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$305


DW$T$307	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$307, DW_AT_name("LOSPCP_BITS")
	.dwattr DW$T$307, DW_AT_byte_size(0x01)
DW$2114	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2114, DW_AT_name("LSPCLK"), DW_AT_symbol_name("_LSPCLK")
	.dwattr DW$2114, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x03)
	.dwattr DW$2114, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2114, DW_AT_accessibility(DW_ACCESS_public)
DW$2115	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2115, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$2115, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x0d)
	.dwattr DW$2115, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2115, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$307


DW$T$309	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$309, DW_AT_name("PCLKCR0_BITS")
	.dwattr DW$T$309, DW_AT_byte_size(0x01)
DW$2116	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2116, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$2116, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x02)
	.dwattr DW$2116, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2116, DW_AT_accessibility(DW_ACCESS_public)
DW$2117	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2117, DW_AT_name("TBCLKSYNC"), DW_AT_symbol_name("_TBCLKSYNC")
	.dwattr DW$2117, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$2117, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2117, DW_AT_accessibility(DW_ACCESS_public)
DW$2118	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2118, DW_AT_name("ADCENCLK"), DW_AT_symbol_name("_ADCENCLK")
	.dwattr DW$2118, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$2118, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2118, DW_AT_accessibility(DW_ACCESS_public)
DW$2119	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2119, DW_AT_name("I2CAENCLK"), DW_AT_symbol_name("_I2CAENCLK")
	.dwattr DW$2119, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$2119, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2119, DW_AT_accessibility(DW_ACCESS_public)
DW$2120	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2120, DW_AT_name("rsvd2"), DW_AT_symbol_name("_rsvd2")
	.dwattr DW$2120, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$2120, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2120, DW_AT_accessibility(DW_ACCESS_public)
DW$2121	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2121, DW_AT_name("SPICENCLK"), DW_AT_symbol_name("_SPICENCLK")
	.dwattr DW$2121, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$2121, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2121, DW_AT_accessibility(DW_ACCESS_public)
DW$2122	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2122, DW_AT_name("SPIDENCLK"), DW_AT_symbol_name("_SPIDENCLK")
	.dwattr DW$2122, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$2122, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2122, DW_AT_accessibility(DW_ACCESS_public)
DW$2123	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2123, DW_AT_name("SPIAENCLK"), DW_AT_symbol_name("_SPIAENCLK")
	.dwattr DW$2123, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$2123, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2123, DW_AT_accessibility(DW_ACCESS_public)
DW$2124	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2124, DW_AT_name("SPIBENCLK"), DW_AT_symbol_name("_SPIBENCLK")
	.dwattr DW$2124, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$2124, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2124, DW_AT_accessibility(DW_ACCESS_public)
DW$2125	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2125, DW_AT_name("SCIAENCLK"), DW_AT_symbol_name("_SCIAENCLK")
	.dwattr DW$2125, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$2125, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2125, DW_AT_accessibility(DW_ACCESS_public)
DW$2126	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2126, DW_AT_name("SCIBENCLK"), DW_AT_symbol_name("_SCIBENCLK")
	.dwattr DW$2126, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$2126, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2126, DW_AT_accessibility(DW_ACCESS_public)
DW$2127	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2127, DW_AT_name("rsvd3"), DW_AT_symbol_name("_rsvd3")
	.dwattr DW$2127, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x02)
	.dwattr DW$2127, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2127, DW_AT_accessibility(DW_ACCESS_public)
DW$2128	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2128, DW_AT_name("ECANAENCLK"), DW_AT_symbol_name("_ECANAENCLK")
	.dwattr DW$2128, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$2128, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2128, DW_AT_accessibility(DW_ACCESS_public)
DW$2129	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2129, DW_AT_name("ECANBENCLK"), DW_AT_symbol_name("_ECANBENCLK")
	.dwattr DW$2129, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$2129, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2129, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$309


DW$T$311	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$311, DW_AT_name("PCLKCR1_BITS")
	.dwattr DW$T$311, DW_AT_byte_size(0x01)
DW$2130	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2130, DW_AT_name("EPWM1ENCLK"), DW_AT_symbol_name("_EPWM1ENCLK")
	.dwattr DW$2130, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$2130, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2130, DW_AT_accessibility(DW_ACCESS_public)
DW$2131	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2131, DW_AT_name("EPWM2ENCLK"), DW_AT_symbol_name("_EPWM2ENCLK")
	.dwattr DW$2131, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$2131, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2131, DW_AT_accessibility(DW_ACCESS_public)
DW$2132	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2132, DW_AT_name("EPWM3ENCLK"), DW_AT_symbol_name("_EPWM3ENCLK")
	.dwattr DW$2132, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$2132, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2132, DW_AT_accessibility(DW_ACCESS_public)
DW$2133	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2133, DW_AT_name("EPWM4ENCLK"), DW_AT_symbol_name("_EPWM4ENCLK")
	.dwattr DW$2133, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$2133, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2133, DW_AT_accessibility(DW_ACCESS_public)
DW$2134	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2134, DW_AT_name("EPWM5ENCLK"), DW_AT_symbol_name("_EPWM5ENCLK")
	.dwattr DW$2134, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$2134, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2134, DW_AT_accessibility(DW_ACCESS_public)
DW$2135	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2135, DW_AT_name("EPWM6ENCLK"), DW_AT_symbol_name("_EPWM6ENCLK")
	.dwattr DW$2135, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$2135, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2135, DW_AT_accessibility(DW_ACCESS_public)
DW$2136	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2136, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$2136, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x02)
	.dwattr DW$2136, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2136, DW_AT_accessibility(DW_ACCESS_public)
DW$2137	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2137, DW_AT_name("ECAP1ENCLK"), DW_AT_symbol_name("_ECAP1ENCLK")
	.dwattr DW$2137, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$2137, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2137, DW_AT_accessibility(DW_ACCESS_public)
DW$2138	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2138, DW_AT_name("ECAP2ENCLK"), DW_AT_symbol_name("_ECAP2ENCLK")
	.dwattr DW$2138, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$2138, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2138, DW_AT_accessibility(DW_ACCESS_public)
DW$2139	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2139, DW_AT_name("ECAP3ENCLK"), DW_AT_symbol_name("_ECAP3ENCLK")
	.dwattr DW$2139, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$2139, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2139, DW_AT_accessibility(DW_ACCESS_public)
DW$2140	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2140, DW_AT_name("ECAP4ENCLK"), DW_AT_symbol_name("_ECAP4ENCLK")
	.dwattr DW$2140, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$2140, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2140, DW_AT_accessibility(DW_ACCESS_public)
DW$2141	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2141, DW_AT_name("rsvd2"), DW_AT_symbol_name("_rsvd2")
	.dwattr DW$2141, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x02)
	.dwattr DW$2141, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2141, DW_AT_accessibility(DW_ACCESS_public)
DW$2142	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2142, DW_AT_name("EQEP1ENCLK"), DW_AT_symbol_name("_EQEP1ENCLK")
	.dwattr DW$2142, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$2142, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2142, DW_AT_accessibility(DW_ACCESS_public)
DW$2143	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2143, DW_AT_name("EQEP2ENCLK"), DW_AT_symbol_name("_EQEP2ENCLK")
	.dwattr DW$2143, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$2143, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2143, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$311


DW$T$313	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$313, DW_AT_name("LPMCR0_BITS")
	.dwattr DW$T$313, DW_AT_byte_size(0x01)
DW$2144	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2144, DW_AT_name("LPM"), DW_AT_symbol_name("_LPM")
	.dwattr DW$2144, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x02)
	.dwattr DW$2144, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2144, DW_AT_accessibility(DW_ACCESS_public)
DW$2145	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2145, DW_AT_name("QUALSTDBY"), DW_AT_symbol_name("_QUALSTDBY")
	.dwattr DW$2145, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x06)
	.dwattr DW$2145, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2145, DW_AT_accessibility(DW_ACCESS_public)
DW$2146	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2146, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$2146, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x07)
	.dwattr DW$2146, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2146, DW_AT_accessibility(DW_ACCESS_public)
DW$2147	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2147, DW_AT_name("WDINTE"), DW_AT_symbol_name("_WDINTE")
	.dwattr DW$2147, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$2147, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2147, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$313


DW$T$315	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$315, DW_AT_name("PLLCR_BITS")
	.dwattr DW$T$315, DW_AT_byte_size(0x01)
DW$2148	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2148, DW_AT_name("DIV"), DW_AT_symbol_name("_DIV")
	.dwattr DW$2148, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x04)
	.dwattr DW$2148, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2148, DW_AT_accessibility(DW_ACCESS_public)
DW$2149	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2149, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$2149, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x0c)
	.dwattr DW$2149, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2149, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$315


DW$T$319	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$319, DW_AT_name("FOPT_BITS")
	.dwattr DW$T$319, DW_AT_byte_size(0x01)
DW$2150	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2150, DW_AT_name("ENPIPE"), DW_AT_symbol_name("_ENPIPE")
	.dwattr DW$2150, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$2150, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2150, DW_AT_accessibility(DW_ACCESS_public)
DW$2151	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2151, DW_AT_name("rsvd"), DW_AT_symbol_name("_rsvd")
	.dwattr DW$2151, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x0f)
	.dwattr DW$2151, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2151, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$319


DW$T$321	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$321, DW_AT_name("FPWR_BITS")
	.dwattr DW$T$321, DW_AT_byte_size(0x01)
DW$2152	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2152, DW_AT_name("PWR"), DW_AT_symbol_name("_PWR")
	.dwattr DW$2152, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x02)
	.dwattr DW$2152, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2152, DW_AT_accessibility(DW_ACCESS_public)
DW$2153	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2153, DW_AT_name("rsvd"), DW_AT_symbol_name("_rsvd")
	.dwattr DW$2153, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x0e)
	.dwattr DW$2153, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2153, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$321


DW$T$323	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$323, DW_AT_name("FSTATUS_BITS")
	.dwattr DW$T$323, DW_AT_byte_size(0x01)
DW$2154	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2154, DW_AT_name("PWRS"), DW_AT_symbol_name("_PWRS")
	.dwattr DW$2154, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x02)
	.dwattr DW$2154, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2154, DW_AT_accessibility(DW_ACCESS_public)
DW$2155	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2155, DW_AT_name("STDBYWAITS"), DW_AT_symbol_name("_STDBYWAITS")
	.dwattr DW$2155, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$2155, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2155, DW_AT_accessibility(DW_ACCESS_public)
DW$2156	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2156, DW_AT_name("ACTIVEWAITS"), DW_AT_symbol_name("_ACTIVEWAITS")
	.dwattr DW$2156, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$2156, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2156, DW_AT_accessibility(DW_ACCESS_public)
DW$2157	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2157, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$2157, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x04)
	.dwattr DW$2157, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2157, DW_AT_accessibility(DW_ACCESS_public)
DW$2158	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2158, DW_AT_name("V3STAT"), DW_AT_symbol_name("_V3STAT")
	.dwattr DW$2158, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$2158, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2158, DW_AT_accessibility(DW_ACCESS_public)
DW$2159	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2159, DW_AT_name("rsvd2"), DW_AT_symbol_name("_rsvd2")
	.dwattr DW$2159, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x07)
	.dwattr DW$2159, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2159, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$323


DW$T$325	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$325, DW_AT_name("FSTDBYWAIT_BITS")
	.dwattr DW$T$325, DW_AT_byte_size(0x01)
DW$2160	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2160, DW_AT_name("STDBYWAIT"), DW_AT_symbol_name("_STDBYWAIT")
	.dwattr DW$2160, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x09)
	.dwattr DW$2160, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2160, DW_AT_accessibility(DW_ACCESS_public)
DW$2161	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2161, DW_AT_name("rsvd"), DW_AT_symbol_name("_rsvd")
	.dwattr DW$2161, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x07)
	.dwattr DW$2161, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2161, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$325


DW$T$327	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$327, DW_AT_name("FACTIVEWAIT_BITS")
	.dwattr DW$T$327, DW_AT_byte_size(0x01)
DW$2162	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2162, DW_AT_name("ACTIVEWAIT"), DW_AT_symbol_name("_ACTIVEWAIT")
	.dwattr DW$2162, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x09)
	.dwattr DW$2162, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2162, DW_AT_accessibility(DW_ACCESS_public)
DW$2163	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2163, DW_AT_name("rsvd"), DW_AT_symbol_name("_rsvd")
	.dwattr DW$2163, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x07)
	.dwattr DW$2163, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2163, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$327


DW$T$329	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$329, DW_AT_name("FBANKWAIT_BITS")
	.dwattr DW$T$329, DW_AT_byte_size(0x01)
DW$2164	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2164, DW_AT_name("RANDWAIT"), DW_AT_symbol_name("_RANDWAIT")
	.dwattr DW$2164, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x04)
	.dwattr DW$2164, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2164, DW_AT_accessibility(DW_ACCESS_public)
DW$2165	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2165, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$2165, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x04)
	.dwattr DW$2165, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2165, DW_AT_accessibility(DW_ACCESS_public)
DW$2166	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2166, DW_AT_name("PAGEWAIT"), DW_AT_symbol_name("_PAGEWAIT")
	.dwattr DW$2166, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x04)
	.dwattr DW$2166, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2166, DW_AT_accessibility(DW_ACCESS_public)
DW$2167	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2167, DW_AT_name("rsvd2"), DW_AT_symbol_name("_rsvd2")
	.dwattr DW$2167, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x04)
	.dwattr DW$2167, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2167, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$329


DW$T$331	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$331, DW_AT_name("FOTPWAIT_BITS")
	.dwattr DW$T$331, DW_AT_byte_size(0x01)
DW$2168	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2168, DW_AT_name("OTPWAIT"), DW_AT_symbol_name("_OTPWAIT")
	.dwattr DW$2168, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x05)
	.dwattr DW$2168, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2168, DW_AT_accessibility(DW_ACCESS_public)
DW$2169	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2169, DW_AT_name("rsvd"), DW_AT_symbol_name("_rsvd")
	.dwattr DW$2169, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x0b)
	.dwattr DW$2169, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2169, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$331


DW$T$334	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$334, DW_AT_name("XINTCR_BITS")
	.dwattr DW$T$334, DW_AT_byte_size(0x01)
DW$2170	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2170, DW_AT_name("ENABLE"), DW_AT_symbol_name("_ENABLE")
	.dwattr DW$2170, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$2170, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2170, DW_AT_accessibility(DW_ACCESS_public)
DW$2171	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2171, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$2171, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$2171, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2171, DW_AT_accessibility(DW_ACCESS_public)
DW$2172	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2172, DW_AT_name("POLARITY"), DW_AT_symbol_name("_POLARITY")
	.dwattr DW$2172, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x02)
	.dwattr DW$2172, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2172, DW_AT_accessibility(DW_ACCESS_public)
DW$2173	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2173, DW_AT_name("rsvd2"), DW_AT_symbol_name("_rsvd2")
	.dwattr DW$2173, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x0c)
	.dwattr DW$2173, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2173, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$334


DW$T$336	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$336, DW_AT_name("XNMICR_BITS")
	.dwattr DW$T$336, DW_AT_byte_size(0x01)
DW$2174	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2174, DW_AT_name("ENABLE"), DW_AT_symbol_name("_ENABLE")
	.dwattr DW$2174, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$2174, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2174, DW_AT_accessibility(DW_ACCESS_public)
DW$2175	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2175, DW_AT_name("SELECT"), DW_AT_symbol_name("_SELECT")
	.dwattr DW$2175, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$2175, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2175, DW_AT_accessibility(DW_ACCESS_public)
DW$2176	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2176, DW_AT_name("POLARITY"), DW_AT_symbol_name("_POLARITY")
	.dwattr DW$2176, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x02)
	.dwattr DW$2176, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2176, DW_AT_accessibility(DW_ACCESS_public)
DW$2177	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2177, DW_AT_name("rsvd2"), DW_AT_symbol_name("_rsvd2")
	.dwattr DW$2177, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x0c)
	.dwattr DW$2177, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2177, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$336

DW$T$42	.dwtag  DW_TAG_typedef, DW_AT_name("int16"), DW_AT_type(*DW$T$10)
	.dwattr DW$T$42, DW_AT_language(DW_LANG_C)

DW$T$120	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$120, DW_AT_name("CANMSGID_BITS")
	.dwattr DW$T$120, DW_AT_byte_size(0x02)
DW$2178	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2178, DW_AT_name("EXTMSGID_L"), DW_AT_symbol_name("_EXTMSGID_L")
	.dwattr DW$2178, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x10)
	.dwattr DW$2178, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2178, DW_AT_accessibility(DW_ACCESS_public)
DW$2179	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2179, DW_AT_name("EXTMSGID_H"), DW_AT_symbol_name("_EXTMSGID_H")
	.dwattr DW$2179, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x02)
	.dwattr DW$2179, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$2179, DW_AT_accessibility(DW_ACCESS_public)
DW$2180	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2180, DW_AT_name("STDMSGID"), DW_AT_symbol_name("_STDMSGID")
	.dwattr DW$2180, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x0b)
	.dwattr DW$2180, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$2180, DW_AT_accessibility(DW_ACCESS_public)
DW$2181	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2181, DW_AT_name("AAM"), DW_AT_symbol_name("_AAM")
	.dwattr DW$2181, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$2181, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$2181, DW_AT_accessibility(DW_ACCESS_public)
DW$2182	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2182, DW_AT_name("AME"), DW_AT_symbol_name("_AME")
	.dwattr DW$2182, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$2182, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$2182, DW_AT_accessibility(DW_ACCESS_public)
DW$2183	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2183, DW_AT_name("IDE"), DW_AT_symbol_name("_IDE")
	.dwattr DW$2183, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$2183, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$2183, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$120


DW$T$122	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$122, DW_AT_name("CANMSGCTRL_BITS")
	.dwattr DW$T$122, DW_AT_byte_size(0x02)
DW$2184	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2184, DW_AT_name("DLC"), DW_AT_symbol_name("_DLC")
	.dwattr DW$2184, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x04)
	.dwattr DW$2184, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2184, DW_AT_accessibility(DW_ACCESS_public)
DW$2185	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2185, DW_AT_name("RTR"), DW_AT_symbol_name("_RTR")
	.dwattr DW$2185, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$2185, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2185, DW_AT_accessibility(DW_ACCESS_public)
DW$2186	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2186, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$2186, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x03)
	.dwattr DW$2186, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2186, DW_AT_accessibility(DW_ACCESS_public)
DW$2187	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2187, DW_AT_name("TPL"), DW_AT_symbol_name("_TPL")
	.dwattr DW$2187, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x05)
	.dwattr DW$2187, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2187, DW_AT_accessibility(DW_ACCESS_public)
DW$2188	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2188, DW_AT_name("rsvd2"), DW_AT_symbol_name("_rsvd2")
	.dwattr DW$2188, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x03)
	.dwattr DW$2188, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2188, DW_AT_accessibility(DW_ACCESS_public)
DW$2189	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2189, DW_AT_name("rsvd3"), DW_AT_symbol_name("_rsvd3")
	.dwattr DW$2189, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x10)
	.dwattr DW$2189, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$2189, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$122


DW$T$124	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$124, DW_AT_name("CANMDL_WORDS")
	.dwattr DW$T$124, DW_AT_byte_size(0x02)
DW$2190	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2190, DW_AT_name("LOW_WORD"), DW_AT_symbol_name("_LOW_WORD")
	.dwattr DW$2190, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x10)
	.dwattr DW$2190, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2190, DW_AT_accessibility(DW_ACCESS_public)
DW$2191	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2191, DW_AT_name("HI_WORD"), DW_AT_symbol_name("_HI_WORD")
	.dwattr DW$2191, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x10)
	.dwattr DW$2191, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$2191, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$124


DW$T$125	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$125, DW_AT_name("CANMDL_BYTES")
	.dwattr DW$T$125, DW_AT_byte_size(0x02)
DW$2192	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2192, DW_AT_name("BYTE3"), DW_AT_symbol_name("_BYTE3")
	.dwattr DW$2192, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x08)
	.dwattr DW$2192, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2192, DW_AT_accessibility(DW_ACCESS_public)
DW$2193	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2193, DW_AT_name("BYTE2"), DW_AT_symbol_name("_BYTE2")
	.dwattr DW$2193, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x08)
	.dwattr DW$2193, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2193, DW_AT_accessibility(DW_ACCESS_public)
DW$2194	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2194, DW_AT_name("BYTE1"), DW_AT_symbol_name("_BYTE1")
	.dwattr DW$2194, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x08)
	.dwattr DW$2194, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$2194, DW_AT_accessibility(DW_ACCESS_public)
DW$2195	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2195, DW_AT_name("BYTE0"), DW_AT_symbol_name("_BYTE0")
	.dwattr DW$2195, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x08)
	.dwattr DW$2195, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$2195, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$125


DW$T$127	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$127, DW_AT_name("CANMDH_WORDS")
	.dwattr DW$T$127, DW_AT_byte_size(0x02)
DW$2196	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2196, DW_AT_name("LOW_WORD"), DW_AT_symbol_name("_LOW_WORD")
	.dwattr DW$2196, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x10)
	.dwattr DW$2196, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2196, DW_AT_accessibility(DW_ACCESS_public)
DW$2197	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2197, DW_AT_name("HI_WORD"), DW_AT_symbol_name("_HI_WORD")
	.dwattr DW$2197, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x10)
	.dwattr DW$2197, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$2197, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$127


DW$T$128	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$128, DW_AT_name("CANMDH_BYTES")
	.dwattr DW$T$128, DW_AT_byte_size(0x02)
DW$2198	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2198, DW_AT_name("BYTE7"), DW_AT_symbol_name("_BYTE7")
	.dwattr DW$2198, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x08)
	.dwattr DW$2198, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2198, DW_AT_accessibility(DW_ACCESS_public)
DW$2199	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2199, DW_AT_name("BYTE6"), DW_AT_symbol_name("_BYTE6")
	.dwattr DW$2199, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x08)
	.dwattr DW$2199, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$2199, DW_AT_accessibility(DW_ACCESS_public)
DW$2200	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2200, DW_AT_name("BYTE5"), DW_AT_symbol_name("_BYTE5")
	.dwattr DW$2200, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x08)
	.dwattr DW$2200, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$2200, DW_AT_accessibility(DW_ACCESS_public)
DW$2201	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$2201, DW_AT_name("BYTE4"), DW_AT_symbol_name("_BYTE4")
	.dwattr DW$2201, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x08)
	.dwattr DW$2201, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$2201, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$128

DW$T$10	.dwtag  DW_TAG_base_type, DW_AT_name("int")
	.dwattr DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr DW$T$10, DW_AT_byte_size(0x01)


;***************************************************************
;* DWARF CIE ENTRIES                                           *
;***************************************************************

DW$CIE	.dwcie 1, 40
	.dwcfa	0x0c, 20, 0
	.dwcfa	0x07, 0
	.dwcfa	0x07, 1
	.dwcfa	0x07, 2
	.dwcfa	0x07, 3
	.dwcfa	0x07, 4
	.dwcfa	0x07, 5
	.dwcfa	0x07, 6
	.dwcfa	0x07, 7
	.dwcfa	0x07, 8
	.dwcfa	0x07, 9
	.dwcfa	0x07, 10
	.dwcfa	0x07, 11
	.dwcfa	0x07, 12
	.dwcfa	0x07, 13
	.dwcfa	0x07, 14
	.dwcfa	0x07, 15
	.dwcfa	0x07, 16
	.dwcfa	0x07, 17
	.dwcfa	0x07, 18
	.dwcfa	0x07, 19
	.dwcfa	0x07, 20
	.dwcfa	0x07, 21
	.dwcfa	0x07, 22
	.dwcfa	0x07, 23
	.dwcfa	0x07, 24
	.dwcfa	0x07, 25
	.dwcfa	0x07, 26
	.dwcfa	0x07, 27
	.dwcfa	0x07, 28
	.dwcfa	0x07, 29
	.dwcfa	0x07, 30
	.dwcfa	0x07, 31
	.dwcfa	0x07, 32
	.dwcfa	0x07, 33
	.dwcfa	0x07, 34
	.dwcfa	0x07, 35
	.dwcfa	0x07, 36
	.dwcfa	0x07, 37
	.dwcfa	0x07, 38
	.dwcfa	0x07, 39
	.dwcfa	0x07, 40

;***************************************************************
;* DWARF REGISTER MAP                                          *
;***************************************************************

DW$2202	.dwtag  DW_TAG_assign_register, DW_AT_name("AL")
	.dwattr DW$2202, DW_AT_location[DW_OP_reg0]
DW$2203	.dwtag  DW_TAG_assign_register, DW_AT_name("AH")
	.dwattr DW$2203, DW_AT_location[DW_OP_reg1]
DW$2204	.dwtag  DW_TAG_assign_register, DW_AT_name("PL")
	.dwattr DW$2204, DW_AT_location[DW_OP_reg2]
DW$2205	.dwtag  DW_TAG_assign_register, DW_AT_name("PH")
	.dwattr DW$2205, DW_AT_location[DW_OP_reg3]
DW$2206	.dwtag  DW_TAG_assign_register, DW_AT_name("AR0")
	.dwattr DW$2206, DW_AT_location[DW_OP_reg4]
DW$2207	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR0")
	.dwattr DW$2207, DW_AT_location[DW_OP_reg5]
DW$2208	.dwtag  DW_TAG_assign_register, DW_AT_name("AR1")
	.dwattr DW$2208, DW_AT_location[DW_OP_reg6]
DW$2209	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR1")
	.dwattr DW$2209, DW_AT_location[DW_OP_reg7]
DW$2210	.dwtag  DW_TAG_assign_register, DW_AT_name("AR2")
	.dwattr DW$2210, DW_AT_location[DW_OP_reg8]
DW$2211	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR2")
	.dwattr DW$2211, DW_AT_location[DW_OP_reg9]
DW$2212	.dwtag  DW_TAG_assign_register, DW_AT_name("AR3")
	.dwattr DW$2212, DW_AT_location[DW_OP_reg10]
DW$2213	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR3")
	.dwattr DW$2213, DW_AT_location[DW_OP_reg11]
DW$2214	.dwtag  DW_TAG_assign_register, DW_AT_name("AR4")
	.dwattr DW$2214, DW_AT_location[DW_OP_reg12]
DW$2215	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR4")
	.dwattr DW$2215, DW_AT_location[DW_OP_reg13]
DW$2216	.dwtag  DW_TAG_assign_register, DW_AT_name("AR5")
	.dwattr DW$2216, DW_AT_location[DW_OP_reg14]
DW$2217	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR5")
	.dwattr DW$2217, DW_AT_location[DW_OP_reg15]
DW$2218	.dwtag  DW_TAG_assign_register, DW_AT_name("AR6")
	.dwattr DW$2218, DW_AT_location[DW_OP_reg16]
DW$2219	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR6")
	.dwattr DW$2219, DW_AT_location[DW_OP_reg17]
DW$2220	.dwtag  DW_TAG_assign_register, DW_AT_name("AR7")
	.dwattr DW$2220, DW_AT_location[DW_OP_reg18]
DW$2221	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR7")
	.dwattr DW$2221, DW_AT_location[DW_OP_reg19]
DW$2222	.dwtag  DW_TAG_assign_register, DW_AT_name("SP")
	.dwattr DW$2222, DW_AT_location[DW_OP_reg20]
DW$2223	.dwtag  DW_TAG_assign_register, DW_AT_name("XT")
	.dwattr DW$2223, DW_AT_location[DW_OP_reg21]
DW$2224	.dwtag  DW_TAG_assign_register, DW_AT_name("T")
	.dwattr DW$2224, DW_AT_location[DW_OP_reg22]
DW$2225	.dwtag  DW_TAG_assign_register, DW_AT_name("ST0")
	.dwattr DW$2225, DW_AT_location[DW_OP_reg23]
DW$2226	.dwtag  DW_TAG_assign_register, DW_AT_name("ST1")
	.dwattr DW$2226, DW_AT_location[DW_OP_reg24]
DW$2227	.dwtag  DW_TAG_assign_register, DW_AT_name("PC")
	.dwattr DW$2227, DW_AT_location[DW_OP_reg25]
DW$2228	.dwtag  DW_TAG_assign_register, DW_AT_name("RPC")
	.dwattr DW$2228, DW_AT_location[DW_OP_reg26]
DW$2229	.dwtag  DW_TAG_assign_register, DW_AT_name("FP")
	.dwattr DW$2229, DW_AT_location[DW_OP_reg27]
DW$2230	.dwtag  DW_TAG_assign_register, DW_AT_name("DP")
	.dwattr DW$2230, DW_AT_location[DW_OP_reg28]
DW$2231	.dwtag  DW_TAG_assign_register, DW_AT_name("SXM")
	.dwattr DW$2231, DW_AT_location[DW_OP_reg29]
DW$2232	.dwtag  DW_TAG_assign_register, DW_AT_name("PM")
	.dwattr DW$2232, DW_AT_location[DW_OP_reg30]
DW$2233	.dwtag  DW_TAG_assign_register, DW_AT_name("OVM")
	.dwattr DW$2233, DW_AT_location[DW_OP_reg31]
DW$2234	.dwtag  DW_TAG_assign_register, DW_AT_name("PAGE0")
	.dwattr DW$2234, DW_AT_location[DW_OP_regx 0x20]
DW$2235	.dwtag  DW_TAG_assign_register, DW_AT_name("AMODE")
	.dwattr DW$2235, DW_AT_location[DW_OP_regx 0x21]
DW$2236	.dwtag  DW_TAG_assign_register, DW_AT_name("IFR")
	.dwattr DW$2236, DW_AT_location[DW_OP_regx 0x22]
DW$2237	.dwtag  DW_TAG_assign_register, DW_AT_name("IER")
	.dwattr DW$2237, DW_AT_location[DW_OP_regx 0x23]
DW$2238	.dwtag  DW_TAG_assign_register, DW_AT_name("IER")
	.dwattr DW$2238, DW_AT_location[DW_OP_regx 0x24]
DW$2239	.dwtag  DW_TAG_assign_register, DW_AT_name("PSEUDO")
	.dwattr DW$2239, DW_AT_location[DW_OP_regx 0x25]
DW$2240	.dwtag  DW_TAG_assign_register, DW_AT_name("PSEUDOH")
	.dwattr DW$2240, DW_AT_location[DW_OP_regx 0x26]
DW$2241	.dwtag  DW_TAG_assign_register, DW_AT_name("VOL")
	.dwattr DW$2241, DW_AT_location[DW_OP_regx 0x27]
DW$2242	.dwtag  DW_TAG_assign_register, DW_AT_name("CIE_RETA")
	.dwattr DW$2242, DW_AT_location[DW_OP_regx 0x28]
	.dwendtag DW$CU

