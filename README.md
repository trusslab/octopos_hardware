# Split-Trust Hardware Design User Guide

:paperclip: [OctopOS Paper *(to be updated)*]()
:orange_book: [OctopOS Technical Reference Manual](https://github.com/trusslab/octopos_hardware/raw/main/docs/OctopOS-TRM.pdf)

:computer: [OctopOS Repository](https://github.com/trusslab/octopos)
:electric_plug: [Split-Trust Hardware Repository](https://github.com/trusslab/octopos_hardware)

:flashlight: [Formal Verification](https://github.com/trusslab/octopos_hardware/tree/main/formal_verification)
:beer: [Untrusted Domain Petalinux](https://github.com/trusslab/linux-xlnx)
:beer: [OctopOS Emulator](https://github.com/trusslab/octopos/blob/main/docs/emulator.rst)

Authors: Zhihao "Zephyr" Yao, Seyed Mohammadjavad Seyed Talebi, Mingyi Chen, Ardalan Amiri Sani, Thomas Anderson (Collectively, "The OctopOS Authors")

The work was supported by NSF Awards #1617513, #1718923, #1846230, and #1953932.

This is step-by-step guide to instantiate Split-Trust hardware and launch OctopOS on top of it.
---

## Table of Contents

- [Split-Trust Hardware Design User Guide](#split-trust-hardware-design-user-guide)
  - [Table of Contents](#table-of-contents)
  - [System requirements](#system-requirements)
  - [Hardware Design](#hardware-design)
  - [OctopOS Software](#octopos-software)
  - [Petalinux for the untrusted domain](#petalinux-for-the-untrusted-domain)
  - [Package the final boot image](#package-the-final-boot-image)
  - [Boot the external TPM device](#boot-the-external-tpm-device)
  - [Prepare serial terminals](#prepare-serial-terminals)
  - [Boot the ZCU102 board](#boot-the-zcu102-board)

## System requirements

Software version: [Vivado 2020.1](https://www.xilinx.com/support/download/index.html/content/xilinx/en/downloadNav/vivado-design-tools/archive.html)

Development board version: ZCU102

It is recommended to follow this guide on a single Linux machine with at least 32GB of RAM and 512GB of free disk space (SSD is preferred), although it is possible to prepare hardware design, OctopOS binaries, and Petalinux image separately on different machines.
We use an Intel Xeon E5-2697 CPU with 72 threads with 192 GB memory to prepare the hardware design and OctopOS binaries. The total machine time is about 6-9 hours, and the manual work takes about 8-12 hours depending on your familiarity with the tools.

## Hardware Design

1) Clone this repo (`git clone https://github.com/trusslab/octopos_hardware`) into `<PATH_TO_OCTOPOS_HARDWARE>`. This repo contains the hardware design of our Split-Trust hardware prototype, IP source codes, and scripts to populate the hardware design and launch OctopOS software.

***Steps 2-5 can be automated with our script `generate_hardware.sh`. Before running the script, please make sure you have installed Vivado 2020.1 and necessary licenses, including the Vivado license and the [LogiCORE Tri-Mode Ethernet IP license](https://www.xilinx.com/products/intellectual-property/temac-order.html). If you would like to review the hardware design and synthesis options, please follow the steps below.***

2) To re-create the hardware project, install Vivado 2020.1, `cd <PATH_TO_OCTOPOS_HARDWARE>/octopos_hw_zcu102`, and run `vivado -source <PATH_TO_OCTOPOS_HARDWARE>/octopos_hw_zcu102/project_zcu102.tcl`. Alternatively, you can launch `vivado`, in the tcl command window, `cd <PATH_TO_OCTOPOS_HARDWARE>/octopos_hw_zcu102`, and `source <PATH_TO_OCTOPOS_HARDWARE>/octopos_hw_zcu102/project_zcu102.tcl`.

If you successfully created the hardware project, you should see the following hierarchical block design in Vivado. The top-level design has 9 subsystems.

![Hierarchical block design](docs/img/design_1.jpg)

The resource manager domain subsystem (`os_subsys`):

![Resource manager subsystem](docs/img/resource_manager_subsys.png)

The storage domain subsystem (`storage_subsystem`):

![Storage subsystem](docs/img/storage_subsystem.png)

The network domain subsystem (`ethernet_subsystem`):

![Network subsystem](docs/img/ethernet_subsystem.png)

The enclave 0 domain subsystem (`enclave0_subsys`):

![Enclave 0 subsystem](docs/img/enclave0_subsys.png)

The enclave 1 domain subsystem (`enclave1_subsys`):

![Enclave 1 subsystem](docs/img/enclave1_subsys.png)

The untrusted domain subsystem (`ps_subsystem`):

![Untrusted domain subsystem](docs/img/ps_subsystem.png)

The keyboard domain subsystem (`secure_serial_in`):

![Keyboard domain subsystem](docs/img/secure_serial_in.png)

The serial out domain subsystem (`secure_serial_out`):

![Serial out domain subsystem](docs/img/secure_serial_out.png)

The TPM forwarder subsystem (`TPM_subsys`):

![TPM forwarder subsystem](docs/img/TPM_subsys.png)

3) You do not have to package the mailboxes, arbiter, and ROM fuse IPs yourself because the pre-packaged IPs are already included in this repository. However, if you would like to modify these IPs, you may follow the instruction in our [guide to update Mailbox IP](https://github.com/trusslab/octopos_hardware/blob/main/docs/Update-Mailbox-IP.rst) to do so.

![Synthesis hardware design](docs/img/2023-04-03-vivado.png)

4) Generate bitstream. This may take a few hours depending on your machine. Please note you need a Vivado license (which usually comes with your board purchase, or your institution may have an institutional license) to generate bitstream. Our network domain design also requires the [LogiCORE Tri-Mode Ethernet IP license](https://www.xilinx.com/products/intellectual-property/temac-order.html), and a free Evaluation License can be obtained: https://digilent.com/reference/vivado/temac.

5) The synthesized hardware design is an `xsa` file. To export the hardware design to the Vitis SDK, click `File -> Export -> Export Hardware`. Selected `Fixed` and `Include bitstream`. Take note of the file location of the exported `xsa` file.

![Generated hardware design](docs/img/2023-04-03-xsa.png)

### Network hardware connection

To connect an ethernet cable to the ZCU102 board (which will be then mapped to our network domain with a constraint file), you will need an SFP-Ethernet adaptor. We use a [10Gtek 1.25G SFP-T, 1000BASE-T Copper SFP adaptor](https://www.amazon.com/10Gtek-Compatible-SFP-GE-T-Transceiver-1000Base-T/dp/B00U77IJ2M/ref=sr_1_1?dchild=1&th=1).

The SFP jummper setting:
![SFP jummper](docs/img/SFP_Jumper.jpg)

The SFP connection:
![SFP connection](docs/img/SFP_connection.jpg)

## OctopOS Software

6) Install Vitis. The version of Vitis SDK should be 2020.1.

7) Obtain the OctopOS software, `git clone https://github.com/trusslab/octopos` into `<PATH_TO_OCTOPOS_SOFTWARE>`. OctopOS is an operating system that runs on our Split-Trust hardware. It provides source code to run on each domain, and a set of APIs to communicate between domains through our mailboxes. OctopOS supports both the hardware prototype (this repo), and a software emulator that runs on a Linux desktop (please see OctopOS repo for details). In this guide, we will launch OctopOS on the hardware prototype.

8) mkdir `~/vitis_workspace`.

9) Create a Vitis working directory at `~/vitis_workspace/octopos_domains`. This directory will contain the software for each domain. This path is just an example and you can choose any path you like, the same for step 11.

![Vitis working directory](docs/img/2023-05-01-vitis_workspace.png)

Click `Create Application Project`, and select `Create a new platform from hardware (XSA)`.

![Create Application Project](docs/img/2023-05-01-create_application_project1.png)

Select the exported `xsa` file in step 5. This process can take a few minutes.

![Create Application Project](docs/img/2023-05-01-create_application_project2.png)

Now, type in the project name `storage`, find the processor name `storage_subsystem`, and click `Next`.

![Create Application Project](docs/img/2023-05-01-create_application_project3.png)

Select `Next` in the `New Application Project` window.

![Create Application Project](docs/img/2023-05-01-create_application_project4.png)

Select `Empty Application (C++)` and click `Finish`.

![Create Application Project](docs/img/2023-05-01-create_application_project5.png)

Note that during the creation of platform project, we created the first application project, `storage` as well. We will create the rest of the application projects (`oss, keyboard, serialout, enclave0, enclave1, network`) in Step 12.

10) Keep the previous Vitis working directory open, and launch another Vitis. Please make sure to launch a new Vitis, not a new project in the same Vitis window.

11) Create a new Vitis working directory named `~/vitis_workspace/octopos_bootloaders`. This directory will contain the bootloaders for each domain.

![Vitis working directory](docs/img/2023-05-01-vitis_bootloader_workspace.png)

Repeat step 9, except that the first project name should be `storage_bootloader`.

![Create Application Project](docs/img/2023-05-01-create_application_project_bootloader1.png)

We have created the first bootloader project, `storage_bootloader`. We will create the rest of the bootloader projects (`os_bootloader, keyboard_bootloader, serialout_bootloader, enclave0_bootloader, enclave1_bootloader, network_bootloader`) in Step 13.

12) Open the Vitis OctopOS domain working directory created in step 9 (`~/vitis_workspace/octopos_domains`), and create the following projects one by one (`File->New->Application Project`): `storage, oss, keyboard, serialout, enclave0, enclave1, network` (`storage` has already been created in step 9, so you can skip it). Please use the exact name for each domain project, and select the corresponding processors (all processor names start with a domain name, so that you can easily match them). Use default settings for all projects. Select `empty c project` for all domains except for `storage`. For `storage`, select `empty c++ project`.

![Empty C Project](docs/img/2023-05-01-application_project_empty_c.png)

13) Open the Vitis OctopOS bootloaders working directory created in step 11 (`~/vitis_workspace/octopos_bootloaders`), and create the following projects one by one: `storage_bootloader, os_bootloader, keyboard_bootloader, serialout_bootloader, enclave0_bootloader, enclave1_bootloader, network_bootloader` (`storage_bootloader` has already been created in step 11, so you can skip it). Please follow the same instructions as in step 12.

14) Mount OctopOS software into the Vitis working directory for the domains, `source <PATH_TO_OCTOPOS_HARDWARE>/scripts/mount_octopos.sh <PATH_TO_OCTOPOS_SOFTWARE> ~/vitis_workspace/octopos_domains`.

15) Mount OctopOS bootloaders into the Vitis working directory for the bootloaders, `source <PATH_TO_OCTOPOS_HARDWARE>/scripts/mount_octopos.sh <PATH_TO_OCTOPOS_SOFTWARE> ~/vitis_workspace/octopos_bootloaders`.

16) Apply patches to Xilinx BSPs, `source <PATH_TO_OCTOPOS_HARDWARE>/scripts/vitis_setup.sh ~/vitis_workspace/octopos_bootloaders ~/vitis_workspace/octopos_domains`.

17) Open the Vitis OctopOS domain working directory (`~/vitis_workspace/octopos_domains`). Repeat the following step for each domain project: double-click the `<domain name>_system`, a subfolder named `<domain name>` will show up; right-click the `<domain name>` folder, select `C/C++ Build Settings`, as shown in the screenshot below.

![C/C++ Build Settings](docs/img/2023_05_01-vitis-c-settings.png)
    
Navigate to `Microblaze gcc compiler->Symbols`, add the corresponding symbols in the table below for each project; navigate to `Microblaze gcc compiler->Optimization`, select `Optimize for size -Os`; navigate to `Microblaze gcc compiler->Inferred Options->Software Platform`, add `${workspace_loc:/${ProjName}/src/octopos/arch/include}` and `${workspace_loc:/${ProjName}/src/octopos/include}` to the include path. If the add button is not visible, drag the edge of the window to the right to make it visible. 

| Domain   | Compiler Symbol                                       |
|----------|-------------------------------------------------------|
| Storage  | ARCH_SEC_HW PROJ_CPP ARCH_SEC_HW_STORAGE               |
| OS       | ARCH_SEC_HW ARCH_SEC_HW_OS ROLE_OS                     |
| Keyboard | ARCH_SEC_HW_KEYBOARD                                  |
| Serialout| ARCH_SEC_HW_SERIAL_OUT                                 |
| Enclave0 | RUNTIME_ID=1 ARCH_SEC_HW ARCH_SEC_HW_RUNTIME           |
| Enclave1 | RUNTIME_ID=2 ARCH_SEC_HW ARCH_SEC_HW_RUNTIME           |
| Network  | ARCH_SEC_HW ARCH_SEC_HW_NETWORK HW_MAILBOX_BLOCKING   |

For example, the screenshot below shows the settings for the storage domain.

![Vitis settings](docs/img/2023_05_01-vitis-settings-1.png)
![Vitis settings](docs/img/2023_05_01-vitis-settings-2.png)
![Vitis settings](docs/img/2023_05_01-vitis-settings-3.png)

18)  Open the Vitis OctopOS bootloader working directory (`~/vitis_workspace/octopos_bootloaders`). Repeat the same step as in step 17 for each bootloader project (but use the table below for compiler symbols.

| Domain Name         | Compiler Symbol                                            |
|---------------------|------------------------------------------------------------|
| Storage Bootloader  | ARCH_SEC_HW_BOOT ARCH_SEC_HW PROJ_CPP ARCH_SEC_HW_BOOT_STORAGE ARCH_SEC_HW_STORAGE |
| OS Bootloader       | ARCH_SEC_HW ARCH_SEC_HW_OS ARCH_SEC_HW_BOOT ARCH_SEC_HW_BOOT_OS |
| Keyboard Bootloader | ARCH_SEC_HW ARCH_SEC_HW_KEYBOARD ARCH_SEC_HW_BOOT ARCH_SEC_HW_BOOT_KEYBOARD ARCH_SEC_HW_BOOT_OTHER |
| Serialout Bootloader| ARCH_SEC_HW ARCH_SEC_HW_SERIAL_OUT ARCH_SEC_HW_BOOT ARCH_SEC_HW_BOOT_SERIAL_OUT ARCH_SEC_HW_BOOT_OTHER |
| Enclave0 Bootloader | ARCH_SEC_HW ARCH_SEC_HW_RUNTIME ARCH_SEC_HW_BOOT ARCH_SEC_HW_BOOT_RUNTIME_1 ARCH_SEC_HW_BOOT_OTHER RUNTIME_ID=1 |
| Enclave1 Bootloader | ARCH_SEC_HW ARCH_SEC_HW_RUNTIME ARCH_SEC_HW_BOOT ARCH_SEC_HW_BOOT_RUNTIME_2 ARCH_SEC_HW_BOOT_OTHER RUNTIME_ID=2 |
| Network Bootloader   | ARCH_SEC_HW ARCH_SEC_HW_NETWORK ARCH_SEC_HW_BOOT ARCH_SEC_HW_BOOT_OTHER ARCH_SEC_HW_BOOT_NETWORK |

For example, the settings for one of the enclave bootloaders are shown below.

![Vitis settings](docs/img/2023_05_01-vitis-settings-4.png)
![Vitis settings](docs/img/2023_05_01-vitis-settings-5.png)
![Vitis settings](docs/img/2023_05_01-vitis-settings-6.png)

19)  Open the Vitis OctopOS domain working directory (`~/vitis_workspace/octopos_domains`). Build all projects. The first build will take about 10 minutes.

![Vitis build](docs/img/2023-05-01-vitis_build.png)

20)  Open the Vitis OctopOS bootloader working directory (`~/vitis_workspace/octopos_bootloaders`). Build all projects.

![Vitis build](docs/img/2023-05-01-bootloader_build.png)

21)  Launch a new Vitis, and import the Vitis TPM project (`<PATH_TO_OCTOPOS_HARDWARE>/tpm_forwarder_sw/vitis_export_archive.ide.zip`) to `~/vitis_workspace/octopos_tpm_forwarder`. Please see [Guide to import Vitis project](https://github.com/trusslab/octopos_hardware/blob/main/docs/Vitis-import-project.rst) for instructions on how to import a Vitis project.

<!-- ![Vitis import](docs/img/2023_05_01-tpm-import1.png) -->
![Vitis import](docs/img/2023_05_01-tpm-import2.png)

Open the Vitis TPM project, and build it. 

![Vitis build](docs/img/2023-05-01-tpm_fwd_build.png)

## Petalinux for the untrusted domain

22) Create the Petalinux project for the untrusted domain.  Please see [Guide to create Petalinux project for the untrusted domain](https://github.com/trusslab/octopos_hardware/blob/main/docs/petalinux-guide.rst) for details.

## Package the final boot image

23) Open `<PATH_TO_OCTOPOS_HARDWARE>/scripts/set_path.sh`.

Please refer to this table for path settings,

| Variable | Path |
|----------|------|
| VITIS_INSTALLATION | the installation path of Vitis, for example, `/opt/Xilinx/Vitis` |
| PETALINUX_PRODUCTS | path of the untrusted domain petalinux build |
| HW_DESIGN_WITH_ARBITTER | folder containing the exported hardware `xsa` file (in step 5) |
| VITIS_BOOTLOADERS | `~/vitis_workspace/octopos_bootloaders` |
| VITIS_DOMAINS | `~/vitis_workspace/octopos_domains` |
| VITIS_TPM | `~/vitis_workspace/octopos_tpm_forwarder` created in step 21 |
| OCTOPOS_DIR | `<PATH_TO_OCTOPOS_SOFTWARE>` |
| BOOT_MEDIA | path to a mounted SD-Card |

## Boot the external TPM device

24) Launch TPM on the untrusted domain. 

