echo "run this script with argument <PATH TO VITIS BLS> <PATH TO VITIS DOMAINS>"

echo "Before running this script to finalize Vitis project setup, please make sure you have 1) create a Vitis dir for domains 2) create a Vitis dir for bootloaders 3) mount code for each Vitis dir."
echo "storage, storage_bootloader, oss, os_bootloader, keyboard_bootloader, keyboard, serialout_bootloader, serialout, enclave0_bootloader, enclave0, enclave1_bootloader, enclave1"

# Fix version issues in bootloader PMOD driver
sed -i '/^#define XPAR_PMODSD_NUM_INSTANCES/a#define XPAR_PMODSD_0_DEVICE_ID 0' $1/design_1_wrapper/storage_subsystem_microblaze_4/domain_storage_subsystem_microblaze_4/bsp/storage_subsystem_microblaze_4/include/xparameters.h 
cp -r $1/design_1_wrapper/storage_subsystem_microblaze_4/domain_storage_subsystem_microblaze_4/bsp/storage_subsystem_microblaze_4/libsrc/PmodSD_v1_0/src/utility $1/design_1_wrapper/storage_subsystem_microblaze_4/domain_storage_subsystem_microblaze_4/bsp/storage_subsystem_microblaze_4/include/
sed -i '44,45d' $1/design_1_wrapper/storage_subsystem_microblaze_4/domain_storage_subsystem_microblaze_4/bsp/storage_subsystem_microblaze_4/libsrc/PmodSD_v1_0/src/Makefile

# Fix version issues in PMOD driver
sed -i '/^#define XPAR_PMODSD_NUM_INSTANCES/a#define XPAR_PMODSD_0_DEVICE_ID 0' $2/design_1_wrapper/storage_subsystem_microblaze_4/domain_storage_subsystem_microblaze_4/bsp/storage_subsystem_microblaze_4/include/xparameters.h
cp -r $2/design_1_wrapper/storage_subsystem_microblaze_4/domain_storage_subsystem_microblaze_4/bsp/storage_subsystem_microblaze_4/libsrc/PmodSD_v1_0/src/utility $2/design_1_wrapper/storage_subsystem_microblaze_4/domain_storage_subsystem_microblaze_4/bsp/storage_subsystem_microblaze_4/include/
sed -i '44,45d' $2/design_1_wrapper/storage_subsystem_microblaze_4/domain_storage_subsystem_microblaze_4/bsp/storage_subsystem_microblaze_4/libsrc/PmodSD_v1_0/src/Makefile

cp linkers/storage.ld  $2/storage/src/lscript.ld
cp linkers/os.ld $2/oss/src/lscript.ld
cp linkers/keyboard.ld $2/keyboard/src/lscript.ld
cp linkers/serialout.ld $2/serialout/src/lscript.ld
cp linkers/enclave0.ld $2/enclave0/src/lscript.ld
cp linkers/enclave1.ld $2/enclave1/src/lscript.ld
cp linkers/network.ld $2/network/src/lscript.ld

cp linkers/os_bootloader.ld $1/os_bootloader/src/lscript.ld
cp linkers/storage_bootloader.ld $1/storage_bootloader/src/lscript.ld
cp linkers/serialout_bootloader.ld $1/serialout_bootloader/src/lscript.ld
cp linkers/keyboard_bootloader.ld $1/keyboard_bootloader/src/lscript.ld
cp linkers/enclave0_bootloader.ld $1/enclave0_bootloader/src/lscript.ld
cp linkers/enclave1_bootloader.ld $1/enclave1_bootloader/src/lscript.ld
cp linkers/network_bootloader.ld $1/network_bootloader/src/lscript.ld

