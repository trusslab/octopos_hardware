#sudo mount --bind /home/zephyr/octopos/octopos /home/zephyr/octopos/xilinx/project_test_mailbox_2/project_test_mailbox_2.sdk/system0_cortexr0/src/octopos
sudo mount --bind /home/zephyr/octopos/octopos/arch/sec_hw /home/zephyr/octopos/xilinx/project_test_mailbox_2/project_test_mailbox_2.sdk/system0_cortexr0/src/octopos/arch
sudo mount --bind /home/zephyr/octopos/octopos/include/ /home/zephyr/octopos/xilinx/project_test_mailbox_2/project_test_mailbox_2.sdk/system0_cortexr0/src/octopos/include
sudo mount --bind /home/zephyr/octopos/octopos/os/ /home/zephyr/octopos/xilinx/project_test_mailbox_2/project_test_mailbox_2.sdk/system0_cortexr0/src/octopos/os

sudo mount --bind /home/zephyr/octopos/octopos/arch/sec_hw /home/zephyr/octopos/xilinx/project_test_mailbox_2/project_test_mailbox_2.sdk/serialout_microblaze0/src/octopos/arch
sudo mount --bind /home/zephyr/octopos/octopos/include /home/zephyr/octopos/xilinx/project_test_mailbox_2/project_test_mailbox_2.sdk/serialout_microblaze0/src/octopos/include
sudo mount --bind /home/zephyr/octopos/octopos/serial_out /home/zephyr/octopos/xilinx/project_test_mailbox_2/project_test_mailbox_2.sdk/serialout_microblaze0/src/octopos/serial_out

sudo mount --bind /home/zephyr/octopos/octopos/arch/sec_hw /home/zephyr/octopos/xilinx/project_test_mailbox_2/project_test_mailbox_2.sdk/serial_in_microblaze1/src/octopos/arch
sudo mount --bind /home/zephyr/octopos/octopos/include /home/zephyr/octopos/xilinx/project_test_mailbox_2/project_test_mailbox_2.sdk/serial_in_microblaze1/src/octopos/include
sudo mount --bind /home/zephyr/octopos/octopos/keyboard /home/zephyr/octopos/xilinx/project_test_mailbox_2/project_test_mailbox_2.sdk/serial_in_microblaze1/src/octopos/keyboard

sudo mount --bind /home/zephyr/octopos/octopos/arch/sec_hw /home/zephyr/octopos/xilinx/project_test_mailbox_2/project_test_mailbox_2.sdk/enclave0_microblaze2/src/octopos/arch
sudo mount --bind /home/zephyr/octopos/octopos/include /home/zephyr/octopos/xilinx/project_test_mailbox_2/project_test_mailbox_2.sdk/enclave0_microblaze2/src/octopos/include
sudo mount --bind /home/zephyr/octopos/octopos/runtime /home/zephyr/octopos/xilinx/project_test_mailbox_2/project_test_mailbox_2.sdk/enclave0_microblaze2/src/octopos/runtime
#sudo mount --bind /home/zephyr/octopos/octopos/applications/secure_interact /home/zephyr/octopos/xilinx/project_test_mailbox_2/project_test_mailbox_2.sdk/enclave0_microblaze2/src/octopos/application
#sudo mount --bind /home/zephyr/octopos/octopos/applications/ipc_sender /home/zephyr/octopos/xilinx/project_test_mailbox_2/project_test_mailbox_2.sdk/enclave0_microblaze2/src/octopos/application
sudo mount --bind /home/zephyr/octopos/octopos/applications/ipc_sender /home/zephyr/octopos/xilinx/project_test_mailbox_2/project_test_mailbox_2.sdk/enclave0_microblaze2/src/octopos/application/ipc_s
sudo mount --bind /home/zephyr/octopos/octopos/applications/ipc_receiver /home/zephyr/octopos/xilinx/project_test_mailbox_2/project_test_mailbox_2.sdk/enclave0_microblaze2/src/octopos/application/ipc_r
sudo mount --bind /home/zephyr/octopos/octopos/applications/secure_interact /home/zephyr/octopos/xilinx/project_test_mailbox_2/project_test_mailbox_2.sdk/enclave0_microblaze2/src/octopos/application/sec_i
sudo mount --bind /home/zephyr/octopos/octopos/applications/secure_login /home/zephyr/octopos/xilinx/project_test_mailbox_2/project_test_mailbox_2.sdk/enclave0_microblaze2/src/octopos/application/sec_login
sudo mount --bind /home/zephyr/octopos/octopos/applications/simple_loop /home/zephyr/octopos/xilinx/project_test_mailbox_2/project_test_mailbox_2.sdk/enclave0_microblaze2/src/octopos/application/sim_loop
sudo mount --bind /home/zephyr/octopos/octopos/applications/fs_test /home/zephyr/octopos/xilinx/project_test_mailbox_2/project_test_mailbox_2.sdk/enclave0_microblaze2/src/octopos/application/fs_test