Follow the [TPM installation guide](https://github.com/trusslab/octopos/blob/main/docs/tpm.rst) to install TPM emulator on a Raspberry Pi device. We include our code for the Raspberry Pi-based TPM to communicate with the ZCU102 board (TPM forwarder). Please see `external/tpm-client/tpm-client.c` under `arm_dev` branch of the [OctopOS repository](https://github.com/trusslab/octopos) for details.

OctopOS will still boot without the TPM device because, during the boot process, the domains simply extend to the TPM PCRs. However, the domains will not be able to attest to the TPM PCRs.

## Prepare serial terminals

25) Plug the following pins and jumpers on the ZCU102 board:

![ZCU102 board](docs/img/2023-04-03-board.jpg)

As shown in the picture, J16 (the jumper in red circle) must be connected to enable the top-right network SFP socket.
The boot mode switch (in yellow circle) must be set to position 1-ON, 2-OFF, 3-OFF, and 4-OFF to enable SD boot.

We use PMOD pins for domains to dump debug information. The following table shows the mapping between PMOD pins and domains:

| Pin | Connect to |
|-----|------------|
| D20 | Serial Domain    |
| E20 | OS Domain        |
| D22 | Network Domain   |
| E22 | Storage Domain   |
| J20 | Enclave 1 Domain |
| J19 | Enclave 2 Domain |
| F20 | TX to TPM        |
| G20 | RX from TPM      |