cp linkers/microblaze_interrupt_handler.c $2/design_1_wrapper/storage_subsystem_microblaze_4/domain_storage_subsystem_microblaze_4/bsp/storage_subsystem_microblaze_4/libsrc/standalone_v7_2/src/microblaze_interrupt_handler.c
cp linkers/microblaze_interrupt_handler.c $2/design_1_wrapper/OS_subsys_microblaze_6/domain_OS_subsys_microblaze_6/bsp/OS_subsys_microblaze_6/libsrc/standalone_v7_2/src/microblaze_interrupt_handler.c
cp linkers/microblaze_interrupt_handler.c $2/design_1_wrapper/secure_serial_in_microblaze_1/domain_secure_serial_in_microblaze_1/bsp/secure_serial_in_microblaze_1/libsrc/standalone_v7_2/src/microblaze_interrupt_handler.c
cp linkers/microblaze_interrupt_handler.c $2/design_1_wrapper/secure_serial_out_microblaze_0/domain_secure_serial_out_microblaze_0/bsp/secure_serial_out_microblaze_0/libsrc/standalone_v7_2/src/microblaze_interrupt_handler.c
cp linkers/microblaze_interrupt_handler.c $2/design_1_wrapper/enclave0_subsys_microblaze_2/domain_enclave0_subsys_microblaze_2/bsp/enclave0_subsys_microblaze_2/libsrc/standalone_v7_2/src/microblaze_interrupt_handler.c
cp linkers/microblaze_interrupt_handler.c $2/design_1_wrapper/enclave1_subsys_microblaze_3/domain_enclave1_subsys_microblaze_3/bsp/enclave1_subsys_microblaze_3/libsrc/standalone_v7_2/src/microblaze_interrupt_handler.c
cp linkers/microblaze_interrupt_handler.c $2/design_1_wrapper/ethernet_subsystem_microblaze_5/domain_ethernet_subsystem_microblaze_5/bsp/ethernet_subsystem_microblaze_5/libsrc/standalone_v7_2/src/microblaze_interrupt_handler.c 

cp linkers/microblaze_interrupt_handler.c $1/design_1_wrapper/storage_subsystem_microblaze_4/domain_storage_subsystem_microblaze_4/bsp/storage_subsystem_microblaze_4/libsrc/standalone_v7_2/src/microblaze_interrupt_handler.c
cp linkers/microblaze_interrupt_handler.c $1/design_1_wrapper/OS_subsys_microblaze_6/domain_OS_subsys_microblaze_6/bsp/OS_subsys_microblaze_6/libsrc/standalone_v7_2/src/microblaze_interrupt_handler.c
cp linkers/microblaze_interrupt_handler.c $1/design_1_wrapper/secure_serial_in_microblaze_1/domain_secure_serial_in_microblaze_1/bsp/secure_serial_in_microblaze_1/libsrc/standalone_v7_2/src/microblaze_interrupt_handler.c
cp linkers/microblaze_interrupt_handler.c $1/design_1_wrapper/secure_serial_out_microblaze_0/domain_secure_serial_out_microblaze_0/bsp/secure_serial_out_microblaze_0/libsrc/standalone_v7_2/src/microblaze_interrupt_handler.c
cp linkers/microblaze_interrupt_handler.c $1/design_1_wrapper/enclave0_subsys_microblaze_2/domain_enclave0_subsys_microblaze_2/bsp/enclave0_subsys_microblaze_2/libsrc/standalone_v7_2/src/microblaze_interrupt_handler.c
cp linkers/microblaze_interrupt_handler.c $1/design_1_wrapper/enclave1_subsys_microblaze_3/domain_enclave1_subsys_microblaze_3/bsp/enclave1_subsys_microblaze_3/libsrc/standalone_v7_2/src/microblaze_interrupt_handler.c
cp linkers/microblaze_interrupt_handler.c $1/design_1_wrapper/ethernet_subsystem_microblaze_5/domain_ethernet_subsystem_microblaze_5/bsp/ethernet_subsystem_microblaze_5/libsrc/standalone_v7_2/src/microblaze_interrupt_handler.c
sed -i '1s/^/#define ARCH_SEC_HW_BOOT\n/' $1/design_1_wrapper/storage_subsystem_microblaze_4/domain_storage_subsystem_microblaze_4/bsp/storage_subsystem_microblaze_4/libsrc/standalone_v7_2/src/microblaze_interrupt_handler.c
sed -i '1s/^/#define ARCH_SEC_HW_BOOT\n/' $1/design_1_wrapper/OS_subsys_microblaze_6/domain_OS_subsys_microblaze_6/bsp/OS_subsys_microblaze_6/libsrc/standalone_v7_2/src/microblaze_interrupt_handler.c
sed -i '1s/^/#define ARCH_SEC_HW_BOOT\n/' $1/design_1_wrapper/secure_serial_in_microblaze_1/domain_secure_serial_in_microblaze_1/bsp/secure_serial_in_microblaze_1/libsrc/standalone_v7_2/src/microblaze_interrupt_handler.c
sed -i '1s/^/#define ARCH_SEC_HW_BOOT\n/' $1/design_1_wrapper/secure_serial_out_microblaze_0/domain_secure_serial_out_microblaze_0/bsp/secure_serial_out_microblaze_0/libsrc/standalone_v7_2/src/microblaze_interrupt_handler.c
sed -i '1s/^/#define ARCH_SEC_HW_BOOT\n/' $1/design_1_wrapper/enclave0_subsys_microblaze_2/domain_enclave0_subsys_microblaze_2/bsp/enclave0_subsys_microblaze_2/libsrc/standalone_v7_2/src/microblaze_interrupt_handler.c
sed -i '1s/^/#define ARCH_SEC_HW_BOOT\n/' $1/design_1_wrapper/enclave1_subsys_microblaze_3/domain_enclave1_subsys_microblaze_3/bsp/enclave1_subsys_microblaze_3/libsrc/standalone_v7_2/src/microblaze_interrupt_handler.c
sed -i '1s/^/#define ARCH_SEC_HW_BOOT\n/' $1/design_1_wrapper/ethernet_subsystem_microblaze_5/domain_ethernet_subsystem_microblaze_5/bsp/ethernet_subsystem_microblaze_5/libsrc/standalone_v7_2/src/microblaze_interrupt_handler.c

