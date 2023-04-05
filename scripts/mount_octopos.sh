# Copyright (c) 2020 - 2023, The OctopOS Authors
# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at https://mozilla.org/MPL/2.0/.

mkdir -p $2/oss/src/octopos/arch
mkdir -p $2/oss/src/octopos/include
mkdir -p $2/oss/src/octopos/os

sudo mount --bind $1/arch/sec_hw $2/oss/src/octopos/arch
sudo mount --bind $1/include/ $2/oss/src/octopos/include
sudo mount --bind $1/os/ $2/oss/src/octopos/os

mkdir -p $2/os_bootloader/src/octopos/arch
mkdir -p $2/os_bootloader/src/octopos/include
mkdir -p $2/os_bootloader/src/octopos/bootloader
mkdir -p $2/os_bootloader/src/octopos/os

sudo mount --bind $1/arch/sec_hw $2/os_bootloader/src/octopos/arch
sudo mount --bind $1/include/ $2/os_bootloader/src/octopos/include
sudo mount --bind $1/bootloader/ $2/os_bootloader/src/octopos/bootloader
sudo mount --bind $1/os/ $2/os_bootloader/src/octopos/os

mkdir -p $2/storage_bootloader/src/octopos/arch
mkdir -p $2/storage_bootloader/src/octopos/include
mkdir -p $2/storage_bootloader/src/octopos/bootloader
mkdir -p $2/storage_bootloader/src/octopos/storage

sudo mount --bind $1/arch/sec_hw $2/storage_bootloader/src/octopos/arch
sudo mount --bind $1/include/ $2/storage_bootloader/src/octopos/include
sudo mount --bind $1/bootloader/ $2/storage_bootloader/src/octopos/bootloader
sudo mount --bind $1/storage $2/storage_bootloader/src/octopos/storage

mkdir -p $2/storage/src/octopos/storage
mkdir -p $2/storage/src/octopos/include
mkdir -p $2/storage/src/octopos/arch

sudo mount --bind $1/storage $2/storage/src/octopos/storage
sudo mount --bind $1/include $2/storage/src/octopos/include
sudo mount --bind $1/arch/sec_hw $2/storage/src/octopos/arch

mkdir -p $2/keyboard/src/octopos/keyboard
mkdir -p $2/keyboard/src/octopos/include
mkdir -p $2/keyboard/src/octopos/arch

sudo mount --bind $1/keyboard $2/keyboard/src/octopos/keyboard
sudo mount --bind $1/include $2/keyboard/src/octopos/include
sudo mount --bind $1/arch/sec_hw $2/keyboard/src/octopos/arch

mkdir -p $2/keyboard_bootloader/src/octopos/include
mkdir -p $2/keyboard_bootloader/src/octopos/arch
mkdir -p $2/keyboard_bootloader/src/octopos/bootloader

sudo mount --bind $1/include $2/keyboard_bootloader/src/octopos/include
sudo mount --bind $1/arch/sec_hw $2/keyboard_bootloader/src/octopos/arch
sudo mount --bind $1/bootloader/ $2/keyboard_bootloader/src/octopos/bootloader

mkdir -p $2/serialout/src/octopos/serial_out
mkdir -p $2/serialout/src/octopos/include
mkdir -p $2/serialout/src/octopos/arch

sudo mount --bind $1/serial_out $2/serialout/src/octopos/serial_out
sudo mount --bind $1/include $2/serialout/src/octopos/include
sudo mount --bind $1/arch/sec_hw $2/serialout/src/octopos/arch

mkdir -p $2/serialout_bootloader/src/octopos/include
mkdir -p $2/serialout_bootloader/src/octopos/arch
mkdir -p $2/serialout_bootloader/src/octopos/bootloader

sudo mount --bind $1/include $2/serialout_bootloader/src/octopos/include
sudo mount --bind $1/arch/sec_hw $2/serialout_bootloader/src/octopos/arch
sudo mount --bind $1/bootloader/ $2/serialout_bootloader/src/octopos/bootloader

mkdir -p $2/enclave0/src/octopos/arch
mkdir -p $2/enclave0/src/octopos/include
mkdir -p $2/enclave0/src/octopos/runtime
mkdir -p $2/enclave0/src/octopos/application/ipc_s
mkdir -p $2/enclave0/src/octopos/application/ipc_r
mkdir -p $2/enclave0/src/octopos/application/sec_i
mkdir -p $2/enclave0/src/octopos/application/sec_login
mkdir -p $2/enclave0/src/octopos/application/sim_loop
mkdir -p $2/enclave0/src/octopos/application/fs_test
mkdir -p $2/enclave0/src/octopos/application/socket_client
mkdir -p $2/enclave0/src/octopos/application/bank_client
mkdir -p $2/enclave0/src/octopos/application/sec_hw_benchmark
mkdir -p $2/enclave0/src/octopos/utils/network