sudo mount --bind /home/zephyr/octopos/octopos/arch/sec_hw /home/zephyr/octopos/xilinx/project_test_mailbox_2/project_test_mailbox_2.sdk/enclave1_microblaze3/src/octopos/arch
sudo mount --bind /home/zephyr/octopos/octopos/include /home/zephyr/octopos/xilinx/project_test_mailbox_2/project_test_mailbox_2.sdk/enclave1_microblaze3/src/octopos/include
sudo mount --bind /home/zephyr/octopos/octopos/runtime /home/zephyr/octopos/xilinx/project_test_mailbox_2/project_test_mailbox_2.sdk/enclave1_microblaze3/src/octopos/runtime
#sudo mount --bind /home/zephyr/octopos/octopos/applications/ipc_receiver /home/zephyr/octopos/xilinx/project_test_mailbox_2/project_test_mailbox_2.sdk/enclave1_microblaze3/src/octopos/application
sudo mount --bind /home/zephyr/octopos/octopos/applications/ipc_sender /home/zephyr/octopos/xilinx/project_test_mailbox_2/project_test_mailbox_2.sdk/enclave1_microblaze3/src/octopos/application/ipc_s
sudo mount --bind /home/zephyr/octopos/octopos/applications/ipc_receiver /home/zephyr/octopos/xilinx/project_test_mailbox_2/project_test_mailbox_2.sdk/enclave1_microblaze3/src/octopos/application/ipc_r
sudo mount --bind /home/zephyr/octopos/octopos/applications/secure_interact /home/zephyr/octopos/xilinx/project_test_mailbox_2/project_test_mailbox_2.sdk/enclave1_microblaze3/src/octopos/application/sec_i
sudo mount --bind /home/zephyr/octopos/octopos/applications/secure_login /home/zephyr/octopos/xilinx/project_test_mailbox_2/project_test_mailbox_2.sdk/enclave1_microblaze3/src/octopos/application/sec_login
sudo mount --bind /home/zephyr/octopos/octopos/applications/simple_loop /home/zephyr/octopos/xilinx/project_test_mailbox_2/project_test_mailbox_2.sdk/enclave1_microblaze3/src/octopos/application/sim_loop
sudo mount --bind /home/zephyr/octopos/octopos/applications/fs_test /home/zephyr/octopos/xilinx/project_test_mailbox_2/project_test_mailbox_2.sdk/enclave1_microblaze3/src/octopos/application/fs_test

sudo mount --bind /home/zephyr/octopos/octopos/storage /home/zephyr/octopos/xilinx/project_test_mailbox_2/project_test_mailbox_2.sdk/storage_microblaze4/src/octopos/storage
sudo mount --bind /home/zephyr/octopos/octopos/include /home/zephyr/octopos/xilinx/project_test_mailbox_2/project_test_mailbox_2.sdk/storage_microblaze4/src/octopos/include
sudo mount --bind /home/zephyr/octopos/octopos/arch/sec_hw /home/zephyr/octopos/xilinx/project_test_mailbox_2/project_test_mailbox_2.sdk/storage_microblaze4/src/octopos/arch


sudo mount --bind /home/zephyr/octopos/octopos/storage /home/zephyr/octopos/xilinx/project_test_mailbox_2/project_test_mailbox_2.sdk/storage_microblaze5/src/octopos/storage
sudo mount --bind /home/zephyr/octopos/octopos/include /home/zephyr/octopos/xilinx/project_test_mailbox_2/project_test_mailbox_2.sdk/storage_microblaze5/src/octopos/include
sudo mount --bind /home/zephyr/octopos/octopos/arch/sec_hw /home/zephyr/octopos/xilinx/project_test_mailbox_2/project_test_mailbox_2.sdk/storage_microblaze5/src/octopos/arch

# PMU
sudo mount --bind /home/zephyr/octopos/octopos/arch/sec_hw/pmu_fw /home/zephyr/octopos/xilinx/project_test_mailbox_2/project_test_mailbox_2.sdk/octopos_pmu/src/arch
#sudo mount --bind /home/zephyr/octopos/octopos/include /home/zephyr/octopos/xilinx/project_test_mailbox_2/project_test_mailbox_2.sdk/octopos_pmu/src/include

