import shutil
a53_irq_ids = dict()

sdk_path = "<PATH_TO_SDK>"
mb_bsp_xpar_path = "microblaze<MICROBLAZE_ID>-manual-bsp/microblaze_<MICROBLAZE_ID>/include/xparameters.h"
mb_bsp_libsrc_path = "microblaze<MICROBLAZE_ID>-manual-bsp/microblaze_<MICROBLAZE_ID>/libsrc/mbox_v4_3"
mb_bsp_include_path = "microblaze<MICROBLAZE_ID>-manual-bsp/microblaze_<MICROBLAZE_ID>/include/"
a53_bsp_xpar_path = "cortexr0-manual-bsp/psu_cortexr5_0/include/xparameters.h"
a53_bsp_libsrc_path = "cortexr0-manual-bsp/psu_cortexr5_0/libsrc/mbox_v4_3"
a53_bsp_include_path = "cortexr0-manual-bsp/psu_cortexr5_0/include/"
# a53_bsp_xpar_path = "cortexa0-manual-bsp/psu_cortexa53_0/include/xparameters.h"
# a53_bsp_libsrc_path = "cortexa0-manual-bsp/psu_cortexa53_0/libsrc/mbox_v4_3"
# a53_bsp_include_path = "cortexa0-manual-bsp/psu_cortexa53_0/include/"

mb_bsp_driver_backup = "bsp/microblaze_0/"