sudo mount --bind $1/arch/sec_hw $2/enclave0/src/octopos/arch
sudo mount --bind $1/include $2/enclave0/src/octopos/include
sudo mount --bind $1/runtime $2/enclave0/src/octopos/runtime
sudo mount --bind $1/applications/ipc_sender $2/enclave0/src/octopos/application/ipc_s
sudo mount --bind $1/applications/ipc_receiver $2/enclave0/src/octopos/application/ipc_r
sudo mount --bind $1/applications/secure_interact $2/enclave0/src/octopos/application/sec_i
sudo mount --bind $1/applications/secure_login $2/enclave0/src/octopos/application/sec_login
sudo mount --bind $1/applications/simple_loop $2/enclave0/src/octopos/application/sim_loop
sudo mount --bind $1/applications/fs_test $2/enclave0/src/octopos/application/fs_test
sudo mount --bind $1/applications/socket_client $2/enclave0/src/octopos/application/socket_client
sudo mount --bind $1/applications/sec_hw_benchmark $2/enclave0/src/octopos/application/sec_hw_benchmark
sudo mount --bind $1/applications/bank_client $2/enclave0/src/octopos/application/bank_client
sudo mount --bind $1/util/network $2/enclave0/src/octopos/utils/network

mkdir -p $2/enclave0_bootloader/src/octopos/arch
mkdir -p $2/enclave0_bootloader/src/octopos/include
mkdir -p $2/enclave0_bootloader/src/octopos/bootloader

sudo mount --bind $1/arch/sec_hw $2/enclave0_bootloader/src/octopos/arch
sudo mount --bind $1/include $2/enclave0_bootloader/src/octopos/include
sudo mount --bind $1/bootloader $2/enclave0_bootloader/src/octopos/bootloader

mkdir -p $2/enclave1/src/octopos/arch
mkdir -p $2/enclave1/src/octopos/include
mkdir -p $2/enclave1/src/octopos/runtime
mkdir -p $2/enclave1/src/octopos/application/ipc_s
mkdir -p $2/enclave1/src/octopos/application/ipc_r
mkdir -p $2/enclave1/src/octopos/application/sec_i
mkdir -p $2/enclave1/src/octopos/application/sec_login
mkdir -p $2/enclave1/src/octopos/application/sim_loop
mkdir -p $2/enclave1/src/octopos/application/fs_test
mkdir -p $2/enclave1/src/octopos/application/socket_client
mkdir -p $2/enclave1/src/octopos/application/sec_hw_benchmark
mkdir -p $2/enclave1/src/octopos/utils/network

sudo mount --bind $1/arch/sec_hw $2/enclave1/src/octopos/arch
sudo mount --bind $1/include $2/enclave1/src/octopos/include
sudo mount --bind $1/runtime $2/enclave1/src/octopos/runtime
sudo mount --bind $1/applications/ipc_sender $2/enclave1/src/octopos/application/ipc_s
sudo mount --bind $1/applications/ipc_receiver $2/enclave1/src/octopos/application/ipc_r
sudo mount --bind $1/applications/secure_interact $2/enclave1/src/octopos/application/sec_i
sudo mount --bind $1/applications/secure_login $2/enclave1/src/octopos/application/sec_login
sudo mount --bind $1/applications/simple_loop $2/enclave1/src/octopos/application/sim_loop
sudo mount --bind $1/applications/fs_test $2/enclave1/src/octopos/application/fs_test
sudo mount --bind $1/applications/socket_client $2/enclave1/src/octopos/application/socket_client
sudo mount --bind $1/applications/sec_hw_benchmark $2/enclave1/src/octopos/application/sec_hw_benchmark
sudo mount --bind $1/util/network $2/enclave1/src/octopos/utils/network

mkdir -p $2/enclave1_bootloader/src/octopos/arch
mkdir -p $2/enclave1_bootloader/src/octopos/include
mkdir -p $2/enclave1_bootloader/src/octopos/bootloader

sudo mount --bind $1/arch/sec_hw $2/enclave1_bootloader/src/octopos/arch
sudo mount --bind $1/include $2/enclave1_bootloader/src/octopos/include
sudo mount --bind $1/bootloader $2/enclave1_bootloader/src/octopos/bootloader

mkdir -p $2/network/src/octopos/network
mkdir -p $2/network/src/octopos/util/network
mkdir -p $2/network/src/octopos/arch
mkdir -p $2/network/src/octopos/include

sudo mount --bind $1/arch/sec_hw $2/network/src/octopos/arch
sudo mount --bind $1/include $2/network/src/octopos/include
sudo mount --bind $1/network $2/network/src/octopos/network
sudo mount --bind $1/util/network $2/network/src/octopos/util/network

mkdir -p $2/network_bootloader/src/octopos/bootloader
mkdir -p $2/network_bootloader/src/octopos/arch
mkdir -p $2/network_bootloader/src/octopos/include

sudo mount --bind $1/bootloader $2/network_bootloader/src/octopos/bootloader
sudo mount --bind $1/arch/sec_hw $2/network_bootloader/src/octopos/arch
sudo mount --bind $1/include $2/network_bootloader/src/octopos/include
