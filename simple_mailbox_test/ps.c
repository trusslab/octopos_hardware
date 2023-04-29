/********************************************************************
 * Copyright (c) 2019 - 2023, The OctopOS Authors
 * This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at https://mozilla.org/MPL/2.0/.
 ********************************************************************/

/******************************************************************************
*
* Copyright (C) 2009 - 2014 Xilinx, Inc.  All rights reserved.
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in
* all copies or substantial portions of the Software.
*
* Use of the Software is limited solely to applications:
* (a) running on a Xilinx device, or
* (b) that interact with a Xilinx device through a bus or interconnect.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
* XILINX  BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
* WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF
* OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
* SOFTWARE.
*
* Except as contained in this notice, the name of the Xilinx shall not be used
* in advertising or otherwise to promote the sale, use or other dealings in
* this Software without prior written authorization from Xilinx.
*
******************************************************************************/

#include <stdio.h>
#include "xil_printf.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "mbox_part.h"

#define XPAR_MBOX_DEVICE_ID 0U
#define XPAR_MBOX_BASEADDR 0x80000000U
#define XPAR_MBOX_USE_FSL 0U
#define XPAR_MBOX_SEND_FSL 0U
#define XPAR_MBOX_RECV_FSL 0U

#define XPAR_MBOX_PS_DEVICE_ID 1U
#define XPAR_MBOX_PS_BASEADDR 0xa0000000U
#define XPAR_MBOX_PS_USE_FSL 0U
#define XPAR_MBOX_PS_SEND_FSL 0U
#define XPAR_MBOX_PS_RECV_FSL 0U

#define XPAR_MBOX_NUM_INSTANCES 2

/**
 * This typedef contains configuration information for the device.
 */
typedef struct {
	u16 DeviceId;
	UINTPTR BaseAddress;
	u8 UseFSL;
	u8 SendID;
	u8 RecvID;

} OCTOPOS_XMbox_Config;


typedef struct {
	OCTOPOS_XMbox_Config Config;
	u32 IsReady;
} OCTOPOS_XMbox;

OCTOPOS_XMbox	Mbox, Mbox_PS;

OCTOPOS_XMbox_Config OCTOPOS_XMbox_ConfigTable[] = {
	{
			XPAR_MBOX_DEVICE_ID,
			XPAR_MBOX_BASEADDR,
			XPAR_MBOX_USE_FSL,
			XPAR_MBOX_SEND_FSL,
			XPAR_MBOX_RECV_FSL
	},
	{
			XPAR_MBOX_PS_DEVICE_ID,
			XPAR_MBOX_PS_BASEADDR,
			XPAR_MBOX_PS_USE_FSL,
			XPAR_MBOX_PS_SEND_FSL,
			XPAR_MBOX_PS_RECV_FSL
	},
};

OCTOPOS_XMbox_Config *OCTOPOS_XMbox_LookupConfig(u16 DeviceId)
{
	OCTOPOS_XMbox_Config *CfgPtr = NULL;
	u32 Index;

	for (Index = 0U; Index < XPAR_MBOX_NUM_INSTANCES; Index++) {
		if (OCTOPOS_XMbox_ConfigTable[Index].DeviceId == DeviceId) {
			CfgPtr = &OCTOPOS_XMbox_ConfigTable[Index];
			break;
		}
	}

	return CfgPtr;
}

int OCTOPOS_XMbox_CfgInitialize(OCTOPOS_XMbox *InstancePtr, OCTOPOS_XMbox_Config *ConfigPtr,
			UINTPTR EffectiveAddress)
{

	Xil_AssertNonvoid(InstancePtr != NULL);
	Xil_AssertNonvoid(ConfigPtr != NULL);

	/*
	 * Clear instance memory and make copy of configuration
	 */
	memset(InstancePtr, 0, sizeof(OCTOPOS_XMbox));
	memcpy(&InstancePtr->Config, ConfigPtr, sizeof(OCTOPOS_XMbox_Config));

	InstancePtr->Config.BaseAddress = EffectiveAddress;
	InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

	return XST_SUCCESS;
}

#define OCTOPOS_XMbox_IsEmptyHw(BaseAddress)				 \
((OCTOPOS_XMbox_ReadReg (BaseAddress, OCTOPOS_XMB_STATUS_REG_OFFSET) & OCTOPOS_XMB_STATUS_FIFO_EMPTY))


void OCTOPOS_XMbox_ReadBlocking(OCTOPOS_XMbox *InstancePtr, u32 *BufferPtr,
			u32 RequestedBytes)
{
	u32 NumBytes;

	Xil_AssertVoid(InstancePtr != NULL);
	Xil_AssertVoid(!((u32) BufferPtr & 0x3));
	Xil_AssertVoid(RequestedBytes != 0);
	Xil_AssertVoid((RequestedBytes % 4) == 0);

	NumBytes = 0;

	if (InstancePtr->Config.UseFSL == 0) {
		/* For memory mapped IO */
		/* Block while the mailbox FIFO has at-least some data */

		do {
			while(OCTOPOS_XMbox_IsEmptyHw(InstancePtr->Config.BaseAddress));

			/*
			 * Read the Mailbox until empty or the length
			 * requested is satisfied
			 */
			*BufferPtr++ =
				OCTOPOS_XMbox_ReadMBox(InstancePtr->Config.BaseAddress);
			NumBytes += 4;
		} while (NumBytes != RequestedBytes);
	} else {
	}
}

void OCTOPOS_XMbox_WriteBlocking(OCTOPOS_XMbox *InstancePtr, u32 *BufferPtr, u32 RequestedBytes)
{
	u32 NumBytes;

	Xil_AssertVoid(InstancePtr != NULL);
	Xil_AssertVoid(!((u32) BufferPtr & 0x3));
	Xil_AssertVoid(RequestedBytes != 0);
	Xil_AssertVoid((RequestedBytes %4) == 0);

	NumBytes = 0;

	if (InstancePtr->Config.UseFSL == 0) {
		/* For memory mapped IO */
		/* Block while the mailbox FIFO becomes free to transfer
		 * at-least one word
		 */
		do {
			while (OCTOPOS_XMbox_IsFullHw(InstancePtr->Config.BaseAddress));

			OCTOPOS_XMbox_WriteMBox(InstancePtr->Config.BaseAddress,
					 *BufferPtr++);
			NumBytes += 4;
		} while (NumBytes != RequestedBytes);
	} else {
	}
}

int main()
{
    print("[0] Start\r\n");
	int Status;
	u32* buf[64];
	OCTOPOS_XMbox_Config *ConfigPtr, *ConfigPtr_PS;

	ConfigPtr_PS = OCTOPOS_XMbox_LookupConfig(XPAR_MBOX_PS_DEVICE_ID);
	OCTOPOS_XMbox_CfgInitialize(&Mbox_PS,
			ConfigPtr_PS,
			ConfigPtr_PS->BaseAddress);

	for (int i = 0; i < 10000; i++)
		OCTOPOS_XMbox_WriteBlocking(&Mbox_PS, buf, 512);

	// ack finishing throughput
	OCTOPOS_XMbox_ReadBlocking(&Mbox_PS, buf, 64);
	OCTOPOS_XMbox_WriteBlocking(&Mbox_PS, buf, 64);

	for (int i = 0; i < 10000; i++) {
	OCTOPOS_XMbox_ReadBlocking(&Mbox_PS, buf, 64);
	OCTOPOS_XMbox_WriteBlocking(&Mbox_PS, buf, 64);
	}

    return 0;
}