def generate():
	mb_driver = \
	"""
	#define XPAR_MAILBOX_<MAILBOX_ID>_INTERRUPT_0_MASK 0X000001U
	#define XPAR_MICROBLAZE_<MICROBLAZE_ID>_AXI_INTC_MAILBOX_<MAILBOX_ID>_INTERRUPT_0_INTR <IRQ_NUMBER>U
	#define XPAR_INTC_0_MBOX_<MAILBOX_SEQ_ID>_VEC_ID XPAR_MICROBLAZE_<MICROBLAZE_ID>_AXI_INTC_MAILBOX_<MAILBOX_ID>_INTERRUPT_0_INTR

	/* Definitions for peripheral MAILBOX_<MAILBOX_ID> IF 0 */
	#define XPAR_MAILBOX_<MAILBOX_ID>_IF_0_DEVICE_ID <MAILBOX_SEQ_ID>U
	#define XPAR_MAILBOX_<MAILBOX_ID>_IF_0_BASEADDR <MAILBOX_LOWADDR>U
	#define XPAR_MAILBOX_<MAILBOX_ID>_IF_0_USE_FSL 0U
	#define XPAR_MAILBOX_<MAILBOX_ID>_IF_0_SEND_FSL 0U
	#define XPAR_MAILBOX_<MAILBOX_ID>_IF_0_RECV_FSL 0U

	/* Definition for TestApp ID */
	#define XPAR_MAILBOX_<MAILBOX_ID>_TESTAPP_ID <MAILBOX_SEQ_ID>U

	/* Canonical definitions for peripheral MAILBOX_<MAILBOX_ID> IF 0 */
	#define XPAR_MBOX_<MAILBOX_SEQ_ID>_DEVICE_ID XPAR_MAILBOX_<MAILBOX_ID>_IF_0_DEVICE_ID
	#define XPAR_MBOX_<MAILBOX_SEQ_ID>_BASEADDR <MAILBOX_LOWADDR>U
	#define XPAR_MBOX_<MAILBOX_SEQ_ID>_HIGHADDR <MAILBOX_HIGHADDR>U
	#define XPAR_MBOX_<MAILBOX_SEQ_ID>_USE_FSL XPAR_MAILBOX_<MAILBOX_ID>_IF_0_USE_FSL
	#define XPAR_MBOX_<MAILBOX_SEQ_ID>_SEND_FSL XPAR_MAILBOX_<MAILBOX_ID>_IF_0_SEND_FSL
	#define XPAR_MBOX_<MAILBOX_SEQ_ID>_RECV_FSL XPAR_MAILBOX_<MAILBOX_ID>_IF_0_RECV_FSL
	"""

	a53_driver = \
	"""
	/* Definitions for peripheral MAILBOX_<MAILBOX_ID> IF 1 */
	#define XPAR_MAILBOX_<MAILBOX_ID>_IF_1_DEVICE_ID <MAILBOX_SEQ_ID>U
	#define XPAR_MAILBOX_<MAILBOX_ID>_IF_1_BASEADDR <MAILBOX_LOWADDR>U
	#define XPAR_MAILBOX_<MAILBOX_ID>_IF_1_USE_FSL 0U
	#define XPAR_MAILBOX_<MAILBOX_ID>_IF_1_SEND_FSL 0U
	#define XPAR_MAILBOX_<MAILBOX_ID>_IF_1_RECV_FSL 0U

	/* Definition for TestApp ID */
	#define XPAR_MAILBOX_<MAILBOX_ID>_TESTAPP_ID <MAILBOX_SEQ_ID>U

	/* Canonical definitions for peripheral MAILBOX_<MAILBOX_ID> IF 1 */
	#define XPAR_MBOX_<MAILBOX_SEQ_ID>_DEVICE_ID XPAR_MAILBOX_<MAILBOX_ID>_IF_1_DEVICE_ID
	#define XPAR_MBOX_<MAILBOX_SEQ_ID>_BASEADDR <MAILBOX_LOWADDR>U
	#define XPAR_MBOX_<MAILBOX_SEQ_ID>_HIGHADDR <MAILBOX_HIGHADDR>U
	#define XPAR_MBOX_<MAILBOX_SEQ_ID>_USE_FSL XPAR_MAILBOX_<MAILBOX_ID>_IF_1_USE_FSL
	#define XPAR_MBOX_<MAILBOX_SEQ_ID>_SEND_FSL XPAR_MAILBOX_<MAILBOX_ID>_IF_1_SEND_FSL
	#define XPAR_MBOX_<MAILBOX_SEQ_ID>_RECV_FSL XPAR_MAILBOX_<MAILBOX_ID>_IF_1_RECV_FSL

	/* Definitions for Fabric interrupts connected to psu_acpu_gic */
	#define XPAR_FABRIC_MAILBOX_<MAILBOX_ID>_INTERRUPT_1_INTR <IRQ_NUMBER>U
	"""

	common = \
	"""
	/* Definitions for driver MAILBOX */
	#define XPAR_XMBOX_NUM_INSTANCES <MAILBOX_NUMBERS>U
	"""

	mailbox_config_table = \
	"""
			{
				 XPAR_MAILBOX_<MAILBOX_ID>_IF_<INTERFACE>_DEVICE_ID,
				 XPAR_MAILBOX_<MAILBOX_ID>_IF_<INTERFACE>_BASEADDR,
				 XPAR_MAILBOX_<MAILBOX_ID>_IF_<INTERFACE>_USE_FSL,
				 XPAR_MAILBOX_<MAILBOX_ID>_IF_<INTERFACE>_SEND_FSL,
				 XPAR_MAILBOX_<MAILBOX_ID>_IF_<INTERFACE>_RECV_FSL
			},
	"""

	result = ""

	for i in range(len(mailbox_ids)):
		if processor_id.split()[0] == "mb":
			new_mb_driver = mb_driver.replace("<MAILBOX_ID>", mailbox_ids[i])
			new_mb_driver = new_mb_driver.replace("<MICROBLAZE_ID>", processor_id.split()[1])
			new_mb_driver = new_mb_driver.replace("<MAILBOX_LOWADDR>", mailbox_addresses[i][0])
			new_mb_driver = new_mb_driver.replace("<MAILBOX_HIGHADDR>", mailbox_addresses[i][1])
			new_mb_driver = new_mb_driver.replace("<MAILBOX_SEQ_ID>", str(i))
			new_mb_driver = new_mb_driver.replace("<IRQ_NUMBER>", microblaze_irq_ids[mailbox_ids[i]])
			result += new_mb_driver
		else:
			new_a53_driver = a53_driver.replace("<MAILBOX_ID>", mailbox_ids[i])
			new_a53_driver = new_a53_driver.replace("<MAILBOX_LOWADDR>", mailbox_addresses[i][0])
			new_a53_driver = new_a53_driver.replace("<MAILBOX_HIGHADDR>", mailbox_addresses[i][1])
			new_a53_driver = new_a53_driver.replace("<MAILBOX_SEQ_ID>", str(i))
			new_a53_driver = new_a53_driver.replace("<IRQ_NUMBER>", a53_irq_ids[mailbox_ids[i]])
			result += new_a53_driver

	# result += common.replace("<MAILBOX_NUMBERS>", str(len(mailbox_ids)))

	# print(result)

	#####################################################
	####### Step 0: Rename the existing mbox ############
	# Mailbox must have a distinct name defined in 
	# hardware design.
	# E.g. XPAR_MBOX_0_DEVICE_ID will be replaced with
	# XPAR_ENCLAVE_PS_MAILBOX_IF_1_DEVICE_ID.

	xparam_conent = ""
	xparam_conent_list = []
	xparam_mbox_map = dict()
	if processor_id.split()[0] == "mb":
		xparam_file_path = mb_bsp_xpar_path.replace("<MICROBLAZE_ID>", processor_id.split()[1])
	else:
		xparam_file_path = a53_bsp_xpar_path
	with open(sdk_path + xparam_file_path) as fd:
		for line in fd:
			if line.startswith("#endif"):
				break

			if line.startswith("#define XPAR_XMBOX_NUM_INSTANCES"):
				continue

			# Double declaring XPAR_FABRIC_MBOX_ seems to have no side effect
			# if line.startswith("#define XPAR_FABRIC_MBOX_"):
			# 	continue

			# IRQ numbering:
			# #1#######
			#     #   #
			# #2###   # Interrupt Multiplex
			#     #   #
			# #3#######
			# If 1 and 2 are connected to MJ mailbox, set the IRQ number in the top defs
			# SDK should gen 3 correctly.

			if line.startswith("#define XPAR_MBOX_") and "_DEVICE_ID" in line:
				xparam_mbox_map[line[8:19]] = line.split()[2][:-10]
				# continue

			key_found = False
			for key in xparam_mbox_map:
				if key in line:
					xparam_conent_list.append(line.replace(key, xparam_mbox_map[key] + "_CANONICAL"))
					key_found = True
					break

			if not key_found:
				xparam_conent_list.append(line)

	for index in range(len(xparam_conent_list)):
		for key in xparam_mbox_map:
			if ("MAILBOX" in xparam_conent_list[index] or "MBOX" in xparam_conent_list[index]) \
			and "_DEVICE_ID" in xparam_conent_list[index] and xparam_conent_list[index].strip().endswith("U"):
				# print(xparam_conent_list[index][0:-2])
				# FIXME This will not work for more than 9 mailboxes
				xparam_conent_list[index] = xparam_conent_list[index][0:-3] + \
				str(int(xparam_conent_list[index][-3]) + len(mailbox_ids)) + "U\n"
				# print(xparam_conent_list[index])
				break
	# exit()
	xparam_conent = "".join(xparam_conent_list)

	# print(xparam_conent)
	# exit()

	result += common.replace("<MAILBOX_NUMBERS>", str(len(mailbox_ids) + len(xparam_mbox_map)))

	#####################################################
	####### Step 1: Insert defs to xparameters.h ########
	temp = open(sdk_path + ".xparam", 'wb')
	# if processor_id.split()[0] == "mb":
	# 	xparam_file_path = mb_bsp_xpar_path.replace("<MICROBLAZE_ID>", processor_id.split()[1])
	# else:
	# 	xparam_file_path = a53_bsp_xpar_path
	# with open(sdk_path + xparam_file_path) as fd:
	# 	for line in fd:
	# 		if not line.startswith("#endif"):
	# 			temp.write(line)
	temp.write(xparam_conent)
	temp.write(result)
	temp.write("\n#endif")
	temp.close()
	shutil.move(sdk_path + ".xparam", sdk_path + xparam_file_path)

	#####################################################
	####### Step 2: Copy libsrc driver ##################
	if processor_id.split()[0] == "mb":
		libsrc_file_path = mb_bsp_libsrc_path.replace("<MICROBLAZE_ID>", processor_id.split()[1])
	else:
		libsrc_file_path = a53_bsp_libsrc_path
	try:
		shutil.copytree(mb_bsp_driver_backup + "libsrc/mbox_v4_3", sdk_path + libsrc_file_path)
	except OSError as e:
		print("Warning: mbox_v4_3 exist")

	#####################################################
	####### Step 3: Copy headerfiles ####################
	if processor_id.split()[0] == "mb":
		header_file_path = mb_bsp_include_path.replace("<MICROBLAZE_ID>", processor_id.split()[1])
	else:
		header_file_path = a53_bsp_include_path
	shutil.copy(mb_bsp_driver_backup + "include/xmbox.h", sdk_path + header_file_path + "xmbox.h")
	shutil.copy(mb_bsp_driver_backup + "include/xmbox_hw.h", sdk_path + header_file_path + "xmbox_hw.h")

	#####################################################
	####### Step 4: Fix XMBox ConfigTable ###############
	xmbox_configtable_c = \
	"""
	#include "xparameters.h"
	#include "xmbox.h"

	/*
	 * The configuration table for devices
	 */

	XMbox_Config XMbox_ConfigTable[] =
	{
	"""
	existing_decl = ""
	if len(xparam_mbox_map) > 0:
		with open(sdk_path + libsrc_file_path + "/src/xmbox_g.c") as fd:
			extract = False
			for line in fd:
				if line.startswith("{"):
					extract = True
					continue
				if line.startswith("};"):
					extract = False
					break
				if extract:
					existing_decl += line

	for i in mailbox_ids:
		xmbox_configtable_c += \
			mailbox_config_table.replace("<MAILBOX_ID>", i).\
			replace("<INTERFACE>", "0" if processor_id.split()[0] == "mb" else "1")
	xmbox_configtable_c += existing_decl + "\n};"

	with open(sdk_path + libsrc_file_path + "/src/xmbox_g.c", "w") as fd:
		fd.write(xmbox_configtable_c)

	print("Do not forget to change ctrl regs address. The one generated by Vivado may be incorrect.")