# NOTE: interrupt handler for network is not tested. using MJ's original code

echo ""
echo "Now, edit c/c++ build settings, 1) add the following -D, 2) add arch/include and include, 3) optimize for size, do these for each subproject"

echo "Storage Bootloader"
echo "ARCH_SEC_HW_BOOT ARCH_SEC_HW PROJ_CPP ARCH_SEC_HW_BOOT_STORAGE ARCH_SEC_HW_STORAGE"
echo "OS Bootloader"
echo "ARCH_SEC_HW ARCH_SEC_HW_OS ARCH_SEC_HW_BOOT ARCH_SEC_HW_BOOT_OS"
echo "keyboard Bootloader"
echo "ARCH_SEC_HW ARCH_SEC_HW_KEYBOARD ARCH_SEC_HW_BOOT ARCH_SEC_HW_BOOT_KEYBOARD ARCH_SEC_HW_BOOT_OTHER"
echo "Serialout Bootloader"
echo "ARCH_SEC_HW ARCH_SEC_HW_SERIAL_OUT ARCH_SEC_HW_BOOT ARCH_SEC_HW_BOOT_SERIAL_OUT ARCH_SEC_HW_BOOT_OTHER"
echo "Enclave0 Bootloader"
echo "ARCH_SEC_HW ARCH_SEC_HW_RUNTIME ARCH_SEC_HW_BOOT ARCH_SEC_HW_BOOT_RUNTIME_1 ARCH_SEC_HW_BOOT_OTHER RUNTIME_ID=1"
echo "Enclave1 Bootloader"
echo "ARCH_SEC_HW ARCH_SEC_HW_RUNTIME ARCH_SEC_HW_BOOT ARCH_SEC_HW_BOOT_RUNTIME_2 ARCH_SEC_HW_BOOT_OTHER RUNTIME_ID=2"
echo "Network Bootloader"
echo "ARCH_SEC_HW ARCH_SEC_HW_NETWORK ARCH_SEC_HW_BOOT ARCH_SEC_HW_BOOT_OTHER ARCH_SEC_HW_BOOT_NETWORK"

echo "Storage"
echo "ARCH_SEC_HW PROJ_CPP ARCH_SEC_HW_STORAGE"
echo "OS"
echo "ARCH_SEC_HW ARCH_SEC_HW_OS ROLE_OS"
echo "keyboard"
echo "ARCH_SEC_HW_KEYBOARD"
echo "Serialout"
echo "ARCH_SEC_HW_SERIAL_OUT"
echo "Enclave0"
echo "RUNTIME_ID=1 ARCH_SEC_HW ARCH_SEC_HW_RUNTIME"
echo "Enclave1"
echo "RUNTIME_ID=2 ARCH_SEC_HW ARCH_SEC_HW_RUNTIME"
echo "Network"
echo "ARCH_SEC_HW ARCH_SEC_HW_NETWORK HW_MAILBOX_BLOCKING"

echo "JTAG boot configs:"
echo "1. create non gdb debug configuration"
echo "2. Target setup, disable Use FSBL"
