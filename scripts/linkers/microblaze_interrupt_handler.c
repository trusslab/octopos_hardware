/********************************************************************
 * Copyright (c) 2020 - 2023, The OctopOS Authors
 * This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at https://mozilla.org/MPL/2.0/.
 ********************************************************************/
/******************************************************************************
* Copyright (c) 2004 - 2020 Xilinx, Inc.  All rights reserved.
* SPDX-License-Identifier: MIT
******************************************************************************/

/*****************************************************************************/
/**
*
* @file microblaze_interrupt_handler.c
*
* This file contains the standard interrupt handler for the MicroBlaze processor.
*
* <pre>
* MODIFICATION HISTORY:
*
* Ver   Date     Changes
* ----- -------- -----------------------------------------------
* 1.00b 10/03/03 First release
* </pre>
*
******************************************************************************/


/***************************** Include Files *********************************/

#include "xil_exception.h"
#include "microblaze_interrupts_i.h"

/************************** Constant Definitions *****************************/


/**************************** Type Definitions *******************************/


/***************** Macros (Inline Functions) Definitions *********************/


/************************** Function Prototypes ******************************/
#ifdef __clang__
void _interrupt_handler (void) __attribute__ ((interrupt_handler));
#else
#ifdef ARCH_SEC_HW_BOOT
void __interrupt_handler (void) __attribute__ ((interrupt_handler));
#else //ARCH_SEC_HW_BOOT
void _interrupt_handler (void);
#endif //ARCH_SEC_HW_BOOT
#endif
void microblaze_register_handler(XInterruptHandler Handler, void *DataPtr);

/************************** Variable Definitions *****************************/

extern MB_InterruptVectorTableEntry MB_InterruptVectorTable[MB_INTERRUPT_VECTOR_TABLE_ENTRIES];
/*****************************************************************************/
/**
*
* This function is the standard interrupt handler used by the MicroBlaze processor.
* It saves all volatile registers, calls the users top level interrupt handler.
* When this returns, it restores all registers, and returns using a rtid instruction.
*
* @param
*
* None
*
* @return
*
* None.
*
* @note
*
* None.
*
******************************************************************************/
#ifdef __clang__
void _interrupt_handler(void)
#else
#ifdef ARCH_SEC_HW_BOOT
void __interrupt_handler(void)
#else //ARCH_SEC_HW_BOOT
void _interrupt_handler(void)
#endif //ARCH_SEC_HW_BOOT
#endif
{
#ifndef ARCH_SEC_HW_BOOT
	/* The compiler saves all volatiles and the MSR */
	(void)MB_InterruptVectorTable[0].Handler(MB_InterruptVectorTable[0].CallBackRef);
	/* The compiler restores all volatiles and MSR, and returns from interrupt */
#else
	unsigned int * boot_status_reg = (unsigned int *) 0x15FFE0;
	unsigned int boot_status = *boot_status_reg;
	if (boot_status == 1) {
		void (*fun_ptr)() = 0x15FFC0;
		(*fun_ptr)();
	} else {
		(void)MB_InterruptVectorTable[0].Handler(MB_InterruptVectorTable[0].CallBackRef);
	}
#endif
}


/*****************************************************************************/
/**
*
* Registers a top-level interrupt handler for the MicroBlaze. The
* argument provided in this call as the DataPtr is used as the argument
* for the handler when it is called.
*
* @param    Handler: Top level handler.
* @param    DataPtr: a reference to data that will be passed to the handler
*           when it gets called.

* @return   None.
*
*
****************************************************************************/
void microblaze_register_handler(XInterruptHandler Handler, void *DataPtr)
{
   MB_InterruptVectorTable[0].Handler = Handler;
   MB_InterruptVectorTable[0].CallBackRef = DataPtr;
}