The pin mapping can be found on Page 74-75 of [ZCU102 Evaluation Board User Guide UG1182 (v1.7) February 21, 2023](https://docs.xilinx.com/v/u/en-US/ug1182-zcu102-eval-bd).

26)   Open serial terminals for the following devices:

The keyboard domain is directly mapped to one of the board's serial interfaces (on Ubuntu, it is `/dev/ttyUSB2`, with baud rate 9600).

The untrusted domain is mapped to the other board's serial interface (on Ubuntu, it is `/dev/ttyUSB0`, with baud rate 115200).

All other domains are mapped to the PMOD pins. You can use a USB-to-serial converter to connect to the PMOD pins. The baud rates are 115200 for all domains.

For all domains, Serial Hardware Flow Control should be disabled. The board's JTAG interface should be disconnected.

An Arduino Mega board can be used to collect serial outputs from multiple domains. We develop a script for this purpose. Please see https://github.com/trusslab/octopos_hardware/tree/main/scripts/serial_debug for details.

## Boot the ZCU102 board

27) Insert the SD-Card into the ZCU102 board, and power on the board.

OctopOS will be booted automatically. Upon successful boot, you should see boot info printed on the resource manager's debug terminal, and domain prints on the corresponding domain's debug terminal.

Resource Manager Domain:
![OctopOS Resource Manager Domain](docs/img/2023-04-03-OSBOOT.png)

Untrusted Domain:
![OctopOS Untrusted Domain](docs/img/2023-04-03-Untrusted.png)