for i in range(6):
	if i == 0:
		a53_irq_ids = {"0": "122", "1": "121", "2": "127", "3": "137"}
		mailbox_ids = ["0", "1", "2", "3"]
		mailbox_addresses = [("0xA0010000", "0xA0010FFF"), ("0xA0020000", "0xA0020FFF"), ("0xA0034000", "0xA0034FFF"), ("0xA0032000", "0xA0032FFF")]
		processor_id = "a53 0"
		generate()
		continue

	if i == 1:
		microblaze_irq_ids = {"1": "0"}
		mailbox_ids = ["1"]
		mailbox_addresses = [("0x41210000", "0x41210FFF")]
		processor_id = "mb 4"
		generate()
		continue

	if i == 2:
		microblaze_irq_ids = {"0": "5", "1": "7", "2": "3", "3": "1"}
		mailbox_ids = ["0", "1", "2", "3"]
		mailbox_addresses = [("0x41210000", "0x41210FFF"), ("0x41220000", "0x41220FFF"), ("0x41250000", "0x41250FFF"), ("0x41240000", "0x41240FFF")]
		processor_id = "mb 3"
		generate()
		continue

	if i == 3:
		microblaze_irq_ids = {"0": "5", "1": "7", "2": "0", "3": "3"}
		mailbox_ids = ["0", "1", "2", "3"]
		mailbox_addresses = [("0x41221000", "0x41221FFF"), ("0x41220000", "0x41220FFF"), ("0x41250000", "0x41250FFF"), ("0x41240000", "0x41240FFF")]
		processor_id = "mb 2"
		generate()
		continue

	if i == 4:
		microblaze_irq_ids = {"1": "0"}
		mailbox_ids = ["1"]
		mailbox_addresses = [("0x41210000", "0x41210FFF")]
		processor_id = "mb 1"
		generate()
		continue

	if i == 5:
		microblaze_irq_ids = {"0": "0"}
		mailbox_ids = ["0"]
		mailbox_addresses = [("0x41210000", "0x41210FFF")]
		processor_id = "mb 0"
		generate()
		continue
