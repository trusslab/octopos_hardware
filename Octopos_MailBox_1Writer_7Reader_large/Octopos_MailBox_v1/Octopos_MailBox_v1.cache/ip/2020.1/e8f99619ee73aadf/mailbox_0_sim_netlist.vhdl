-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
-- Date        : Thu Dec 17 11:23:53 2020
-- Host        : myles-desktop running 64-bit Ubuntu 19.04
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ mailbox_0_sim_netlist.vhdl
-- Design      : mailbox_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu9eg-ffvb1156-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Sync_DPRAM is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSL_Flag_Handle.fifo_length_i_reg[3]\ : out STD_LOGIC;
    dpo : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \FSL_Flag_Handle.write_addr_ptr_reg[0]\ : in STD_LOGIC;
    SYS_Rst_I : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 6 downto 0 );
    S0_AXI_ACLK : in STD_LOGIC;
    S1_AXI_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \s_axi_rdata_i_reg[28]\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \s_axi_rdata_i_reg[28]_0\ : in STD_LOGIC_VECTOR ( 5 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Sync_DPRAM;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Sync_DPRAM is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^fsl_flag_handle.fifo_length_i_reg[3]\ : STD_LOGIC;
  signal NLW_RAM_reg_0_63_0_6_DOH_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_0_63_14_20_DOH_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_0_63_21_27_DOH_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_0_63_28_31_DOE_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_0_63_28_31_DOF_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_0_63_28_31_DOG_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_0_63_28_31_DOH_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_0_63_7_13_DOH_UNCONNECTED : STD_LOGIC;
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_63_0_6 : label is "";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of RAM_reg_0_63_0_6 : label is 2048;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of RAM_reg_0_63_0_6 : label is "fsl_1_to_0/Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.dpram_fifo_i.DPRAM_FIFO/RAM";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of RAM_reg_0_63_0_6 : label is "RAM_SDP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of RAM_reg_0_63_0_6 : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of RAM_reg_0_63_0_6 : label is 63;
  attribute ram_offset : integer;
  attribute ram_offset of RAM_reg_0_63_0_6 : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of RAM_reg_0_63_0_6 : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of RAM_reg_0_63_0_6 : label is 6;
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_63_14_20 : label is "";
  attribute RTL_RAM_BITS of RAM_reg_0_63_14_20 : label is 2048;
  attribute RTL_RAM_NAME of RAM_reg_0_63_14_20 : label is "fsl_1_to_0/Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.dpram_fifo_i.DPRAM_FIFO/RAM";
  attribute RTL_RAM_TYPE of RAM_reg_0_63_14_20 : label is "RAM_SDP";
  attribute ram_addr_begin of RAM_reg_0_63_14_20 : label is 0;
  attribute ram_addr_end of RAM_reg_0_63_14_20 : label is 63;
  attribute ram_offset of RAM_reg_0_63_14_20 : label is 0;
  attribute ram_slice_begin of RAM_reg_0_63_14_20 : label is 14;
  attribute ram_slice_end of RAM_reg_0_63_14_20 : label is 20;
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_63_21_27 : label is "";
  attribute RTL_RAM_BITS of RAM_reg_0_63_21_27 : label is 2048;
  attribute RTL_RAM_NAME of RAM_reg_0_63_21_27 : label is "fsl_1_to_0/Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.dpram_fifo_i.DPRAM_FIFO/RAM";
  attribute RTL_RAM_TYPE of RAM_reg_0_63_21_27 : label is "RAM_SDP";
  attribute ram_addr_begin of RAM_reg_0_63_21_27 : label is 0;
  attribute ram_addr_end of RAM_reg_0_63_21_27 : label is 63;
  attribute ram_offset of RAM_reg_0_63_21_27 : label is 0;
  attribute ram_slice_begin of RAM_reg_0_63_21_27 : label is 21;
  attribute ram_slice_end of RAM_reg_0_63_21_27 : label is 27;
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_63_28_31 : label is "";
  attribute RTL_RAM_BITS of RAM_reg_0_63_28_31 : label is 2048;
  attribute RTL_RAM_NAME of RAM_reg_0_63_28_31 : label is "fsl_1_to_0/Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.dpram_fifo_i.DPRAM_FIFO/RAM";
  attribute RTL_RAM_TYPE of RAM_reg_0_63_28_31 : label is "RAM_SDP";
  attribute ram_addr_begin of RAM_reg_0_63_28_31 : label is 0;
  attribute ram_addr_end of RAM_reg_0_63_28_31 : label is 63;
  attribute ram_offset of RAM_reg_0_63_28_31 : label is 0;
  attribute ram_slice_begin of RAM_reg_0_63_28_31 : label is 28;
  attribute ram_slice_end of RAM_reg_0_63_28_31 : label is 31;
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_63_7_13 : label is "";
  attribute RTL_RAM_BITS of RAM_reg_0_63_7_13 : label is 2048;
  attribute RTL_RAM_NAME of RAM_reg_0_63_7_13 : label is "fsl_1_to_0/Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.dpram_fifo_i.DPRAM_FIFO/RAM";
  attribute RTL_RAM_TYPE of RAM_reg_0_63_7_13 : label is "RAM_SDP";
  attribute ram_addr_begin of RAM_reg_0_63_7_13 : label is 0;
  attribute ram_addr_end of RAM_reg_0_63_7_13 : label is 63;
  attribute ram_offset of RAM_reg_0_63_7_13 : label is 0;
  attribute ram_slice_begin of RAM_reg_0_63_7_13 : label is 7;
  attribute ram_slice_end of RAM_reg_0_63_7_13 : label is 13;
begin
  E(0) <= \^e\(0);
  \FSL_Flag_Handle.fifo_length_i_reg[3]\ <= \^fsl_flag_handle.fifo_length_i_reg[3]\;
RAM_reg_0_63_0_6: unisim.vcomponents.RAM64M8
     port map (
      ADDRA(5 downto 0) => \s_axi_rdata_i_reg[28]\(5 downto 0),
      ADDRB(5 downto 0) => \s_axi_rdata_i_reg[28]\(5 downto 0),
      ADDRC(5 downto 0) => \s_axi_rdata_i_reg[28]\(5 downto 0),
      ADDRD(5 downto 0) => \s_axi_rdata_i_reg[28]\(5 downto 0),
      ADDRE(5 downto 0) => \s_axi_rdata_i_reg[28]\(5 downto 0),
      ADDRF(5 downto 0) => \s_axi_rdata_i_reg[28]\(5 downto 0),
      ADDRG(5 downto 0) => \s_axi_rdata_i_reg[28]\(5 downto 0),
      ADDRH(5 downto 0) => \s_axi_rdata_i_reg[28]_0\(5 downto 0),
      DIA => S1_AXI_WDATA(0),
      DIB => S1_AXI_WDATA(1),
      DIC => S1_AXI_WDATA(2),
      DID => S1_AXI_WDATA(3),
      DIE => S1_AXI_WDATA(4),
      DIF => S1_AXI_WDATA(5),
      DIG => S1_AXI_WDATA(6),
      DIH => '0',
      DOA => dpo(0),
      DOB => dpo(1),
      DOC => dpo(2),
      DOD => dpo(3),
      DOE => dpo(4),
      DOF => dpo(5),
      DOG => dpo(6),
      DOH => NLW_RAM_reg_0_63_0_6_DOH_UNCONNECTED,
      WCLK => S0_AXI_ACLK,
      WE => \^e\(0)
    );
\RAM_reg_0_63_0_6_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2222222222202222"
    )
        port map (
      I0 => \FSL_Flag_Handle.write_addr_ptr_reg[0]\,
      I1 => SYS_Rst_I,
      I2 => Q(5),
      I3 => Q(0),
      I4 => Q(6),
      I5 => \^fsl_flag_handle.fifo_length_i_reg[3]\,
      O => \^e\(0)
    );
RAM_reg_0_63_0_6_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => Q(3),
      I1 => Q(4),
      I2 => Q(1),
      I3 => Q(2),
      O => \^fsl_flag_handle.fifo_length_i_reg[3]\
    );
RAM_reg_0_63_14_20: unisim.vcomponents.RAM64M8
     port map (
      ADDRA(5 downto 0) => \s_axi_rdata_i_reg[28]\(5 downto 0),
      ADDRB(5 downto 0) => \s_axi_rdata_i_reg[28]\(5 downto 0),
      ADDRC(5 downto 0) => \s_axi_rdata_i_reg[28]\(5 downto 0),
      ADDRD(5 downto 0) => \s_axi_rdata_i_reg[28]\(5 downto 0),
      ADDRE(5 downto 0) => \s_axi_rdata_i_reg[28]\(5 downto 0),
      ADDRF(5 downto 0) => \s_axi_rdata_i_reg[28]\(5 downto 0),
      ADDRG(5 downto 0) => \s_axi_rdata_i_reg[28]\(5 downto 0),
      ADDRH(5 downto 0) => \s_axi_rdata_i_reg[28]_0\(5 downto 0),
      DIA => S1_AXI_WDATA(14),
      DIB => S1_AXI_WDATA(15),
      DIC => S1_AXI_WDATA(16),
      DID => S1_AXI_WDATA(17),
      DIE => S1_AXI_WDATA(18),
      DIF => S1_AXI_WDATA(19),
      DIG => S1_AXI_WDATA(20),
      DIH => '0',
      DOA => dpo(14),
      DOB => dpo(15),
      DOC => dpo(16),
      DOD => dpo(17),
      DOE => dpo(18),
      DOF => dpo(19),
      DOG => dpo(20),
      DOH => NLW_RAM_reg_0_63_14_20_DOH_UNCONNECTED,
      WCLK => S0_AXI_ACLK,
      WE => \^e\(0)
    );
RAM_reg_0_63_21_27: unisim.vcomponents.RAM64M8
     port map (
      ADDRA(5 downto 0) => \s_axi_rdata_i_reg[28]\(5 downto 0),
      ADDRB(5 downto 0) => \s_axi_rdata_i_reg[28]\(5 downto 0),
      ADDRC(5 downto 0) => \s_axi_rdata_i_reg[28]\(5 downto 0),
      ADDRD(5 downto 0) => \s_axi_rdata_i_reg[28]\(5 downto 0),
      ADDRE(5 downto 0) => \s_axi_rdata_i_reg[28]\(5 downto 0),
      ADDRF(5 downto 0) => \s_axi_rdata_i_reg[28]\(5 downto 0),
      ADDRG(5 downto 0) => \s_axi_rdata_i_reg[28]\(5 downto 0),
      ADDRH(5 downto 0) => \s_axi_rdata_i_reg[28]_0\(5 downto 0),
      DIA => S1_AXI_WDATA(21),
      DIB => S1_AXI_WDATA(22),
      DIC => S1_AXI_WDATA(23),
      DID => S1_AXI_WDATA(24),
      DIE => S1_AXI_WDATA(25),
      DIF => S1_AXI_WDATA(26),
      DIG => S1_AXI_WDATA(27),
      DIH => '0',
      DOA => dpo(21),
      DOB => dpo(22),
      DOC => dpo(23),
      DOD => dpo(24),
      DOE => dpo(25),
      DOF => dpo(26),
      DOG => dpo(27),
      DOH => NLW_RAM_reg_0_63_21_27_DOH_UNCONNECTED,
      WCLK => S0_AXI_ACLK,
      WE => \^e\(0)
    );
RAM_reg_0_63_28_31: unisim.vcomponents.RAM64M8
     port map (
      ADDRA(5 downto 0) => \s_axi_rdata_i_reg[28]\(5 downto 0),
      ADDRB(5 downto 0) => \s_axi_rdata_i_reg[28]\(5 downto 0),
      ADDRC(5 downto 0) => \s_axi_rdata_i_reg[28]\(5 downto 0),
      ADDRD(5 downto 0) => \s_axi_rdata_i_reg[28]\(5 downto 0),
      ADDRE(5 downto 0) => \s_axi_rdata_i_reg[28]\(5 downto 0),
      ADDRF(5 downto 0) => \s_axi_rdata_i_reg[28]\(5 downto 0),
      ADDRG(5 downto 0) => \s_axi_rdata_i_reg[28]\(5 downto 0),
      ADDRH(5 downto 0) => \s_axi_rdata_i_reg[28]_0\(5 downto 0),
      DIA => S1_AXI_WDATA(28),
      DIB => S1_AXI_WDATA(29),
      DIC => S1_AXI_WDATA(30),
      DID => S1_AXI_WDATA(31),
      DIE => '0',
      DIF => '0',
      DIG => '0',
      DIH => '0',
      DOA => dpo(28),
      DOB => dpo(29),
      DOC => dpo(30),
      DOD => dpo(31),
      DOE => NLW_RAM_reg_0_63_28_31_DOE_UNCONNECTED,
      DOF => NLW_RAM_reg_0_63_28_31_DOF_UNCONNECTED,
      DOG => NLW_RAM_reg_0_63_28_31_DOG_UNCONNECTED,
      DOH => NLW_RAM_reg_0_63_28_31_DOH_UNCONNECTED,
      WCLK => S0_AXI_ACLK,
      WE => \^e\(0)
    );
RAM_reg_0_63_7_13: unisim.vcomponents.RAM64M8
     port map (
      ADDRA(5 downto 0) => \s_axi_rdata_i_reg[28]\(5 downto 0),
      ADDRB(5 downto 0) => \s_axi_rdata_i_reg[28]\(5 downto 0),
      ADDRC(5 downto 0) => \s_axi_rdata_i_reg[28]\(5 downto 0),
      ADDRD(5 downto 0) => \s_axi_rdata_i_reg[28]\(5 downto 0),
      ADDRE(5 downto 0) => \s_axi_rdata_i_reg[28]\(5 downto 0),
      ADDRF(5 downto 0) => \s_axi_rdata_i_reg[28]\(5 downto 0),
      ADDRG(5 downto 0) => \s_axi_rdata_i_reg[28]\(5 downto 0),
      ADDRH(5 downto 0) => \s_axi_rdata_i_reg[28]_0\(5 downto 0),
      DIA => S1_AXI_WDATA(7),
      DIB => S1_AXI_WDATA(8),
      DIC => S1_AXI_WDATA(9),
      DID => S1_AXI_WDATA(10),
      DIE => S1_AXI_WDATA(11),
      DIF => S1_AXI_WDATA(12),
      DIG => S1_AXI_WDATA(13),
      DIH => '0',
      DOA => dpo(7),
      DOB => dpo(8),
      DOC => dpo(9),
      DOD => dpo(10),
      DOE => dpo(11),
      DOF => dpo(12),
      DOG => dpo(13),
      DOH => NLW_RAM_reg_0_63_7_13_DOH_UNCONNECTED,
      WCLK => S0_AXI_ACLK,
      WE => \^e\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Sync_DPRAM_3 is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSL_Flag_Handle.fifo_length_i_reg[3]\ : out STD_LOGIC;
    dpo : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \FSL_Flag_Handle.write_addr_ptr_reg[0]\ : in STD_LOGIC;
    SYS_Rst_I : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 6 downto 0 );
    S0_AXI_ACLK : in STD_LOGIC;
    S0_AXI_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \s_axi_rdata_i_reg[28]\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \s_axi_rdata_i_reg[28]_0\ : in STD_LOGIC_VECTOR ( 5 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Sync_DPRAM_3 : entity is "Sync_DPRAM";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Sync_DPRAM_3;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Sync_DPRAM_3 is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^fsl_flag_handle.fifo_length_i_reg[3]\ : STD_LOGIC;
  signal NLW_RAM_reg_0_63_0_6_DOH_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_0_63_14_20_DOH_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_0_63_21_27_DOH_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_0_63_28_31_DOE_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_0_63_28_31_DOF_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_0_63_28_31_DOG_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_0_63_28_31_DOH_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_0_63_7_13_DOH_UNCONNECTED : STD_LOGIC;
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_63_0_6 : label is "";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of RAM_reg_0_63_0_6 : label is 2048;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of RAM_reg_0_63_0_6 : label is "fsl_0_to_1/Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.dpram_fifo_i.DPRAM_FIFO/RAM";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of RAM_reg_0_63_0_6 : label is "RAM_SDP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of RAM_reg_0_63_0_6 : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of RAM_reg_0_63_0_6 : label is 63;
  attribute ram_offset : integer;
  attribute ram_offset of RAM_reg_0_63_0_6 : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of RAM_reg_0_63_0_6 : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of RAM_reg_0_63_0_6 : label is 6;
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_63_14_20 : label is "";
  attribute RTL_RAM_BITS of RAM_reg_0_63_14_20 : label is 2048;
  attribute RTL_RAM_NAME of RAM_reg_0_63_14_20 : label is "fsl_0_to_1/Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.dpram_fifo_i.DPRAM_FIFO/RAM";
  attribute RTL_RAM_TYPE of RAM_reg_0_63_14_20 : label is "RAM_SDP";
  attribute ram_addr_begin of RAM_reg_0_63_14_20 : label is 0;
  attribute ram_addr_end of RAM_reg_0_63_14_20 : label is 63;
  attribute ram_offset of RAM_reg_0_63_14_20 : label is 0;
  attribute ram_slice_begin of RAM_reg_0_63_14_20 : label is 14;
  attribute ram_slice_end of RAM_reg_0_63_14_20 : label is 20;
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_63_21_27 : label is "";
  attribute RTL_RAM_BITS of RAM_reg_0_63_21_27 : label is 2048;
  attribute RTL_RAM_NAME of RAM_reg_0_63_21_27 : label is "fsl_0_to_1/Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.dpram_fifo_i.DPRAM_FIFO/RAM";
  attribute RTL_RAM_TYPE of RAM_reg_0_63_21_27 : label is "RAM_SDP";
  attribute ram_addr_begin of RAM_reg_0_63_21_27 : label is 0;
  attribute ram_addr_end of RAM_reg_0_63_21_27 : label is 63;
  attribute ram_offset of RAM_reg_0_63_21_27 : label is 0;
  attribute ram_slice_begin of RAM_reg_0_63_21_27 : label is 21;
  attribute ram_slice_end of RAM_reg_0_63_21_27 : label is 27;
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_63_28_31 : label is "";
  attribute RTL_RAM_BITS of RAM_reg_0_63_28_31 : label is 2048;
  attribute RTL_RAM_NAME of RAM_reg_0_63_28_31 : label is "fsl_0_to_1/Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.dpram_fifo_i.DPRAM_FIFO/RAM";
  attribute RTL_RAM_TYPE of RAM_reg_0_63_28_31 : label is "RAM_SDP";
  attribute ram_addr_begin of RAM_reg_0_63_28_31 : label is 0;
  attribute ram_addr_end of RAM_reg_0_63_28_31 : label is 63;
  attribute ram_offset of RAM_reg_0_63_28_31 : label is 0;
  attribute ram_slice_begin of RAM_reg_0_63_28_31 : label is 28;
  attribute ram_slice_end of RAM_reg_0_63_28_31 : label is 31;
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_63_7_13 : label is "";
  attribute RTL_RAM_BITS of RAM_reg_0_63_7_13 : label is 2048;
  attribute RTL_RAM_NAME of RAM_reg_0_63_7_13 : label is "fsl_0_to_1/Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/Sync_FIFO_I.dpram_fifo_i.DPRAM_FIFO/RAM";
  attribute RTL_RAM_TYPE of RAM_reg_0_63_7_13 : label is "RAM_SDP";
  attribute ram_addr_begin of RAM_reg_0_63_7_13 : label is 0;
  attribute ram_addr_end of RAM_reg_0_63_7_13 : label is 63;
  attribute ram_offset of RAM_reg_0_63_7_13 : label is 0;
  attribute ram_slice_begin of RAM_reg_0_63_7_13 : label is 7;
  attribute ram_slice_end of RAM_reg_0_63_7_13 : label is 13;
begin
  E(0) <= \^e\(0);
  \FSL_Flag_Handle.fifo_length_i_reg[3]\ <= \^fsl_flag_handle.fifo_length_i_reg[3]\;
RAM_reg_0_63_0_6: unisim.vcomponents.RAM64M8
     port map (
      ADDRA(5 downto 0) => \s_axi_rdata_i_reg[28]\(5 downto 0),
      ADDRB(5 downto 0) => \s_axi_rdata_i_reg[28]\(5 downto 0),
      ADDRC(5 downto 0) => \s_axi_rdata_i_reg[28]\(5 downto 0),
      ADDRD(5 downto 0) => \s_axi_rdata_i_reg[28]\(5 downto 0),
      ADDRE(5 downto 0) => \s_axi_rdata_i_reg[28]\(5 downto 0),
      ADDRF(5 downto 0) => \s_axi_rdata_i_reg[28]\(5 downto 0),
      ADDRG(5 downto 0) => \s_axi_rdata_i_reg[28]\(5 downto 0),
      ADDRH(5 downto 0) => \s_axi_rdata_i_reg[28]_0\(5 downto 0),
      DIA => S0_AXI_WDATA(0),
      DIB => S0_AXI_WDATA(1),
      DIC => S0_AXI_WDATA(2),
      DID => S0_AXI_WDATA(3),
      DIE => S0_AXI_WDATA(4),
      DIF => S0_AXI_WDATA(5),
      DIG => S0_AXI_WDATA(6),
      DIH => '0',
      DOA => dpo(0),
      DOB => dpo(1),
      DOC => dpo(2),
      DOD => dpo(3),
      DOE => dpo(4),
      DOF => dpo(5),
      DOG => dpo(6),
      DOH => NLW_RAM_reg_0_63_0_6_DOH_UNCONNECTED,
      WCLK => S0_AXI_ACLK,
      WE => \^e\(0)
    );
RAM_reg_0_63_0_6_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2222222222202222"
    )
        port map (
      I0 => \FSL_Flag_Handle.write_addr_ptr_reg[0]\,
      I1 => SYS_Rst_I,
      I2 => Q(5),
      I3 => Q(0),
      I4 => Q(6),
      I5 => \^fsl_flag_handle.fifo_length_i_reg[3]\,
      O => \^e\(0)
    );
RAM_reg_0_63_14_20: unisim.vcomponents.RAM64M8
     port map (
      ADDRA(5 downto 0) => \s_axi_rdata_i_reg[28]\(5 downto 0),
      ADDRB(5 downto 0) => \s_axi_rdata_i_reg[28]\(5 downto 0),
      ADDRC(5 downto 0) => \s_axi_rdata_i_reg[28]\(5 downto 0),
      ADDRD(5 downto 0) => \s_axi_rdata_i_reg[28]\(5 downto 0),
      ADDRE(5 downto 0) => \s_axi_rdata_i_reg[28]\(5 downto 0),
      ADDRF(5 downto 0) => \s_axi_rdata_i_reg[28]\(5 downto 0),
      ADDRG(5 downto 0) => \s_axi_rdata_i_reg[28]\(5 downto 0),
      ADDRH(5 downto 0) => \s_axi_rdata_i_reg[28]_0\(5 downto 0),
      DIA => S0_AXI_WDATA(14),
      DIB => S0_AXI_WDATA(15),
      DIC => S0_AXI_WDATA(16),
      DID => S0_AXI_WDATA(17),
      DIE => S0_AXI_WDATA(18),
      DIF => S0_AXI_WDATA(19),
      DIG => S0_AXI_WDATA(20),
      DIH => '0',
      DOA => dpo(14),
      DOB => dpo(15),
      DOC => dpo(16),
      DOD => dpo(17),
      DOE => dpo(18),
      DOF => dpo(19),
      DOG => dpo(20),
      DOH => NLW_RAM_reg_0_63_14_20_DOH_UNCONNECTED,
      WCLK => S0_AXI_ACLK,
      WE => \^e\(0)
    );
RAM_reg_0_63_21_27: unisim.vcomponents.RAM64M8
     port map (
      ADDRA(5 downto 0) => \s_axi_rdata_i_reg[28]\(5 downto 0),
      ADDRB(5 downto 0) => \s_axi_rdata_i_reg[28]\(5 downto 0),
      ADDRC(5 downto 0) => \s_axi_rdata_i_reg[28]\(5 downto 0),
      ADDRD(5 downto 0) => \s_axi_rdata_i_reg[28]\(5 downto 0),
      ADDRE(5 downto 0) => \s_axi_rdata_i_reg[28]\(5 downto 0),
      ADDRF(5 downto 0) => \s_axi_rdata_i_reg[28]\(5 downto 0),
      ADDRG(5 downto 0) => \s_axi_rdata_i_reg[28]\(5 downto 0),
      ADDRH(5 downto 0) => \s_axi_rdata_i_reg[28]_0\(5 downto 0),
      DIA => S0_AXI_WDATA(21),
      DIB => S0_AXI_WDATA(22),
      DIC => S0_AXI_WDATA(23),
      DID => S0_AXI_WDATA(24),
      DIE => S0_AXI_WDATA(25),
      DIF => S0_AXI_WDATA(26),
      DIG => S0_AXI_WDATA(27),
      DIH => '0',
      DOA => dpo(21),
      DOB => dpo(22),
      DOC => dpo(23),
      DOD => dpo(24),
      DOE => dpo(25),
      DOF => dpo(26),
      DOG => dpo(27),
      DOH => NLW_RAM_reg_0_63_21_27_DOH_UNCONNECTED,
      WCLK => S0_AXI_ACLK,
      WE => \^e\(0)
    );
RAM_reg_0_63_28_31: unisim.vcomponents.RAM64M8
     port map (
      ADDRA(5 downto 0) => \s_axi_rdata_i_reg[28]\(5 downto 0),
      ADDRB(5 downto 0) => \s_axi_rdata_i_reg[28]\(5 downto 0),
      ADDRC(5 downto 0) => \s_axi_rdata_i_reg[28]\(5 downto 0),
      ADDRD(5 downto 0) => \s_axi_rdata_i_reg[28]\(5 downto 0),
      ADDRE(5 downto 0) => \s_axi_rdata_i_reg[28]\(5 downto 0),
      ADDRF(5 downto 0) => \s_axi_rdata_i_reg[28]\(5 downto 0),
      ADDRG(5 downto 0) => \s_axi_rdata_i_reg[28]\(5 downto 0),
      ADDRH(5 downto 0) => \s_axi_rdata_i_reg[28]_0\(5 downto 0),
      DIA => S0_AXI_WDATA(28),
      DIB => S0_AXI_WDATA(29),
      DIC => S0_AXI_WDATA(30),
      DID => S0_AXI_WDATA(31),
      DIE => '0',
      DIF => '0',
      DIG => '0',
      DIH => '0',
      DOA => dpo(28),
      DOB => dpo(29),
      DOC => dpo(30),
      DOD => dpo(31),
      DOE => NLW_RAM_reg_0_63_28_31_DOE_UNCONNECTED,
      DOF => NLW_RAM_reg_0_63_28_31_DOF_UNCONNECTED,
      DOG => NLW_RAM_reg_0_63_28_31_DOG_UNCONNECTED,
      DOH => NLW_RAM_reg_0_63_28_31_DOH_UNCONNECTED,
      WCLK => S0_AXI_ACLK,
      WE => \^e\(0)
    );
RAM_reg_0_63_7_13: unisim.vcomponents.RAM64M8
     port map (
      ADDRA(5 downto 0) => \s_axi_rdata_i_reg[28]\(5 downto 0),
      ADDRB(5 downto 0) => \s_axi_rdata_i_reg[28]\(5 downto 0),
      ADDRC(5 downto 0) => \s_axi_rdata_i_reg[28]\(5 downto 0),
      ADDRD(5 downto 0) => \s_axi_rdata_i_reg[28]\(5 downto 0),
      ADDRE(5 downto 0) => \s_axi_rdata_i_reg[28]\(5 downto 0),
      ADDRF(5 downto 0) => \s_axi_rdata_i_reg[28]\(5 downto 0),
      ADDRG(5 downto 0) => \s_axi_rdata_i_reg[28]\(5 downto 0),
      ADDRH(5 downto 0) => \s_axi_rdata_i_reg[28]_0\(5 downto 0),
      DIA => S0_AXI_WDATA(7),
      DIB => S0_AXI_WDATA(8),
      DIC => S0_AXI_WDATA(9),
      DID => S0_AXI_WDATA(10),
      DIE => S0_AXI_WDATA(11),
      DIF => S0_AXI_WDATA(12),
      DIG => S0_AXI_WDATA(13),
      DIH => '0',
      DOA => dpo(7),
      DOB => dpo(8),
      DOC => dpo(9),
      DOD => dpo(10),
      DOE => dpo(11),
      DOF => dpo(12),
      DOG => dpo(13),
      DOH => NLW_RAM_reg_0_63_7_13_DOH_UNCONNECTED,
      WCLK => S0_AXI_ACLK,
      WE => \^e\(0)
    );
write_fsl_error_d1_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => Q(3),
      I1 => Q(4),
      I2 => Q(1),
      I3 => Q(2),
      O => \^fsl_flag_handle.fifo_length_i_reg[3]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f is
  port (
    ce_expnd_i_11 : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f is
begin
CS: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\(3),
      I1 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\(2),
      I2 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\(0),
      I3 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\(1),
      O => ce_expnd_i_11
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f_7 is
  port (
    ce_expnd_i_11 : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f_7 : entity is "pselect_f";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f_7;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f_7 is
begin
CS: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\(3),
      I1 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\(2),
      I2 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\(0),
      I3 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\(1),
      O => ce_expnd_i_11
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized1\ is
  port (
    ce_expnd_i_9 : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized1\ : entity is "pselect_f";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized1\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized1\ is
begin
CS: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]\(3),
      I1 => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]\(2),
      I2 => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]\(0),
      I3 => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]\(1),
      O => ce_expnd_i_9
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized10\ is
  port (
    ce_expnd_i_0 : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg[11]\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized10\ : entity is "pselect_f";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized10\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized10\ is
begin
CS: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg[11]\(2),
      I1 => \GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg[11]\(3),
      I2 => \GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg[11]\(0),
      I3 => \GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg[11]\(1),
      O => ce_expnd_i_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized10_9\ is
  port (
    ce_expnd_i_0 : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg[11]\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized10_9\ : entity is "pselect_f";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized10_9\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized10_9\ is
begin
CS: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg[11]\(2),
      I1 => \GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg[11]\(3),
      I2 => \GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg[11]\(0),
      I3 => \GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg[11]\(1),
      O => ce_expnd_i_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized1_10\ is
  port (
    ce_expnd_i_9 : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized1_10\ : entity is "pselect_f";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized1_10\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized1_10\ is
begin
CS: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]\(3),
      I1 => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]\(2),
      I2 => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]\(0),
      I3 => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]\(1),
      O => ce_expnd_i_9
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized3\ is
  port (
    ce_expnd_i_7 : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4]\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized3\ : entity is "pselect_f";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized3\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized3\ is
begin
CS: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4]\(3),
      I1 => \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4]\(1),
      I2 => \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4]\(0),
      I3 => \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4]\(2),
      O => ce_expnd_i_7
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized3_11\ is
  port (
    ce_expnd_i_7 : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4]\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized3_11\ : entity is "pselect_f";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized3_11\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized3_11\ is
begin
CS: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4]\(3),
      I1 => \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4]\(1),
      I2 => \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4]\(0),
      I3 => \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4]\(2),
      O => ce_expnd_i_7
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized4\ is
  port (
    ce_expnd_i_6 : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized4\ : entity is "pselect_f";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized4\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized4\ is
begin
CS: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]\(3),
      I1 => \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]\(1),
      I2 => \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]\(0),
      I3 => \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]\(2),
      O => ce_expnd_i_6
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized4_12\ is
  port (
    ce_expnd_i_6 : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized4_12\ : entity is "pselect_f";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized4_12\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized4_12\ is
begin
CS: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]\(3),
      I1 => \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]\(1),
      I2 => \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]\(0),
      I3 => \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]\(2),
      O => ce_expnd_i_6
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized5\ is
  port (
    ce_expnd_i_5 : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6]\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized5\ : entity is "pselect_f";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized5\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized5\ is
begin
CS: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6]\(3),
      I1 => \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6]\(0),
      I2 => \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6]\(1),
      I3 => \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6]\(2),
      O => ce_expnd_i_5
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized5_13\ is
  port (
    ce_expnd_i_5 : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6]\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized5_13\ : entity is "pselect_f";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized5_13\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized5_13\ is
begin
CS: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6]\(3),
      I1 => \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6]\(0),
      I2 => \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6]\(1),
      I3 => \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6]\(2),
      O => ce_expnd_i_5
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized6\ is
  port (
    ce_expnd_i_4 : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized6\ : entity is "pselect_f";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized6\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized6\ is
begin
CS: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]\(3),
      I1 => \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]\(2),
      I2 => \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]\(0),
      I3 => \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]\(1),
      O => ce_expnd_i_4
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized6_14\ is
  port (
    ce_expnd_i_4 : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized6_14\ : entity is "pselect_f";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized6_14\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized6_14\ is
begin
CS: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]\(3),
      I1 => \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]\(2),
      I2 => \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]\(0),
      I3 => \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]\(1),
      O => ce_expnd_i_4
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized7\ is
  port (
    ce_expnd_i_3 : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized7\ : entity is "pselect_f";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized7\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized7\ is
begin
CS: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]\(2),
      I1 => \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]\(1),
      I2 => \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]\(0),
      I3 => \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]\(3),
      O => ce_expnd_i_3
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized7_15\ is
  port (
    ce_expnd_i_3 : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized7_15\ : entity is "pselect_f";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized7_15\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized7_15\ is
begin
CS: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]\(2),
      I1 => \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]\(1),
      I2 => \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]\(0),
      I3 => \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]\(3),
      O => ce_expnd_i_3
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized8\ is
  port (
    ce_expnd_i_2 : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized8\ : entity is "pselect_f";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized8\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized8\ is
begin
CS: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]\(2),
      I1 => \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]\(1),
      I2 => \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]\(3),
      I3 => \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]\(0),
      O => ce_expnd_i_2
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized8_16\ is
  port (
    ce_expnd_i_2 : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized8_16\ : entity is "pselect_f";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized8_16\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized8_16\ is
begin
CS: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]\(2),
      I1 => \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]\(1),
      I2 => \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]\(3),
      I3 => \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]\(0),
      O => ce_expnd_i_2
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized9\ is
  port (
    ce_expnd_i_1 : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized9\ : entity is "pselect_f";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized9\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized9\ is
begin
CS: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]\(2),
      I1 => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]\(0),
      I2 => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]\(3),
      I3 => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]\(1),
      O => ce_expnd_i_1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized9_8\ is
  port (
    ce_expnd_i_1 : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized9_8\ : entity is "pselect_f";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized9_8\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized9_8\ is
begin
CS: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]\(2),
      I1 => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]\(0),
      I2 => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]\(3),
      I3 => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]\(1),
      O => ce_expnd_i_1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Sync_FIFO is
  port (
    read_fsl_error : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 6 downto 0 );
    FSL0_S_Exists_I : out STD_LOGIC;
    write_fsl_error : out STD_LOGIC;
    FSL1_M_Full_I : out STD_LOGIC;
    \FSL_Flag_Handle.fifo_length_i_reg[6]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    DI : out STD_LOGIC_VECTOR ( 2 downto 0 );
    S : out STD_LOGIC_VECTOR ( 0 to 0 );
    dpo : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Bus_RNW_reg : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\ : in STD_LOGIC;
    \FSL_Flag_Handle.write_addr_ptr_reg[0]_0\ : in STD_LOGIC;
    SYS_Rst_I : in STD_LOGIC;
    rit_detect_d1_reg : in STD_LOGIC_VECTOR ( 5 downto 0 );
    Bus_RNW_reg_0 : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\ : in STD_LOGIC;
    S0_AXI_ACLK : in STD_LOGIC;
    S1_AXI_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Sync_FIFO;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Sync_FIFO is
  signal \^fsl0_s_exists_i\ : STD_LOGIC;
  signal FSL0_S_Read_I : STD_LOGIC;
  signal FSL1_M_Write_I : STD_LOGIC;
  signal \FSL_Flag_Handle.fifo_length_i[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \FSL_Flag_Handle.fifo_length_i[6]_i_10_n_0\ : STD_LOGIC;
  signal \FSL_Flag_Handle.fifo_length_i[6]_i_1_n_0\ : STD_LOGIC;
  signal \FSL_Flag_Handle.fifo_length_i[6]_i_3_n_0\ : STD_LOGIC;
  signal \FSL_Flag_Handle.fifo_length_i[6]_i_4_n_0\ : STD_LOGIC;
  signal \FSL_Flag_Handle.fifo_length_i[6]_i_5__0_n_0\ : STD_LOGIC;
  signal \FSL_Flag_Handle.fifo_length_i[6]_i_6__0_n_0\ : STD_LOGIC;
  signal \FSL_Flag_Handle.fifo_length_i[6]_i_7__0_n_0\ : STD_LOGIC;
  signal \FSL_Flag_Handle.fifo_length_i[6]_i_8__0_n_0\ : STD_LOGIC;
  signal \FSL_Flag_Handle.fifo_length_i[6]_i_9__0_n_0\ : STD_LOGIC;
  signal \FSL_Flag_Handle.fifo_length_i_reg[6]_i_2_n_10\ : STD_LOGIC;
  signal \FSL_Flag_Handle.fifo_length_i_reg[6]_i_2_n_11\ : STD_LOGIC;
  signal \FSL_Flag_Handle.fifo_length_i_reg[6]_i_2_n_12\ : STD_LOGIC;
  signal \FSL_Flag_Handle.fifo_length_i_reg[6]_i_2_n_13\ : STD_LOGIC;
  signal \FSL_Flag_Handle.fifo_length_i_reg[6]_i_2_n_14\ : STD_LOGIC;
  signal \FSL_Flag_Handle.fifo_length_i_reg[6]_i_2_n_15\ : STD_LOGIC;
  signal \FSL_Flag_Handle.fifo_length_i_reg[6]_i_2_n_3\ : STD_LOGIC;
  signal \FSL_Flag_Handle.fifo_length_i_reg[6]_i_2_n_4\ : STD_LOGIC;
  signal \FSL_Flag_Handle.fifo_length_i_reg[6]_i_2_n_5\ : STD_LOGIC;
  signal \FSL_Flag_Handle.fifo_length_i_reg[6]_i_2_n_6\ : STD_LOGIC;
  signal \FSL_Flag_Handle.fifo_length_i_reg[6]_i_2_n_7\ : STD_LOGIC;
  signal \FSL_Flag_Handle.read_addr_ptr_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSL_Flag_Handle.read_addr_ptr_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSL_Flag_Handle.read_addr_ptr_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSL_Flag_Handle.read_addr_ptr_reg_n_0_[3]\ : STD_LOGIC;
  signal \FSL_Flag_Handle.read_addr_ptr_reg_n_0_[4]\ : STD_LOGIC;
  signal \FSL_Flag_Handle.read_addr_ptr_reg_n_0_[5]\ : STD_LOGIC;
  signal \FSL_Flag_Handle.write_addr_ptr_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSL_Flag_Handle.write_addr_ptr_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSL_Flag_Handle.write_addr_ptr_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSL_Flag_Handle.write_addr_ptr_reg_n_0_[3]\ : STD_LOGIC;
  signal \FSL_Flag_Handle.write_addr_ptr_reg_n_0_[4]\ : STD_LOGIC;
  signal \FSL_Flag_Handle.write_addr_ptr_reg_n_0_[5]\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \Sync_FIFO_I.dpram_fifo_i.DPRAM_FIFO_n_1\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \read_fsl_error_d1_i_2__0_n_0\ : STD_LOGIC;
  signal \NLW_FSL_Flag_Handle.fifo_length_i_reg[6]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 5 );
  signal \NLW_FSL_Flag_Handle.fifo_length_i_reg[6]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 6 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSL_Flag_Handle.fifo_length_i[0]_i_1__0\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \FSL_Flag_Handle.fifo_length_i[6]_i_3\ : label is "soft_lutpair42";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \FSL_Flag_Handle.fifo_length_i_reg[6]_i_2\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \FSL_Flag_Handle.fifo_length_i_reg[6]_i_2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute SOFT_HLUTNM of \FSL_Flag_Handle.read_addr_ptr[1]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \FSL_Flag_Handle.read_addr_ptr[2]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \FSL_Flag_Handle.read_addr_ptr[3]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \FSL_Flag_Handle.read_addr_ptr[4]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \FSL_Flag_Handle.write_addr_ptr[1]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \FSL_Flag_Handle.write_addr_ptr[2]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \FSL_Flag_Handle.write_addr_ptr[3]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \FSL_Flag_Handle.write_addr_ptr[4]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \read_fsl_error_d1_i_2__0\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[1]_i_6__0\ : label is "soft_lutpair42";
begin
  FSL0_S_Exists_I <= \^fsl0_s_exists_i\;
  Q(6 downto 0) <= \^q\(6 downto 0);
\FSL_Flag_Handle.fifo_length_i[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \FSL_Flag_Handle.fifo_length_i[0]_i_1__0_n_0\
    );
\FSL_Flag_Handle.fifo_length_i[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"34444444"
    )
        port map (
      I0 => \FSL_Flag_Handle.fifo_length_i[6]_i_3_n_0\,
      I1 => FSL1_M_Write_I,
      I2 => \^fsl0_s_exists_i\,
      I3 => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\,
      I4 => Bus_RNW_reg,
      O => \FSL_Flag_Handle.fifo_length_i[6]_i_1_n_0\
    );
\FSL_Flag_Handle.fifo_length_i[6]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555555565555"
    )
        port map (
      I0 => \^q\(1),
      I1 => \FSL_Flag_Handle.fifo_length_i[6]_i_3_n_0\,
      I2 => FSL0_S_Read_I,
      I3 => Bus_RNW_reg_0,
      I4 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\,
      I5 => SYS_Rst_I,
      O => \FSL_Flag_Handle.fifo_length_i[6]_i_10_n_0\
    );
\FSL_Flag_Handle.fifo_length_i[6]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(0),
      I2 => \^q\(6),
      I3 => \Sync_FIFO_I.dpram_fifo_i.DPRAM_FIFO_n_1\,
      O => \FSL_Flag_Handle.fifo_length_i[6]_i_3_n_0\
    );
\FSL_Flag_Handle.fifo_length_i[6]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(1),
      O => \FSL_Flag_Handle.fifo_length_i[6]_i_4_n_0\
    );
\FSL_Flag_Handle.fifo_length_i[6]_i_5__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(6),
      O => \FSL_Flag_Handle.fifo_length_i[6]_i_5__0_n_0\
    );
\FSL_Flag_Handle.fifo_length_i[6]_i_6__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(5),
      O => \FSL_Flag_Handle.fifo_length_i[6]_i_6__0_n_0\
    );
\FSL_Flag_Handle.fifo_length_i[6]_i_7__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(4),
      O => \FSL_Flag_Handle.fifo_length_i[6]_i_7__0_n_0\
    );
\FSL_Flag_Handle.fifo_length_i[6]_i_8__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(3),
      O => \FSL_Flag_Handle.fifo_length_i[6]_i_8__0_n_0\
    );
\FSL_Flag_Handle.fifo_length_i[6]_i_9__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(2),
      O => \FSL_Flag_Handle.fifo_length_i[6]_i_9__0_n_0\
    );
\FSL_Flag_Handle.fifo_length_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S0_AXI_ACLK,
      CE => \FSL_Flag_Handle.fifo_length_i[6]_i_1_n_0\,
      D => \FSL_Flag_Handle.fifo_length_i[0]_i_1__0_n_0\,
      Q => \^q\(0),
      R => SR(0)
    );
\FSL_Flag_Handle.fifo_length_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S0_AXI_ACLK,
      CE => \FSL_Flag_Handle.fifo_length_i[6]_i_1_n_0\,
      D => \FSL_Flag_Handle.fifo_length_i_reg[6]_i_2_n_15\,
      Q => \^q\(1),
      R => SR(0)
    );
\FSL_Flag_Handle.fifo_length_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S0_AXI_ACLK,
      CE => \FSL_Flag_Handle.fifo_length_i[6]_i_1_n_0\,
      D => \FSL_Flag_Handle.fifo_length_i_reg[6]_i_2_n_14\,
      Q => \^q\(2),
      R => SR(0)
    );
\FSL_Flag_Handle.fifo_length_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S0_AXI_ACLK,
      CE => \FSL_Flag_Handle.fifo_length_i[6]_i_1_n_0\,
      D => \FSL_Flag_Handle.fifo_length_i_reg[6]_i_2_n_13\,
      Q => \^q\(3),
      R => SR(0)
    );
\FSL_Flag_Handle.fifo_length_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S0_AXI_ACLK,
      CE => \FSL_Flag_Handle.fifo_length_i[6]_i_1_n_0\,
      D => \FSL_Flag_Handle.fifo_length_i_reg[6]_i_2_n_12\,
      Q => \^q\(4),
      R => SR(0)
    );
\FSL_Flag_Handle.fifo_length_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S0_AXI_ACLK,
      CE => \FSL_Flag_Handle.fifo_length_i[6]_i_1_n_0\,
      D => \FSL_Flag_Handle.fifo_length_i_reg[6]_i_2_n_11\,
      Q => \^q\(5),
      R => SR(0)
    );
\FSL_Flag_Handle.fifo_length_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => S0_AXI_ACLK,
      CE => \FSL_Flag_Handle.fifo_length_i[6]_i_1_n_0\,
      D => \FSL_Flag_Handle.fifo_length_i_reg[6]_i_2_n_10\,
      Q => \^q\(6),
      R => SR(0)
    );
\FSL_Flag_Handle.fifo_length_i_reg[6]_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => \^q\(0),
      CI_TOP => '0',
      CO(7 downto 5) => \NLW_FSL_Flag_Handle.fifo_length_i_reg[6]_i_2_CO_UNCONNECTED\(7 downto 5),
      CO(4) => \FSL_Flag_Handle.fifo_length_i_reg[6]_i_2_n_3\,
      CO(3) => \FSL_Flag_Handle.fifo_length_i_reg[6]_i_2_n_4\,
      CO(2) => \FSL_Flag_Handle.fifo_length_i_reg[6]_i_2_n_5\,
      CO(1) => \FSL_Flag_Handle.fifo_length_i_reg[6]_i_2_n_6\,
      CO(0) => \FSL_Flag_Handle.fifo_length_i_reg[6]_i_2_n_7\,
      DI(7 downto 5) => B"000",
      DI(4 downto 1) => \^q\(4 downto 1),
      DI(0) => \FSL_Flag_Handle.fifo_length_i[6]_i_4_n_0\,
      O(7 downto 6) => \NLW_FSL_Flag_Handle.fifo_length_i_reg[6]_i_2_O_UNCONNECTED\(7 downto 6),
      O(5) => \FSL_Flag_Handle.fifo_length_i_reg[6]_i_2_n_10\,
      O(4) => \FSL_Flag_Handle.fifo_length_i_reg[6]_i_2_n_11\,
      O(3) => \FSL_Flag_Handle.fifo_length_i_reg[6]_i_2_n_12\,
      O(2) => \FSL_Flag_Handle.fifo_length_i_reg[6]_i_2_n_13\,
      O(1) => \FSL_Flag_Handle.fifo_length_i_reg[6]_i_2_n_14\,
      O(0) => \FSL_Flag_Handle.fifo_length_i_reg[6]_i_2_n_15\,
      S(7 downto 6) => B"00",
      S(5) => \FSL_Flag_Handle.fifo_length_i[6]_i_5__0_n_0\,
      S(4) => \FSL_Flag_Handle.fifo_length_i[6]_i_6__0_n_0\,
      S(3) => \FSL_Flag_Handle.fifo_length_i[6]_i_7__0_n_0\,
      S(2) => \FSL_Flag_Handle.fifo_length_i[6]_i_8__0_n_0\,
      S(1) => \FSL_Flag_Handle.fifo_length_i[6]_i_9__0_n_0\,
      S(0) => \FSL_Flag_Handle.fifo_length_i[6]_i_10_n_0\
    );
\FSL_Flag_Handle.read_addr_ptr[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \FSL_Flag_Handle.read_addr_ptr_reg_n_0_[0]\,
      O => p_0_in(0)
    );
\FSL_Flag_Handle.read_addr_ptr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \FSL_Flag_Handle.read_addr_ptr_reg_n_0_[0]\,
      I1 => \FSL_Flag_Handle.read_addr_ptr_reg_n_0_[1]\,
      O => p_0_in(1)
    );
\FSL_Flag_Handle.read_addr_ptr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \FSL_Flag_Handle.read_addr_ptr_reg_n_0_[0]\,
      I1 => \FSL_Flag_Handle.read_addr_ptr_reg_n_0_[1]\,
      I2 => \FSL_Flag_Handle.read_addr_ptr_reg_n_0_[2]\,
      O => p_0_in(2)
    );
\FSL_Flag_Handle.read_addr_ptr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \FSL_Flag_Handle.read_addr_ptr_reg_n_0_[1]\,
      I1 => \FSL_Flag_Handle.read_addr_ptr_reg_n_0_[0]\,
      I2 => \FSL_Flag_Handle.read_addr_ptr_reg_n_0_[2]\,
      I3 => \FSL_Flag_Handle.read_addr_ptr_reg_n_0_[3]\,
      O => p_0_in(3)
    );
\FSL_Flag_Handle.read_addr_ptr[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \FSL_Flag_Handle.read_addr_ptr_reg_n_0_[2]\,
      I1 => \FSL_Flag_Handle.read_addr_ptr_reg_n_0_[0]\,
      I2 => \FSL_Flag_Handle.read_addr_ptr_reg_n_0_[1]\,
      I3 => \FSL_Flag_Handle.read_addr_ptr_reg_n_0_[3]\,
      I4 => \FSL_Flag_Handle.read_addr_ptr_reg_n_0_[4]\,
      O => p_0_in(4)
    );
\FSL_Flag_Handle.read_addr_ptr[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888088888888"
    )
        port map (
      I0 => Bus_RNW_reg,
      I1 => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\,
      I2 => \^q\(6),
      I3 => \^q\(4),
      I4 => \^q\(5),
      I5 => \read_fsl_error_d1_i_2__0_n_0\,
      O => FSL0_S_Read_I
    );
\FSL_Flag_Handle.read_addr_ptr[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \FSL_Flag_Handle.read_addr_ptr_reg_n_0_[3]\,
      I1 => \FSL_Flag_Handle.read_addr_ptr_reg_n_0_[1]\,
      I2 => \FSL_Flag_Handle.read_addr_ptr_reg_n_0_[0]\,
      I3 => \FSL_Flag_Handle.read_addr_ptr_reg_n_0_[2]\,
      I4 => \FSL_Flag_Handle.read_addr_ptr_reg_n_0_[4]\,
      I5 => \FSL_Flag_Handle.read_addr_ptr_reg_n_0_[5]\,
      O => p_0_in(5)
    );
\FSL_Flag_Handle.read_addr_ptr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S0_AXI_ACLK,
      CE => FSL0_S_Read_I,
      D => p_0_in(0),
      Q => \FSL_Flag_Handle.read_addr_ptr_reg_n_0_[0]\,
      R => SR(0)
    );
\FSL_Flag_Handle.read_addr_ptr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S0_AXI_ACLK,
      CE => FSL0_S_Read_I,
      D => p_0_in(1),
      Q => \FSL_Flag_Handle.read_addr_ptr_reg_n_0_[1]\,
      R => SR(0)
    );
\FSL_Flag_Handle.read_addr_ptr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S0_AXI_ACLK,
      CE => FSL0_S_Read_I,
      D => p_0_in(2),
      Q => \FSL_Flag_Handle.read_addr_ptr_reg_n_0_[2]\,
      R => SR(0)
    );
\FSL_Flag_Handle.read_addr_ptr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S0_AXI_ACLK,
      CE => FSL0_S_Read_I,
      D => p_0_in(3),
      Q => \FSL_Flag_Handle.read_addr_ptr_reg_n_0_[3]\,
      R => SR(0)
    );
\FSL_Flag_Handle.read_addr_ptr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S0_AXI_ACLK,
      CE => FSL0_S_Read_I,
      D => p_0_in(4),
      Q => \FSL_Flag_Handle.read_addr_ptr_reg_n_0_[4]\,
      R => SR(0)
    );
\FSL_Flag_Handle.read_addr_ptr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S0_AXI_ACLK,
      CE => FSL0_S_Read_I,
      D => p_0_in(5),
      Q => \FSL_Flag_Handle.read_addr_ptr_reg_n_0_[5]\,
      R => SR(0)
    );
\FSL_Flag_Handle.write_addr_ptr[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \FSL_Flag_Handle.write_addr_ptr_reg_n_0_[0]\,
      O => \p_0_in__0\(0)
    );
\FSL_Flag_Handle.write_addr_ptr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \FSL_Flag_Handle.write_addr_ptr_reg_n_0_[0]\,
      I1 => \FSL_Flag_Handle.write_addr_ptr_reg_n_0_[1]\,
      O => \p_0_in__0\(1)
    );
\FSL_Flag_Handle.write_addr_ptr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \FSL_Flag_Handle.write_addr_ptr_reg_n_0_[0]\,
      I1 => \FSL_Flag_Handle.write_addr_ptr_reg_n_0_[1]\,
      I2 => \FSL_Flag_Handle.write_addr_ptr_reg_n_0_[2]\,
      O => \p_0_in__0\(2)
    );
\FSL_Flag_Handle.write_addr_ptr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \FSL_Flag_Handle.write_addr_ptr_reg_n_0_[1]\,
      I1 => \FSL_Flag_Handle.write_addr_ptr_reg_n_0_[0]\,
      I2 => \FSL_Flag_Handle.write_addr_ptr_reg_n_0_[2]\,
      I3 => \FSL_Flag_Handle.write_addr_ptr_reg_n_0_[3]\,
      O => \p_0_in__0\(3)
    );
\FSL_Flag_Handle.write_addr_ptr[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \FSL_Flag_Handle.write_addr_ptr_reg_n_0_[2]\,
      I1 => \FSL_Flag_Handle.write_addr_ptr_reg_n_0_[0]\,
      I2 => \FSL_Flag_Handle.write_addr_ptr_reg_n_0_[1]\,
      I3 => \FSL_Flag_Handle.write_addr_ptr_reg_n_0_[3]\,
      I4 => \FSL_Flag_Handle.write_addr_ptr_reg_n_0_[4]\,
      O => \p_0_in__0\(4)
    );
\FSL_Flag_Handle.write_addr_ptr[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \FSL_Flag_Handle.write_addr_ptr_reg_n_0_[3]\,
      I1 => \FSL_Flag_Handle.write_addr_ptr_reg_n_0_[1]\,
      I2 => \FSL_Flag_Handle.write_addr_ptr_reg_n_0_[0]\,
      I3 => \FSL_Flag_Handle.write_addr_ptr_reg_n_0_[2]\,
      I4 => \FSL_Flag_Handle.write_addr_ptr_reg_n_0_[4]\,
      I5 => \FSL_Flag_Handle.write_addr_ptr_reg_n_0_[5]\,
      O => \p_0_in__0\(5)
    );
\FSL_Flag_Handle.write_addr_ptr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S0_AXI_ACLK,
      CE => FSL1_M_Write_I,
      D => \p_0_in__0\(0),
      Q => \FSL_Flag_Handle.write_addr_ptr_reg_n_0_[0]\,
      R => SR(0)
    );
\FSL_Flag_Handle.write_addr_ptr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S0_AXI_ACLK,
      CE => FSL1_M_Write_I,
      D => \p_0_in__0\(1),
      Q => \FSL_Flag_Handle.write_addr_ptr_reg_n_0_[1]\,
      R => SR(0)
    );
\FSL_Flag_Handle.write_addr_ptr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S0_AXI_ACLK,
      CE => FSL1_M_Write_I,
      D => \p_0_in__0\(2),
      Q => \FSL_Flag_Handle.write_addr_ptr_reg_n_0_[2]\,
      R => SR(0)
    );
\FSL_Flag_Handle.write_addr_ptr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S0_AXI_ACLK,
      CE => FSL1_M_Write_I,
      D => \p_0_in__0\(3),
      Q => \FSL_Flag_Handle.write_addr_ptr_reg_n_0_[3]\,
      R => SR(0)
    );
\FSL_Flag_Handle.write_addr_ptr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S0_AXI_ACLK,
      CE => FSL1_M_Write_I,
      D => \p_0_in__0\(4),
      Q => \FSL_Flag_Handle.write_addr_ptr_reg_n_0_[4]\,
      R => SR(0)
    );
\FSL_Flag_Handle.write_addr_ptr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S0_AXI_ACLK,
      CE => FSL1_M_Write_I,
      D => \p_0_in__0\(5),
      Q => \FSL_Flag_Handle.write_addr_ptr_reg_n_0_[5]\,
      R => SR(0)
    );
\Sync_FIFO_I.dpram_fifo_i.DPRAM_FIFO\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Sync_DPRAM
     port map (
      E(0) => FSL1_M_Write_I,
      \FSL_Flag_Handle.fifo_length_i_reg[3]\ => \Sync_FIFO_I.dpram_fifo_i.DPRAM_FIFO_n_1\,
      \FSL_Flag_Handle.write_addr_ptr_reg[0]\ => \FSL_Flag_Handle.write_addr_ptr_reg[0]_0\,
      Q(6 downto 0) => \^q\(6 downto 0),
      S0_AXI_ACLK => S0_AXI_ACLK,
      S1_AXI_WDATA(31 downto 0) => S1_AXI_WDATA(31 downto 0),
      SYS_Rst_I => SYS_Rst_I,
      dpo(31 downto 0) => dpo(31 downto 0),
      \s_axi_rdata_i_reg[28]\(5) => \FSL_Flag_Handle.read_addr_ptr_reg_n_0_[5]\,
      \s_axi_rdata_i_reg[28]\(4) => \FSL_Flag_Handle.read_addr_ptr_reg_n_0_[4]\,
      \s_axi_rdata_i_reg[28]\(3) => \FSL_Flag_Handle.read_addr_ptr_reg_n_0_[3]\,
      \s_axi_rdata_i_reg[28]\(2) => \FSL_Flag_Handle.read_addr_ptr_reg_n_0_[2]\,
      \s_axi_rdata_i_reg[28]\(1) => \FSL_Flag_Handle.read_addr_ptr_reg_n_0_[1]\,
      \s_axi_rdata_i_reg[28]\(0) => \FSL_Flag_Handle.read_addr_ptr_reg_n_0_[0]\,
      \s_axi_rdata_i_reg[28]_0\(5) => \FSL_Flag_Handle.write_addr_ptr_reg_n_0_[5]\,
      \s_axi_rdata_i_reg[28]_0\(4) => \FSL_Flag_Handle.write_addr_ptr_reg_n_0_[4]\,
      \s_axi_rdata_i_reg[28]_0\(3) => \FSL_Flag_Handle.write_addr_ptr_reg_n_0_[3]\,
      \s_axi_rdata_i_reg[28]_0\(2) => \FSL_Flag_Handle.write_addr_ptr_reg_n_0_[2]\,
      \s_axi_rdata_i_reg[28]_0\(1) => \FSL_Flag_Handle.write_addr_ptr_reg_n_0_[1]\,
      \s_axi_rdata_i_reg[28]_0\(0) => \FSL_Flag_Handle.write_addr_ptr_reg_n_0_[0]\
    );
read_fsl_error_d1_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => Bus_RNW_reg,
      I1 => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\,
      I2 => \^q\(6),
      I3 => \^q\(4),
      I4 => \^q\(5),
      I5 => \read_fsl_error_d1_i_2__0_n_0\,
      O => read_fsl_error
    );
\read_fsl_error_d1_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(2),
      I2 => \^q\(1),
      I3 => \^q\(0),
      O => \read_fsl_error_d1_i_2__0_n_0\
    );
rit_detect_d10_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^q\(4),
      I1 => rit_detect_d1_reg(4),
      I2 => rit_detect_d1_reg(5),
      I3 => \^q\(5),
      O => DI(2)
    );
rit_detect_d10_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^q\(2),
      I1 => rit_detect_d1_reg(2),
      I2 => rit_detect_d1_reg(3),
      I3 => \^q\(3),
      O => DI(1)
    );
rit_detect_d10_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^q\(0),
      I1 => rit_detect_d1_reg(0),
      I2 => rit_detect_d1_reg(1),
      I3 => \^q\(1),
      O => DI(0)
    );
\rit_detect_d10_carry_i_4__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(6),
      O => \FSL_Flag_Handle.fifo_length_i_reg[6]_0\(3)
    );
rit_detect_d10_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q\(4),
      I1 => rit_detect_d1_reg(4),
      I2 => \^q\(5),
      I3 => rit_detect_d1_reg(5),
      O => \FSL_Flag_Handle.fifo_length_i_reg[6]_0\(2)
    );
rit_detect_d10_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q\(2),
      I1 => rit_detect_d1_reg(2),
      I2 => \^q\(3),
      I3 => rit_detect_d1_reg(3),
      O => \FSL_Flag_Handle.fifo_length_i_reg[6]_0\(1)
    );
rit_detect_d10_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q\(0),
      I1 => rit_detect_d1_reg(0),
      I2 => \^q\(1),
      I3 => rit_detect_d1_reg(1),
      O => \FSL_Flag_Handle.fifo_length_i_reg[6]_0\(0)
    );
\s_axi_rdata_i[0]_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => \read_fsl_error_d1_i_2__0_n_0\,
      I1 => \^q\(5),
      I2 => \^q\(4),
      I3 => \^q\(6),
      O => \^fsl0_s_exists_i\
    );
\s_axi_rdata_i[1]_i_6__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0004"
    )
        port map (
      I0 => \Sync_FIFO_I.dpram_fifo_i.DPRAM_FIFO_n_1\,
      I1 => \^q\(6),
      I2 => \^q\(0),
      I3 => \^q\(5),
      I4 => SYS_Rst_I,
      O => FSL1_M_Full_I
    );
sit_detect_d10_carry_i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(6),
      O => S(0)
    );
\write_fsl_error_d1_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888888A8888"
    )
        port map (
      I0 => \FSL_Flag_Handle.write_addr_ptr_reg[0]_0\,
      I1 => SYS_Rst_I,
      I2 => \^q\(5),
      I3 => \^q\(0),
      I4 => \^q\(6),
      I5 => \Sync_FIFO_I.dpram_fifo_i.DPRAM_FIFO_n_1\,
      O => write_fsl_error
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Sync_FIFO_2 is
  port (
    write_fsl_error : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 6 downto 0 );
    FSL1_S_Exists_I : out STD_LOGIC;
    read_fsl_error : out STD_LOGIC;
    FSL0_M_Full_I : out STD_LOGIC;
    \FSL_Flag_Handle.fifo_length_i_reg[6]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    DI : out STD_LOGIC_VECTOR ( 2 downto 0 );
    S : out STD_LOGIC_VECTOR ( 0 to 0 );
    dpo : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \FSL_Flag_Handle.write_addr_ptr_reg[0]_0\ : in STD_LOGIC;
    SYS_Rst_I : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\ : in STD_LOGIC;
    Bus_RNW_reg : in STD_LOGIC;
    rit_detect_d1_reg : in STD_LOGIC_VECTOR ( 5 downto 0 );
    Bus_RNW_reg_0 : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\ : in STD_LOGIC;
    S0_AXI_ACLK : in STD_LOGIC;
    S0_AXI_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Sync_FIFO_2 : entity is "Sync_FIFO";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Sync_FIFO_2;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Sync_FIFO_2 is
  signal FSL0_M_Write_I : STD_LOGIC;
  signal \^fsl1_s_exists_i\ : STD_LOGIC;
  signal FSL1_S_Read_I : STD_LOGIC;
  signal \FSL_Flag_Handle.fifo_length_i[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSL_Flag_Handle.fifo_length_i[6]_i_10__0_n_0\ : STD_LOGIC;
  signal \FSL_Flag_Handle.fifo_length_i[6]_i_11_n_0\ : STD_LOGIC;
  signal \FSL_Flag_Handle.fifo_length_i[6]_i_2_n_0\ : STD_LOGIC;
  signal \FSL_Flag_Handle.fifo_length_i[6]_i_4__0_n_0\ : STD_LOGIC;
  signal \FSL_Flag_Handle.fifo_length_i[6]_i_5_n_0\ : STD_LOGIC;
  signal \FSL_Flag_Handle.fifo_length_i[6]_i_6_n_0\ : STD_LOGIC;
  signal \FSL_Flag_Handle.fifo_length_i[6]_i_7_n_0\ : STD_LOGIC;
  signal \FSL_Flag_Handle.fifo_length_i[6]_i_8_n_0\ : STD_LOGIC;
  signal \FSL_Flag_Handle.fifo_length_i[6]_i_9_n_0\ : STD_LOGIC;
  signal \FSL_Flag_Handle.fifo_length_i_reg[6]_i_3_n_10\ : STD_LOGIC;
  signal \FSL_Flag_Handle.fifo_length_i_reg[6]_i_3_n_11\ : STD_LOGIC;
  signal \FSL_Flag_Handle.fifo_length_i_reg[6]_i_3_n_12\ : STD_LOGIC;
  signal \FSL_Flag_Handle.fifo_length_i_reg[6]_i_3_n_13\ : STD_LOGIC;
  signal \FSL_Flag_Handle.fifo_length_i_reg[6]_i_3_n_14\ : STD_LOGIC;
  signal \FSL_Flag_Handle.fifo_length_i_reg[6]_i_3_n_15\ : STD_LOGIC;
  signal \FSL_Flag_Handle.fifo_length_i_reg[6]_i_3_n_3\ : STD_LOGIC;
  signal \FSL_Flag_Handle.fifo_length_i_reg[6]_i_3_n_4\ : STD_LOGIC;
  signal \FSL_Flag_Handle.fifo_length_i_reg[6]_i_3_n_5\ : STD_LOGIC;
  signal \FSL_Flag_Handle.fifo_length_i_reg[6]_i_3_n_6\ : STD_LOGIC;
  signal \FSL_Flag_Handle.fifo_length_i_reg[6]_i_3_n_7\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \Sync_FIFO_I.dpram_fifo_i.DPRAM_FIFO_n_1\ : STD_LOGIC;
  signal a : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal dpra : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal read_fsl_error_d1_i_2_n_0 : STD_LOGIC;
  signal \NLW_FSL_Flag_Handle.fifo_length_i_reg[6]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 5 );
  signal \NLW_FSL_Flag_Handle.fifo_length_i_reg[6]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 6 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSL_Flag_Handle.fifo_length_i[0]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \FSL_Flag_Handle.fifo_length_i[6]_i_4__0\ : label is "soft_lutpair36";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \FSL_Flag_Handle.fifo_length_i_reg[6]_i_3\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \FSL_Flag_Handle.fifo_length_i_reg[6]_i_3\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute SOFT_HLUTNM of \FSL_Flag_Handle.read_addr_ptr[1]_i_1__0\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \FSL_Flag_Handle.read_addr_ptr[2]_i_1__0\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \FSL_Flag_Handle.read_addr_ptr[3]_i_1__0\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \FSL_Flag_Handle.read_addr_ptr[4]_i_1__0\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \FSL_Flag_Handle.write_addr_ptr[1]_i_1__0\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \FSL_Flag_Handle.write_addr_ptr[2]_i_1__0\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \FSL_Flag_Handle.write_addr_ptr[3]_i_1__0\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \FSL_Flag_Handle.write_addr_ptr[4]_i_1__0\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of read_fsl_error_d1_i_2 : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[1]_i_6\ : label is "soft_lutpair36";
begin
  FSL1_S_Exists_I <= \^fsl1_s_exists_i\;
  Q(6 downto 0) <= \^q\(6 downto 0);
\FSL_Flag_Handle.fifo_length_i[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \FSL_Flag_Handle.fifo_length_i[0]_i_1_n_0\
    );
\FSL_Flag_Handle.fifo_length_i[6]_i_10__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(2),
      O => \FSL_Flag_Handle.fifo_length_i[6]_i_10__0_n_0\
    );
\FSL_Flag_Handle.fifo_length_i[6]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555555565555"
    )
        port map (
      I0 => \^q\(1),
      I1 => \FSL_Flag_Handle.fifo_length_i[6]_i_4__0_n_0\,
      I2 => FSL1_S_Read_I,
      I3 => Bus_RNW_reg_0,
      I4 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\,
      I5 => SYS_Rst_I,
      O => \FSL_Flag_Handle.fifo_length_i[6]_i_11_n_0\
    );
\FSL_Flag_Handle.fifo_length_i[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"34444444"
    )
        port map (
      I0 => \FSL_Flag_Handle.fifo_length_i[6]_i_4__0_n_0\,
      I1 => FSL0_M_Write_I,
      I2 => \^fsl1_s_exists_i\,
      I3 => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\,
      I4 => Bus_RNW_reg,
      O => \FSL_Flag_Handle.fifo_length_i[6]_i_2_n_0\
    );
\FSL_Flag_Handle.fifo_length_i[6]_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(0),
      I2 => \^q\(6),
      I3 => \Sync_FIFO_I.dpram_fifo_i.DPRAM_FIFO_n_1\,
      O => \FSL_Flag_Handle.fifo_length_i[6]_i_4__0_n_0\
    );
\FSL_Flag_Handle.fifo_length_i[6]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(1),
      O => \FSL_Flag_Handle.fifo_length_i[6]_i_5_n_0\
    );
\FSL_Flag_Handle.fifo_length_i[6]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(6),
      O => \FSL_Flag_Handle.fifo_length_i[6]_i_6_n_0\
    );
\FSL_Flag_Handle.fifo_length_i[6]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(5),
      O => \FSL_Flag_Handle.fifo_length_i[6]_i_7_n_0\
    );
\FSL_Flag_Handle.fifo_length_i[6]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(4),
      O => \FSL_Flag_Handle.fifo_length_i[6]_i_8_n_0\
    );
\FSL_Flag_Handle.fifo_length_i[6]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(3),
      O => \FSL_Flag_Handle.fifo_length_i[6]_i_9_n_0\
    );
\FSL_Flag_Handle.fifo_length_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S0_AXI_ACLK,
      CE => \FSL_Flag_Handle.fifo_length_i[6]_i_2_n_0\,
      D => \FSL_Flag_Handle.fifo_length_i[0]_i_1_n_0\,
      Q => \^q\(0),
      R => SR(0)
    );
\FSL_Flag_Handle.fifo_length_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S0_AXI_ACLK,
      CE => \FSL_Flag_Handle.fifo_length_i[6]_i_2_n_0\,
      D => \FSL_Flag_Handle.fifo_length_i_reg[6]_i_3_n_15\,
      Q => \^q\(1),
      R => SR(0)
    );
\FSL_Flag_Handle.fifo_length_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S0_AXI_ACLK,
      CE => \FSL_Flag_Handle.fifo_length_i[6]_i_2_n_0\,
      D => \FSL_Flag_Handle.fifo_length_i_reg[6]_i_3_n_14\,
      Q => \^q\(2),
      R => SR(0)
    );
\FSL_Flag_Handle.fifo_length_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S0_AXI_ACLK,
      CE => \FSL_Flag_Handle.fifo_length_i[6]_i_2_n_0\,
      D => \FSL_Flag_Handle.fifo_length_i_reg[6]_i_3_n_13\,
      Q => \^q\(3),
      R => SR(0)
    );
\FSL_Flag_Handle.fifo_length_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S0_AXI_ACLK,
      CE => \FSL_Flag_Handle.fifo_length_i[6]_i_2_n_0\,
      D => \FSL_Flag_Handle.fifo_length_i_reg[6]_i_3_n_12\,
      Q => \^q\(4),
      R => SR(0)
    );
\FSL_Flag_Handle.fifo_length_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S0_AXI_ACLK,
      CE => \FSL_Flag_Handle.fifo_length_i[6]_i_2_n_0\,
      D => \FSL_Flag_Handle.fifo_length_i_reg[6]_i_3_n_11\,
      Q => \^q\(5),
      R => SR(0)
    );
\FSL_Flag_Handle.fifo_length_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => S0_AXI_ACLK,
      CE => \FSL_Flag_Handle.fifo_length_i[6]_i_2_n_0\,
      D => \FSL_Flag_Handle.fifo_length_i_reg[6]_i_3_n_10\,
      Q => \^q\(6),
      R => SR(0)
    );
\FSL_Flag_Handle.fifo_length_i_reg[6]_i_3\: unisim.vcomponents.CARRY8
     port map (
      CI => \^q\(0),
      CI_TOP => '0',
      CO(7 downto 5) => \NLW_FSL_Flag_Handle.fifo_length_i_reg[6]_i_3_CO_UNCONNECTED\(7 downto 5),
      CO(4) => \FSL_Flag_Handle.fifo_length_i_reg[6]_i_3_n_3\,
      CO(3) => \FSL_Flag_Handle.fifo_length_i_reg[6]_i_3_n_4\,
      CO(2) => \FSL_Flag_Handle.fifo_length_i_reg[6]_i_3_n_5\,
      CO(1) => \FSL_Flag_Handle.fifo_length_i_reg[6]_i_3_n_6\,
      CO(0) => \FSL_Flag_Handle.fifo_length_i_reg[6]_i_3_n_7\,
      DI(7 downto 5) => B"000",
      DI(4 downto 1) => \^q\(4 downto 1),
      DI(0) => \FSL_Flag_Handle.fifo_length_i[6]_i_5_n_0\,
      O(7 downto 6) => \NLW_FSL_Flag_Handle.fifo_length_i_reg[6]_i_3_O_UNCONNECTED\(7 downto 6),
      O(5) => \FSL_Flag_Handle.fifo_length_i_reg[6]_i_3_n_10\,
      O(4) => \FSL_Flag_Handle.fifo_length_i_reg[6]_i_3_n_11\,
      O(3) => \FSL_Flag_Handle.fifo_length_i_reg[6]_i_3_n_12\,
      O(2) => \FSL_Flag_Handle.fifo_length_i_reg[6]_i_3_n_13\,
      O(1) => \FSL_Flag_Handle.fifo_length_i_reg[6]_i_3_n_14\,
      O(0) => \FSL_Flag_Handle.fifo_length_i_reg[6]_i_3_n_15\,
      S(7 downto 6) => B"00",
      S(5) => \FSL_Flag_Handle.fifo_length_i[6]_i_6_n_0\,
      S(4) => \FSL_Flag_Handle.fifo_length_i[6]_i_7_n_0\,
      S(3) => \FSL_Flag_Handle.fifo_length_i[6]_i_8_n_0\,
      S(2) => \FSL_Flag_Handle.fifo_length_i[6]_i_9_n_0\,
      S(1) => \FSL_Flag_Handle.fifo_length_i[6]_i_10__0_n_0\,
      S(0) => \FSL_Flag_Handle.fifo_length_i[6]_i_11_n_0\
    );
\FSL_Flag_Handle.read_addr_ptr[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dpra(0),
      O => p_0_in(0)
    );
\FSL_Flag_Handle.read_addr_ptr[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => dpra(0),
      I1 => dpra(1),
      O => p_0_in(1)
    );
\FSL_Flag_Handle.read_addr_ptr[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => dpra(0),
      I1 => dpra(1),
      I2 => dpra(2),
      O => p_0_in(2)
    );
\FSL_Flag_Handle.read_addr_ptr[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => dpra(1),
      I1 => dpra(0),
      I2 => dpra(2),
      I3 => dpra(3),
      O => p_0_in(3)
    );
\FSL_Flag_Handle.read_addr_ptr[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => dpra(2),
      I1 => dpra(0),
      I2 => dpra(1),
      I3 => dpra(3),
      I4 => dpra(4),
      O => p_0_in(4)
    );
\FSL_Flag_Handle.read_addr_ptr[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888088888888"
    )
        port map (
      I0 => Bus_RNW_reg,
      I1 => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\,
      I2 => \^q\(6),
      I3 => \^q\(4),
      I4 => \^q\(5),
      I5 => read_fsl_error_d1_i_2_n_0,
      O => FSL1_S_Read_I
    );
\FSL_Flag_Handle.read_addr_ptr[5]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => dpra(3),
      I1 => dpra(1),
      I2 => dpra(0),
      I3 => dpra(2),
      I4 => dpra(4),
      I5 => dpra(5),
      O => p_0_in(5)
    );
\FSL_Flag_Handle.read_addr_ptr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S0_AXI_ACLK,
      CE => FSL1_S_Read_I,
      D => p_0_in(0),
      Q => dpra(0),
      R => SR(0)
    );
\FSL_Flag_Handle.read_addr_ptr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S0_AXI_ACLK,
      CE => FSL1_S_Read_I,
      D => p_0_in(1),
      Q => dpra(1),
      R => SR(0)
    );
\FSL_Flag_Handle.read_addr_ptr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S0_AXI_ACLK,
      CE => FSL1_S_Read_I,
      D => p_0_in(2),
      Q => dpra(2),
      R => SR(0)
    );
\FSL_Flag_Handle.read_addr_ptr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S0_AXI_ACLK,
      CE => FSL1_S_Read_I,
      D => p_0_in(3),
      Q => dpra(3),
      R => SR(0)
    );
\FSL_Flag_Handle.read_addr_ptr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S0_AXI_ACLK,
      CE => FSL1_S_Read_I,
      D => p_0_in(4),
      Q => dpra(4),
      R => SR(0)
    );
\FSL_Flag_Handle.read_addr_ptr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S0_AXI_ACLK,
      CE => FSL1_S_Read_I,
      D => p_0_in(5),
      Q => dpra(5),
      R => SR(0)
    );
\FSL_Flag_Handle.write_addr_ptr[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => a(0),
      O => \p_0_in__0\(0)
    );
\FSL_Flag_Handle.write_addr_ptr[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      O => \p_0_in__0\(1)
    );
\FSL_Flag_Handle.write_addr_ptr[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      O => \p_0_in__0\(2)
    );
\FSL_Flag_Handle.write_addr_ptr[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => a(1),
      I1 => a(0),
      I2 => a(2),
      I3 => a(3),
      O => \p_0_in__0\(3)
    );
\FSL_Flag_Handle.write_addr_ptr[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => a(2),
      I1 => a(0),
      I2 => a(1),
      I3 => a(3),
      I4 => a(4),
      O => \p_0_in__0\(4)
    );
\FSL_Flag_Handle.write_addr_ptr[5]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => a(3),
      I1 => a(1),
      I2 => a(0),
      I3 => a(2),
      I4 => a(4),
      I5 => a(5),
      O => \p_0_in__0\(5)
    );
\FSL_Flag_Handle.write_addr_ptr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S0_AXI_ACLK,
      CE => FSL0_M_Write_I,
      D => \p_0_in__0\(0),
      Q => a(0),
      R => SR(0)
    );
\FSL_Flag_Handle.write_addr_ptr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S0_AXI_ACLK,
      CE => FSL0_M_Write_I,
      D => \p_0_in__0\(1),
      Q => a(1),
      R => SR(0)
    );
\FSL_Flag_Handle.write_addr_ptr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S0_AXI_ACLK,
      CE => FSL0_M_Write_I,
      D => \p_0_in__0\(2),
      Q => a(2),
      R => SR(0)
    );
\FSL_Flag_Handle.write_addr_ptr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S0_AXI_ACLK,
      CE => FSL0_M_Write_I,
      D => \p_0_in__0\(3),
      Q => a(3),
      R => SR(0)
    );
\FSL_Flag_Handle.write_addr_ptr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S0_AXI_ACLK,
      CE => FSL0_M_Write_I,
      D => \p_0_in__0\(4),
      Q => a(4),
      R => SR(0)
    );
\FSL_Flag_Handle.write_addr_ptr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S0_AXI_ACLK,
      CE => FSL0_M_Write_I,
      D => \p_0_in__0\(5),
      Q => a(5),
      R => SR(0)
    );
\Sync_FIFO_I.dpram_fifo_i.DPRAM_FIFO\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Sync_DPRAM_3
     port map (
      E(0) => FSL0_M_Write_I,
      \FSL_Flag_Handle.fifo_length_i_reg[3]\ => \Sync_FIFO_I.dpram_fifo_i.DPRAM_FIFO_n_1\,
      \FSL_Flag_Handle.write_addr_ptr_reg[0]\ => \FSL_Flag_Handle.write_addr_ptr_reg[0]_0\,
      Q(6 downto 0) => \^q\(6 downto 0),
      S0_AXI_ACLK => S0_AXI_ACLK,
      S0_AXI_WDATA(31 downto 0) => S0_AXI_WDATA(31 downto 0),
      SYS_Rst_I => SYS_Rst_I,
      dpo(31 downto 0) => dpo(31 downto 0),
      \s_axi_rdata_i_reg[28]\(5 downto 0) => dpra(5 downto 0),
      \s_axi_rdata_i_reg[28]_0\(5 downto 0) => a(5 downto 0)
    );
\read_fsl_error_d1_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => Bus_RNW_reg,
      I1 => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\,
      I2 => \^q\(6),
      I3 => \^q\(4),
      I4 => \^q\(5),
      I5 => read_fsl_error_d1_i_2_n_0,
      O => read_fsl_error
    );
read_fsl_error_d1_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(2),
      I2 => \^q\(1),
      I3 => \^q\(0),
      O => read_fsl_error_d1_i_2_n_0
    );
\rit_detect_d10_carry_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^q\(4),
      I1 => rit_detect_d1_reg(4),
      I2 => rit_detect_d1_reg(5),
      I3 => \^q\(5),
      O => DI(2)
    );
\rit_detect_d10_carry_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^q\(2),
      I1 => rit_detect_d1_reg(2),
      I2 => rit_detect_d1_reg(3),
      I3 => \^q\(3),
      O => DI(1)
    );
\rit_detect_d10_carry_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^q\(0),
      I1 => rit_detect_d1_reg(0),
      I2 => rit_detect_d1_reg(1),
      I3 => \^q\(1),
      O => DI(0)
    );
rit_detect_d10_carry_i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(6),
      O => \FSL_Flag_Handle.fifo_length_i_reg[6]_0\(3)
    );
\rit_detect_d10_carry_i_5__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q\(4),
      I1 => rit_detect_d1_reg(4),
      I2 => \^q\(5),
      I3 => rit_detect_d1_reg(5),
      O => \FSL_Flag_Handle.fifo_length_i_reg[6]_0\(2)
    );
\rit_detect_d10_carry_i_6__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q\(2),
      I1 => rit_detect_d1_reg(2),
      I2 => \^q\(3),
      I3 => rit_detect_d1_reg(3),
      O => \FSL_Flag_Handle.fifo_length_i_reg[6]_0\(1)
    );
\rit_detect_d10_carry_i_7__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q\(0),
      I1 => rit_detect_d1_reg(0),
      I2 => \^q\(1),
      I3 => rit_detect_d1_reg(1),
      O => \FSL_Flag_Handle.fifo_length_i_reg[6]_0\(0)
    );
\s_axi_rdata_i[0]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => read_fsl_error_d1_i_2_n_0,
      I1 => \^q\(5),
      I2 => \^q\(4),
      I3 => \^q\(6),
      O => \^fsl1_s_exists_i\
    );
\s_axi_rdata_i[1]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0004"
    )
        port map (
      I0 => \Sync_FIFO_I.dpram_fifo_i.DPRAM_FIFO_n_1\,
      I1 => \^q\(6),
      I2 => \^q\(0),
      I3 => \^q\(5),
      I4 => SYS_Rst_I,
      O => FSL0_M_Full_I
    );
\sit_detect_d10_carry_i_4__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(6),
      O => S(0)
    );
write_fsl_error_d1_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888888A8888"
    )
        port map (
      I0 => \FSL_Flag_Handle.write_addr_ptr_reg[0]_0\,
      I1 => SYS_Rst_I,
      I2 => \^q\(5),
      I3 => \^q\(0),
      I4 => \^q\(6),
      I5 => \Sync_FIFO_I.dpram_fifo_i.DPRAM_FIFO_n_1\,
      O => write_fsl_error
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_address_decoder is
  port (
    \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]_0\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0\ : out STD_LOGIC;
    Bus_RNW_reg_reg_0 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    is_read_reg : out STD_LOGIC;
    \FSM_onehot_state_reg[2]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1\ : out STD_LOGIC;
    FSL_M_Reset0 : out STD_LOGIC;
    FSL_S_Reset0 : out STD_LOGIC;
    empty_error : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \is_register07_out__0\ : out STD_LOGIC;
    \state_reg[0]\ : out STD_LOGIC;
    \state_reg[1]\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_0\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_2\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_3\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC;
    S1_AXI_ACLK : in STD_LOGIC;
    \state1__2\ : in STD_LOGIC;
    p_5_in : in STD_LOGIC;
    S1_AXI_ARVALID : in STD_LOGIC;
    s_axi_rvalid_i_reg : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S1_AXI_WVALID : in STD_LOGIC;
    S1_AXI_AWVALID : in STD_LOGIC;
    \FSM_onehot_state_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S1_AXI_WDATA : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SYS_Rst_I : in STD_LOGIC;
    full_error_reg : in STD_LOGIC;
    FSL1_M_Full_I : in STD_LOGIC;
    dpo : in STD_LOGIC_VECTOR ( 31 downto 0 );
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    \s_axi_rdata_i_reg[2]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    empty_error_reg : in STD_LOGIC;
    FSL1_S_Exists_I : in STD_LOGIC;
    S1_AXI_ARREADY : in STD_LOGIC;
    \s_axi_rdata_i_reg[5]\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    is_register : in STD_LOGIC_VECTOR ( 0 to 2 );
    \s_axi_rdata_i_reg[5]_0\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S1_AXI_WREADY : in STD_LOGIC;
    S1_AXI_WREADY_0 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    S1_AXI_RREADY : in STD_LOGIC;
    s_axi_rvalid_i_reg_0 : in STD_LOGIC;
    S1_AXI_BREADY : in STD_LOGIC;
    s_axi_bvalid_i_reg : in STD_LOGIC;
    \s_axi_rdata_i_reg[2]_0\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    Bus_RNW_reg_reg_1 : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_address_decoder;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_address_decoder is
  signal \Bus_RNW_reg_i_1__0_n_0\ : STD_LOGIC;
  signal \^bus_rnw_reg_reg_0\ : STD_LOGIC;
  signal \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_0\ : STD_LOGIC;
  signal \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_1\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[11].ce_out_i[11]_i_1__0_n_0\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg\ : STD_LOGIC;
  signal \^gen_bkend_ce_registers[2].ce_out_i_reg\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg\ : STD_LOGIC;
  signal \^gen_bkend_ce_registers[8].ce_out_i_reg[8]_0\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg\ : STD_LOGIC;
  signal S1_AXI_ARREADY_INST_0_i_3_n_0 : STD_LOGIC;
  signal S1_AXI_ARREADY_INST_0_i_4_n_0 : STD_LOGIC;
  signal S1_AXI_WREADY_INST_0_i_1_n_0 : STD_LOGIC;
  signal bus2ip_rdce : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal ce_expnd_i_0 : STD_LOGIC;
  signal ce_expnd_i_1 : STD_LOGIC;
  signal ce_expnd_i_11 : STD_LOGIC;
  signal ce_expnd_i_2 : STD_LOGIC;
  signal ce_expnd_i_3 : STD_LOGIC;
  signal ce_expnd_i_4 : STD_LOGIC;
  signal ce_expnd_i_5 : STD_LOGIC;
  signal ce_expnd_i_6 : STD_LOGIC;
  signal ce_expnd_i_7 : STD_LOGIC;
  signal ce_expnd_i_9 : STD_LOGIC;
  signal \eqOp__3\ : STD_LOGIC;
  signal \^is_read_reg\ : STD_LOGIC;
  signal \s_axi_rdata_i[0]_i_2__0_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[0]_i_3__0_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[1]_i_2__0_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[1]_i_3__0_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[2]_i_2__0_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[2]_i_3__0_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[31]_i_2__0_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[3]_i_2__0_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[3]_i_3__0_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[4]_i_2__0_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[5]_i_4__0_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Bus_RNW_reg_i_1__0\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \FSL_M_Reset_i_1__0\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \FSL_S_Reset_i_1__0\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of RAM_reg_0_63_0_6_i_2 : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of S1_AXI_ARREADY_INST_0_i_1 : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of S1_AXI_ARREADY_INST_0_i_2 : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of S1_AXI_ARREADY_INST_0_i_3 : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of S1_AXI_ARREADY_INST_0_i_4 : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of S1_AXI_WREADY_INST_0_i_1 : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \empty_error_i_1__0\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \empty_error_i_2__0\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \full_error_i_1__0\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \ie_register[0]_i_1__0\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \is_register[0]_i_2__0\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \rit_register[0]_i_1__0\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[1]_i_4__0\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[2]_i_4__0\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[3]_i_2__0\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[3]_i_3__0\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[4]_i_2__0\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[5]_i_2__0\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[5]_i_3__0\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[5]_i_4__0\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \sit_register[0]_i_1__0\ : label is "soft_lutpair21";
begin
  Bus_RNW_reg_reg_0 <= \^bus_rnw_reg_reg_0\;
  \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0\ <= \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_0\;
  \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1\ <= \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_1\;
  \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\ <= \^gen_bkend_ce_registers[2].ce_out_i_reg\;
  \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]_0\ <= \^gen_bkend_ce_registers[8].ce_out_i_reg[8]_0\;
  is_read_reg <= \^is_read_reg\;
\Bus_RNW_reg_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Bus_RNW_reg_reg_1,
      I1 => Q,
      I2 => \^bus_rnw_reg_reg_0\,
      O => \Bus_RNW_reg_i_1__0_n_0\
    );
Bus_RNW_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => S1_AXI_ACLK,
      CE => '1',
      D => \Bus_RNW_reg_i_1__0_n_0\,
      Q => \^bus_rnw_reg_reg_0\,
      R => '0'
    );
\FSL_M_Reset_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_0\,
      I1 => \GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg\,
      I2 => S1_AXI_WDATA(0),
      O => FSL_M_Reset0
    );
\FSL_S_Reset_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_0\,
      I1 => \GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg\,
      I2 => S1_AXI_WDATA(1),
      O => FSL_S_Reset0
    );
\FSM_onehot_state[1]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => S1_AXI_ARVALID,
      I1 => \FSM_onehot_state_reg[3]\(0),
      I2 => \^is_read_reg\,
      I3 => \FSM_onehot_state_reg[3]\(1),
      O => \FSM_onehot_state_reg[2]\(0)
    );
\FSM_onehot_state[2]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800FFFF08000800"
    )
        port map (
      I0 => S1_AXI_WVALID,
      I1 => S1_AXI_AWVALID,
      I2 => S1_AXI_ARVALID,
      I3 => \FSM_onehot_state_reg[3]\(0),
      I4 => \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_1\,
      I5 => \FSM_onehot_state_reg[3]\(2),
      O => \FSM_onehot_state_reg[2]\(1)
    );
\FSM_onehot_state[3]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888F888FFFFF888"
    )
        port map (
      I0 => \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_1\,
      I1 => \FSM_onehot_state_reg[3]\(2),
      I2 => \FSM_onehot_state_reg[3]\(1),
      I3 => \^is_read_reg\,
      I4 => \FSM_onehot_state_reg[3]\(3),
      I5 => \state1__2\,
      O => \FSM_onehot_state_reg[2]\(2)
    );
\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S1_AXI_ACLK,
      CE => Q,
      D => ce_expnd_i_11,
      Q => \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_0\,
      R => \GEN_BKEND_CE_REGISTERS[11].ce_out_i[11]_i_1__0_n_0\
    );
\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => S1_AXI_ACLK,
      CE => Q,
      D => ce_expnd_i_1,
      Q => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg\,
      R => \GEN_BKEND_CE_REGISTERS[11].ce_out_i[11]_i_1__0_n_0\
    );
\GEN_BKEND_CE_REGISTERS[11].ce_out_i[11]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => SYS_Rst_I,
      I1 => \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_1\,
      I2 => \^is_read_reg\,
      O => \GEN_BKEND_CE_REGISTERS[11].ce_out_i[11]_i_1__0_n_0\
    );
\GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => S1_AXI_ACLK,
      CE => Q,
      D => ce_expnd_i_0,
      Q => \GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg\,
      R => \GEN_BKEND_CE_REGISTERS[11].ce_out_i[11]_i_1__0_n_0\
    );
\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S1_AXI_ACLK,
      CE => Q,
      D => ce_expnd_i_9,
      Q => \^gen_bkend_ce_registers[2].ce_out_i_reg\,
      R => \GEN_BKEND_CE_REGISTERS[11].ce_out_i[11]_i_1__0_n_0\
    );
\GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S1_AXI_ACLK,
      CE => Q,
      D => ce_expnd_i_7,
      Q => \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg\,
      R => \GEN_BKEND_CE_REGISTERS[11].ce_out_i[11]_i_1__0_n_0\
    );
\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S1_AXI_ACLK,
      CE => Q,
      D => ce_expnd_i_6,
      Q => \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg\,
      R => \GEN_BKEND_CE_REGISTERS[11].ce_out_i[11]_i_1__0_n_0\
    );
\GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => S1_AXI_ACLK,
      CE => Q,
      D => ce_expnd_i_5,
      Q => \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg\,
      R => \GEN_BKEND_CE_REGISTERS[11].ce_out_i[11]_i_1__0_n_0\
    );
\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => S1_AXI_ACLK,
      CE => Q,
      D => ce_expnd_i_4,
      Q => \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg\,
      R => \GEN_BKEND_CE_REGISTERS[11].ce_out_i[11]_i_1__0_n_0\
    );
\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => S1_AXI_ACLK,
      CE => Q,
      D => ce_expnd_i_3,
      Q => \^gen_bkend_ce_registers[8].ce_out_i_reg[8]_0\,
      R => \GEN_BKEND_CE_REGISTERS[11].ce_out_i[11]_i_1__0_n_0\
    );
\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => S1_AXI_ACLK,
      CE => Q,
      D => ce_expnd_i_2,
      Q => \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg\,
      R => \GEN_BKEND_CE_REGISTERS[11].ce_out_i[11]_i_1__0_n_0\
    );
\MEM_DECODE_GEN[0].PER_CE_GEN[0].MULTIPLE_CES_THIS_CS_GEN.CE_I\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f
     port map (
      \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\(3 downto 0) => \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_1\(3 downto 0),
      ce_expnd_i_11 => ce_expnd_i_11
    );
\MEM_DECODE_GEN[0].PER_CE_GEN[10].MULTIPLE_CES_THIS_CS_GEN.CE_I\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized9\
     port map (
      \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]\(3 downto 0) => \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_1\(3 downto 0),
      ce_expnd_i_1 => ce_expnd_i_1
    );
\MEM_DECODE_GEN[0].PER_CE_GEN[11].MULTIPLE_CES_THIS_CS_GEN.CE_I\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized10\
     port map (
      \GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg[11]\(3 downto 0) => \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_1\(3 downto 0),
      ce_expnd_i_0 => ce_expnd_i_0
    );
\MEM_DECODE_GEN[0].PER_CE_GEN[2].MULTIPLE_CES_THIS_CS_GEN.CE_I\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized1\
     port map (
      \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]\(3 downto 0) => \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_1\(3 downto 0),
      ce_expnd_i_9 => ce_expnd_i_9
    );
\MEM_DECODE_GEN[0].PER_CE_GEN[4].MULTIPLE_CES_THIS_CS_GEN.CE_I\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized3\
     port map (
      \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4]\(3 downto 0) => \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_1\(3 downto 0),
      ce_expnd_i_7 => ce_expnd_i_7
    );
\MEM_DECODE_GEN[0].PER_CE_GEN[5].MULTIPLE_CES_THIS_CS_GEN.CE_I\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized4\
     port map (
      \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]\(3 downto 0) => \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_1\(3 downto 0),
      ce_expnd_i_6 => ce_expnd_i_6
    );
\MEM_DECODE_GEN[0].PER_CE_GEN[6].MULTIPLE_CES_THIS_CS_GEN.CE_I\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized5\
     port map (
      \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6]\(3 downto 0) => \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_1\(3 downto 0),
      ce_expnd_i_5 => ce_expnd_i_5
    );
\MEM_DECODE_GEN[0].PER_CE_GEN[7].MULTIPLE_CES_THIS_CS_GEN.CE_I\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized6\
     port map (
      \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]\(3 downto 0) => \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_1\(3 downto 0),
      ce_expnd_i_4 => ce_expnd_i_4
    );
\MEM_DECODE_GEN[0].PER_CE_GEN[8].MULTIPLE_CES_THIS_CS_GEN.CE_I\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized7\
     port map (
      \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]\(3 downto 0) => \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_1\(3 downto 0),
      ce_expnd_i_3 => ce_expnd_i_3
    );
\MEM_DECODE_GEN[0].PER_CE_GEN[9].MULTIPLE_CES_THIS_CS_GEN.CE_I\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized8\
     port map (
      \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]\(3 downto 0) => \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_1\(3 downto 0),
      ce_expnd_i_2 => ce_expnd_i_2
    );
RAM_reg_0_63_0_6_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_0\,
      I1 => \^bus_rnw_reg_reg_0\,
      O => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_3\
    );
S1_AXI_ARREADY_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEFFFEFFFE"
    )
        port map (
      I0 => bus2ip_rdce(5),
      I1 => bus2ip_rdce(4),
      I2 => S1_AXI_ARREADY_INST_0_i_3_n_0,
      I3 => S1_AXI_ARREADY_INST_0_i_4_n_0,
      I4 => S1_AXI_ARREADY,
      I5 => \eqOp__3\,
      O => \^is_read_reg\
    );
S1_AXI_ARREADY_INST_0_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg\,
      I1 => \^bus_rnw_reg_reg_0\,
      O => bus2ip_rdce(5)
    );
S1_AXI_ARREADY_INST_0_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg\,
      I1 => \^bus_rnw_reg_reg_0\,
      O => bus2ip_rdce(4)
    );
S1_AXI_ARREADY_INST_0_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C8"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg\,
      I1 => \^bus_rnw_reg_reg_0\,
      I2 => \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg\,
      O => S1_AXI_ARREADY_INST_0_i_3_n_0
    );
S1_AXI_ARREADY_INST_0_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00FE00"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg\,
      I1 => \^gen_bkend_ce_registers[2].ce_out_i_reg\,
      I2 => \^gen_bkend_ce_registers[8].ce_out_i_reg[8]_0\,
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg\,
      O => S1_AXI_ARREADY_INST_0_i_4_n_0
    );
S1_AXI_WREADY_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAFAEAFAEAFAE"
    )
        port map (
      I0 => S1_AXI_WREADY_INST_0_i_1_n_0,
      I1 => \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_0\,
      I2 => \^bus_rnw_reg_reg_0\,
      I3 => \GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg\,
      I4 => S1_AXI_WREADY,
      I5 => \eqOp__3\,
      O => \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_1\
    );
S1_AXI_WREADY_INST_0_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FF00FE"
    )
        port map (
      I0 => \^gen_bkend_ce_registers[8].ce_out_i_reg[8]_0\,
      I1 => \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg\,
      I2 => \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg\,
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg\,
      O => S1_AXI_WREADY_INST_0_i_1_n_0
    );
S1_AXI_WREADY_INST_0_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => S1_AXI_WREADY_0(3),
      I1 => S1_AXI_WREADY_0(2),
      I2 => S1_AXI_WREADY_0(4),
      I3 => S1_AXI_WREADY_0(0),
      I4 => S1_AXI_WREADY_0(1),
      O => \eqOp__3\
    );
\empty_error_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => SYS_Rst_I,
      I1 => \^bus_rnw_reg_reg_0\,
      I2 => \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg\,
      O => empty_error
    );
\empty_error_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF40"
    )
        port map (
      I0 => FSL1_S_Exists_I,
      I1 => \^gen_bkend_ce_registers[2].ce_out_i_reg\,
      I2 => \^bus_rnw_reg_reg_0\,
      I3 => empty_error_reg,
      O => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_0\
    );
\full_error_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF08"
    )
        port map (
      I0 => FSL1_M_Full_I,
      I1 => \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_0\,
      I2 => \^bus_rnw_reg_reg_0\,
      I3 => full_error_reg,
      O => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_2\
    );
\ie_register[0]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg\,
      I1 => \^bus_rnw_reg_reg_0\,
      O => \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_0\(0)
    );
\is_register[0]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_0\,
      I1 => \^gen_bkend_ce_registers[8].ce_out_i_reg[8]_0\,
      I2 => S1_AXI_WDATA(2),
      O => \is_register07_out__0\
    );
\rit_register[0]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg\,
      I1 => \^bus_rnw_reg_reg_0\,
      O => \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]_0\(0)
    );
\s_axi_bvalid_i_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08FF0808"
    )
        port map (
      I0 => \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_1\,
      I1 => s_axi_rvalid_i_reg(1),
      I2 => s_axi_rvalid_i_reg(0),
      I3 => S1_AXI_BREADY,
      I4 => s_axi_bvalid_i_reg,
      O => \state_reg[1]\
    );
\s_axi_rdata_i[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FE000EFFFEFF0E"
    )
        port map (
      I0 => \s_axi_rdata_i[0]_i_2__0_n_0\,
      I1 => \s_axi_rdata_i[0]_i_3__0_n_0\,
      I2 => bus2ip_rdce(6),
      I3 => bus2ip_rdce(7),
      I4 => empty_error_reg,
      I5 => FSL1_S_Exists_I,
      O => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0\(0)
    );
\s_axi_rdata_i[0]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \s_axi_rdata_i_reg[5]\(0),
      I1 => is_register(2),
      I2 => \s_axi_rdata_i_reg[5]_0\(0),
      I3 => bus2ip_rdce(5),
      I4 => bus2ip_rdce(3),
      I5 => bus2ip_rdce(4),
      O => \s_axi_rdata_i[0]_i_2__0_n_0\
    );
\s_axi_rdata_i[0]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AA88B8B8"
    )
        port map (
      I0 => \s_axi_rdata_i_reg[2]_0\(0),
      I1 => bus2ip_rdce(2),
      I2 => dpo(0),
      I3 => is_register(2),
      I4 => bus2ip_rdce(1),
      I5 => \s_axi_rdata_i[31]_i_2__0_n_0\,
      O => \s_axi_rdata_i[0]_i_3__0_n_0\
    );
\s_axi_rdata_i[10]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000501050"
    )
        port map (
      I0 => \s_axi_rdata_i[31]_i_2__0_n_0\,
      I1 => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg\,
      I2 => dpo(10),
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg\,
      I5 => S1_AXI_ARREADY_INST_0_i_3_n_0,
      O => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0\(10)
    );
\s_axi_rdata_i[11]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000501050"
    )
        port map (
      I0 => \s_axi_rdata_i[31]_i_2__0_n_0\,
      I1 => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg\,
      I2 => dpo(11),
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg\,
      I5 => S1_AXI_ARREADY_INST_0_i_3_n_0,
      O => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0\(11)
    );
\s_axi_rdata_i[12]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000501050"
    )
        port map (
      I0 => \s_axi_rdata_i[31]_i_2__0_n_0\,
      I1 => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg\,
      I2 => dpo(12),
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg\,
      I5 => S1_AXI_ARREADY_INST_0_i_3_n_0,
      O => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0\(12)
    );
\s_axi_rdata_i[13]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000501050"
    )
        port map (
      I0 => \s_axi_rdata_i[31]_i_2__0_n_0\,
      I1 => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg\,
      I2 => dpo(13),
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg\,
      I5 => S1_AXI_ARREADY_INST_0_i_3_n_0,
      O => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0\(13)
    );
\s_axi_rdata_i[14]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000501050"
    )
        port map (
      I0 => \s_axi_rdata_i[31]_i_2__0_n_0\,
      I1 => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg\,
      I2 => dpo(14),
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg\,
      I5 => S1_AXI_ARREADY_INST_0_i_3_n_0,
      O => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0\(14)
    );
\s_axi_rdata_i[15]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000501050"
    )
        port map (
      I0 => \s_axi_rdata_i[31]_i_2__0_n_0\,
      I1 => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg\,
      I2 => dpo(15),
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg\,
      I5 => S1_AXI_ARREADY_INST_0_i_3_n_0,
      O => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0\(15)
    );
\s_axi_rdata_i[16]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000501050"
    )
        port map (
      I0 => \s_axi_rdata_i[31]_i_2__0_n_0\,
      I1 => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg\,
      I2 => dpo(16),
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg\,
      I5 => S1_AXI_ARREADY_INST_0_i_3_n_0,
      O => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0\(16)
    );
\s_axi_rdata_i[17]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000501050"
    )
        port map (
      I0 => \s_axi_rdata_i[31]_i_2__0_n_0\,
      I1 => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg\,
      I2 => dpo(17),
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg\,
      I5 => S1_AXI_ARREADY_INST_0_i_3_n_0,
      O => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0\(17)
    );
\s_axi_rdata_i[18]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000501050"
    )
        port map (
      I0 => \s_axi_rdata_i[31]_i_2__0_n_0\,
      I1 => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg\,
      I2 => dpo(18),
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg\,
      I5 => S1_AXI_ARREADY_INST_0_i_3_n_0,
      O => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0\(18)
    );
\s_axi_rdata_i[19]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000501050"
    )
        port map (
      I0 => \s_axi_rdata_i[31]_i_2__0_n_0\,
      I1 => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg\,
      I2 => dpo(19),
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg\,
      I5 => S1_AXI_ARREADY_INST_0_i_3_n_0,
      O => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0\(19)
    );
\s_axi_rdata_i[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFF0E00FE000E"
    )
        port map (
      I0 => \s_axi_rdata_i[1]_i_2__0_n_0\,
      I1 => \s_axi_rdata_i[1]_i_3__0_n_0\,
      I2 => bus2ip_rdce(6),
      I3 => bus2ip_rdce(7),
      I4 => full_error_reg,
      I5 => FSL1_M_Full_I,
      O => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0\(1)
    );
\s_axi_rdata_i[1]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \s_axi_rdata_i_reg[5]\(1),
      I1 => is_register(1),
      I2 => \s_axi_rdata_i_reg[5]_0\(1),
      I3 => bus2ip_rdce(5),
      I4 => bus2ip_rdce(3),
      I5 => bus2ip_rdce(4),
      O => \s_axi_rdata_i[1]_i_2__0_n_0\
    );
\s_axi_rdata_i[1]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AA88B8B8"
    )
        port map (
      I0 => \s_axi_rdata_i_reg[2]_0\(1),
      I1 => bus2ip_rdce(2),
      I2 => dpo(1),
      I3 => is_register(1),
      I4 => bus2ip_rdce(1),
      I5 => \s_axi_rdata_i[31]_i_2__0_n_0\,
      O => \s_axi_rdata_i[1]_i_3__0_n_0\
    );
\s_axi_rdata_i[1]_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg\,
      I1 => \^bus_rnw_reg_reg_0\,
      O => bus2ip_rdce(6)
    );
\s_axi_rdata_i[1]_i_5__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg\,
      I1 => \^bus_rnw_reg_reg_0\,
      O => bus2ip_rdce(7)
    );
\s_axi_rdata_i[20]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000501050"
    )
        port map (
      I0 => \s_axi_rdata_i[31]_i_2__0_n_0\,
      I1 => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg\,
      I2 => dpo(20),
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg\,
      I5 => S1_AXI_ARREADY_INST_0_i_3_n_0,
      O => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0\(20)
    );
\s_axi_rdata_i[21]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000501050"
    )
        port map (
      I0 => \s_axi_rdata_i[31]_i_2__0_n_0\,
      I1 => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg\,
      I2 => dpo(21),
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg\,
      I5 => S1_AXI_ARREADY_INST_0_i_3_n_0,
      O => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0\(21)
    );
\s_axi_rdata_i[22]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000501050"
    )
        port map (
      I0 => \s_axi_rdata_i[31]_i_2__0_n_0\,
      I1 => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg\,
      I2 => dpo(22),
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg\,
      I5 => S1_AXI_ARREADY_INST_0_i_3_n_0,
      O => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0\(22)
    );
\s_axi_rdata_i[23]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000501050"
    )
        port map (
      I0 => \s_axi_rdata_i[31]_i_2__0_n_0\,
      I1 => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg\,
      I2 => dpo(23),
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg\,
      I5 => S1_AXI_ARREADY_INST_0_i_3_n_0,
      O => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0\(23)
    );
\s_axi_rdata_i[24]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000501050"
    )
        port map (
      I0 => \s_axi_rdata_i[31]_i_2__0_n_0\,
      I1 => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg\,
      I2 => dpo(24),
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg\,
      I5 => S1_AXI_ARREADY_INST_0_i_3_n_0,
      O => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0\(24)
    );
\s_axi_rdata_i[25]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000501050"
    )
        port map (
      I0 => \s_axi_rdata_i[31]_i_2__0_n_0\,
      I1 => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg\,
      I2 => dpo(25),
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg\,
      I5 => S1_AXI_ARREADY_INST_0_i_3_n_0,
      O => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0\(25)
    );
\s_axi_rdata_i[26]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000501050"
    )
        port map (
      I0 => \s_axi_rdata_i[31]_i_2__0_n_0\,
      I1 => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg\,
      I2 => dpo(26),
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg\,
      I5 => S1_AXI_ARREADY_INST_0_i_3_n_0,
      O => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0\(26)
    );
\s_axi_rdata_i[27]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000501050"
    )
        port map (
      I0 => \s_axi_rdata_i[31]_i_2__0_n_0\,
      I1 => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg\,
      I2 => dpo(27),
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg\,
      I5 => S1_AXI_ARREADY_INST_0_i_3_n_0,
      O => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0\(27)
    );
\s_axi_rdata_i[28]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000501050"
    )
        port map (
      I0 => \s_axi_rdata_i[31]_i_2__0_n_0\,
      I1 => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg\,
      I2 => dpo(28),
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg\,
      I5 => S1_AXI_ARREADY_INST_0_i_3_n_0,
      O => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0\(28)
    );
\s_axi_rdata_i[29]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000501050"
    )
        port map (
      I0 => \s_axi_rdata_i[31]_i_2__0_n_0\,
      I1 => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg\,
      I2 => dpo(29),
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg\,
      I5 => S1_AXI_ARREADY_INST_0_i_3_n_0,
      O => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0\(29)
    );
\s_axi_rdata_i[2]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEE0EEE00EE0EEE"
    )
        port map (
      I0 => \s_axi_rdata_i[2]_i_2__0_n_0\,
      I1 => \s_axi_rdata_i[2]_i_3__0_n_0\,
      I2 => \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg\,
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg\,
      I5 => \s_axi_rdata_i_reg[2]\(0),
      O => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0\(2)
    );
\s_axi_rdata_i[2]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \s_axi_rdata_i_reg[5]\(2),
      I1 => is_register(0),
      I2 => \s_axi_rdata_i_reg[5]_0\(2),
      I3 => bus2ip_rdce(5),
      I4 => bus2ip_rdce(3),
      I5 => bus2ip_rdce(4),
      O => \s_axi_rdata_i[2]_i_2__0_n_0\
    );
\s_axi_rdata_i[2]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AA88B8B8"
    )
        port map (
      I0 => \s_axi_rdata_i_reg[2]_0\(2),
      I1 => bus2ip_rdce(2),
      I2 => dpo(2),
      I3 => is_register(0),
      I4 => bus2ip_rdce(1),
      I5 => \s_axi_rdata_i[31]_i_2__0_n_0\,
      O => \s_axi_rdata_i[2]_i_3__0_n_0\
    );
\s_axi_rdata_i[2]_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^gen_bkend_ce_registers[8].ce_out_i_reg[8]_0\,
      I1 => \^bus_rnw_reg_reg_0\,
      O => bus2ip_rdce(3)
    );
\s_axi_rdata_i[30]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000501050"
    )
        port map (
      I0 => \s_axi_rdata_i[31]_i_2__0_n_0\,
      I1 => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg\,
      I2 => dpo(30),
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg\,
      I5 => S1_AXI_ARREADY_INST_0_i_3_n_0,
      O => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0\(30)
    );
\s_axi_rdata_i[31]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000501050"
    )
        port map (
      I0 => \s_axi_rdata_i[31]_i_2__0_n_0\,
      I1 => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg\,
      I2 => dpo(31),
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg\,
      I5 => S1_AXI_ARREADY_INST_0_i_3_n_0,
      O => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0\(31)
    );
\s_axi_rdata_i[31]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F0E0"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg\,
      I1 => \^gen_bkend_ce_registers[8].ce_out_i_reg[8]_0\,
      I2 => \^bus_rnw_reg_reg_0\,
      I3 => \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg\,
      O => \s_axi_rdata_i[31]_i_2__0_n_0\
    );
\s_axi_rdata_i[3]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEE0EEE00EE0EEE"
    )
        port map (
      I0 => \s_axi_rdata_i[3]_i_2__0_n_0\,
      I1 => \s_axi_rdata_i[3]_i_3__0_n_0\,
      I2 => \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg\,
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg\,
      I5 => CO(0),
      O => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0\(3)
    );
\s_axi_rdata_i[3]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AC00A000"
    )
        port map (
      I0 => \s_axi_rdata_i_reg[5]\(3),
      I1 => \s_axi_rdata_i_reg[5]_0\(3),
      I2 => \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg\,
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg\,
      O => \s_axi_rdata_i[3]_i_2__0_n_0\
    );
\s_axi_rdata_i[3]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00003070"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg\,
      I1 => \^bus_rnw_reg_reg_0\,
      I2 => dpo(3),
      I3 => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg\,
      I4 => \s_axi_rdata_i[31]_i_2__0_n_0\,
      O => \s_axi_rdata_i[3]_i_3__0_n_0\
    );
\s_axi_rdata_i[4]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF00000004"
    )
        port map (
      I0 => bus2ip_rdce(2),
      I1 => dpo(4),
      I2 => bus2ip_rdce(1),
      I3 => \s_axi_rdata_i[31]_i_2__0_n_0\,
      I4 => S1_AXI_ARREADY_INST_0_i_3_n_0,
      I5 => \s_axi_rdata_i[4]_i_2__0_n_0\,
      O => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0\(4)
    );
\s_axi_rdata_i[4]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AC00A000"
    )
        port map (
      I0 => \s_axi_rdata_i_reg[5]\(4),
      I1 => \s_axi_rdata_i_reg[5]_0\(4),
      I2 => \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg\,
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg\,
      O => \s_axi_rdata_i[4]_i_2__0_n_0\
    );
\s_axi_rdata_i[5]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF00000004"
    )
        port map (
      I0 => bus2ip_rdce(2),
      I1 => dpo(5),
      I2 => bus2ip_rdce(1),
      I3 => \s_axi_rdata_i[31]_i_2__0_n_0\,
      I4 => S1_AXI_ARREADY_INST_0_i_3_n_0,
      I5 => \s_axi_rdata_i[5]_i_4__0_n_0\,
      O => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0\(5)
    );
\s_axi_rdata_i[5]_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg\,
      I1 => \^bus_rnw_reg_reg_0\,
      O => bus2ip_rdce(2)
    );
\s_axi_rdata_i[5]_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg\,
      I1 => \^bus_rnw_reg_reg_0\,
      O => bus2ip_rdce(1)
    );
\s_axi_rdata_i[5]_i_4__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AC00A000"
    )
        port map (
      I0 => \s_axi_rdata_i_reg[5]\(5),
      I1 => \s_axi_rdata_i_reg[5]_0\(5),
      I2 => \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg\,
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg\,
      O => \s_axi_rdata_i[5]_i_4__0_n_0\
    );
\s_axi_rdata_i[6]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000501050"
    )
        port map (
      I0 => \s_axi_rdata_i[31]_i_2__0_n_0\,
      I1 => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg\,
      I2 => dpo(6),
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg\,
      I5 => S1_AXI_ARREADY_INST_0_i_3_n_0,
      O => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0\(6)
    );
\s_axi_rdata_i[7]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000501050"
    )
        port map (
      I0 => \s_axi_rdata_i[31]_i_2__0_n_0\,
      I1 => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg\,
      I2 => dpo(7),
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg\,
      I5 => S1_AXI_ARREADY_INST_0_i_3_n_0,
      O => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0\(7)
    );
\s_axi_rdata_i[8]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000501050"
    )
        port map (
      I0 => \s_axi_rdata_i[31]_i_2__0_n_0\,
      I1 => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg\,
      I2 => dpo(8),
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg\,
      I5 => S1_AXI_ARREADY_INST_0_i_3_n_0,
      O => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0\(8)
    );
\s_axi_rdata_i[9]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000501050"
    )
        port map (
      I0 => \s_axi_rdata_i[31]_i_2__0_n_0\,
      I1 => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg\,
      I2 => dpo(9),
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg\,
      I5 => S1_AXI_ARREADY_INST_0_i_3_n_0,
      O => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0\(9)
    );
\s_axi_rvalid_i_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08FF0808"
    )
        port map (
      I0 => \^is_read_reg\,
      I1 => s_axi_rvalid_i_reg(0),
      I2 => s_axi_rvalid_i_reg(1),
      I3 => S1_AXI_RREADY,
      I4 => s_axi_rvalid_i_reg_0,
      O => \state_reg[0]\
    );
\sit_register[0]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg\,
      I1 => \^bus_rnw_reg_reg_0\,
      O => E(0)
    );
\state[0]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"77FC44FC"
    )
        port map (
      I0 => \state1__2\,
      I1 => s_axi_rvalid_i_reg(0),
      I2 => S1_AXI_ARVALID,
      I3 => s_axi_rvalid_i_reg(1),
      I4 => \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_1\,
      O => D(0)
    );
\state[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55FFFF0C5500FF0C"
    )
        port map (
      I0 => \state1__2\,
      I1 => p_5_in,
      I2 => S1_AXI_ARVALID,
      I3 => s_axi_rvalid_i_reg(1),
      I4 => s_axi_rvalid_i_reg(0),
      I5 => \^is_read_reg\,
      O => D(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_address_decoder_6 is
  port (
    \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]_0\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0\ : out STD_LOGIC;
    Bus_RNW_reg_reg_0 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    is_read_reg : out STD_LOGIC;
    \FSM_onehot_state_reg[2]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1\ : out STD_LOGIC;
    FSL_M_Reset0 : out STD_LOGIC;
    FSL_S_Reset0 : out STD_LOGIC;
    empty_error : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    is_register07_out : out STD_LOGIC;
    \state_reg[0]\ : out STD_LOGIC;
    \state_reg[1]\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_0\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_2\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_3\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC;
    S0_AXI_ACLK : in STD_LOGIC;
    \state1__2\ : in STD_LOGIC;
    p_5_in : in STD_LOGIC;
    S0_AXI_ARVALID : in STD_LOGIC;
    s_axi_rvalid_i_reg : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S0_AXI_WVALID : in STD_LOGIC;
    S0_AXI_AWVALID : in STD_LOGIC;
    \FSM_onehot_state_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S0_AXI_WDATA : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SYS_Rst_I : in STD_LOGIC;
    data1 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    FSL0_M_Full_I : in STD_LOGIC;
    dpo : in STD_LOGIC_VECTOR ( 31 downto 0 );
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    \s_axi_rdata_i_reg[2]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    FSL0_S_Exists_I : in STD_LOGIC;
    S0_AXI_ARREADY : in STD_LOGIC;
    \s_axi_rdata_i_reg[5]\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    is_register : in STD_LOGIC_VECTOR ( 0 to 2 );
    \s_axi_rdata_i_reg[5]_0\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S0_AXI_WREADY : in STD_LOGIC;
    S0_AXI_WREADY_0 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    S0_AXI_RREADY : in STD_LOGIC;
    s_axi_rvalid_i_reg_0 : in STD_LOGIC;
    S0_AXI_BREADY : in STD_LOGIC;
    s_axi_bvalid_i_reg : in STD_LOGIC;
    \s_axi_rdata_i_reg[2]_0\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    bus2ip_rnw_i : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_address_decoder_6 : entity is "address_decoder";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_address_decoder_6;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_address_decoder_6 is
  signal Bus_RNW_reg_i_1_n_0 : STD_LOGIC;
  signal \^bus_rnw_reg_reg_0\ : STD_LOGIC;
  signal \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_0\ : STD_LOGIC;
  signal \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_1\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[11].ce_out_i[11]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg\ : STD_LOGIC;
  signal \^gen_bkend_ce_registers[2].ce_out_i_reg\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg\ : STD_LOGIC;
  signal \^gen_bkend_ce_registers[8].ce_out_i_reg[8]_0\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg\ : STD_LOGIC;
  signal S0_AXI_ARREADY_INST_0_i_3_n_0 : STD_LOGIC;
  signal S0_AXI_ARREADY_INST_0_i_4_n_0 : STD_LOGIC;
  signal S0_AXI_WREADY_INST_0_i_1_n_0 : STD_LOGIC;
  signal bus2ip_rdce : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal ce_expnd_i_0 : STD_LOGIC;
  signal ce_expnd_i_1 : STD_LOGIC;
  signal ce_expnd_i_11 : STD_LOGIC;
  signal ce_expnd_i_2 : STD_LOGIC;
  signal ce_expnd_i_3 : STD_LOGIC;
  signal ce_expnd_i_4 : STD_LOGIC;
  signal ce_expnd_i_5 : STD_LOGIC;
  signal ce_expnd_i_6 : STD_LOGIC;
  signal ce_expnd_i_7 : STD_LOGIC;
  signal ce_expnd_i_9 : STD_LOGIC;
  signal \eqOp__3\ : STD_LOGIC;
  signal \^is_read_reg\ : STD_LOGIC;
  signal \s_axi_rdata_i[0]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[0]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[1]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[1]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[2]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[2]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[31]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[3]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[3]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[4]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[5]_i_4_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of Bus_RNW_reg_i_1 : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of FSL_M_Reset_i_1 : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of FSL_S_Reset_i_1 : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of S0_AXI_ARREADY_INST_0_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of S0_AXI_ARREADY_INST_0_i_2 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of S0_AXI_ARREADY_INST_0_i_3 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of S0_AXI_ARREADY_INST_0_i_4 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of S0_AXI_WREADY_INST_0_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of empty_error_i_1 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of empty_error_i_2 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of full_error_i_1 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \ie_register[0]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \is_register[0]_i_2\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \rit_register[0]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[1]_i_4\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[2]_i_4\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[3]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[3]_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[4]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[5]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[5]_i_3\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[5]_i_4\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \sit_register[0]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of write_fsl_error_d1_i_2 : label is "soft_lutpair6";
begin
  Bus_RNW_reg_reg_0 <= \^bus_rnw_reg_reg_0\;
  \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0\ <= \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_0\;
  \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1\ <= \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_1\;
  \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\ <= \^gen_bkend_ce_registers[2].ce_out_i_reg\;
  \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]_0\ <= \^gen_bkend_ce_registers[8].ce_out_i_reg[8]_0\;
  is_read_reg <= \^is_read_reg\;
Bus_RNW_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => bus2ip_rnw_i,
      I1 => Q,
      I2 => \^bus_rnw_reg_reg_0\,
      O => Bus_RNW_reg_i_1_n_0
    );
Bus_RNW_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => S0_AXI_ACLK,
      CE => '1',
      D => Bus_RNW_reg_i_1_n_0,
      Q => \^bus_rnw_reg_reg_0\,
      R => '0'
    );
FSL_M_Reset_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_0\,
      I1 => \GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg\,
      I2 => S0_AXI_WDATA(0),
      O => FSL_M_Reset0
    );
FSL_S_Reset_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_0\,
      I1 => \GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg\,
      I2 => S0_AXI_WDATA(1),
      O => FSL_S_Reset0
    );
\FSM_onehot_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => S0_AXI_ARVALID,
      I1 => \FSM_onehot_state_reg[3]\(0),
      I2 => \^is_read_reg\,
      I3 => \FSM_onehot_state_reg[3]\(1),
      O => \FSM_onehot_state_reg[2]\(0)
    );
\FSM_onehot_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800FFFF08000800"
    )
        port map (
      I0 => S0_AXI_WVALID,
      I1 => S0_AXI_AWVALID,
      I2 => S0_AXI_ARVALID,
      I3 => \FSM_onehot_state_reg[3]\(0),
      I4 => \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_1\,
      I5 => \FSM_onehot_state_reg[3]\(2),
      O => \FSM_onehot_state_reg[2]\(1)
    );
\FSM_onehot_state[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888F888FFFFF888"
    )
        port map (
      I0 => \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_1\,
      I1 => \FSM_onehot_state_reg[3]\(2),
      I2 => \FSM_onehot_state_reg[3]\(1),
      I3 => \^is_read_reg\,
      I4 => \FSM_onehot_state_reg[3]\(3),
      I5 => \state1__2\,
      O => \FSM_onehot_state_reg[2]\(2)
    );
\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S0_AXI_ACLK,
      CE => Q,
      D => ce_expnd_i_11,
      Q => \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_0\,
      R => \GEN_BKEND_CE_REGISTERS[11].ce_out_i[11]_i_1_n_0\
    );
\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => S0_AXI_ACLK,
      CE => Q,
      D => ce_expnd_i_1,
      Q => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg\,
      R => \GEN_BKEND_CE_REGISTERS[11].ce_out_i[11]_i_1_n_0\
    );
\GEN_BKEND_CE_REGISTERS[11].ce_out_i[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => SYS_Rst_I,
      I1 => \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_1\,
      I2 => \^is_read_reg\,
      O => \GEN_BKEND_CE_REGISTERS[11].ce_out_i[11]_i_1_n_0\
    );
\GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => S0_AXI_ACLK,
      CE => Q,
      D => ce_expnd_i_0,
      Q => \GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg\,
      R => \GEN_BKEND_CE_REGISTERS[11].ce_out_i[11]_i_1_n_0\
    );
\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S0_AXI_ACLK,
      CE => Q,
      D => ce_expnd_i_9,
      Q => \^gen_bkend_ce_registers[2].ce_out_i_reg\,
      R => \GEN_BKEND_CE_REGISTERS[11].ce_out_i[11]_i_1_n_0\
    );
\GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S0_AXI_ACLK,
      CE => Q,
      D => ce_expnd_i_7,
      Q => \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg\,
      R => \GEN_BKEND_CE_REGISTERS[11].ce_out_i[11]_i_1_n_0\
    );
\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S0_AXI_ACLK,
      CE => Q,
      D => ce_expnd_i_6,
      Q => \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg\,
      R => \GEN_BKEND_CE_REGISTERS[11].ce_out_i[11]_i_1_n_0\
    );
\GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => S0_AXI_ACLK,
      CE => Q,
      D => ce_expnd_i_5,
      Q => \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg\,
      R => \GEN_BKEND_CE_REGISTERS[11].ce_out_i[11]_i_1_n_0\
    );
\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => S0_AXI_ACLK,
      CE => Q,
      D => ce_expnd_i_4,
      Q => \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg\,
      R => \GEN_BKEND_CE_REGISTERS[11].ce_out_i[11]_i_1_n_0\
    );
\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => S0_AXI_ACLK,
      CE => Q,
      D => ce_expnd_i_3,
      Q => \^gen_bkend_ce_registers[8].ce_out_i_reg[8]_0\,
      R => \GEN_BKEND_CE_REGISTERS[11].ce_out_i[11]_i_1_n_0\
    );
\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => S0_AXI_ACLK,
      CE => Q,
      D => ce_expnd_i_2,
      Q => \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg\,
      R => \GEN_BKEND_CE_REGISTERS[11].ce_out_i[11]_i_1_n_0\
    );
\MEM_DECODE_GEN[0].PER_CE_GEN[0].MULTIPLE_CES_THIS_CS_GEN.CE_I\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f_7
     port map (
      \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\(3 downto 0) => \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_1\(3 downto 0),
      ce_expnd_i_11 => ce_expnd_i_11
    );
\MEM_DECODE_GEN[0].PER_CE_GEN[10].MULTIPLE_CES_THIS_CS_GEN.CE_I\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized9_8\
     port map (
      \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]\(3 downto 0) => \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_1\(3 downto 0),
      ce_expnd_i_1 => ce_expnd_i_1
    );
\MEM_DECODE_GEN[0].PER_CE_GEN[11].MULTIPLE_CES_THIS_CS_GEN.CE_I\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized10_9\
     port map (
      \GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg[11]\(3 downto 0) => \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_1\(3 downto 0),
      ce_expnd_i_0 => ce_expnd_i_0
    );
\MEM_DECODE_GEN[0].PER_CE_GEN[2].MULTIPLE_CES_THIS_CS_GEN.CE_I\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized1_10\
     port map (
      \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]\(3 downto 0) => \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_1\(3 downto 0),
      ce_expnd_i_9 => ce_expnd_i_9
    );
\MEM_DECODE_GEN[0].PER_CE_GEN[4].MULTIPLE_CES_THIS_CS_GEN.CE_I\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized3_11\
     port map (
      \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4]\(3 downto 0) => \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_1\(3 downto 0),
      ce_expnd_i_7 => ce_expnd_i_7
    );
\MEM_DECODE_GEN[0].PER_CE_GEN[5].MULTIPLE_CES_THIS_CS_GEN.CE_I\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized4_12\
     port map (
      \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]\(3 downto 0) => \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_1\(3 downto 0),
      ce_expnd_i_6 => ce_expnd_i_6
    );
\MEM_DECODE_GEN[0].PER_CE_GEN[6].MULTIPLE_CES_THIS_CS_GEN.CE_I\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized5_13\
     port map (
      \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6]\(3 downto 0) => \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_1\(3 downto 0),
      ce_expnd_i_5 => ce_expnd_i_5
    );
\MEM_DECODE_GEN[0].PER_CE_GEN[7].MULTIPLE_CES_THIS_CS_GEN.CE_I\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized6_14\
     port map (
      \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]\(3 downto 0) => \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_1\(3 downto 0),
      ce_expnd_i_4 => ce_expnd_i_4
    );
\MEM_DECODE_GEN[0].PER_CE_GEN[8].MULTIPLE_CES_THIS_CS_GEN.CE_I\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized7_15\
     port map (
      \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]\(3 downto 0) => \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_1\(3 downto 0),
      ce_expnd_i_3 => ce_expnd_i_3
    );
\MEM_DECODE_GEN[0].PER_CE_GEN[9].MULTIPLE_CES_THIS_CS_GEN.CE_I\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized8_16\
     port map (
      \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]\(3 downto 0) => \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_1\(3 downto 0),
      ce_expnd_i_2 => ce_expnd_i_2
    );
S0_AXI_ARREADY_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEFFFEFFFE"
    )
        port map (
      I0 => bus2ip_rdce(5),
      I1 => bus2ip_rdce(4),
      I2 => S0_AXI_ARREADY_INST_0_i_3_n_0,
      I3 => S0_AXI_ARREADY_INST_0_i_4_n_0,
      I4 => S0_AXI_ARREADY,
      I5 => \eqOp__3\,
      O => \^is_read_reg\
    );
S0_AXI_ARREADY_INST_0_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg\,
      I1 => \^bus_rnw_reg_reg_0\,
      O => bus2ip_rdce(5)
    );
S0_AXI_ARREADY_INST_0_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg\,
      I1 => \^bus_rnw_reg_reg_0\,
      O => bus2ip_rdce(4)
    );
S0_AXI_ARREADY_INST_0_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C8"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg\,
      I1 => \^bus_rnw_reg_reg_0\,
      I2 => \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg\,
      O => S0_AXI_ARREADY_INST_0_i_3_n_0
    );
S0_AXI_ARREADY_INST_0_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00FE00"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg\,
      I1 => \^gen_bkend_ce_registers[2].ce_out_i_reg\,
      I2 => \^gen_bkend_ce_registers[8].ce_out_i_reg[8]_0\,
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg\,
      O => S0_AXI_ARREADY_INST_0_i_4_n_0
    );
S0_AXI_WREADY_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAFAEAFAEAFAE"
    )
        port map (
      I0 => S0_AXI_WREADY_INST_0_i_1_n_0,
      I1 => \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_0\,
      I2 => \^bus_rnw_reg_reg_0\,
      I3 => \GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg\,
      I4 => S0_AXI_WREADY,
      I5 => \eqOp__3\,
      O => \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_1\
    );
S0_AXI_WREADY_INST_0_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FF00FE"
    )
        port map (
      I0 => \^gen_bkend_ce_registers[8].ce_out_i_reg[8]_0\,
      I1 => \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg\,
      I2 => \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg\,
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg\,
      O => S0_AXI_WREADY_INST_0_i_1_n_0
    );
S0_AXI_WREADY_INST_0_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => S0_AXI_WREADY_0(3),
      I1 => S0_AXI_WREADY_0(2),
      I2 => S0_AXI_WREADY_0(4),
      I3 => S0_AXI_WREADY_0(0),
      I4 => S0_AXI_WREADY_0(1),
      O => \eqOp__3\
    );
empty_error_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => SYS_Rst_I,
      I1 => \^bus_rnw_reg_reg_0\,
      I2 => \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg\,
      O => empty_error
    );
empty_error_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF40"
    )
        port map (
      I0 => FSL0_S_Exists_I,
      I1 => \^gen_bkend_ce_registers[2].ce_out_i_reg\,
      I2 => \^bus_rnw_reg_reg_0\,
      I3 => data1(0),
      O => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_0\
    );
full_error_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF08"
    )
        port map (
      I0 => FSL0_M_Full_I,
      I1 => \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_0\,
      I2 => \^bus_rnw_reg_reg_0\,
      I3 => data1(1),
      O => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_2\
    );
\ie_register[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg\,
      I1 => \^bus_rnw_reg_reg_0\,
      O => \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_0\(0)
    );
\is_register[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_0\,
      I1 => \^gen_bkend_ce_registers[8].ce_out_i_reg[8]_0\,
      I2 => S0_AXI_WDATA(2),
      O => is_register07_out
    );
\rit_register[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg\,
      I1 => \^bus_rnw_reg_reg_0\,
      O => \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]_0\(0)
    );
s_axi_bvalid_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08FF0808"
    )
        port map (
      I0 => \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_1\,
      I1 => s_axi_rvalid_i_reg(1),
      I2 => s_axi_rvalid_i_reg(0),
      I3 => S0_AXI_BREADY,
      I4 => s_axi_bvalid_i_reg,
      O => \state_reg[1]\
    );
\s_axi_rdata_i[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FE000EFFFEFF0E"
    )
        port map (
      I0 => \s_axi_rdata_i[0]_i_2_n_0\,
      I1 => \s_axi_rdata_i[0]_i_3_n_0\,
      I2 => bus2ip_rdce(6),
      I3 => bus2ip_rdce(7),
      I4 => data1(0),
      I5 => FSL0_S_Exists_I,
      O => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0\(0)
    );
\s_axi_rdata_i[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \s_axi_rdata_i_reg[5]\(0),
      I1 => is_register(2),
      I2 => \s_axi_rdata_i_reg[5]_0\(0),
      I3 => bus2ip_rdce(5),
      I4 => bus2ip_rdce(3),
      I5 => bus2ip_rdce(4),
      O => \s_axi_rdata_i[0]_i_2_n_0\
    );
\s_axi_rdata_i[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AA88B8B8"
    )
        port map (
      I0 => \s_axi_rdata_i_reg[2]_0\(0),
      I1 => bus2ip_rdce(2),
      I2 => dpo(0),
      I3 => is_register(2),
      I4 => bus2ip_rdce(1),
      I5 => \s_axi_rdata_i[31]_i_2_n_0\,
      O => \s_axi_rdata_i[0]_i_3_n_0\
    );
\s_axi_rdata_i[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000501050"
    )
        port map (
      I0 => \s_axi_rdata_i[31]_i_2_n_0\,
      I1 => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg\,
      I2 => dpo(10),
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg\,
      I5 => S0_AXI_ARREADY_INST_0_i_3_n_0,
      O => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0\(10)
    );
\s_axi_rdata_i[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000501050"
    )
        port map (
      I0 => \s_axi_rdata_i[31]_i_2_n_0\,
      I1 => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg\,
      I2 => dpo(11),
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg\,
      I5 => S0_AXI_ARREADY_INST_0_i_3_n_0,
      O => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0\(11)
    );
\s_axi_rdata_i[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000501050"
    )
        port map (
      I0 => \s_axi_rdata_i[31]_i_2_n_0\,
      I1 => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg\,
      I2 => dpo(12),
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg\,
      I5 => S0_AXI_ARREADY_INST_0_i_3_n_0,
      O => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0\(12)
    );
\s_axi_rdata_i[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000501050"
    )
        port map (
      I0 => \s_axi_rdata_i[31]_i_2_n_0\,
      I1 => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg\,
      I2 => dpo(13),
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg\,
      I5 => S0_AXI_ARREADY_INST_0_i_3_n_0,
      O => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0\(13)
    );
\s_axi_rdata_i[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000501050"
    )
        port map (
      I0 => \s_axi_rdata_i[31]_i_2_n_0\,
      I1 => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg\,
      I2 => dpo(14),
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg\,
      I5 => S0_AXI_ARREADY_INST_0_i_3_n_0,
      O => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0\(14)
    );
\s_axi_rdata_i[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000501050"
    )
        port map (
      I0 => \s_axi_rdata_i[31]_i_2_n_0\,
      I1 => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg\,
      I2 => dpo(15),
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg\,
      I5 => S0_AXI_ARREADY_INST_0_i_3_n_0,
      O => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0\(15)
    );
\s_axi_rdata_i[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000501050"
    )
        port map (
      I0 => \s_axi_rdata_i[31]_i_2_n_0\,
      I1 => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg\,
      I2 => dpo(16),
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg\,
      I5 => S0_AXI_ARREADY_INST_0_i_3_n_0,
      O => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0\(16)
    );
\s_axi_rdata_i[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000501050"
    )
        port map (
      I0 => \s_axi_rdata_i[31]_i_2_n_0\,
      I1 => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg\,
      I2 => dpo(17),
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg\,
      I5 => S0_AXI_ARREADY_INST_0_i_3_n_0,
      O => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0\(17)
    );
\s_axi_rdata_i[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000501050"
    )
        port map (
      I0 => \s_axi_rdata_i[31]_i_2_n_0\,
      I1 => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg\,
      I2 => dpo(18),
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg\,
      I5 => S0_AXI_ARREADY_INST_0_i_3_n_0,
      O => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0\(18)
    );
\s_axi_rdata_i[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000501050"
    )
        port map (
      I0 => \s_axi_rdata_i[31]_i_2_n_0\,
      I1 => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg\,
      I2 => dpo(19),
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg\,
      I5 => S0_AXI_ARREADY_INST_0_i_3_n_0,
      O => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0\(19)
    );
\s_axi_rdata_i[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFF0E00FE000E"
    )
        port map (
      I0 => \s_axi_rdata_i[1]_i_2_n_0\,
      I1 => \s_axi_rdata_i[1]_i_3_n_0\,
      I2 => bus2ip_rdce(6),
      I3 => bus2ip_rdce(7),
      I4 => data1(1),
      I5 => FSL0_M_Full_I,
      O => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0\(1)
    );
\s_axi_rdata_i[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \s_axi_rdata_i_reg[5]\(1),
      I1 => is_register(1),
      I2 => \s_axi_rdata_i_reg[5]_0\(1),
      I3 => bus2ip_rdce(5),
      I4 => bus2ip_rdce(3),
      I5 => bus2ip_rdce(4),
      O => \s_axi_rdata_i[1]_i_2_n_0\
    );
\s_axi_rdata_i[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AA88B8B8"
    )
        port map (
      I0 => \s_axi_rdata_i_reg[2]_0\(1),
      I1 => bus2ip_rdce(2),
      I2 => dpo(1),
      I3 => is_register(1),
      I4 => bus2ip_rdce(1),
      I5 => \s_axi_rdata_i[31]_i_2_n_0\,
      O => \s_axi_rdata_i[1]_i_3_n_0\
    );
\s_axi_rdata_i[1]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg\,
      I1 => \^bus_rnw_reg_reg_0\,
      O => bus2ip_rdce(6)
    );
\s_axi_rdata_i[1]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg\,
      I1 => \^bus_rnw_reg_reg_0\,
      O => bus2ip_rdce(7)
    );
\s_axi_rdata_i[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000501050"
    )
        port map (
      I0 => \s_axi_rdata_i[31]_i_2_n_0\,
      I1 => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg\,
      I2 => dpo(20),
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg\,
      I5 => S0_AXI_ARREADY_INST_0_i_3_n_0,
      O => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0\(20)
    );
\s_axi_rdata_i[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000501050"
    )
        port map (
      I0 => \s_axi_rdata_i[31]_i_2_n_0\,
      I1 => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg\,
      I2 => dpo(21),
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg\,
      I5 => S0_AXI_ARREADY_INST_0_i_3_n_0,
      O => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0\(21)
    );
\s_axi_rdata_i[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000501050"
    )
        port map (
      I0 => \s_axi_rdata_i[31]_i_2_n_0\,
      I1 => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg\,
      I2 => dpo(22),
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg\,
      I5 => S0_AXI_ARREADY_INST_0_i_3_n_0,
      O => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0\(22)
    );
\s_axi_rdata_i[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000501050"
    )
        port map (
      I0 => \s_axi_rdata_i[31]_i_2_n_0\,
      I1 => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg\,
      I2 => dpo(23),
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg\,
      I5 => S0_AXI_ARREADY_INST_0_i_3_n_0,
      O => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0\(23)
    );
\s_axi_rdata_i[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000501050"
    )
        port map (
      I0 => \s_axi_rdata_i[31]_i_2_n_0\,
      I1 => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg\,
      I2 => dpo(24),
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg\,
      I5 => S0_AXI_ARREADY_INST_0_i_3_n_0,
      O => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0\(24)
    );
\s_axi_rdata_i[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000501050"
    )
        port map (
      I0 => \s_axi_rdata_i[31]_i_2_n_0\,
      I1 => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg\,
      I2 => dpo(25),
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg\,
      I5 => S0_AXI_ARREADY_INST_0_i_3_n_0,
      O => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0\(25)
    );
\s_axi_rdata_i[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000501050"
    )
        port map (
      I0 => \s_axi_rdata_i[31]_i_2_n_0\,
      I1 => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg\,
      I2 => dpo(26),
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg\,
      I5 => S0_AXI_ARREADY_INST_0_i_3_n_0,
      O => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0\(26)
    );
\s_axi_rdata_i[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000501050"
    )
        port map (
      I0 => \s_axi_rdata_i[31]_i_2_n_0\,
      I1 => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg\,
      I2 => dpo(27),
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg\,
      I5 => S0_AXI_ARREADY_INST_0_i_3_n_0,
      O => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0\(27)
    );
\s_axi_rdata_i[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000501050"
    )
        port map (
      I0 => \s_axi_rdata_i[31]_i_2_n_0\,
      I1 => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg\,
      I2 => dpo(28),
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg\,
      I5 => S0_AXI_ARREADY_INST_0_i_3_n_0,
      O => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0\(28)
    );
\s_axi_rdata_i[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000501050"
    )
        port map (
      I0 => \s_axi_rdata_i[31]_i_2_n_0\,
      I1 => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg\,
      I2 => dpo(29),
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg\,
      I5 => S0_AXI_ARREADY_INST_0_i_3_n_0,
      O => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0\(29)
    );
\s_axi_rdata_i[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEE0EEE00EE0EEE"
    )
        port map (
      I0 => \s_axi_rdata_i[2]_i_2_n_0\,
      I1 => \s_axi_rdata_i[2]_i_3_n_0\,
      I2 => \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg\,
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg\,
      I5 => \s_axi_rdata_i_reg[2]\(0),
      O => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0\(2)
    );
\s_axi_rdata_i[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \s_axi_rdata_i_reg[5]\(2),
      I1 => is_register(0),
      I2 => \s_axi_rdata_i_reg[5]_0\(2),
      I3 => bus2ip_rdce(5),
      I4 => bus2ip_rdce(3),
      I5 => bus2ip_rdce(4),
      O => \s_axi_rdata_i[2]_i_2_n_0\
    );
\s_axi_rdata_i[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AA88B8B8"
    )
        port map (
      I0 => \s_axi_rdata_i_reg[2]_0\(2),
      I1 => bus2ip_rdce(2),
      I2 => dpo(2),
      I3 => is_register(0),
      I4 => bus2ip_rdce(1),
      I5 => \s_axi_rdata_i[31]_i_2_n_0\,
      O => \s_axi_rdata_i[2]_i_3_n_0\
    );
\s_axi_rdata_i[2]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^gen_bkend_ce_registers[8].ce_out_i_reg[8]_0\,
      I1 => \^bus_rnw_reg_reg_0\,
      O => bus2ip_rdce(3)
    );
\s_axi_rdata_i[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000501050"
    )
        port map (
      I0 => \s_axi_rdata_i[31]_i_2_n_0\,
      I1 => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg\,
      I2 => dpo(30),
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg\,
      I5 => S0_AXI_ARREADY_INST_0_i_3_n_0,
      O => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0\(30)
    );
\s_axi_rdata_i[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000501050"
    )
        port map (
      I0 => \s_axi_rdata_i[31]_i_2_n_0\,
      I1 => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg\,
      I2 => dpo(31),
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg\,
      I5 => S0_AXI_ARREADY_INST_0_i_3_n_0,
      O => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0\(31)
    );
\s_axi_rdata_i[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F0E0"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg\,
      I1 => \^gen_bkend_ce_registers[8].ce_out_i_reg[8]_0\,
      I2 => \^bus_rnw_reg_reg_0\,
      I3 => \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg\,
      O => \s_axi_rdata_i[31]_i_2_n_0\
    );
\s_axi_rdata_i[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEE0EEE00EE0EEE"
    )
        port map (
      I0 => \s_axi_rdata_i[3]_i_2_n_0\,
      I1 => \s_axi_rdata_i[3]_i_3_n_0\,
      I2 => \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg\,
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg\,
      I5 => CO(0),
      O => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0\(3)
    );
\s_axi_rdata_i[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AC00A000"
    )
        port map (
      I0 => \s_axi_rdata_i_reg[5]\(3),
      I1 => \s_axi_rdata_i_reg[5]_0\(3),
      I2 => \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg\,
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg\,
      O => \s_axi_rdata_i[3]_i_2_n_0\
    );
\s_axi_rdata_i[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00003070"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg\,
      I1 => \^bus_rnw_reg_reg_0\,
      I2 => dpo(3),
      I3 => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg\,
      I4 => \s_axi_rdata_i[31]_i_2_n_0\,
      O => \s_axi_rdata_i[3]_i_3_n_0\
    );
\s_axi_rdata_i[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF00000004"
    )
        port map (
      I0 => bus2ip_rdce(2),
      I1 => dpo(4),
      I2 => bus2ip_rdce(1),
      I3 => \s_axi_rdata_i[31]_i_2_n_0\,
      I4 => S0_AXI_ARREADY_INST_0_i_3_n_0,
      I5 => \s_axi_rdata_i[4]_i_2_n_0\,
      O => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0\(4)
    );
\s_axi_rdata_i[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AC00A000"
    )
        port map (
      I0 => \s_axi_rdata_i_reg[5]\(4),
      I1 => \s_axi_rdata_i_reg[5]_0\(4),
      I2 => \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg\,
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg\,
      O => \s_axi_rdata_i[4]_i_2_n_0\
    );
\s_axi_rdata_i[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF00000004"
    )
        port map (
      I0 => bus2ip_rdce(2),
      I1 => dpo(5),
      I2 => bus2ip_rdce(1),
      I3 => \s_axi_rdata_i[31]_i_2_n_0\,
      I4 => S0_AXI_ARREADY_INST_0_i_3_n_0,
      I5 => \s_axi_rdata_i[5]_i_4_n_0\,
      O => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0\(5)
    );
\s_axi_rdata_i[5]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg\,
      I1 => \^bus_rnw_reg_reg_0\,
      O => bus2ip_rdce(2)
    );
\s_axi_rdata_i[5]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg\,
      I1 => \^bus_rnw_reg_reg_0\,
      O => bus2ip_rdce(1)
    );
\s_axi_rdata_i[5]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AC00A000"
    )
        port map (
      I0 => \s_axi_rdata_i_reg[5]\(5),
      I1 => \s_axi_rdata_i_reg[5]_0\(5),
      I2 => \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg\,
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg\,
      O => \s_axi_rdata_i[5]_i_4_n_0\
    );
\s_axi_rdata_i[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000501050"
    )
        port map (
      I0 => \s_axi_rdata_i[31]_i_2_n_0\,
      I1 => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg\,
      I2 => dpo(6),
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg\,
      I5 => S0_AXI_ARREADY_INST_0_i_3_n_0,
      O => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0\(6)
    );
\s_axi_rdata_i[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000501050"
    )
        port map (
      I0 => \s_axi_rdata_i[31]_i_2_n_0\,
      I1 => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg\,
      I2 => dpo(7),
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg\,
      I5 => S0_AXI_ARREADY_INST_0_i_3_n_0,
      O => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0\(7)
    );
\s_axi_rdata_i[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000501050"
    )
        port map (
      I0 => \s_axi_rdata_i[31]_i_2_n_0\,
      I1 => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg\,
      I2 => dpo(8),
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg\,
      I5 => S0_AXI_ARREADY_INST_0_i_3_n_0,
      O => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0\(8)
    );
\s_axi_rdata_i[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000501050"
    )
        port map (
      I0 => \s_axi_rdata_i[31]_i_2_n_0\,
      I1 => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg\,
      I2 => dpo(9),
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg\,
      I5 => S0_AXI_ARREADY_INST_0_i_3_n_0,
      O => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0\(9)
    );
s_axi_rvalid_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08FF0808"
    )
        port map (
      I0 => \^is_read_reg\,
      I1 => s_axi_rvalid_i_reg(0),
      I2 => s_axi_rvalid_i_reg(1),
      I3 => S0_AXI_RREADY,
      I4 => s_axi_rvalid_i_reg_0,
      O => \state_reg[0]\
    );
\sit_register[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg\,
      I1 => \^bus_rnw_reg_reg_0\,
      O => E(0)
    );
\state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"77FC44FC"
    )
        port map (
      I0 => \state1__2\,
      I1 => s_axi_rvalid_i_reg(0),
      I2 => S0_AXI_ARVALID,
      I3 => s_axi_rvalid_i_reg(1),
      I4 => \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_1\,
      O => D(0)
    );
\state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55FFFF0C5500FF0C"
    )
        port map (
      I0 => \state1__2\,
      I1 => p_5_in,
      I2 => S0_AXI_ARVALID,
      I3 => s_axi_rvalid_i_reg(1),
      I4 => s_axi_rvalid_i_reg(0),
      I5 => \^is_read_reg\,
      O => D(1)
    );
write_fsl_error_d1_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_0\,
      I1 => \^bus_rnw_reg_reg_0\,
      O => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_3\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsl_v20 is
  port (
    write_fsl_error : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 6 downto 0 );
    FSL1_S_Exists_I : out STD_LOGIC;
    read_fsl_error : out STD_LOGIC;
    FSL0_M_Full_I : out STD_LOGIC;
    \FSL_Flag_Handle.fifo_length_i_reg[6]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    DI : out STD_LOGIC_VECTOR ( 2 downto 0 );
    S : out STD_LOGIC_VECTOR ( 0 to 0 );
    dpo : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \FSL_Flag_Handle.write_addr_ptr_reg[0]\ : in STD_LOGIC;
    SYS_Rst_I : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\ : in STD_LOGIC;
    Bus_RNW_reg : in STD_LOGIC;
    rit_detect_d1_reg : in STD_LOGIC_VECTOR ( 5 downto 0 );
    Bus_RNW_reg_0 : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\ : in STD_LOGIC;
    S0_AXI_ACLK : in STD_LOGIC;
    S0_AXI_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsl_v20;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsl_v20 is
begin
\Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Sync_FIFO_2
     port map (
      Bus_RNW_reg => Bus_RNW_reg,
      Bus_RNW_reg_0 => Bus_RNW_reg_0,
      DI(2 downto 0) => DI(2 downto 0),
      FSL0_M_Full_I => FSL0_M_Full_I,
      FSL1_S_Exists_I => FSL1_S_Exists_I,
      \FSL_Flag_Handle.fifo_length_i_reg[6]_0\(3 downto 0) => \FSL_Flag_Handle.fifo_length_i_reg[6]\(3 downto 0),
      \FSL_Flag_Handle.write_addr_ptr_reg[0]_0\ => \FSL_Flag_Handle.write_addr_ptr_reg[0]\,
      \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\ => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\,
      \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\ => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\,
      Q(6 downto 0) => Q(6 downto 0),
      S(0) => S(0),
      S0_AXI_ACLK => S0_AXI_ACLK,
      S0_AXI_WDATA(31 downto 0) => S0_AXI_WDATA(31 downto 0),
      SR(0) => SR(0),
      SYS_Rst_I => SYS_Rst_I,
      dpo(31 downto 0) => dpo(31 downto 0),
      read_fsl_error => read_fsl_error,
      rit_detect_d1_reg(5 downto 0) => rit_detect_d1_reg(5 downto 0),
      write_fsl_error => write_fsl_error
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsl_v20_1 is
  port (
    read_fsl_error : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 6 downto 0 );
    FSL0_S_Exists_I : out STD_LOGIC;
    write_fsl_error : out STD_LOGIC;
    FSL1_M_Full_I : out STD_LOGIC;
    \FSL_Flag_Handle.fifo_length_i_reg[6]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    DI : out STD_LOGIC_VECTOR ( 2 downto 0 );
    S : out STD_LOGIC_VECTOR ( 0 to 0 );
    dpo : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Bus_RNW_reg : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\ : in STD_LOGIC;
    \FSL_Flag_Handle.write_addr_ptr_reg[0]\ : in STD_LOGIC;
    SYS_Rst_I : in STD_LOGIC;
    rit_detect_d1_reg : in STD_LOGIC_VECTOR ( 5 downto 0 );
    Bus_RNW_reg_0 : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\ : in STD_LOGIC;
    S0_AXI_ACLK : in STD_LOGIC;
    S1_AXI_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsl_v20_1 : entity is "fsl_v20";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsl_v20_1;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsl_v20_1 is
begin
\Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Sync_FIFO
     port map (
      Bus_RNW_reg => Bus_RNW_reg,
      Bus_RNW_reg_0 => Bus_RNW_reg_0,
      DI(2 downto 0) => DI(2 downto 0),
      FSL0_S_Exists_I => FSL0_S_Exists_I,
      FSL1_M_Full_I => FSL1_M_Full_I,
      \FSL_Flag_Handle.fifo_length_i_reg[6]_0\(3 downto 0) => \FSL_Flag_Handle.fifo_length_i_reg[6]\(3 downto 0),
      \FSL_Flag_Handle.write_addr_ptr_reg[0]_0\ => \FSL_Flag_Handle.write_addr_ptr_reg[0]\,
      \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\ => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\,
      \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\ => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\,
      Q(6 downto 0) => Q(6 downto 0),
      S(0) => S(0),
      S0_AXI_ACLK => S0_AXI_ACLK,
      S1_AXI_WDATA(31 downto 0) => S1_AXI_WDATA(31 downto 0),
      SR(0) => SR(0),
      SYS_Rst_I => SYS_Rst_I,
      dpo(31 downto 0) => dpo(31 downto 0),
      read_fsl_error => read_fsl_error,
      rit_detect_d1_reg(5 downto 0) => rit_detect_d1_reg(5 downto 0),
      write_fsl_error => write_fsl_error
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_slave_attachment is
  port (
    \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\ : out STD_LOGIC;
    Bus_RNW_reg_reg : out STD_LOGIC;
    s_axi_rvalid_i_reg_0 : out STD_LOGIC;
    s_axi_bvalid_i_reg_0 : out STD_LOGIC;
    is_read_reg_0 : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0\ : out STD_LOGIC;
    FSL_M_Reset0 : out STD_LOGIC;
    FSL_S_Reset0 : out STD_LOGIC;
    empty_error : out STD_LOGIC;
    \is_register07_out__0\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_2\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    S1_AXI_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    SYS_Rst_I : in STD_LOGIC;
    S1_AXI_ACLK : in STD_LOGIC;
    S1_AXI_ARVALID : in STD_LOGIC;
    S1_AXI_AWVALID : in STD_LOGIC;
    S1_AXI_WVALID : in STD_LOGIC;
    S1_AXI_WDATA : in STD_LOGIC_VECTOR ( 2 downto 0 );
    full_error_reg : in STD_LOGIC;
    FSL1_M_Full_I : in STD_LOGIC;
    dpo : in STD_LOGIC_VECTOR ( 31 downto 0 );
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    \s_axi_rdata_i_reg[2]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    empty_error_reg : in STD_LOGIC;
    FSL1_S_Exists_I : in STD_LOGIC;
    S1_AXI_BREADY : in STD_LOGIC;
    S1_AXI_RREADY : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 5 downto 0 );
    is_register : in STD_LOGIC_VECTOR ( 0 to 2 );
    \s_axi_rdata_i_reg[5]_0\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S1_AXI_ARADDR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S1_AXI_AWADDR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \s_axi_rdata_i_reg[2]_1\ : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_slave_attachment;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_slave_attachment is
  signal \FSM_onehot_state[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[3]\ : STD_LOGIC;
  signal \INCLUDE_DPHASE_TIMER.dpto_cnt[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal I_DECODER_n_14 : STD_LOGIC;
  signal I_DECODER_n_15 : STD_LOGIC;
  signal I_DECODER_n_16 : STD_LOGIC;
  signal I_DECODER_n_17 : STD_LOGIC;
  signal I_DECODER_n_18 : STD_LOGIC;
  signal I_DECODER_n_19 : STD_LOGIC;
  signal I_DECODER_n_20 : STD_LOGIC;
  signal I_DECODER_n_21 : STD_LOGIC;
  signal I_DECODER_n_22 : STD_LOGIC;
  signal I_DECODER_n_23 : STD_LOGIC;
  signal I_DECODER_n_24 : STD_LOGIC;
  signal I_DECODER_n_25 : STD_LOGIC;
  signal I_DECODER_n_26 : STD_LOGIC;
  signal I_DECODER_n_27 : STD_LOGIC;
  signal I_DECODER_n_28 : STD_LOGIC;
  signal I_DECODER_n_29 : STD_LOGIC;
  signal I_DECODER_n_30 : STD_LOGIC;
  signal I_DECODER_n_31 : STD_LOGIC;
  signal I_DECODER_n_32 : STD_LOGIC;
  signal I_DECODER_n_33 : STD_LOGIC;
  signal I_DECODER_n_34 : STD_LOGIC;
  signal I_DECODER_n_35 : STD_LOGIC;
  signal I_DECODER_n_36 : STD_LOGIC;
  signal I_DECODER_n_37 : STD_LOGIC;
  signal I_DECODER_n_38 : STD_LOGIC;
  signal I_DECODER_n_39 : STD_LOGIC;
  signal I_DECODER_n_4 : STD_LOGIC;
  signal I_DECODER_n_40 : STD_LOGIC;
  signal I_DECODER_n_41 : STD_LOGIC;
  signal I_DECODER_n_42 : STD_LOGIC;
  signal I_DECODER_n_43 : STD_LOGIC;
  signal I_DECODER_n_44 : STD_LOGIC;
  signal I_DECODER_n_45 : STD_LOGIC;
  signal I_DECODER_n_47 : STD_LOGIC;
  signal I_DECODER_n_48 : STD_LOGIC;
  signal I_DECODER_n_5 : STD_LOGIC;
  signal I_DECODER_n_7 : STD_LOGIC;
  signal I_DECODER_n_8 : STD_LOGIC;
  signal I_DECODER_n_9 : STD_LOGIC;
  signal \bus2ip_addr_i[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[5]_i_1__0_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[5]_i_2__0_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i_reg_n_0_[2]\ : STD_LOGIC;
  signal \bus2ip_addr_i_reg_n_0_[3]\ : STD_LOGIC;
  signal \bus2ip_addr_i_reg_n_0_[4]\ : STD_LOGIC;
  signal \bus2ip_addr_i_reg_n_0_[5]\ : STD_LOGIC;
  signal bus2ip_rnw_i_reg_n_0 : STD_LOGIC;
  signal is_read : STD_LOGIC;
  signal \is_read_i_1__0_n_0\ : STD_LOGIC;
  signal is_read_reg_n_0 : STD_LOGIC;
  signal is_write : STD_LOGIC;
  signal is_write_reg_n_0 : STD_LOGIC;
  signal p_5_in : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal rst : STD_LOGIC;
  signal s_axi_bresp_i : STD_LOGIC;
  signal \^s_axi_bvalid_i_reg_0\ : STD_LOGIC;
  signal s_axi_rresp_i : STD_LOGIC;
  signal \^s_axi_rvalid_i_reg_0\ : STD_LOGIC;
  signal start2 : STD_LOGIC;
  signal start2_i_1_n_0 : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \state1__2\ : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]\ : label is "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[3]\ : label is "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \INCLUDE_DPHASE_TIMER.dpto_cnt[1]_i_1__0\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \INCLUDE_DPHASE_TIMER.dpto_cnt[2]_i_1__0\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_1__0\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \INCLUDE_DPHASE_TIMER.dpto_cnt[4]_i_2__0\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \bus2ip_addr_i[2]_i_1__0\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \bus2ip_addr_i[3]_i_1__0\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \bus2ip_addr_i[4]_i_1__0\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \bus2ip_addr_i[5]_i_2__0\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \is_read_i_2__0\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \is_write_i_1__0\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of start2_i_1 : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \state[1]_i_2__0\ : label is "soft_lutpair31";
begin
  s_axi_bvalid_i_reg_0 <= \^s_axi_bvalid_i_reg_0\;
  s_axi_rvalid_i_reg_0 <= \^s_axi_rvalid_i_reg_0\;
\FSM_onehot_state[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF150015001500"
    )
        port map (
      I0 => S1_AXI_ARVALID,
      I1 => S1_AXI_WVALID,
      I2 => S1_AXI_AWVALID,
      I3 => \FSM_onehot_state_reg_n_0_[0]\,
      I4 => \state1__2\,
      I5 => \FSM_onehot_state_reg_n_0_[3]\,
      O => \FSM_onehot_state[0]_i_1__0_n_0\
    );
\FSM_onehot_state[3]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => S1_AXI_BREADY,
      I1 => \^s_axi_bvalid_i_reg_0\,
      I2 => S1_AXI_RREADY,
      I3 => \^s_axi_rvalid_i_reg_0\,
      O => \state1__2\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => S1_AXI_ACLK,
      CE => '1',
      D => \FSM_onehot_state[0]_i_1__0_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[0]\,
      S => rst
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S1_AXI_ACLK,
      CE => '1',
      D => I_DECODER_n_9,
      Q => s_axi_rresp_i,
      R => rst
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S1_AXI_ACLK,
      CE => '1',
      D => I_DECODER_n_8,
      Q => s_axi_bresp_i,
      R => rst
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S1_AXI_ACLK,
      CE => '1',
      D => I_DECODER_n_7,
      Q => \FSM_onehot_state_reg_n_0_[3]\,
      R => rst
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(0),
      O => plusOp(0)
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(0),
      I1 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(1),
      O => plusOp(1)
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(0),
      I1 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(1),
      I2 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(2),
      O => plusOp(2)
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(1),
      I1 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(0),
      I2 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(2),
      I3 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(3),
      O => plusOp(3)
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[4]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      O => \INCLUDE_DPHASE_TIMER.dpto_cnt[4]_i_1__0_n_0\
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[4]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(2),
      I1 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(0),
      I2 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(1),
      I3 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(3),
      I4 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(4),
      O => plusOp(4)
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S1_AXI_ACLK,
      CE => '1',
      D => plusOp(0),
      Q => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(0),
      R => \INCLUDE_DPHASE_TIMER.dpto_cnt[4]_i_1__0_n_0\
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S1_AXI_ACLK,
      CE => '1',
      D => plusOp(1),
      Q => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(1),
      R => \INCLUDE_DPHASE_TIMER.dpto_cnt[4]_i_1__0_n_0\
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S1_AXI_ACLK,
      CE => '1',
      D => plusOp(2),
      Q => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(2),
      R => \INCLUDE_DPHASE_TIMER.dpto_cnt[4]_i_1__0_n_0\
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S1_AXI_ACLK,
      CE => '1',
      D => plusOp(3),
      Q => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(3),
      R => \INCLUDE_DPHASE_TIMER.dpto_cnt[4]_i_1__0_n_0\
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S1_AXI_ACLK,
      CE => '1',
      D => plusOp(4),
      Q => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(4),
      R => \INCLUDE_DPHASE_TIMER.dpto_cnt[4]_i_1__0_n_0\
    );
I_DECODER: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_address_decoder
     port map (
      Bus_RNW_reg_reg_0 => Bus_RNW_reg_reg,
      Bus_RNW_reg_reg_1 => bus2ip_rnw_i_reg_n_0,
      CO(0) => CO(0),
      D(1) => I_DECODER_n_4,
      D(0) => I_DECODER_n_5,
      E(0) => E(0),
      FSL1_M_Full_I => FSL1_M_Full_I,
      FSL1_S_Exists_I => FSL1_S_Exists_I,
      FSL_M_Reset0 => FSL_M_Reset0,
      FSL_S_Reset0 => FSL_S_Reset0,
      \FSM_onehot_state_reg[2]\(2) => I_DECODER_n_7,
      \FSM_onehot_state_reg[2]\(1) => I_DECODER_n_8,
      \FSM_onehot_state_reg[2]\(0) => I_DECODER_n_9,
      \FSM_onehot_state_reg[3]\(3) => \FSM_onehot_state_reg_n_0_[3]\,
      \FSM_onehot_state_reg[3]\(2) => s_axi_bresp_i,
      \FSM_onehot_state_reg[3]\(1) => s_axi_rresp_i,
      \FSM_onehot_state_reg[3]\(0) => \FSM_onehot_state_reg_n_0_[0]\,
      \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0\ => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\,
      \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1\ => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0\,
      \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_2\ => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1\,
      \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_3\ => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_2\,
      \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0\(31) => I_DECODER_n_14,
      \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0\(30) => I_DECODER_n_15,
      \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0\(29) => I_DECODER_n_16,
      \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0\(28) => I_DECODER_n_17,
      \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0\(27) => I_DECODER_n_18,
      \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0\(26) => I_DECODER_n_19,
      \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0\(25) => I_DECODER_n_20,
      \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0\(24) => I_DECODER_n_21,
      \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0\(23) => I_DECODER_n_22,
      \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0\(22) => I_DECODER_n_23,
      \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0\(21) => I_DECODER_n_24,
      \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0\(20) => I_DECODER_n_25,
      \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0\(19) => I_DECODER_n_26,
      \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0\(18) => I_DECODER_n_27,
      \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0\(17) => I_DECODER_n_28,
      \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0\(16) => I_DECODER_n_29,
      \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0\(15) => I_DECODER_n_30,
      \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0\(14) => I_DECODER_n_31,
      \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0\(13) => I_DECODER_n_32,
      \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0\(12) => I_DECODER_n_33,
      \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0\(11) => I_DECODER_n_34,
      \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0\(10) => I_DECODER_n_35,
      \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0\(9) => I_DECODER_n_36,
      \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0\(8) => I_DECODER_n_37,
      \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0\(7) => I_DECODER_n_38,
      \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0\(6) => I_DECODER_n_39,
      \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0\(5) => I_DECODER_n_40,
      \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0\(4) => I_DECODER_n_41,
      \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0\(3) => I_DECODER_n_42,
      \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0\(2) => I_DECODER_n_43,
      \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0\(1) => I_DECODER_n_44,
      \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0\(0) => I_DECODER_n_45,
      \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\ => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\,
      \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_0\ => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]\,
      \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]_0\(0) => \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]\(0),
      \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]_0\ => \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]\,
      \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_0\(0) => \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]\(0),
      \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_1\(3) => \bus2ip_addr_i_reg_n_0_[5]\,
      \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_1\(2) => \bus2ip_addr_i_reg_n_0_[4]\,
      \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_1\(1) => \bus2ip_addr_i_reg_n_0_[3]\,
      \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_1\(0) => \bus2ip_addr_i_reg_n_0_[2]\,
      Q => start2,
      S1_AXI_ACLK => S1_AXI_ACLK,
      S1_AXI_ARREADY => is_read_reg_n_0,
      S1_AXI_ARVALID => S1_AXI_ARVALID,
      S1_AXI_AWVALID => S1_AXI_AWVALID,
      S1_AXI_BREADY => S1_AXI_BREADY,
      S1_AXI_RREADY => S1_AXI_RREADY,
      S1_AXI_WDATA(2 downto 0) => S1_AXI_WDATA(2 downto 0),
      S1_AXI_WREADY => is_write_reg_n_0,
      S1_AXI_WREADY_0(4 downto 0) => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(4 downto 0),
      S1_AXI_WVALID => S1_AXI_WVALID,
      SYS_Rst_I => SYS_Rst_I,
      dpo(31 downto 0) => dpo(31 downto 0),
      empty_error => empty_error,
      empty_error_reg => empty_error_reg,
      full_error_reg => full_error_reg,
      is_read_reg => is_read_reg_0,
      is_register(0 to 2) => is_register(0 to 2),
      \is_register07_out__0\ => \is_register07_out__0\,
      p_5_in => p_5_in,
      s_axi_bvalid_i_reg => \^s_axi_bvalid_i_reg_0\,
      \s_axi_rdata_i_reg[2]\(0) => \s_axi_rdata_i_reg[2]_0\(0),
      \s_axi_rdata_i_reg[2]_0\(2 downto 0) => \s_axi_rdata_i_reg[2]_1\(2 downto 0),
      \s_axi_rdata_i_reg[5]\(5 downto 0) => Q(5 downto 0),
      \s_axi_rdata_i_reg[5]_0\(5 downto 0) => \s_axi_rdata_i_reg[5]_0\(5 downto 0),
      s_axi_rvalid_i_reg(1 downto 0) => state(1 downto 0),
      s_axi_rvalid_i_reg_0 => \^s_axi_rvalid_i_reg_0\,
      \state1__2\ => \state1__2\,
      \state_reg[0]\ => I_DECODER_n_47,
      \state_reg[1]\ => I_DECODER_n_48
    );
\bus2ip_addr_i[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => S1_AXI_ARADDR(0),
      I1 => S1_AXI_AWADDR(0),
      I2 => S1_AXI_ARVALID,
      O => \bus2ip_addr_i[2]_i_1__0_n_0\
    );
\bus2ip_addr_i[3]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => S1_AXI_ARADDR(1),
      I1 => S1_AXI_AWADDR(1),
      I2 => S1_AXI_ARVALID,
      O => \bus2ip_addr_i[3]_i_1__0_n_0\
    );
\bus2ip_addr_i[4]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => S1_AXI_ARADDR(2),
      I1 => S1_AXI_AWADDR(2),
      I2 => S1_AXI_ARVALID,
      O => \bus2ip_addr_i[4]_i_1__0_n_0\
    );
\bus2ip_addr_i[5]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000EA"
    )
        port map (
      I0 => S1_AXI_ARVALID,
      I1 => S1_AXI_AWVALID,
      I2 => S1_AXI_WVALID,
      I3 => state(1),
      I4 => state(0),
      O => \bus2ip_addr_i[5]_i_1__0_n_0\
    );
\bus2ip_addr_i[5]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => S1_AXI_ARADDR(3),
      I1 => S1_AXI_AWADDR(3),
      I2 => S1_AXI_ARVALID,
      O => \bus2ip_addr_i[5]_i_2__0_n_0\
    );
\bus2ip_addr_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S1_AXI_ACLK,
      CE => \bus2ip_addr_i[5]_i_1__0_n_0\,
      D => \bus2ip_addr_i[2]_i_1__0_n_0\,
      Q => \bus2ip_addr_i_reg_n_0_[2]\,
      R => rst
    );
\bus2ip_addr_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S1_AXI_ACLK,
      CE => \bus2ip_addr_i[5]_i_1__0_n_0\,
      D => \bus2ip_addr_i[3]_i_1__0_n_0\,
      Q => \bus2ip_addr_i_reg_n_0_[3]\,
      R => rst
    );
\bus2ip_addr_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S1_AXI_ACLK,
      CE => \bus2ip_addr_i[5]_i_1__0_n_0\,
      D => \bus2ip_addr_i[4]_i_1__0_n_0\,
      Q => \bus2ip_addr_i_reg_n_0_[4]\,
      R => rst
    );
\bus2ip_addr_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S1_AXI_ACLK,
      CE => \bus2ip_addr_i[5]_i_1__0_n_0\,
      D => \bus2ip_addr_i[5]_i_2__0_n_0\,
      Q => \bus2ip_addr_i_reg_n_0_[5]\,
      R => rst
    );
bus2ip_rnw_i_reg: unisim.vcomponents.FDRE
     port map (
      C => S1_AXI_ACLK,
      CE => \bus2ip_addr_i[5]_i_1__0_n_0\,
      D => S1_AXI_ARVALID,
      Q => bus2ip_rnw_i_reg_n_0,
      R => rst
    );
\is_read_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEAEAEAAAAAAAAA"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => S1_AXI_BREADY,
      I2 => \^s_axi_bvalid_i_reg_0\,
      I3 => S1_AXI_RREADY,
      I4 => \^s_axi_rvalid_i_reg_0\,
      I5 => \FSM_onehot_state_reg_n_0_[3]\,
      O => \is_read_i_1__0_n_0\
    );
\is_read_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => S1_AXI_ARVALID,
      O => is_read
    );
is_read_reg: unisim.vcomponents.FDRE
     port map (
      C => S1_AXI_ACLK,
      CE => \is_read_i_1__0_n_0\,
      D => is_read,
      Q => is_read_reg_n_0,
      R => rst
    );
\is_write_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => S1_AXI_ARVALID,
      I2 => S1_AXI_AWVALID,
      I3 => S1_AXI_WVALID,
      O => is_write
    );
is_write_reg: unisim.vcomponents.FDRE
     port map (
      C => S1_AXI_ACLK,
      CE => \is_read_i_1__0_n_0\,
      D => is_write,
      Q => is_write_reg_n_0,
      R => rst
    );
rst_reg: unisim.vcomponents.FDRE
     port map (
      C => S1_AXI_ACLK,
      CE => '1',
      D => SYS_Rst_I,
      Q => rst,
      R => '0'
    );
s_axi_bvalid_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S1_AXI_ACLK,
      CE => '1',
      D => I_DECODER_n_48,
      Q => \^s_axi_bvalid_i_reg_0\,
      R => rst
    );
\s_axi_rdata_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S1_AXI_ACLK,
      CE => s_axi_rresp_i,
      D => I_DECODER_n_45,
      Q => S1_AXI_RDATA(0),
      R => rst
    );
\s_axi_rdata_i_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S1_AXI_ACLK,
      CE => s_axi_rresp_i,
      D => I_DECODER_n_35,
      Q => S1_AXI_RDATA(10),
      R => rst
    );
\s_axi_rdata_i_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S1_AXI_ACLK,
      CE => s_axi_rresp_i,
      D => I_DECODER_n_34,
      Q => S1_AXI_RDATA(11),
      R => rst
    );
\s_axi_rdata_i_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S1_AXI_ACLK,
      CE => s_axi_rresp_i,
      D => I_DECODER_n_33,
      Q => S1_AXI_RDATA(12),
      R => rst
    );
\s_axi_rdata_i_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S1_AXI_ACLK,
      CE => s_axi_rresp_i,
      D => I_DECODER_n_32,
      Q => S1_AXI_RDATA(13),
      R => rst
    );
\s_axi_rdata_i_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S1_AXI_ACLK,
      CE => s_axi_rresp_i,
      D => I_DECODER_n_31,
      Q => S1_AXI_RDATA(14),
      R => rst
    );
\s_axi_rdata_i_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S1_AXI_ACLK,
      CE => s_axi_rresp_i,
      D => I_DECODER_n_30,
      Q => S1_AXI_RDATA(15),
      R => rst
    );
\s_axi_rdata_i_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S1_AXI_ACLK,
      CE => s_axi_rresp_i,
      D => I_DECODER_n_29,
      Q => S1_AXI_RDATA(16),
      R => rst
    );
\s_axi_rdata_i_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S1_AXI_ACLK,
      CE => s_axi_rresp_i,
      D => I_DECODER_n_28,
      Q => S1_AXI_RDATA(17),
      R => rst
    );
\s_axi_rdata_i_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S1_AXI_ACLK,
      CE => s_axi_rresp_i,
      D => I_DECODER_n_27,
      Q => S1_AXI_RDATA(18),
      R => rst
    );
\s_axi_rdata_i_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S1_AXI_ACLK,
      CE => s_axi_rresp_i,
      D => I_DECODER_n_26,
      Q => S1_AXI_RDATA(19),
      R => rst
    );
\s_axi_rdata_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S1_AXI_ACLK,
      CE => s_axi_rresp_i,
      D => I_DECODER_n_44,
      Q => S1_AXI_RDATA(1),
      R => rst
    );
\s_axi_rdata_i_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S1_AXI_ACLK,
      CE => s_axi_rresp_i,
      D => I_DECODER_n_25,
      Q => S1_AXI_RDATA(20),
      R => rst
    );
\s_axi_rdata_i_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S1_AXI_ACLK,
      CE => s_axi_rresp_i,
      D => I_DECODER_n_24,
      Q => S1_AXI_RDATA(21),
      R => rst
    );
\s_axi_rdata_i_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S1_AXI_ACLK,
      CE => s_axi_rresp_i,
      D => I_DECODER_n_23,
      Q => S1_AXI_RDATA(22),
      R => rst
    );
\s_axi_rdata_i_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S1_AXI_ACLK,
      CE => s_axi_rresp_i,
      D => I_DECODER_n_22,
      Q => S1_AXI_RDATA(23),
      R => rst
    );
\s_axi_rdata_i_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S1_AXI_ACLK,
      CE => s_axi_rresp_i,
      D => I_DECODER_n_21,
      Q => S1_AXI_RDATA(24),
      R => rst
    );
\s_axi_rdata_i_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S1_AXI_ACLK,
      CE => s_axi_rresp_i,
      D => I_DECODER_n_20,
      Q => S1_AXI_RDATA(25),
      R => rst
    );
\s_axi_rdata_i_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S1_AXI_ACLK,
      CE => s_axi_rresp_i,
      D => I_DECODER_n_19,
      Q => S1_AXI_RDATA(26),
      R => rst
    );
\s_axi_rdata_i_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S1_AXI_ACLK,
      CE => s_axi_rresp_i,
      D => I_DECODER_n_18,
      Q => S1_AXI_RDATA(27),
      R => rst
    );
\s_axi_rdata_i_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S1_AXI_ACLK,
      CE => s_axi_rresp_i,
      D => I_DECODER_n_17,
      Q => S1_AXI_RDATA(28),
      R => rst
    );
\s_axi_rdata_i_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S1_AXI_ACLK,
      CE => s_axi_rresp_i,
      D => I_DECODER_n_16,
      Q => S1_AXI_RDATA(29),
      R => rst
    );
\s_axi_rdata_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S1_AXI_ACLK,
      CE => s_axi_rresp_i,
      D => I_DECODER_n_43,
      Q => S1_AXI_RDATA(2),
      R => rst
    );
\s_axi_rdata_i_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S1_AXI_ACLK,
      CE => s_axi_rresp_i,
      D => I_DECODER_n_15,
      Q => S1_AXI_RDATA(30),
      R => rst
    );
\s_axi_rdata_i_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S1_AXI_ACLK,
      CE => s_axi_rresp_i,
      D => I_DECODER_n_14,
      Q => S1_AXI_RDATA(31),
      R => rst
    );
\s_axi_rdata_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S1_AXI_ACLK,
      CE => s_axi_rresp_i,
      D => I_DECODER_n_42,
      Q => S1_AXI_RDATA(3),
      R => rst
    );
\s_axi_rdata_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S1_AXI_ACLK,
      CE => s_axi_rresp_i,
      D => I_DECODER_n_41,
      Q => S1_AXI_RDATA(4),
      R => rst
    );
\s_axi_rdata_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S1_AXI_ACLK,
      CE => s_axi_rresp_i,
      D => I_DECODER_n_40,
      Q => S1_AXI_RDATA(5),
      R => rst
    );
\s_axi_rdata_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S1_AXI_ACLK,
      CE => s_axi_rresp_i,
      D => I_DECODER_n_39,
      Q => S1_AXI_RDATA(6),
      R => rst
    );
\s_axi_rdata_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S1_AXI_ACLK,
      CE => s_axi_rresp_i,
      D => I_DECODER_n_38,
      Q => S1_AXI_RDATA(7),
      R => rst
    );
\s_axi_rdata_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S1_AXI_ACLK,
      CE => s_axi_rresp_i,
      D => I_DECODER_n_37,
      Q => S1_AXI_RDATA(8),
      R => rst
    );
\s_axi_rdata_i_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S1_AXI_ACLK,
      CE => s_axi_rresp_i,
      D => I_DECODER_n_36,
      Q => S1_AXI_RDATA(9),
      R => rst
    );
s_axi_rvalid_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S1_AXI_ACLK,
      CE => '1',
      D => I_DECODER_n_47,
      Q => \^s_axi_rvalid_i_reg_0\,
      R => rst
    );
start2_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000F8"
    )
        port map (
      I0 => S1_AXI_AWVALID,
      I1 => S1_AXI_WVALID,
      I2 => S1_AXI_ARVALID,
      I3 => state(1),
      I4 => state(0),
      O => start2_i_1_n_0
    );
start2_reg: unisim.vcomponents.FDRE
     port map (
      C => S1_AXI_ACLK,
      CE => '1',
      D => start2_i_1_n_0,
      Q => start2,
      R => rst
    );
\state[1]_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => S1_AXI_AWVALID,
      I1 => S1_AXI_WVALID,
      O => p_5_in
    );
\state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S1_AXI_ACLK,
      CE => '1',
      D => I_DECODER_n_5,
      Q => state(0),
      R => rst
    );
\state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S1_AXI_ACLK,
      CE => '1',
      D => I_DECODER_n_4,
      Q => state(1),
      R => rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_slave_attachment_5 is
  port (
    \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\ : out STD_LOGIC;
    Bus_RNW_reg_reg : out STD_LOGIC;
    s_axi_rvalid_i_reg_0 : out STD_LOGIC;
    s_axi_bvalid_i_reg_0 : out STD_LOGIC;
    is_read_reg_0 : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0\ : out STD_LOGIC;
    FSL_M_Reset0 : out STD_LOGIC;
    FSL_S_Reset0 : out STD_LOGIC;
    empty_error : out STD_LOGIC;
    is_register07_out : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_2\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    S0_AXI_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    SYS_Rst_I : in STD_LOGIC;
    S0_AXI_ACLK : in STD_LOGIC;
    S0_AXI_ARVALID : in STD_LOGIC;
    S0_AXI_AWVALID : in STD_LOGIC;
    S0_AXI_WVALID : in STD_LOGIC;
    S0_AXI_WDATA : in STD_LOGIC_VECTOR ( 2 downto 0 );
    data1 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    FSL0_M_Full_I : in STD_LOGIC;
    dpo : in STD_LOGIC_VECTOR ( 31 downto 0 );
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    \s_axi_rdata_i_reg[2]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    FSL0_S_Exists_I : in STD_LOGIC;
    S0_AXI_BREADY : in STD_LOGIC;
    S0_AXI_RREADY : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 5 downto 0 );
    is_register : in STD_LOGIC_VECTOR ( 0 to 2 );
    \s_axi_rdata_i_reg[5]_0\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S0_AXI_ARADDR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S0_AXI_AWADDR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \s_axi_rdata_i_reg[2]_1\ : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_slave_attachment_5 : entity is "slave_attachment";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_slave_attachment_5;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_slave_attachment_5 is
  signal \FSM_onehot_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[3]\ : STD_LOGIC;
  signal \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal I_DECODER_n_14 : STD_LOGIC;
  signal I_DECODER_n_15 : STD_LOGIC;
  signal I_DECODER_n_16 : STD_LOGIC;
  signal I_DECODER_n_17 : STD_LOGIC;
  signal I_DECODER_n_18 : STD_LOGIC;
  signal I_DECODER_n_19 : STD_LOGIC;
  signal I_DECODER_n_20 : STD_LOGIC;
  signal I_DECODER_n_21 : STD_LOGIC;
  signal I_DECODER_n_22 : STD_LOGIC;
  signal I_DECODER_n_23 : STD_LOGIC;
  signal I_DECODER_n_24 : STD_LOGIC;
  signal I_DECODER_n_25 : STD_LOGIC;
  signal I_DECODER_n_26 : STD_LOGIC;
  signal I_DECODER_n_27 : STD_LOGIC;
  signal I_DECODER_n_28 : STD_LOGIC;
  signal I_DECODER_n_29 : STD_LOGIC;
  signal I_DECODER_n_30 : STD_LOGIC;
  signal I_DECODER_n_31 : STD_LOGIC;
  signal I_DECODER_n_32 : STD_LOGIC;
  signal I_DECODER_n_33 : STD_LOGIC;
  signal I_DECODER_n_34 : STD_LOGIC;
  signal I_DECODER_n_35 : STD_LOGIC;
  signal I_DECODER_n_36 : STD_LOGIC;
  signal I_DECODER_n_37 : STD_LOGIC;
  signal I_DECODER_n_38 : STD_LOGIC;
  signal I_DECODER_n_39 : STD_LOGIC;
  signal I_DECODER_n_4 : STD_LOGIC;
  signal I_DECODER_n_40 : STD_LOGIC;
  signal I_DECODER_n_41 : STD_LOGIC;
  signal I_DECODER_n_42 : STD_LOGIC;
  signal I_DECODER_n_43 : STD_LOGIC;
  signal I_DECODER_n_44 : STD_LOGIC;
  signal I_DECODER_n_45 : STD_LOGIC;
  signal I_DECODER_n_47 : STD_LOGIC;
  signal I_DECODER_n_48 : STD_LOGIC;
  signal I_DECODER_n_5 : STD_LOGIC;
  signal I_DECODER_n_7 : STD_LOGIC;
  signal I_DECODER_n_8 : STD_LOGIC;
  signal I_DECODER_n_9 : STD_LOGIC;
  signal \bus2ip_addr_i[5]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i_reg_n_0_[2]\ : STD_LOGIC;
  signal \bus2ip_addr_i_reg_n_0_[3]\ : STD_LOGIC;
  signal \bus2ip_addr_i_reg_n_0_[4]\ : STD_LOGIC;
  signal \bus2ip_addr_i_reg_n_0_[5]\ : STD_LOGIC;
  signal bus2ip_rnw_i : STD_LOGIC;
  signal clear : STD_LOGIC;
  signal is_read : STD_LOGIC;
  signal is_read_i_1_n_0 : STD_LOGIC;
  signal is_read_reg_n_0 : STD_LOGIC;
  signal is_write : STD_LOGIC;
  signal is_write_reg_n_0 : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 5 downto 2 );
  signal p_5_in : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal rst : STD_LOGIC;
  signal s_axi_bresp_i : STD_LOGIC;
  signal \^s_axi_bvalid_i_reg_0\ : STD_LOGIC;
  signal s_axi_rresp_i : STD_LOGIC;
  signal \^s_axi_rvalid_i_reg_0\ : STD_LOGIC;
  signal start2 : STD_LOGIC;
  signal start2_i_1_n_0 : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \state1__2\ : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]\ : label is "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[3]\ : label is "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \INCLUDE_DPHASE_TIMER.dpto_cnt[1]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \INCLUDE_DPHASE_TIMER.dpto_cnt[2]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \INCLUDE_DPHASE_TIMER.dpto_cnt[4]_i_2\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \bus2ip_addr_i[2]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \bus2ip_addr_i[3]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \bus2ip_addr_i[4]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \bus2ip_addr_i[5]_i_2\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of is_read_i_2 : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of is_write_i_1 : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of start2_i_1 : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \state[1]_i_2\ : label is "soft_lutpair13";
begin
  s_axi_bvalid_i_reg_0 <= \^s_axi_bvalid_i_reg_0\;
  s_axi_rvalid_i_reg_0 <= \^s_axi_rvalid_i_reg_0\;
\FSM_onehot_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF150015001500"
    )
        port map (
      I0 => S0_AXI_ARVALID,
      I1 => S0_AXI_WVALID,
      I2 => S0_AXI_AWVALID,
      I3 => \FSM_onehot_state_reg_n_0_[0]\,
      I4 => \state1__2\,
      I5 => \FSM_onehot_state_reg_n_0_[3]\,
      O => \FSM_onehot_state[0]_i_1_n_0\
    );
\FSM_onehot_state[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => S0_AXI_BREADY,
      I1 => \^s_axi_bvalid_i_reg_0\,
      I2 => S0_AXI_RREADY,
      I3 => \^s_axi_rvalid_i_reg_0\,
      O => \state1__2\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => S0_AXI_ACLK,
      CE => '1',
      D => \FSM_onehot_state[0]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[0]\,
      S => rst
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S0_AXI_ACLK,
      CE => '1',
      D => I_DECODER_n_9,
      Q => s_axi_rresp_i,
      R => rst
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S0_AXI_ACLK,
      CE => '1',
      D => I_DECODER_n_8,
      Q => s_axi_bresp_i,
      R => rst
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S0_AXI_ACLK,
      CE => '1',
      D => I_DECODER_n_7,
      Q => \FSM_onehot_state_reg_n_0_[3]\,
      R => rst
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(0),
      O => plusOp(0)
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(0),
      I1 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(1),
      O => plusOp(1)
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(0),
      I1 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(1),
      I2 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(2),
      O => plusOp(2)
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(1),
      I1 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(0),
      I2 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(2),
      I3 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(3),
      O => plusOp(3)
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      O => clear
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(2),
      I1 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(0),
      I2 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(1),
      I3 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(3),
      I4 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(4),
      O => plusOp(4)
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S0_AXI_ACLK,
      CE => '1',
      D => plusOp(0),
      Q => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(0),
      R => clear
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S0_AXI_ACLK,
      CE => '1',
      D => plusOp(1),
      Q => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(1),
      R => clear
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S0_AXI_ACLK,
      CE => '1',
      D => plusOp(2),
      Q => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(2),
      R => clear
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S0_AXI_ACLK,
      CE => '1',
      D => plusOp(3),
      Q => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(3),
      R => clear
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S0_AXI_ACLK,
      CE => '1',
      D => plusOp(4),
      Q => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(4),
      R => clear
    );
I_DECODER: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_address_decoder_6
     port map (
      Bus_RNW_reg_reg_0 => Bus_RNW_reg_reg,
      CO(0) => CO(0),
      D(1) => I_DECODER_n_4,
      D(0) => I_DECODER_n_5,
      E(0) => E(0),
      FSL0_M_Full_I => FSL0_M_Full_I,
      FSL0_S_Exists_I => FSL0_S_Exists_I,
      FSL_M_Reset0 => FSL_M_Reset0,
      FSL_S_Reset0 => FSL_S_Reset0,
      \FSM_onehot_state_reg[2]\(2) => I_DECODER_n_7,
      \FSM_onehot_state_reg[2]\(1) => I_DECODER_n_8,
      \FSM_onehot_state_reg[2]\(0) => I_DECODER_n_9,
      \FSM_onehot_state_reg[3]\(3) => \FSM_onehot_state_reg_n_0_[3]\,
      \FSM_onehot_state_reg[3]\(2) => s_axi_bresp_i,
      \FSM_onehot_state_reg[3]\(1) => s_axi_rresp_i,
      \FSM_onehot_state_reg[3]\(0) => \FSM_onehot_state_reg_n_0_[0]\,
      \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0\ => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\,
      \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1\ => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0\,
      \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_2\ => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1\,
      \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_3\ => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_2\,
      \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0\(31) => I_DECODER_n_14,
      \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0\(30) => I_DECODER_n_15,
      \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0\(29) => I_DECODER_n_16,
      \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0\(28) => I_DECODER_n_17,
      \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0\(27) => I_DECODER_n_18,
      \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0\(26) => I_DECODER_n_19,
      \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0\(25) => I_DECODER_n_20,
      \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0\(24) => I_DECODER_n_21,
      \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0\(23) => I_DECODER_n_22,
      \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0\(22) => I_DECODER_n_23,
      \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0\(21) => I_DECODER_n_24,
      \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0\(20) => I_DECODER_n_25,
      \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0\(19) => I_DECODER_n_26,
      \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0\(18) => I_DECODER_n_27,
      \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0\(17) => I_DECODER_n_28,
      \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0\(16) => I_DECODER_n_29,
      \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0\(15) => I_DECODER_n_30,
      \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0\(14) => I_DECODER_n_31,
      \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0\(13) => I_DECODER_n_32,
      \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0\(12) => I_DECODER_n_33,
      \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0\(11) => I_DECODER_n_34,
      \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0\(10) => I_DECODER_n_35,
      \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0\(9) => I_DECODER_n_36,
      \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0\(8) => I_DECODER_n_37,
      \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0\(7) => I_DECODER_n_38,
      \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0\(6) => I_DECODER_n_39,
      \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0\(5) => I_DECODER_n_40,
      \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0\(4) => I_DECODER_n_41,
      \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0\(3) => I_DECODER_n_42,
      \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0\(2) => I_DECODER_n_43,
      \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0\(1) => I_DECODER_n_44,
      \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0\(0) => I_DECODER_n_45,
      \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\ => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\,
      \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_0\ => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]\,
      \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]_0\(0) => \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]\(0),
      \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]_0\ => \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]\,
      \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_0\(0) => \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]\(0),
      \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_1\(3) => \bus2ip_addr_i_reg_n_0_[5]\,
      \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_1\(2) => \bus2ip_addr_i_reg_n_0_[4]\,
      \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_1\(1) => \bus2ip_addr_i_reg_n_0_[3]\,
      \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_1\(0) => \bus2ip_addr_i_reg_n_0_[2]\,
      Q => start2,
      S0_AXI_ACLK => S0_AXI_ACLK,
      S0_AXI_ARREADY => is_read_reg_n_0,
      S0_AXI_ARVALID => S0_AXI_ARVALID,
      S0_AXI_AWVALID => S0_AXI_AWVALID,
      S0_AXI_BREADY => S0_AXI_BREADY,
      S0_AXI_RREADY => S0_AXI_RREADY,
      S0_AXI_WDATA(2 downto 0) => S0_AXI_WDATA(2 downto 0),
      S0_AXI_WREADY => is_write_reg_n_0,
      S0_AXI_WREADY_0(4 downto 0) => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(4 downto 0),
      S0_AXI_WVALID => S0_AXI_WVALID,
      SYS_Rst_I => SYS_Rst_I,
      bus2ip_rnw_i => bus2ip_rnw_i,
      data1(1 downto 0) => data1(1 downto 0),
      dpo(31 downto 0) => dpo(31 downto 0),
      empty_error => empty_error,
      is_read_reg => is_read_reg_0,
      is_register(0 to 2) => is_register(0 to 2),
      is_register07_out => is_register07_out,
      p_5_in => p_5_in,
      s_axi_bvalid_i_reg => \^s_axi_bvalid_i_reg_0\,
      \s_axi_rdata_i_reg[2]\(0) => \s_axi_rdata_i_reg[2]_0\(0),
      \s_axi_rdata_i_reg[2]_0\(2 downto 0) => \s_axi_rdata_i_reg[2]_1\(2 downto 0),
      \s_axi_rdata_i_reg[5]\(5 downto 0) => Q(5 downto 0),
      \s_axi_rdata_i_reg[5]_0\(5 downto 0) => \s_axi_rdata_i_reg[5]_0\(5 downto 0),
      s_axi_rvalid_i_reg(1 downto 0) => state(1 downto 0),
      s_axi_rvalid_i_reg_0 => \^s_axi_rvalid_i_reg_0\,
      \state1__2\ => \state1__2\,
      \state_reg[0]\ => I_DECODER_n_47,
      \state_reg[1]\ => I_DECODER_n_48
    );
\bus2ip_addr_i[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => S0_AXI_ARADDR(0),
      I1 => S0_AXI_AWADDR(0),
      I2 => S0_AXI_ARVALID,
      O => p_1_in(2)
    );
\bus2ip_addr_i[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => S0_AXI_ARADDR(1),
      I1 => S0_AXI_AWADDR(1),
      I2 => S0_AXI_ARVALID,
      O => p_1_in(3)
    );
\bus2ip_addr_i[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => S0_AXI_ARADDR(2),
      I1 => S0_AXI_AWADDR(2),
      I2 => S0_AXI_ARVALID,
      O => p_1_in(4)
    );
\bus2ip_addr_i[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000EA"
    )
        port map (
      I0 => S0_AXI_ARVALID,
      I1 => S0_AXI_AWVALID,
      I2 => S0_AXI_WVALID,
      I3 => state(1),
      I4 => state(0),
      O => \bus2ip_addr_i[5]_i_1_n_0\
    );
\bus2ip_addr_i[5]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => S0_AXI_ARADDR(3),
      I1 => S0_AXI_AWADDR(3),
      I2 => S0_AXI_ARVALID,
      O => p_1_in(5)
    );
\bus2ip_addr_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S0_AXI_ACLK,
      CE => \bus2ip_addr_i[5]_i_1_n_0\,
      D => p_1_in(2),
      Q => \bus2ip_addr_i_reg_n_0_[2]\,
      R => rst
    );
\bus2ip_addr_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S0_AXI_ACLK,
      CE => \bus2ip_addr_i[5]_i_1_n_0\,
      D => p_1_in(3),
      Q => \bus2ip_addr_i_reg_n_0_[3]\,
      R => rst
    );
\bus2ip_addr_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S0_AXI_ACLK,
      CE => \bus2ip_addr_i[5]_i_1_n_0\,
      D => p_1_in(4),
      Q => \bus2ip_addr_i_reg_n_0_[4]\,
      R => rst
    );
\bus2ip_addr_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S0_AXI_ACLK,
      CE => \bus2ip_addr_i[5]_i_1_n_0\,
      D => p_1_in(5),
      Q => \bus2ip_addr_i_reg_n_0_[5]\,
      R => rst
    );
bus2ip_rnw_i_reg: unisim.vcomponents.FDRE
     port map (
      C => S0_AXI_ACLK,
      CE => \bus2ip_addr_i[5]_i_1_n_0\,
      D => S0_AXI_ARVALID,
      Q => bus2ip_rnw_i,
      R => rst
    );
is_read_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEAEAEAAAAAAAAA"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => S0_AXI_BREADY,
      I2 => \^s_axi_bvalid_i_reg_0\,
      I3 => S0_AXI_RREADY,
      I4 => \^s_axi_rvalid_i_reg_0\,
      I5 => \FSM_onehot_state_reg_n_0_[3]\,
      O => is_read_i_1_n_0
    );
is_read_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => S0_AXI_ARVALID,
      O => is_read
    );
is_read_reg: unisim.vcomponents.FDRE
     port map (
      C => S0_AXI_ACLK,
      CE => is_read_i_1_n_0,
      D => is_read,
      Q => is_read_reg_n_0,
      R => rst
    );
is_write_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => S0_AXI_ARVALID,
      I2 => S0_AXI_AWVALID,
      I3 => S0_AXI_WVALID,
      O => is_write
    );
is_write_reg: unisim.vcomponents.FDRE
     port map (
      C => S0_AXI_ACLK,
      CE => is_read_i_1_n_0,
      D => is_write,
      Q => is_write_reg_n_0,
      R => rst
    );
rst_reg: unisim.vcomponents.FDRE
     port map (
      C => S0_AXI_ACLK,
      CE => '1',
      D => SYS_Rst_I,
      Q => rst,
      R => '0'
    );
s_axi_bvalid_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S0_AXI_ACLK,
      CE => '1',
      D => I_DECODER_n_48,
      Q => \^s_axi_bvalid_i_reg_0\,
      R => rst
    );
\s_axi_rdata_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S0_AXI_ACLK,
      CE => s_axi_rresp_i,
      D => I_DECODER_n_45,
      Q => S0_AXI_RDATA(0),
      R => rst
    );
\s_axi_rdata_i_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S0_AXI_ACLK,
      CE => s_axi_rresp_i,
      D => I_DECODER_n_35,
      Q => S0_AXI_RDATA(10),
      R => rst
    );
\s_axi_rdata_i_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S0_AXI_ACLK,
      CE => s_axi_rresp_i,
      D => I_DECODER_n_34,
      Q => S0_AXI_RDATA(11),
      R => rst
    );
\s_axi_rdata_i_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S0_AXI_ACLK,
      CE => s_axi_rresp_i,
      D => I_DECODER_n_33,
      Q => S0_AXI_RDATA(12),
      R => rst
    );
\s_axi_rdata_i_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S0_AXI_ACLK,
      CE => s_axi_rresp_i,
      D => I_DECODER_n_32,
      Q => S0_AXI_RDATA(13),
      R => rst
    );
\s_axi_rdata_i_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S0_AXI_ACLK,
      CE => s_axi_rresp_i,
      D => I_DECODER_n_31,
      Q => S0_AXI_RDATA(14),
      R => rst
    );
\s_axi_rdata_i_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S0_AXI_ACLK,
      CE => s_axi_rresp_i,
      D => I_DECODER_n_30,
      Q => S0_AXI_RDATA(15),
      R => rst
    );
\s_axi_rdata_i_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S0_AXI_ACLK,
      CE => s_axi_rresp_i,
      D => I_DECODER_n_29,
      Q => S0_AXI_RDATA(16),
      R => rst
    );
\s_axi_rdata_i_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S0_AXI_ACLK,
      CE => s_axi_rresp_i,
      D => I_DECODER_n_28,
      Q => S0_AXI_RDATA(17),
      R => rst
    );
\s_axi_rdata_i_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S0_AXI_ACLK,
      CE => s_axi_rresp_i,
      D => I_DECODER_n_27,
      Q => S0_AXI_RDATA(18),
      R => rst
    );
\s_axi_rdata_i_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S0_AXI_ACLK,
      CE => s_axi_rresp_i,
      D => I_DECODER_n_26,
      Q => S0_AXI_RDATA(19),
      R => rst
    );
\s_axi_rdata_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S0_AXI_ACLK,
      CE => s_axi_rresp_i,
      D => I_DECODER_n_44,
      Q => S0_AXI_RDATA(1),
      R => rst
    );
\s_axi_rdata_i_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S0_AXI_ACLK,
      CE => s_axi_rresp_i,
      D => I_DECODER_n_25,
      Q => S0_AXI_RDATA(20),
      R => rst
    );
\s_axi_rdata_i_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S0_AXI_ACLK,
      CE => s_axi_rresp_i,
      D => I_DECODER_n_24,
      Q => S0_AXI_RDATA(21),
      R => rst
    );
\s_axi_rdata_i_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S0_AXI_ACLK,
      CE => s_axi_rresp_i,
      D => I_DECODER_n_23,
      Q => S0_AXI_RDATA(22),
      R => rst
    );
\s_axi_rdata_i_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S0_AXI_ACLK,
      CE => s_axi_rresp_i,
      D => I_DECODER_n_22,
      Q => S0_AXI_RDATA(23),
      R => rst
    );
\s_axi_rdata_i_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S0_AXI_ACLK,
      CE => s_axi_rresp_i,
      D => I_DECODER_n_21,
      Q => S0_AXI_RDATA(24),
      R => rst
    );
\s_axi_rdata_i_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S0_AXI_ACLK,
      CE => s_axi_rresp_i,
      D => I_DECODER_n_20,
      Q => S0_AXI_RDATA(25),
      R => rst
    );
\s_axi_rdata_i_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S0_AXI_ACLK,
      CE => s_axi_rresp_i,
      D => I_DECODER_n_19,
      Q => S0_AXI_RDATA(26),
      R => rst
    );
\s_axi_rdata_i_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S0_AXI_ACLK,
      CE => s_axi_rresp_i,
      D => I_DECODER_n_18,
      Q => S0_AXI_RDATA(27),
      R => rst
    );
\s_axi_rdata_i_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S0_AXI_ACLK,
      CE => s_axi_rresp_i,
      D => I_DECODER_n_17,
      Q => S0_AXI_RDATA(28),
      R => rst
    );
\s_axi_rdata_i_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S0_AXI_ACLK,
      CE => s_axi_rresp_i,
      D => I_DECODER_n_16,
      Q => S0_AXI_RDATA(29),
      R => rst
    );
\s_axi_rdata_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S0_AXI_ACLK,
      CE => s_axi_rresp_i,
      D => I_DECODER_n_43,
      Q => S0_AXI_RDATA(2),
      R => rst
    );
\s_axi_rdata_i_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S0_AXI_ACLK,
      CE => s_axi_rresp_i,
      D => I_DECODER_n_15,
      Q => S0_AXI_RDATA(30),
      R => rst
    );
\s_axi_rdata_i_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S0_AXI_ACLK,
      CE => s_axi_rresp_i,
      D => I_DECODER_n_14,
      Q => S0_AXI_RDATA(31),
      R => rst
    );
\s_axi_rdata_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S0_AXI_ACLK,
      CE => s_axi_rresp_i,
      D => I_DECODER_n_42,
      Q => S0_AXI_RDATA(3),
      R => rst
    );
\s_axi_rdata_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S0_AXI_ACLK,
      CE => s_axi_rresp_i,
      D => I_DECODER_n_41,
      Q => S0_AXI_RDATA(4),
      R => rst
    );
\s_axi_rdata_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S0_AXI_ACLK,
      CE => s_axi_rresp_i,
      D => I_DECODER_n_40,
      Q => S0_AXI_RDATA(5),
      R => rst
    );
\s_axi_rdata_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S0_AXI_ACLK,
      CE => s_axi_rresp_i,
      D => I_DECODER_n_39,
      Q => S0_AXI_RDATA(6),
      R => rst
    );
\s_axi_rdata_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S0_AXI_ACLK,
      CE => s_axi_rresp_i,
      D => I_DECODER_n_38,
      Q => S0_AXI_RDATA(7),
      R => rst
    );
\s_axi_rdata_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S0_AXI_ACLK,
      CE => s_axi_rresp_i,
      D => I_DECODER_n_37,
      Q => S0_AXI_RDATA(8),
      R => rst
    );
\s_axi_rdata_i_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S0_AXI_ACLK,
      CE => s_axi_rresp_i,
      D => I_DECODER_n_36,
      Q => S0_AXI_RDATA(9),
      R => rst
    );
s_axi_rvalid_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S0_AXI_ACLK,
      CE => '1',
      D => I_DECODER_n_47,
      Q => \^s_axi_rvalid_i_reg_0\,
      R => rst
    );
start2_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000F8"
    )
        port map (
      I0 => S0_AXI_AWVALID,
      I1 => S0_AXI_WVALID,
      I2 => S0_AXI_ARVALID,
      I3 => state(1),
      I4 => state(0),
      O => start2_i_1_n_0
    );
start2_reg: unisim.vcomponents.FDRE
     port map (
      C => S0_AXI_ACLK,
      CE => '1',
      D => start2_i_1_n_0,
      Q => start2,
      R => rst
    );
\state[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => S0_AXI_AWVALID,
      I1 => S0_AXI_WVALID,
      O => p_5_in
    );
\state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S0_AXI_ACLK,
      CE => '1',
      D => I_DECODER_n_5,
      Q => state(0),
      R => rst
    );
\state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S0_AXI_ACLK,
      CE => '1',
      D => I_DECODER_n_4,
      Q => state(1),
      R => rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif is
  port (
    \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\ : out STD_LOGIC;
    Bus_RNW_reg_reg : out STD_LOGIC;
    s_axi_rvalid_i_reg : out STD_LOGIC;
    s_axi_bvalid_i_reg : out STD_LOGIC;
    is_read_reg : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0\ : out STD_LOGIC;
    FSL_M_Reset0 : out STD_LOGIC;
    FSL_S_Reset0 : out STD_LOGIC;
    empty_error : out STD_LOGIC;
    \is_register07_out__0\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_2\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    S1_AXI_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    SYS_Rst_I : in STD_LOGIC;
    S1_AXI_ACLK : in STD_LOGIC;
    S1_AXI_ARVALID : in STD_LOGIC;
    S1_AXI_AWVALID : in STD_LOGIC;
    S1_AXI_WVALID : in STD_LOGIC;
    S1_AXI_WDATA : in STD_LOGIC_VECTOR ( 2 downto 0 );
    full_error_reg : in STD_LOGIC;
    FSL1_M_Full_I : in STD_LOGIC;
    dpo : in STD_LOGIC_VECTOR ( 31 downto 0 );
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    \s_axi_rdata_i_reg[2]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    empty_error_reg : in STD_LOGIC;
    FSL1_S_Exists_I : in STD_LOGIC;
    S1_AXI_BREADY : in STD_LOGIC;
    S1_AXI_RREADY : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 5 downto 0 );
    is_register : in STD_LOGIC_VECTOR ( 0 to 2 );
    \s_axi_rdata_i_reg[5]\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S1_AXI_ARADDR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S1_AXI_AWADDR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \s_axi_rdata_i_reg[2]_0\ : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif is
begin
I_SLAVE_ATTACHMENT: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_slave_attachment
     port map (
      Bus_RNW_reg_reg => Bus_RNW_reg_reg,
      CO(0) => CO(0),
      E(0) => E(0),
      FSL1_M_Full_I => FSL1_M_Full_I,
      FSL1_S_Exists_I => FSL1_S_Exists_I,
      FSL_M_Reset0 => FSL_M_Reset0,
      FSL_S_Reset0 => FSL_S_Reset0,
      \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\ => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\,
      \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0\ => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0\,
      \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1\ => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1\,
      \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_2\ => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_2\,
      \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\ => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\,
      \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]\ => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]\,
      \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]\(0) => \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]\(0),
      \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]\ => \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg\,
      \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]\(0) => \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]\(0),
      Q(5 downto 0) => Q(5 downto 0),
      S1_AXI_ACLK => S1_AXI_ACLK,
      S1_AXI_ARADDR(3 downto 0) => S1_AXI_ARADDR(3 downto 0),
      S1_AXI_ARVALID => S1_AXI_ARVALID,
      S1_AXI_AWADDR(3 downto 0) => S1_AXI_AWADDR(3 downto 0),
      S1_AXI_AWVALID => S1_AXI_AWVALID,
      S1_AXI_BREADY => S1_AXI_BREADY,
      S1_AXI_RDATA(31 downto 0) => S1_AXI_RDATA(31 downto 0),
      S1_AXI_RREADY => S1_AXI_RREADY,
      S1_AXI_WDATA(2 downto 0) => S1_AXI_WDATA(2 downto 0),
      S1_AXI_WVALID => S1_AXI_WVALID,
      SYS_Rst_I => SYS_Rst_I,
      dpo(31 downto 0) => dpo(31 downto 0),
      empty_error => empty_error,
      empty_error_reg => empty_error_reg,
      full_error_reg => full_error_reg,
      is_read_reg_0 => is_read_reg,
      is_register(0 to 2) => is_register(0 to 2),
      \is_register07_out__0\ => \is_register07_out__0\,
      s_axi_bvalid_i_reg_0 => s_axi_bvalid_i_reg,
      \s_axi_rdata_i_reg[2]_0\(0) => \s_axi_rdata_i_reg[2]\(0),
      \s_axi_rdata_i_reg[2]_1\(2 downto 0) => \s_axi_rdata_i_reg[2]_0\(2 downto 0),
      \s_axi_rdata_i_reg[5]_0\(5 downto 0) => \s_axi_rdata_i_reg[5]\(5 downto 0),
      s_axi_rvalid_i_reg_0 => s_axi_rvalid_i_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_4 is
  port (
    \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\ : out STD_LOGIC;
    Bus_RNW_reg_reg : out STD_LOGIC;
    s_axi_rvalid_i_reg : out STD_LOGIC;
    s_axi_bvalid_i_reg : out STD_LOGIC;
    is_read_reg : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0\ : out STD_LOGIC;
    FSL_M_Reset0 : out STD_LOGIC;
    FSL_S_Reset0 : out STD_LOGIC;
    empty_error : out STD_LOGIC;
    is_register07_out : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_2\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    S0_AXI_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    SYS_Rst_I : in STD_LOGIC;
    S0_AXI_ACLK : in STD_LOGIC;
    S0_AXI_ARVALID : in STD_LOGIC;
    S0_AXI_AWVALID : in STD_LOGIC;
    S0_AXI_WVALID : in STD_LOGIC;
    S0_AXI_WDATA : in STD_LOGIC_VECTOR ( 2 downto 0 );
    data1 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    FSL0_M_Full_I : in STD_LOGIC;
    dpo : in STD_LOGIC_VECTOR ( 31 downto 0 );
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    \s_axi_rdata_i_reg[2]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    FSL0_S_Exists_I : in STD_LOGIC;
    S0_AXI_BREADY : in STD_LOGIC;
    S0_AXI_RREADY : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 5 downto 0 );
    is_register : in STD_LOGIC_VECTOR ( 0 to 2 );
    \s_axi_rdata_i_reg[5]\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S0_AXI_ARADDR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S0_AXI_AWADDR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \s_axi_rdata_i_reg[2]_0\ : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_4 : entity is "axi_lite_ipif";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_4;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_4 is
begin
I_SLAVE_ATTACHMENT: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_slave_attachment_5
     port map (
      Bus_RNW_reg_reg => Bus_RNW_reg_reg,
      CO(0) => CO(0),
      E(0) => E(0),
      FSL0_M_Full_I => FSL0_M_Full_I,
      FSL0_S_Exists_I => FSL0_S_Exists_I,
      FSL_M_Reset0 => FSL_M_Reset0,
      FSL_S_Reset0 => FSL_S_Reset0,
      \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\ => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\,
      \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0\ => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0\,
      \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1\ => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1\,
      \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_2\ => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_2\,
      \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\ => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\,
      \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]\ => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]\,
      \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]\(0) => \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]\(0),
      \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]\ => \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg\,
      \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]\(0) => \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]\(0),
      Q(5 downto 0) => Q(5 downto 0),
      S0_AXI_ACLK => S0_AXI_ACLK,
      S0_AXI_ARADDR(3 downto 0) => S0_AXI_ARADDR(3 downto 0),
      S0_AXI_ARVALID => S0_AXI_ARVALID,
      S0_AXI_AWADDR(3 downto 0) => S0_AXI_AWADDR(3 downto 0),
      S0_AXI_AWVALID => S0_AXI_AWVALID,
      S0_AXI_BREADY => S0_AXI_BREADY,
      S0_AXI_RDATA(31 downto 0) => S0_AXI_RDATA(31 downto 0),
      S0_AXI_RREADY => S0_AXI_RREADY,
      S0_AXI_WDATA(2 downto 0) => S0_AXI_WDATA(2 downto 0),
      S0_AXI_WVALID => S0_AXI_WVALID,
      SYS_Rst_I => SYS_Rst_I,
      data1(1 downto 0) => data1(1 downto 0),
      dpo(31 downto 0) => dpo(31 downto 0),
      empty_error => empty_error,
      is_read_reg_0 => is_read_reg,
      is_register(0 to 2) => is_register(0 to 2),
      is_register07_out => is_register07_out,
      s_axi_bvalid_i_reg_0 => s_axi_bvalid_i_reg,
      \s_axi_rdata_i_reg[2]_0\(0) => \s_axi_rdata_i_reg[2]\(0),
      \s_axi_rdata_i_reg[2]_1\(2 downto 0) => \s_axi_rdata_i_reg[2]_0\(2 downto 0),
      \s_axi_rdata_i_reg[5]_0\(5 downto 0) => \s_axi_rdata_i_reg[5]\(5 downto 0),
      s_axi_rvalid_i_reg_0 => s_axi_rvalid_i_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_if_decode is
  port (
    \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\ : out STD_LOGIC;
    Interrupt_0 : out STD_LOGIC;
    FSL0_S_Reset_I : out STD_LOGIC;
    Bus_RNW_reg : out STD_LOGIC;
    s_axi_rvalid_i_reg : out STD_LOGIC;
    s_axi_bvalid_i_reg : out STD_LOGIC;
    is_read_reg : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\ : out STD_LOGIC;
    \rit_register_reg[0]_0\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0\ : out STD_LOGIC;
    S0_AXI_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    SYS_Rst_I : in STD_LOGIC;
    S0_AXI_ACLK : in STD_LOGIC;
    read_fsl_error : in STD_LOGIC;
    write_fsl_error : in STD_LOGIC;
    S : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    DI : in STD_LOGIC_VECTOR ( 2 downto 0 );
    rit_detect_d1_reg_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S0_AXI_ARVALID : in STD_LOGIC;
    S0_AXI_AWVALID : in STD_LOGIC;
    S0_AXI_WVALID : in STD_LOGIC;
    S0_AXI_WDATA : in STD_LOGIC_VECTOR ( 5 downto 0 );
    FSL0_M_Full_I : in STD_LOGIC;
    sit_detect_d1_reg_0 : in STD_LOGIC_VECTOR ( 5 downto 0 );
    dpo : in STD_LOGIC_VECTOR ( 31 downto 0 );
    FSL0_S_Exists_I : in STD_LOGIC;
    S0_AXI_BREADY : in STD_LOGIC;
    S0_AXI_RREADY : in STD_LOGIC;
    FSL1_S_Reset_I : in STD_LOGIC;
    S0_AXI_ARADDR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S0_AXI_AWADDR : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_if_decode;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_if_decode is
  signal \^bus_rnw_reg\ : STD_LOGIC;
  signal FSL0_M_Reset_I : STD_LOGIC;
  signal FSL_M_Reset0 : STD_LOGIC;
  signal FSL_S_Reset0 : STD_LOGIC;
  signal \I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg\ : STD_LOGIC;
  signal \Use_Async.Interrupt_i_1_n_0\ : STD_LOGIC;
  signal \Using_AXI.AXI4_If_n_12\ : STD_LOGIC;
  signal \Using_AXI.AXI4_If_n_13\ : STD_LOGIC;
  signal \Using_AXI.AXI4_If_n_15\ : STD_LOGIC;
  signal \Using_AXI.AXI4_If_n_16\ : STD_LOGIC;
  signal \Using_AXI.AXI4_If_n_17\ : STD_LOGIC;
  signal data1 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal empty_error : STD_LOGIC;
  signal ie_register : STD_LOGIC_VECTOR ( 0 to 2 );
  signal is_register : STD_LOGIC_VECTOR ( 0 to 2 );
  signal is_register07_out : STD_LOGIC;
  signal \is_register[0]_i_1_n_0\ : STD_LOGIC;
  signal \is_register[1]_i_1_n_0\ : STD_LOGIC;
  signal \is_register[2]_i_1_n_0\ : STD_LOGIC;
  signal read_fsl_error_d1 : STD_LOGIC;
  signal rit_detect_d0 : STD_LOGIC;
  signal rit_detect_d1 : STD_LOGIC;
  signal rit_detect_d10_carry_n_5 : STD_LOGIC;
  signal rit_detect_d10_carry_n_6 : STD_LOGIC;
  signal rit_detect_d10_carry_n_7 : STD_LOGIC;
  signal \^rit_register_reg[0]_0\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal sit_detect_d0 : STD_LOGIC;
  signal sit_detect_d1 : STD_LOGIC;
  signal sit_detect_d10_carry_i_1_n_0 : STD_LOGIC;
  signal sit_detect_d10_carry_i_2_n_0 : STD_LOGIC;
  signal sit_detect_d10_carry_i_3_n_0 : STD_LOGIC;
  signal sit_detect_d10_carry_i_5_n_0 : STD_LOGIC;
  signal sit_detect_d10_carry_i_6_n_0 : STD_LOGIC;
  signal sit_detect_d10_carry_i_7_n_0 : STD_LOGIC;
  signal sit_detect_d10_carry_n_5 : STD_LOGIC;
  signal sit_detect_d10_carry_n_6 : STD_LOGIC;
  signal sit_detect_d10_carry_n_7 : STD_LOGIC;
  signal sit_register : STD_LOGIC_VECTOR ( 0 to 5 );
  signal write_fsl_error_d1 : STD_LOGIC;
  signal NLW_rit_detect_d10_carry_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal NLW_rit_detect_d10_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_sit_detect_d10_carry_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal NLW_sit_detect_d10_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of rit_detect_d10_carry : label is 11;
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of rit_detect_d10_carry : label is "{SYNTH-8 {cell *THIS*}}";
  attribute COMPARATOR_THRESHOLD of sit_detect_d10_carry : label is 11;
  attribute METHODOLOGY_DRC_VIOS of sit_detect_d10_carry : label is "{SYNTH-8 {cell *THIS*}}";
begin
  Bus_RNW_reg <= \^bus_rnw_reg\;
  \rit_register_reg[0]_0\(5 downto 0) <= \^rit_register_reg[0]_0\(5 downto 0);
\FSL_Flag_Handle.fifo_length_i[6]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => SYS_Rst_I,
      I1 => FSL0_M_Reset_I,
      I2 => FSL1_S_Reset_I,
      O => SR(0)
    );
FSL_M_Reset_reg: unisim.vcomponents.FDRE
     port map (
      C => S0_AXI_ACLK,
      CE => '1',
      D => FSL_M_Reset0,
      Q => FSL0_M_Reset_I,
      R => SYS_Rst_I
    );
FSL_S_Reset_reg: unisim.vcomponents.FDRE
     port map (
      C => S0_AXI_ACLK,
      CE => '1',
      D => FSL_S_Reset0,
      Q => FSL0_S_Reset_I,
      R => SYS_Rst_I
    );
\Use_Async.Interrupt_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => ie_register(1),
      I1 => is_register(1),
      I2 => is_register(0),
      I3 => ie_register(0),
      I4 => is_register(2),
      I5 => ie_register(2),
      O => \Use_Async.Interrupt_i_1_n_0\
    );
\Use_Async.Interrupt_reg\: unisim.vcomponents.FDRE
     port map (
      C => S0_AXI_ACLK,
      CE => '1',
      D => \Use_Async.Interrupt_i_1_n_0\,
      Q => Interrupt_0,
      R => SYS_Rst_I
    );
\Using_AXI.AXI4_If\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_4
     port map (
      Bus_RNW_reg_reg => \^bus_rnw_reg\,
      CO(0) => rit_detect_d0,
      E(0) => \Using_AXI.AXI4_If_n_15\,
      FSL0_M_Full_I => FSL0_M_Full_I,
      FSL0_S_Exists_I => FSL0_S_Exists_I,
      FSL_M_Reset0 => FSL_M_Reset0,
      FSL_S_Reset0 => FSL_S_Reset0,
      \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\ => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\,
      \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0\ => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\,
      \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1\ => \Using_AXI.AXI4_If_n_13\,
      \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_2\ => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0\,
      \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\ => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\,
      \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]\ => \Using_AXI.AXI4_If_n_12\,
      \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]\(0) => \Using_AXI.AXI4_If_n_17\,
      \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg\ => \I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg\,
      \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]\(0) => \Using_AXI.AXI4_If_n_16\,
      Q(5) => sit_register(0),
      Q(4) => sit_register(1),
      Q(3) => sit_register(2),
      Q(2) => sit_register(3),
      Q(1) => sit_register(4),
      Q(0) => sit_register(5),
      S0_AXI_ACLK => S0_AXI_ACLK,
      S0_AXI_ARADDR(3 downto 0) => S0_AXI_ARADDR(3 downto 0),
      S0_AXI_ARVALID => S0_AXI_ARVALID,
      S0_AXI_AWADDR(3 downto 0) => S0_AXI_AWADDR(3 downto 0),
      S0_AXI_AWVALID => S0_AXI_AWVALID,
      S0_AXI_BREADY => S0_AXI_BREADY,
      S0_AXI_RDATA(31 downto 0) => S0_AXI_RDATA(31 downto 0),
      S0_AXI_RREADY => S0_AXI_RREADY,
      S0_AXI_WDATA(2 downto 0) => S0_AXI_WDATA(2 downto 0),
      S0_AXI_WVALID => S0_AXI_WVALID,
      SYS_Rst_I => SYS_Rst_I,
      data1(1 downto 0) => data1(1 downto 0),
      dpo(31 downto 0) => dpo(31 downto 0),
      empty_error => empty_error,
      is_read_reg => is_read_reg,
      is_register(0 to 2) => is_register(0 to 2),
      is_register07_out => is_register07_out,
      s_axi_bvalid_i_reg => s_axi_bvalid_i_reg,
      \s_axi_rdata_i_reg[2]\(0) => sit_detect_d0,
      \s_axi_rdata_i_reg[2]_0\(2) => ie_register(0),
      \s_axi_rdata_i_reg[2]_0\(1) => ie_register(1),
      \s_axi_rdata_i_reg[2]_0\(0) => ie_register(2),
      \s_axi_rdata_i_reg[5]\(5 downto 0) => \^rit_register_reg[0]_0\(5 downto 0),
      s_axi_rvalid_i_reg => s_axi_rvalid_i_reg
    );
empty_error_reg: unisim.vcomponents.FDRE
     port map (
      C => S0_AXI_ACLK,
      CE => '1',
      D => \Using_AXI.AXI4_If_n_12\,
      Q => data1(0),
      R => empty_error
    );
full_error_reg: unisim.vcomponents.FDRE
     port map (
      C => S0_AXI_ACLK,
      CE => '1',
      D => \Using_AXI.AXI4_If_n_13\,
      Q => data1(1),
      R => empty_error
    );
\ie_register_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S0_AXI_ACLK,
      CE => \Using_AXI.AXI4_If_n_16\,
      D => S0_AXI_WDATA(2),
      Q => ie_register(0),
      R => SYS_Rst_I
    );
\ie_register_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S0_AXI_ACLK,
      CE => \Using_AXI.AXI4_If_n_16\,
      D => S0_AXI_WDATA(1),
      Q => ie_register(1),
      R => SYS_Rst_I
    );
\ie_register_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S0_AXI_ACLK,
      CE => \Using_AXI.AXI4_If_n_16\,
      D => S0_AXI_WDATA(0),
      Q => ie_register(2),
      R => SYS_Rst_I
    );
\is_register[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22F2FFFF22F222F2"
    )
        port map (
      I0 => read_fsl_error,
      I1 => read_fsl_error_d1,
      I2 => write_fsl_error,
      I3 => write_fsl_error_d1,
      I4 => is_register07_out,
      I5 => is_register(0),
      O => \is_register[0]_i_1_n_0\
    );
\is_register[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF4FFF44444444"
    )
        port map (
      I0 => rit_detect_d1,
      I1 => rit_detect_d0,
      I2 => S0_AXI_WDATA(1),
      I3 => \I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg\,
      I4 => \^bus_rnw_reg\,
      I5 => is_register(1),
      O => \is_register[1]_i_1_n_0\
    );
\is_register[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF4FFF44444444"
    )
        port map (
      I0 => sit_detect_d1,
      I1 => sit_detect_d0,
      I2 => S0_AXI_WDATA(0),
      I3 => \I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg\,
      I4 => \^bus_rnw_reg\,
      I5 => is_register(2),
      O => \is_register[2]_i_1_n_0\
    );
\is_register_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S0_AXI_ACLK,
      CE => '1',
      D => \is_register[0]_i_1_n_0\,
      Q => is_register(0),
      R => SYS_Rst_I
    );
\is_register_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S0_AXI_ACLK,
      CE => '1',
      D => \is_register[1]_i_1_n_0\,
      Q => is_register(1),
      R => SYS_Rst_I
    );
\is_register_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S0_AXI_ACLK,
      CE => '1',
      D => \is_register[2]_i_1_n_0\,
      Q => is_register(2),
      R => SYS_Rst_I
    );
read_fsl_error_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => S0_AXI_ACLK,
      CE => '1',
      D => read_fsl_error,
      Q => read_fsl_error_d1,
      R => SYS_Rst_I
    );
rit_detect_d10_carry: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7 downto 4) => NLW_rit_detect_d10_carry_CO_UNCONNECTED(7 downto 4),
      CO(3) => rit_detect_d0,
      CO(2) => rit_detect_d10_carry_n_5,
      CO(1) => rit_detect_d10_carry_n_6,
      CO(0) => rit_detect_d10_carry_n_7,
      DI(7 downto 4) => B"0000",
      DI(3) => Q(0),
      DI(2 downto 0) => DI(2 downto 0),
      O(7 downto 0) => NLW_rit_detect_d10_carry_O_UNCONNECTED(7 downto 0),
      S(7 downto 4) => B"0000",
      S(3 downto 0) => rit_detect_d1_reg_0(3 downto 0)
    );
rit_detect_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => S0_AXI_ACLK,
      CE => '1',
      D => rit_detect_d0,
      Q => rit_detect_d1,
      R => '0'
    );
\rit_register_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S0_AXI_ACLK,
      CE => \Using_AXI.AXI4_If_n_17\,
      D => S0_AXI_WDATA(5),
      Q => \^rit_register_reg[0]_0\(5),
      R => SYS_Rst_I
    );
\rit_register_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S0_AXI_ACLK,
      CE => \Using_AXI.AXI4_If_n_17\,
      D => S0_AXI_WDATA(4),
      Q => \^rit_register_reg[0]_0\(4),
      R => SYS_Rst_I
    );
\rit_register_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S0_AXI_ACLK,
      CE => \Using_AXI.AXI4_If_n_17\,
      D => S0_AXI_WDATA(3),
      Q => \^rit_register_reg[0]_0\(3),
      R => SYS_Rst_I
    );
\rit_register_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S0_AXI_ACLK,
      CE => \Using_AXI.AXI4_If_n_17\,
      D => S0_AXI_WDATA(2),
      Q => \^rit_register_reg[0]_0\(2),
      R => SYS_Rst_I
    );
\rit_register_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S0_AXI_ACLK,
      CE => \Using_AXI.AXI4_If_n_17\,
      D => S0_AXI_WDATA(1),
      Q => \^rit_register_reg[0]_0\(1),
      R => SYS_Rst_I
    );
\rit_register_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S0_AXI_ACLK,
      CE => \Using_AXI.AXI4_If_n_17\,
      D => S0_AXI_WDATA(0),
      Q => \^rit_register_reg[0]_0\(0),
      R => SYS_Rst_I
    );
sit_detect_d10_carry: unisim.vcomponents.CARRY8
     port map (
      CI => '1',
      CI_TOP => '0',
      CO(7 downto 4) => NLW_sit_detect_d10_carry_CO_UNCONNECTED(7 downto 4),
      CO(3) => sit_detect_d0,
      CO(2) => sit_detect_d10_carry_n_5,
      CO(1) => sit_detect_d10_carry_n_6,
      CO(0) => sit_detect_d10_carry_n_7,
      DI(7 downto 3) => B"00000",
      DI(2) => sit_detect_d10_carry_i_1_n_0,
      DI(1) => sit_detect_d10_carry_i_2_n_0,
      DI(0) => sit_detect_d10_carry_i_3_n_0,
      O(7 downto 0) => NLW_sit_detect_d10_carry_O_UNCONNECTED(7 downto 0),
      S(7 downto 4) => B"0000",
      S(3) => S(0),
      S(2) => sit_detect_d10_carry_i_5_n_0,
      S(1) => sit_detect_d10_carry_i_6_n_0,
      S(0) => sit_detect_d10_carry_i_7_n_0
    );
sit_detect_d10_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => sit_register(1),
      I1 => sit_detect_d1_reg_0(4),
      I2 => sit_detect_d1_reg_0(5),
      I3 => sit_register(0),
      O => sit_detect_d10_carry_i_1_n_0
    );
sit_detect_d10_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => sit_register(3),
      I1 => sit_detect_d1_reg_0(2),
      I2 => sit_detect_d1_reg_0(3),
      I3 => sit_register(2),
      O => sit_detect_d10_carry_i_2_n_0
    );
sit_detect_d10_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => sit_register(5),
      I1 => sit_detect_d1_reg_0(0),
      I2 => sit_detect_d1_reg_0(1),
      I3 => sit_register(4),
      O => sit_detect_d10_carry_i_3_n_0
    );
sit_detect_d10_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => sit_register(1),
      I1 => sit_detect_d1_reg_0(4),
      I2 => sit_register(0),
      I3 => sit_detect_d1_reg_0(5),
      O => sit_detect_d10_carry_i_5_n_0
    );
sit_detect_d10_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => sit_register(3),
      I1 => sit_detect_d1_reg_0(2),
      I2 => sit_register(2),
      I3 => sit_detect_d1_reg_0(3),
      O => sit_detect_d10_carry_i_6_n_0
    );
sit_detect_d10_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => sit_register(5),
      I1 => sit_detect_d1_reg_0(0),
      I2 => sit_register(4),
      I3 => sit_detect_d1_reg_0(1),
      O => sit_detect_d10_carry_i_7_n_0
    );
sit_detect_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => S0_AXI_ACLK,
      CE => '1',
      D => sit_detect_d0,
      Q => sit_detect_d1,
      R => '0'
    );
\sit_register_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S0_AXI_ACLK,
      CE => \Using_AXI.AXI4_If_n_15\,
      D => S0_AXI_WDATA(5),
      Q => sit_register(0),
      R => SYS_Rst_I
    );
\sit_register_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S0_AXI_ACLK,
      CE => \Using_AXI.AXI4_If_n_15\,
      D => S0_AXI_WDATA(4),
      Q => sit_register(1),
      R => SYS_Rst_I
    );
\sit_register_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S0_AXI_ACLK,
      CE => \Using_AXI.AXI4_If_n_15\,
      D => S0_AXI_WDATA(3),
      Q => sit_register(2),
      R => SYS_Rst_I
    );
\sit_register_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S0_AXI_ACLK,
      CE => \Using_AXI.AXI4_If_n_15\,
      D => S0_AXI_WDATA(2),
      Q => sit_register(3),
      R => SYS_Rst_I
    );
\sit_register_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S0_AXI_ACLK,
      CE => \Using_AXI.AXI4_If_n_15\,
      D => S0_AXI_WDATA(1),
      Q => sit_register(4),
      R => SYS_Rst_I
    );
\sit_register_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S0_AXI_ACLK,
      CE => \Using_AXI.AXI4_If_n_15\,
      D => S0_AXI_WDATA(0),
      Q => sit_register(5),
      R => SYS_Rst_I
    );
write_fsl_error_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => S0_AXI_ACLK,
      CE => '1',
      D => write_fsl_error,
      Q => write_fsl_error_d1,
      R => SYS_Rst_I
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_if_decode_0 is
  port (
    \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\ : out STD_LOGIC;
    Interrupt_1 : out STD_LOGIC;
    FSL1_S_Reset_I : out STD_LOGIC;
    Bus_RNW_reg : out STD_LOGIC;
    s_axi_rvalid_i_reg : out STD_LOGIC;
    s_axi_bvalid_i_reg : out STD_LOGIC;
    is_read_reg : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\ : out STD_LOGIC;
    \rit_register_reg[0]_0\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0\ : out STD_LOGIC;
    S1_AXI_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    SYS_Rst_I : in STD_LOGIC;
    S1_AXI_ACLK : in STD_LOGIC;
    read_fsl_error : in STD_LOGIC;
    write_fsl_error : in STD_LOGIC;
    S : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    DI : in STD_LOGIC_VECTOR ( 2 downto 0 );
    rit_detect_d1_reg_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S1_AXI_ARVALID : in STD_LOGIC;
    S1_AXI_AWVALID : in STD_LOGIC;
    S1_AXI_WVALID : in STD_LOGIC;
    S1_AXI_WDATA : in STD_LOGIC_VECTOR ( 5 downto 0 );
    FSL1_M_Full_I : in STD_LOGIC;
    sit_detect_d1_reg_0 : in STD_LOGIC_VECTOR ( 5 downto 0 );
    dpo : in STD_LOGIC_VECTOR ( 31 downto 0 );
    FSL1_S_Exists_I : in STD_LOGIC;
    S1_AXI_BREADY : in STD_LOGIC;
    S1_AXI_RREADY : in STD_LOGIC;
    FSL0_S_Reset_I : in STD_LOGIC;
    S1_AXI_ARADDR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S1_AXI_AWADDR : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_if_decode_0 : entity is "if_decode";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_if_decode_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_if_decode_0 is
  signal \^bus_rnw_reg\ : STD_LOGIC;
  signal FSL1_M_Reset_I : STD_LOGIC;
  signal FSL_M_Reset0 : STD_LOGIC;
  signal FSL_S_Reset0 : STD_LOGIC;
  signal \I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg\ : STD_LOGIC;
  signal \Use_Async.Interrupt_i_1__0_n_0\ : STD_LOGIC;
  signal \Using_AXI.AXI4_If_n_12\ : STD_LOGIC;
  signal \Using_AXI.AXI4_If_n_13\ : STD_LOGIC;
  signal \Using_AXI.AXI4_If_n_15\ : STD_LOGIC;
  signal \Using_AXI.AXI4_If_n_16\ : STD_LOGIC;
  signal \Using_AXI.AXI4_If_n_17\ : STD_LOGIC;
  signal empty_error : STD_LOGIC;
  signal empty_error_reg_n_0 : STD_LOGIC;
  signal full_error_reg_n_0 : STD_LOGIC;
  signal ie_register : STD_LOGIC_VECTOR ( 0 to 2 );
  signal is_register : STD_LOGIC_VECTOR ( 0 to 2 );
  signal \is_register07_out__0\ : STD_LOGIC;
  signal \is_register[0]_i_1_n_0\ : STD_LOGIC;
  signal \is_register[1]_i_1_n_0\ : STD_LOGIC;
  signal \is_register[2]_i_1_n_0\ : STD_LOGIC;
  signal read_fsl_error_d1 : STD_LOGIC;
  signal rit_detect_d0 : STD_LOGIC;
  signal rit_detect_d1 : STD_LOGIC;
  signal rit_detect_d10_carry_n_5 : STD_LOGIC;
  signal rit_detect_d10_carry_n_6 : STD_LOGIC;
  signal rit_detect_d10_carry_n_7 : STD_LOGIC;
  signal \^rit_register_reg[0]_0\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal sit_detect_d0 : STD_LOGIC;
  signal sit_detect_d1 : STD_LOGIC;
  signal \sit_detect_d10_carry_i_1__0_n_0\ : STD_LOGIC;
  signal \sit_detect_d10_carry_i_2__0_n_0\ : STD_LOGIC;
  signal \sit_detect_d10_carry_i_3__0_n_0\ : STD_LOGIC;
  signal \sit_detect_d10_carry_i_5__0_n_0\ : STD_LOGIC;
  signal \sit_detect_d10_carry_i_6__0_n_0\ : STD_LOGIC;
  signal \sit_detect_d10_carry_i_7__0_n_0\ : STD_LOGIC;
  signal sit_detect_d10_carry_n_5 : STD_LOGIC;
  signal sit_detect_d10_carry_n_6 : STD_LOGIC;
  signal sit_detect_d10_carry_n_7 : STD_LOGIC;
  signal \sit_register_reg_n_0_[0]\ : STD_LOGIC;
  signal \sit_register_reg_n_0_[1]\ : STD_LOGIC;
  signal \sit_register_reg_n_0_[2]\ : STD_LOGIC;
  signal \sit_register_reg_n_0_[3]\ : STD_LOGIC;
  signal \sit_register_reg_n_0_[4]\ : STD_LOGIC;
  signal \sit_register_reg_n_0_[5]\ : STD_LOGIC;
  signal write_fsl_error_d1 : STD_LOGIC;
  signal NLW_rit_detect_d10_carry_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal NLW_rit_detect_d10_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_sit_detect_d10_carry_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal NLW_sit_detect_d10_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of rit_detect_d10_carry : label is 11;
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of rit_detect_d10_carry : label is "{SYNTH-8 {cell *THIS*}}";
  attribute COMPARATOR_THRESHOLD of sit_detect_d10_carry : label is 11;
  attribute METHODOLOGY_DRC_VIOS of sit_detect_d10_carry : label is "{SYNTH-8 {cell *THIS*}}";
begin
  Bus_RNW_reg <= \^bus_rnw_reg\;
  \rit_register_reg[0]_0\(5 downto 0) <= \^rit_register_reg[0]_0\(5 downto 0);
\FSL_Flag_Handle.read_addr_ptr[5]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => SYS_Rst_I,
      I1 => FSL1_M_Reset_I,
      I2 => FSL0_S_Reset_I,
      O => SR(0)
    );
FSL_M_Reset_reg: unisim.vcomponents.FDRE
     port map (
      C => S1_AXI_ACLK,
      CE => '1',
      D => FSL_M_Reset0,
      Q => FSL1_M_Reset_I,
      R => SYS_Rst_I
    );
FSL_S_Reset_reg: unisim.vcomponents.FDRE
     port map (
      C => S1_AXI_ACLK,
      CE => '1',
      D => FSL_S_Reset0,
      Q => FSL1_S_Reset_I,
      R => SYS_Rst_I
    );
\Use_Async.Interrupt_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => ie_register(1),
      I1 => is_register(1),
      I2 => is_register(0),
      I3 => ie_register(0),
      I4 => is_register(2),
      I5 => ie_register(2),
      O => \Use_Async.Interrupt_i_1__0_n_0\
    );
\Use_Async.Interrupt_reg\: unisim.vcomponents.FDRE
     port map (
      C => S1_AXI_ACLK,
      CE => '1',
      D => \Use_Async.Interrupt_i_1__0_n_0\,
      Q => Interrupt_1,
      R => SYS_Rst_I
    );
\Using_AXI.AXI4_If\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif
     port map (
      Bus_RNW_reg_reg => \^bus_rnw_reg\,
      CO(0) => rit_detect_d0,
      E(0) => \Using_AXI.AXI4_If_n_15\,
      FSL1_M_Full_I => FSL1_M_Full_I,
      FSL1_S_Exists_I => FSL1_S_Exists_I,
      FSL_M_Reset0 => FSL_M_Reset0,
      FSL_S_Reset0 => FSL_S_Reset0,
      \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\ => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\,
      \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0\ => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\,
      \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1\ => \Using_AXI.AXI4_If_n_13\,
      \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_2\ => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0\,
      \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\ => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\,
      \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]\ => \Using_AXI.AXI4_If_n_12\,
      \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]\(0) => \Using_AXI.AXI4_If_n_17\,
      \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg\ => \I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg\,
      \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]\(0) => \Using_AXI.AXI4_If_n_16\,
      Q(5) => \sit_register_reg_n_0_[0]\,
      Q(4) => \sit_register_reg_n_0_[1]\,
      Q(3) => \sit_register_reg_n_0_[2]\,
      Q(2) => \sit_register_reg_n_0_[3]\,
      Q(1) => \sit_register_reg_n_0_[4]\,
      Q(0) => \sit_register_reg_n_0_[5]\,
      S1_AXI_ACLK => S1_AXI_ACLK,
      S1_AXI_ARADDR(3 downto 0) => S1_AXI_ARADDR(3 downto 0),
      S1_AXI_ARVALID => S1_AXI_ARVALID,
      S1_AXI_AWADDR(3 downto 0) => S1_AXI_AWADDR(3 downto 0),
      S1_AXI_AWVALID => S1_AXI_AWVALID,
      S1_AXI_BREADY => S1_AXI_BREADY,
      S1_AXI_RDATA(31 downto 0) => S1_AXI_RDATA(31 downto 0),
      S1_AXI_RREADY => S1_AXI_RREADY,
      S1_AXI_WDATA(2 downto 0) => S1_AXI_WDATA(2 downto 0),
      S1_AXI_WVALID => S1_AXI_WVALID,
      SYS_Rst_I => SYS_Rst_I,
      dpo(31 downto 0) => dpo(31 downto 0),
      empty_error => empty_error,
      empty_error_reg => empty_error_reg_n_0,
      full_error_reg => full_error_reg_n_0,
      is_read_reg => is_read_reg,
      is_register(0 to 2) => is_register(0 to 2),
      \is_register07_out__0\ => \is_register07_out__0\,
      s_axi_bvalid_i_reg => s_axi_bvalid_i_reg,
      \s_axi_rdata_i_reg[2]\(0) => sit_detect_d0,
      \s_axi_rdata_i_reg[2]_0\(2) => ie_register(0),
      \s_axi_rdata_i_reg[2]_0\(1) => ie_register(1),
      \s_axi_rdata_i_reg[2]_0\(0) => ie_register(2),
      \s_axi_rdata_i_reg[5]\(5 downto 0) => \^rit_register_reg[0]_0\(5 downto 0),
      s_axi_rvalid_i_reg => s_axi_rvalid_i_reg
    );
empty_error_reg: unisim.vcomponents.FDRE
     port map (
      C => S1_AXI_ACLK,
      CE => '1',
      D => \Using_AXI.AXI4_If_n_12\,
      Q => empty_error_reg_n_0,
      R => empty_error
    );
full_error_reg: unisim.vcomponents.FDRE
     port map (
      C => S1_AXI_ACLK,
      CE => '1',
      D => \Using_AXI.AXI4_If_n_13\,
      Q => full_error_reg_n_0,
      R => empty_error
    );
\ie_register_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S1_AXI_ACLK,
      CE => \Using_AXI.AXI4_If_n_16\,
      D => S1_AXI_WDATA(2),
      Q => ie_register(0),
      R => SYS_Rst_I
    );
\ie_register_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S1_AXI_ACLK,
      CE => \Using_AXI.AXI4_If_n_16\,
      D => S1_AXI_WDATA(1),
      Q => ie_register(1),
      R => SYS_Rst_I
    );
\ie_register_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S1_AXI_ACLK,
      CE => \Using_AXI.AXI4_If_n_16\,
      D => S1_AXI_WDATA(0),
      Q => ie_register(2),
      R => SYS_Rst_I
    );
\is_register[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22F2FFFF22F222F2"
    )
        port map (
      I0 => read_fsl_error,
      I1 => read_fsl_error_d1,
      I2 => write_fsl_error,
      I3 => write_fsl_error_d1,
      I4 => \is_register07_out__0\,
      I5 => is_register(0),
      O => \is_register[0]_i_1_n_0\
    );
\is_register[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF4FFF44444444"
    )
        port map (
      I0 => rit_detect_d1,
      I1 => rit_detect_d0,
      I2 => S1_AXI_WDATA(1),
      I3 => \I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg\,
      I4 => \^bus_rnw_reg\,
      I5 => is_register(1),
      O => \is_register[1]_i_1_n_0\
    );
\is_register[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF4FFF44444444"
    )
        port map (
      I0 => sit_detect_d1,
      I1 => sit_detect_d0,
      I2 => S1_AXI_WDATA(0),
      I3 => \I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg\,
      I4 => \^bus_rnw_reg\,
      I5 => is_register(2),
      O => \is_register[2]_i_1_n_0\
    );
\is_register_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S1_AXI_ACLK,
      CE => '1',
      D => \is_register[0]_i_1_n_0\,
      Q => is_register(0),
      R => SYS_Rst_I
    );
\is_register_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S1_AXI_ACLK,
      CE => '1',
      D => \is_register[1]_i_1_n_0\,
      Q => is_register(1),
      R => SYS_Rst_I
    );
\is_register_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S1_AXI_ACLK,
      CE => '1',
      D => \is_register[2]_i_1_n_0\,
      Q => is_register(2),
      R => SYS_Rst_I
    );
read_fsl_error_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => S1_AXI_ACLK,
      CE => '1',
      D => read_fsl_error,
      Q => read_fsl_error_d1,
      R => SYS_Rst_I
    );
rit_detect_d10_carry: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7 downto 4) => NLW_rit_detect_d10_carry_CO_UNCONNECTED(7 downto 4),
      CO(3) => rit_detect_d0,
      CO(2) => rit_detect_d10_carry_n_5,
      CO(1) => rit_detect_d10_carry_n_6,
      CO(0) => rit_detect_d10_carry_n_7,
      DI(7 downto 4) => B"0000",
      DI(3) => Q(0),
      DI(2 downto 0) => DI(2 downto 0),
      O(7 downto 0) => NLW_rit_detect_d10_carry_O_UNCONNECTED(7 downto 0),
      S(7 downto 4) => B"0000",
      S(3 downto 0) => rit_detect_d1_reg_0(3 downto 0)
    );
rit_detect_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => S1_AXI_ACLK,
      CE => '1',
      D => rit_detect_d0,
      Q => rit_detect_d1,
      R => '0'
    );
\rit_register_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S1_AXI_ACLK,
      CE => \Using_AXI.AXI4_If_n_17\,
      D => S1_AXI_WDATA(5),
      Q => \^rit_register_reg[0]_0\(5),
      R => SYS_Rst_I
    );
\rit_register_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S1_AXI_ACLK,
      CE => \Using_AXI.AXI4_If_n_17\,
      D => S1_AXI_WDATA(4),
      Q => \^rit_register_reg[0]_0\(4),
      R => SYS_Rst_I
    );
\rit_register_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S1_AXI_ACLK,
      CE => \Using_AXI.AXI4_If_n_17\,
      D => S1_AXI_WDATA(3),
      Q => \^rit_register_reg[0]_0\(3),
      R => SYS_Rst_I
    );
\rit_register_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S1_AXI_ACLK,
      CE => \Using_AXI.AXI4_If_n_17\,
      D => S1_AXI_WDATA(2),
      Q => \^rit_register_reg[0]_0\(2),
      R => SYS_Rst_I
    );
\rit_register_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S1_AXI_ACLK,
      CE => \Using_AXI.AXI4_If_n_17\,
      D => S1_AXI_WDATA(1),
      Q => \^rit_register_reg[0]_0\(1),
      R => SYS_Rst_I
    );
\rit_register_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S1_AXI_ACLK,
      CE => \Using_AXI.AXI4_If_n_17\,
      D => S1_AXI_WDATA(0),
      Q => \^rit_register_reg[0]_0\(0),
      R => SYS_Rst_I
    );
sit_detect_d10_carry: unisim.vcomponents.CARRY8
     port map (
      CI => '1',
      CI_TOP => '0',
      CO(7 downto 4) => NLW_sit_detect_d10_carry_CO_UNCONNECTED(7 downto 4),
      CO(3) => sit_detect_d0,
      CO(2) => sit_detect_d10_carry_n_5,
      CO(1) => sit_detect_d10_carry_n_6,
      CO(0) => sit_detect_d10_carry_n_7,
      DI(7 downto 3) => B"00000",
      DI(2) => \sit_detect_d10_carry_i_1__0_n_0\,
      DI(1) => \sit_detect_d10_carry_i_2__0_n_0\,
      DI(0) => \sit_detect_d10_carry_i_3__0_n_0\,
      O(7 downto 0) => NLW_sit_detect_d10_carry_O_UNCONNECTED(7 downto 0),
      S(7 downto 4) => B"0000",
      S(3) => S(0),
      S(2) => \sit_detect_d10_carry_i_5__0_n_0\,
      S(1) => \sit_detect_d10_carry_i_6__0_n_0\,
      S(0) => \sit_detect_d10_carry_i_7__0_n_0\
    );
\sit_detect_d10_carry_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \sit_register_reg_n_0_[1]\,
      I1 => sit_detect_d1_reg_0(4),
      I2 => sit_detect_d1_reg_0(5),
      I3 => \sit_register_reg_n_0_[0]\,
      O => \sit_detect_d10_carry_i_1__0_n_0\
    );
\sit_detect_d10_carry_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \sit_register_reg_n_0_[3]\,
      I1 => sit_detect_d1_reg_0(2),
      I2 => sit_detect_d1_reg_0(3),
      I3 => \sit_register_reg_n_0_[2]\,
      O => \sit_detect_d10_carry_i_2__0_n_0\
    );
\sit_detect_d10_carry_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \sit_register_reg_n_0_[5]\,
      I1 => sit_detect_d1_reg_0(0),
      I2 => sit_detect_d1_reg_0(1),
      I3 => \sit_register_reg_n_0_[4]\,
      O => \sit_detect_d10_carry_i_3__0_n_0\
    );
\sit_detect_d10_carry_i_5__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \sit_register_reg_n_0_[1]\,
      I1 => sit_detect_d1_reg_0(4),
      I2 => \sit_register_reg_n_0_[0]\,
      I3 => sit_detect_d1_reg_0(5),
      O => \sit_detect_d10_carry_i_5__0_n_0\
    );
\sit_detect_d10_carry_i_6__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \sit_register_reg_n_0_[3]\,
      I1 => sit_detect_d1_reg_0(2),
      I2 => \sit_register_reg_n_0_[2]\,
      I3 => sit_detect_d1_reg_0(3),
      O => \sit_detect_d10_carry_i_6__0_n_0\
    );
\sit_detect_d10_carry_i_7__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \sit_register_reg_n_0_[5]\,
      I1 => sit_detect_d1_reg_0(0),
      I2 => \sit_register_reg_n_0_[4]\,
      I3 => sit_detect_d1_reg_0(1),
      O => \sit_detect_d10_carry_i_7__0_n_0\
    );
sit_detect_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => S1_AXI_ACLK,
      CE => '1',
      D => sit_detect_d0,
      Q => sit_detect_d1,
      R => '0'
    );
\sit_register_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S1_AXI_ACLK,
      CE => \Using_AXI.AXI4_If_n_15\,
      D => S1_AXI_WDATA(5),
      Q => \sit_register_reg_n_0_[0]\,
      R => SYS_Rst_I
    );
\sit_register_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S1_AXI_ACLK,
      CE => \Using_AXI.AXI4_If_n_15\,
      D => S1_AXI_WDATA(4),
      Q => \sit_register_reg_n_0_[1]\,
      R => SYS_Rst_I
    );
\sit_register_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S1_AXI_ACLK,
      CE => \Using_AXI.AXI4_If_n_15\,
      D => S1_AXI_WDATA(3),
      Q => \sit_register_reg_n_0_[2]\,
      R => SYS_Rst_I
    );
\sit_register_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S1_AXI_ACLK,
      CE => \Using_AXI.AXI4_If_n_15\,
      D => S1_AXI_WDATA(2),
      Q => \sit_register_reg_n_0_[3]\,
      R => SYS_Rst_I
    );
\sit_register_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S1_AXI_ACLK,
      CE => \Using_AXI.AXI4_If_n_15\,
      D => S1_AXI_WDATA(1),
      Q => \sit_register_reg_n_0_[4]\,
      R => SYS_Rst_I
    );
\sit_register_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S1_AXI_ACLK,
      CE => \Using_AXI.AXI4_If_n_15\,
      D => S1_AXI_WDATA(0),
      Q => \sit_register_reg_n_0_[5]\,
      R => SYS_Rst_I
    );
write_fsl_error_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => S1_AXI_ACLK,
      CE => '1',
      D => write_fsl_error,
      Q => write_fsl_error_d1,
      R => SYS_Rst_I
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mailbox is
  port (
    SYS_Rst : in STD_LOGIC;
    S0_AXI_ACLK : in STD_LOGIC;
    S0_AXI_ARESETN : in STD_LOGIC;
    S0_AXI_AWADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S0_AXI_AWVALID : in STD_LOGIC;
    S0_AXI_AWREADY : out STD_LOGIC;
    S0_AXI_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S0_AXI_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S0_AXI_WVALID : in STD_LOGIC;
    S0_AXI_WREADY : out STD_LOGIC;
    S0_AXI_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S0_AXI_BVALID : out STD_LOGIC;
    S0_AXI_BREADY : in STD_LOGIC;
    S0_AXI_ARADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S0_AXI_ARVALID : in STD_LOGIC;
    S0_AXI_ARREADY : out STD_LOGIC;
    S0_AXI_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S0_AXI_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S0_AXI_RVALID : out STD_LOGIC;
    S0_AXI_RREADY : in STD_LOGIC;
    S1_AXI_ACLK : in STD_LOGIC;
    S1_AXI_ARESETN : in STD_LOGIC;
    S1_AXI_AWADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S1_AXI_AWVALID : in STD_LOGIC;
    S1_AXI_AWREADY : out STD_LOGIC;
    S1_AXI_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S1_AXI_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S1_AXI_WVALID : in STD_LOGIC;
    S1_AXI_WREADY : out STD_LOGIC;
    S1_AXI_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S1_AXI_BVALID : out STD_LOGIC;
    S1_AXI_BREADY : in STD_LOGIC;
    S1_AXI_ARADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S1_AXI_ARVALID : in STD_LOGIC;
    S1_AXI_ARREADY : out STD_LOGIC;
    S1_AXI_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S1_AXI_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S1_AXI_RVALID : out STD_LOGIC;
    S1_AXI_RREADY : in STD_LOGIC;
    M0_AXIS_ACLK : in STD_LOGIC;
    M0_AXIS_TLAST : out STD_LOGIC;
    M0_AXIS_TDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M0_AXIS_TVALID : out STD_LOGIC;
    M0_AXIS_TREADY : in STD_LOGIC;
    S0_AXIS_ACLK : in STD_LOGIC;
    S0_AXIS_TLAST : in STD_LOGIC;
    S0_AXIS_TDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S0_AXIS_TVALID : in STD_LOGIC;
    S0_AXIS_TREADY : out STD_LOGIC;
    M1_AXIS_ACLK : in STD_LOGIC;
    M1_AXIS_TLAST : out STD_LOGIC;
    M1_AXIS_TDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M1_AXIS_TVALID : out STD_LOGIC;
    M1_AXIS_TREADY : in STD_LOGIC;
    S1_AXIS_ACLK : in STD_LOGIC;
    S1_AXIS_TLAST : in STD_LOGIC;
    S1_AXIS_TDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S1_AXIS_TVALID : in STD_LOGIC;
    S1_AXIS_TREADY : out STD_LOGIC;
    Interrupt_0 : out STD_LOGIC;
    Interrupt_1 : out STD_LOGIC
  );
  attribute C_ASYNC_CLKS : integer;
  attribute C_ASYNC_CLKS of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mailbox : entity is 0;
  attribute C_ASYNC_INTERRUPTS : integer;
  attribute C_ASYNC_INTERRUPTS of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mailbox : entity is 1;
  attribute C_ENABLE_BUS_ERROR : integer;
  attribute C_ENABLE_BUS_ERROR of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mailbox : entity is 0;
  attribute C_EXT_RESET_HIGH : integer;
  attribute C_EXT_RESET_HIGH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mailbox : entity is 1;
  attribute C_FAMILY : string;
  attribute C_FAMILY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mailbox : entity is "zynquplus";
  attribute C_IMPL_STYLE : integer;
  attribute C_IMPL_STYLE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mailbox : entity is 0;
  attribute C_INTERCONNECT_PORT_0 : integer;
  attribute C_INTERCONNECT_PORT_0 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mailbox : entity is 2;
  attribute C_INTERCONNECT_PORT_1 : integer;
  attribute C_INTERCONNECT_PORT_1 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mailbox : entity is 2;
  attribute C_M0_AXIS_DATA_WIDTH : integer;
  attribute C_M0_AXIS_DATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mailbox : entity is 32;
  attribute C_M1_AXIS_DATA_WIDTH : integer;
  attribute C_M1_AXIS_DATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mailbox : entity is 32;
  attribute C_MAILBOX_DEPTH : integer;
  attribute C_MAILBOX_DEPTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mailbox : entity is 64;
  attribute C_NUM_SYNC_FF : integer;
  attribute C_NUM_SYNC_FF of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mailbox : entity is 2;
  attribute C_S0_AXIS_DATA_WIDTH : integer;
  attribute C_S0_AXIS_DATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mailbox : entity is 32;
  attribute C_S0_AXI_ADDR_WIDTH : integer;
  attribute C_S0_AXI_ADDR_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mailbox : entity is 32;
  attribute C_S0_AXI_BASEADDR : integer;
  attribute C_S0_AXI_BASEADDR of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mailbox : entity is -1;
  attribute C_S0_AXI_DATA_WIDTH : integer;
  attribute C_S0_AXI_DATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mailbox : entity is 32;
  attribute C_S0_AXI_HIGHADDR : integer;
  attribute C_S0_AXI_HIGHADDR of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mailbox : entity is 0;
  attribute C_S1_AXIS_DATA_WIDTH : integer;
  attribute C_S1_AXIS_DATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mailbox : entity is 32;
  attribute C_S1_AXI_ADDR_WIDTH : integer;
  attribute C_S1_AXI_ADDR_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mailbox : entity is 32;
  attribute C_S1_AXI_BASEADDR : integer;
  attribute C_S1_AXI_BASEADDR of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mailbox : entity is -1;
  attribute C_S1_AXI_DATA_WIDTH : integer;
  attribute C_S1_AXI_DATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mailbox : entity is 32;
  attribute C_S1_AXI_HIGHADDR : integer;
  attribute C_S1_AXI_HIGHADDR of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mailbox : entity is 0;
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mailbox;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mailbox is
  signal \<const0>\ : STD_LOGIC;
  signal FSL0_M_Full_I : STD_LOGIC;
  signal FSL0_S_Exists_I : STD_LOGIC;
  signal FSL0_S_Reset_I : STD_LOGIC;
  signal FSL1_M_Full_I : STD_LOGIC;
  signal FSL1_S_Exists_I : STD_LOGIC;
  signal FSL1_S_Reset_I : STD_LOGIC;
  signal Reset : STD_LOGIC;
  signal Reset_0 : STD_LOGIC;
  signal \Rst_Sync.SYS_Rst_I_i_1_n_0\ : STD_LOGIC;
  signal \^s0_axi_wready\ : STD_LOGIC;
  signal \^s1_axi_wready\ : STD_LOGIC;
  signal SYS_Rst_I : STD_LOGIC;
  signal SYS_Rst_Input : STD_LOGIC;
  signal SYS_Rst_Input_d1 : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of SYS_Rst_Input_d1 : signal is "true";
  signal SYS_Rst_Input_d2 : STD_LOGIC;
  attribute async_reg of SYS_Rst_Input_d2 : signal is "true";
  signal \Using_AXI.AXI4_If/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg\ : STD_LOGIC;
  signal \Using_AXI.AXI4_If/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_1\ : STD_LOGIC;
  signal \Using_AXI.AXI4_If/I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\ : STD_LOGIC;
  signal \Using_AXI.AXI4_If/I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg_2\ : STD_LOGIC;
  signal \Using_AXI.AXI4_If/I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\ : STD_LOGIC;
  signal \Using_AXI.AXI4_If/I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg_3\ : STD_LOGIC;
  signal \Using_Bus_0.Bus0_If_n_16\ : STD_LOGIC;
  signal \Using_Bus_1.Bus1_If_n_10\ : STD_LOGIC;
  signal \Using_Bus_1.Bus1_If_n_11\ : STD_LOGIC;
  signal \Using_Bus_1.Bus1_If_n_12\ : STD_LOGIC;
  signal \Using_Bus_1.Bus1_If_n_13\ : STD_LOGIC;
  signal \Using_Bus_1.Bus1_If_n_14\ : STD_LOGIC;
  signal \Using_Bus_1.Bus1_If_n_16\ : STD_LOGIC;
  signal \Using_Bus_1.Bus1_If_n_9\ : STD_LOGIC;
  signal \Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/FSL_Flag_Handle.fifo_length_i_reg\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/FSL_Flag_Handle.fifo_length_i_reg_5\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal dpo : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal fsl_0_to_1_n_11 : STD_LOGIC;
  signal fsl_0_to_1_n_12 : STD_LOGIC;
  signal fsl_0_to_1_n_13 : STD_LOGIC;
  signal fsl_0_to_1_n_14 : STD_LOGIC;
  signal fsl_0_to_1_n_15 : STD_LOGIC;
  signal fsl_0_to_1_n_16 : STD_LOGIC;
  signal fsl_0_to_1_n_17 : STD_LOGIC;
  signal fsl_0_to_1_n_18 : STD_LOGIC;
  signal fsl_1_to_0_n_11 : STD_LOGIC;
  signal fsl_1_to_0_n_12 : STD_LOGIC;
  signal fsl_1_to_0_n_13 : STD_LOGIC;
  signal fsl_1_to_0_n_14 : STD_LOGIC;
  signal fsl_1_to_0_n_15 : STD_LOGIC;
  signal fsl_1_to_0_n_16 : STD_LOGIC;
  signal fsl_1_to_0_n_17 : STD_LOGIC;
  signal fsl_1_to_0_n_18 : STD_LOGIC;
  signal fsl_1_to_0_n_19 : STD_LOGIC;
  signal fsl_1_to_0_n_20 : STD_LOGIC;
  signal fsl_1_to_0_n_21 : STD_LOGIC;
  signal fsl_1_to_0_n_22 : STD_LOGIC;
  signal fsl_1_to_0_n_23 : STD_LOGIC;
  signal fsl_1_to_0_n_24 : STD_LOGIC;
  signal fsl_1_to_0_n_25 : STD_LOGIC;
  signal fsl_1_to_0_n_26 : STD_LOGIC;
  signal fsl_1_to_0_n_27 : STD_LOGIC;
  signal fsl_1_to_0_n_28 : STD_LOGIC;
  signal fsl_1_to_0_n_29 : STD_LOGIC;
  signal fsl_1_to_0_n_30 : STD_LOGIC;
  signal fsl_1_to_0_n_31 : STD_LOGIC;
  signal fsl_1_to_0_n_32 : STD_LOGIC;
  signal fsl_1_to_0_n_33 : STD_LOGIC;
  signal fsl_1_to_0_n_34 : STD_LOGIC;
  signal fsl_1_to_0_n_35 : STD_LOGIC;
  signal fsl_1_to_0_n_36 : STD_LOGIC;
  signal fsl_1_to_0_n_37 : STD_LOGIC;
  signal fsl_1_to_0_n_38 : STD_LOGIC;
  signal fsl_1_to_0_n_39 : STD_LOGIC;
  signal fsl_1_to_0_n_40 : STD_LOGIC;
  signal fsl_1_to_0_n_41 : STD_LOGIC;
  signal fsl_1_to_0_n_42 : STD_LOGIC;
  signal fsl_1_to_0_n_43 : STD_LOGIC;
  signal fsl_1_to_0_n_44 : STD_LOGIC;
  signal fsl_1_to_0_n_45 : STD_LOGIC;
  signal fsl_1_to_0_n_46 : STD_LOGIC;
  signal fsl_1_to_0_n_47 : STD_LOGIC;
  signal fsl_1_to_0_n_48 : STD_LOGIC;
  signal fsl_1_to_0_n_49 : STD_LOGIC;
  signal fsl_1_to_0_n_50 : STD_LOGIC;
  signal read_fsl_error : STD_LOGIC;
  signal read_fsl_error_6 : STD_LOGIC;
  signal rit_register : STD_LOGIC_VECTOR ( 0 to 5 );
  signal write_fsl_error : STD_LOGIC;
  signal write_fsl_error_4 : STD_LOGIC;
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \Rst_Sync.SYS_Rst_Input_d1_reg\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \Rst_Sync.SYS_Rst_Input_d1_reg\ : label is "yes";
  attribute ASYNC_REG_boolean of \Rst_Sync.SYS_Rst_Input_d2_reg\ : label is std.standard.true;
  attribute KEEP of \Rst_Sync.SYS_Rst_Input_d2_reg\ : label is "yes";
begin
  M0_AXIS_TDATA(31) <= \<const0>\;
  M0_AXIS_TDATA(30) <= \<const0>\;
  M0_AXIS_TDATA(29) <= \<const0>\;
  M0_AXIS_TDATA(28) <= \<const0>\;
  M0_AXIS_TDATA(27) <= \<const0>\;
  M0_AXIS_TDATA(26) <= \<const0>\;
  M0_AXIS_TDATA(25) <= \<const0>\;
  M0_AXIS_TDATA(24) <= \<const0>\;
  M0_AXIS_TDATA(23) <= \<const0>\;
  M0_AXIS_TDATA(22) <= \<const0>\;
  M0_AXIS_TDATA(21) <= \<const0>\;
  M0_AXIS_TDATA(20) <= \<const0>\;
  M0_AXIS_TDATA(19) <= \<const0>\;
  M0_AXIS_TDATA(18) <= \<const0>\;
  M0_AXIS_TDATA(17) <= \<const0>\;
  M0_AXIS_TDATA(16) <= \<const0>\;
  M0_AXIS_TDATA(15) <= \<const0>\;
  M0_AXIS_TDATA(14) <= \<const0>\;
  M0_AXIS_TDATA(13) <= \<const0>\;
  M0_AXIS_TDATA(12) <= \<const0>\;
  M0_AXIS_TDATA(11) <= \<const0>\;
  M0_AXIS_TDATA(10) <= \<const0>\;
  M0_AXIS_TDATA(9) <= \<const0>\;
  M0_AXIS_TDATA(8) <= \<const0>\;
  M0_AXIS_TDATA(7) <= \<const0>\;
  M0_AXIS_TDATA(6) <= \<const0>\;
  M0_AXIS_TDATA(5) <= \<const0>\;
  M0_AXIS_TDATA(4) <= \<const0>\;
  M0_AXIS_TDATA(3) <= \<const0>\;
  M0_AXIS_TDATA(2) <= \<const0>\;
  M0_AXIS_TDATA(1) <= \<const0>\;
  M0_AXIS_TDATA(0) <= \<const0>\;
  M0_AXIS_TLAST <= \<const0>\;
  M0_AXIS_TVALID <= \<const0>\;
  M1_AXIS_TDATA(31) <= \<const0>\;
  M1_AXIS_TDATA(30) <= \<const0>\;
  M1_AXIS_TDATA(29) <= \<const0>\;
  M1_AXIS_TDATA(28) <= \<const0>\;
  M1_AXIS_TDATA(27) <= \<const0>\;
  M1_AXIS_TDATA(26) <= \<const0>\;
  M1_AXIS_TDATA(25) <= \<const0>\;
  M1_AXIS_TDATA(24) <= \<const0>\;
  M1_AXIS_TDATA(23) <= \<const0>\;
  M1_AXIS_TDATA(22) <= \<const0>\;
  M1_AXIS_TDATA(21) <= \<const0>\;
  M1_AXIS_TDATA(20) <= \<const0>\;
  M1_AXIS_TDATA(19) <= \<const0>\;
  M1_AXIS_TDATA(18) <= \<const0>\;
  M1_AXIS_TDATA(17) <= \<const0>\;
  M1_AXIS_TDATA(16) <= \<const0>\;
  M1_AXIS_TDATA(15) <= \<const0>\;
  M1_AXIS_TDATA(14) <= \<const0>\;
  M1_AXIS_TDATA(13) <= \<const0>\;
  M1_AXIS_TDATA(12) <= \<const0>\;
  M1_AXIS_TDATA(11) <= \<const0>\;
  M1_AXIS_TDATA(10) <= \<const0>\;
  M1_AXIS_TDATA(9) <= \<const0>\;
  M1_AXIS_TDATA(8) <= \<const0>\;
  M1_AXIS_TDATA(7) <= \<const0>\;
  M1_AXIS_TDATA(6) <= \<const0>\;
  M1_AXIS_TDATA(5) <= \<const0>\;
  M1_AXIS_TDATA(4) <= \<const0>\;
  M1_AXIS_TDATA(3) <= \<const0>\;
  M1_AXIS_TDATA(2) <= \<const0>\;
  M1_AXIS_TDATA(1) <= \<const0>\;
  M1_AXIS_TDATA(0) <= \<const0>\;
  M1_AXIS_TLAST <= \<const0>\;
  M1_AXIS_TVALID <= \<const0>\;
  S0_AXIS_TREADY <= \<const0>\;
  S0_AXI_AWREADY <= \^s0_axi_wready\;
  S0_AXI_BRESP(1) <= \<const0>\;
  S0_AXI_BRESP(0) <= \<const0>\;
  S0_AXI_RRESP(1) <= \<const0>\;
  S0_AXI_RRESP(0) <= \<const0>\;
  S0_AXI_WREADY <= \^s0_axi_wready\;
  S1_AXIS_TREADY <= \<const0>\;
  S1_AXI_AWREADY <= \^s1_axi_wready\;
  S1_AXI_BRESP(1) <= \<const0>\;
  S1_AXI_BRESP(0) <= \<const0>\;
  S1_AXI_RRESP(1) <= \<const0>\;
  S1_AXI_RRESP(0) <= \<const0>\;
  S1_AXI_WREADY <= \^s1_axi_wready\;
  SYS_Rst_Input <= SYS_Rst;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\Rst_Sync.SYS_Rst_I_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BF"
    )
        port map (
      I0 => SYS_Rst_Input_d2,
      I1 => S0_AXI_ARESETN,
      I2 => S1_AXI_ARESETN,
      O => \Rst_Sync.SYS_Rst_I_i_1_n_0\
    );
\Rst_Sync.SYS_Rst_I_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S0_AXI_ACLK,
      CE => '1',
      D => \Rst_Sync.SYS_Rst_I_i_1_n_0\,
      Q => SYS_Rst_I,
      R => '0'
    );
\Rst_Sync.SYS_Rst_Input_d1_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S0_AXI_ACLK,
      CE => '1',
      D => SYS_Rst_Input,
      Q => SYS_Rst_Input_d1,
      R => '0'
    );
\Rst_Sync.SYS_Rst_Input_d2_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S0_AXI_ACLK,
      CE => '1',
      D => SYS_Rst_Input_d1,
      Q => SYS_Rst_Input_d2,
      R => '0'
    );
\Using_Bus_0.Bus0_If\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_if_decode
     port map (
      Bus_RNW_reg => \Using_AXI.AXI4_If/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg\,
      DI(2) => fsl_1_to_0_n_15,
      DI(1) => fsl_1_to_0_n_16,
      DI(0) => fsl_1_to_0_n_17,
      FSL0_M_Full_I => FSL0_M_Full_I,
      FSL0_S_Exists_I => FSL0_S_Exists_I,
      FSL0_S_Reset_I => FSL0_S_Reset_I,
      FSL1_S_Reset_I => FSL1_S_Reset_I,
      \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\ => \Using_AXI.AXI4_If/I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\,
      \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\ => \^s0_axi_wready\,
      \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0\ => \Using_Bus_0.Bus0_If_n_16\,
      \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\ => \Using_AXI.AXI4_If/I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\,
      Interrupt_0 => Interrupt_0,
      Q(0) => \Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/FSL_Flag_Handle.fifo_length_i_reg_5\(6),
      S(0) => fsl_0_to_1_n_18,
      S0_AXI_ACLK => S0_AXI_ACLK,
      S0_AXI_ARADDR(3 downto 0) => S0_AXI_ARADDR(5 downto 2),
      S0_AXI_ARVALID => S0_AXI_ARVALID,
      S0_AXI_AWADDR(3 downto 0) => S0_AXI_AWADDR(5 downto 2),
      S0_AXI_AWVALID => S0_AXI_AWVALID,
      S0_AXI_BREADY => S0_AXI_BREADY,
      S0_AXI_RDATA(31 downto 0) => S0_AXI_RDATA(31 downto 0),
      S0_AXI_RREADY => S0_AXI_RREADY,
      S0_AXI_WDATA(5 downto 0) => S0_AXI_WDATA(5 downto 0),
      S0_AXI_WVALID => S0_AXI_WVALID,
      SR(0) => Reset,
      SYS_Rst_I => SYS_Rst_I,
      dpo(31) => fsl_1_to_0_n_19,
      dpo(30) => fsl_1_to_0_n_20,
      dpo(29) => fsl_1_to_0_n_21,
      dpo(28) => fsl_1_to_0_n_22,
      dpo(27) => fsl_1_to_0_n_23,
      dpo(26) => fsl_1_to_0_n_24,
      dpo(25) => fsl_1_to_0_n_25,
      dpo(24) => fsl_1_to_0_n_26,
      dpo(23) => fsl_1_to_0_n_27,
      dpo(22) => fsl_1_to_0_n_28,
      dpo(21) => fsl_1_to_0_n_29,
      dpo(20) => fsl_1_to_0_n_30,
      dpo(19) => fsl_1_to_0_n_31,
      dpo(18) => fsl_1_to_0_n_32,
      dpo(17) => fsl_1_to_0_n_33,
      dpo(16) => fsl_1_to_0_n_34,
      dpo(15) => fsl_1_to_0_n_35,
      dpo(14) => fsl_1_to_0_n_36,
      dpo(13) => fsl_1_to_0_n_37,
      dpo(12) => fsl_1_to_0_n_38,
      dpo(11) => fsl_1_to_0_n_39,
      dpo(10) => fsl_1_to_0_n_40,
      dpo(9) => fsl_1_to_0_n_41,
      dpo(8) => fsl_1_to_0_n_42,
      dpo(7) => fsl_1_to_0_n_43,
      dpo(6) => fsl_1_to_0_n_44,
      dpo(5) => fsl_1_to_0_n_45,
      dpo(4) => fsl_1_to_0_n_46,
      dpo(3) => fsl_1_to_0_n_47,
      dpo(2) => fsl_1_to_0_n_48,
      dpo(1) => fsl_1_to_0_n_49,
      dpo(0) => fsl_1_to_0_n_50,
      is_read_reg => S0_AXI_ARREADY,
      read_fsl_error => read_fsl_error_6,
      rit_detect_d1_reg_0(3) => fsl_1_to_0_n_11,
      rit_detect_d1_reg_0(2) => fsl_1_to_0_n_12,
      rit_detect_d1_reg_0(1) => fsl_1_to_0_n_13,
      rit_detect_d1_reg_0(0) => fsl_1_to_0_n_14,
      \rit_register_reg[0]_0\(5) => rit_register(0),
      \rit_register_reg[0]_0\(4) => rit_register(1),
      \rit_register_reg[0]_0\(3) => rit_register(2),
      \rit_register_reg[0]_0\(2) => rit_register(3),
      \rit_register_reg[0]_0\(1) => rit_register(4),
      \rit_register_reg[0]_0\(0) => rit_register(5),
      s_axi_bvalid_i_reg => S0_AXI_BVALID,
      s_axi_rvalid_i_reg => S0_AXI_RVALID,
      sit_detect_d1_reg_0(5 downto 0) => \Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/FSL_Flag_Handle.fifo_length_i_reg\(5 downto 0),
      write_fsl_error => write_fsl_error
    );
\Using_Bus_1.Bus1_If\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_if_decode_0
     port map (
      Bus_RNW_reg => \Using_AXI.AXI4_If/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_1\,
      DI(2) => fsl_0_to_1_n_15,
      DI(1) => fsl_0_to_1_n_16,
      DI(0) => fsl_0_to_1_n_17,
      FSL0_S_Reset_I => FSL0_S_Reset_I,
      FSL1_M_Full_I => FSL1_M_Full_I,
      FSL1_S_Exists_I => FSL1_S_Exists_I,
      FSL1_S_Reset_I => FSL1_S_Reset_I,
      \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\ => \Using_AXI.AXI4_If/I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg_2\,
      \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\ => \^s1_axi_wready\,
      \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0\ => \Using_Bus_1.Bus1_If_n_16\,
      \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\ => \Using_AXI.AXI4_If/I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg_3\,
      Interrupt_1 => Interrupt_1,
      Q(0) => \Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/FSL_Flag_Handle.fifo_length_i_reg\(6),
      S(0) => fsl_1_to_0_n_18,
      S1_AXI_ACLK => S1_AXI_ACLK,
      S1_AXI_ARADDR(3 downto 0) => S1_AXI_ARADDR(5 downto 2),
      S1_AXI_ARVALID => S1_AXI_ARVALID,
      S1_AXI_AWADDR(3 downto 0) => S1_AXI_AWADDR(5 downto 2),
      S1_AXI_AWVALID => S1_AXI_AWVALID,
      S1_AXI_BREADY => S1_AXI_BREADY,
      S1_AXI_RDATA(31 downto 0) => S1_AXI_RDATA(31 downto 0),
      S1_AXI_RREADY => S1_AXI_RREADY,
      S1_AXI_WDATA(5 downto 0) => S1_AXI_WDATA(5 downto 0),
      S1_AXI_WVALID => S1_AXI_WVALID,
      SR(0) => Reset_0,
      SYS_Rst_I => SYS_Rst_I,
      dpo(31 downto 0) => dpo(31 downto 0),
      is_read_reg => S1_AXI_ARREADY,
      read_fsl_error => read_fsl_error,
      rit_detect_d1_reg_0(3) => fsl_0_to_1_n_11,
      rit_detect_d1_reg_0(2) => fsl_0_to_1_n_12,
      rit_detect_d1_reg_0(1) => fsl_0_to_1_n_13,
      rit_detect_d1_reg_0(0) => fsl_0_to_1_n_14,
      \rit_register_reg[0]_0\(5) => \Using_Bus_1.Bus1_If_n_9\,
      \rit_register_reg[0]_0\(4) => \Using_Bus_1.Bus1_If_n_10\,
      \rit_register_reg[0]_0\(3) => \Using_Bus_1.Bus1_If_n_11\,
      \rit_register_reg[0]_0\(2) => \Using_Bus_1.Bus1_If_n_12\,
      \rit_register_reg[0]_0\(1) => \Using_Bus_1.Bus1_If_n_13\,
      \rit_register_reg[0]_0\(0) => \Using_Bus_1.Bus1_If_n_14\,
      s_axi_bvalid_i_reg => S1_AXI_BVALID,
      s_axi_rvalid_i_reg => S1_AXI_RVALID,
      sit_detect_d1_reg_0(5 downto 0) => \Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/FSL_Flag_Handle.fifo_length_i_reg_5\(5 downto 0),
      write_fsl_error => write_fsl_error_4
    );
fsl_0_to_1: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsl_v20
     port map (
      Bus_RNW_reg => \Using_AXI.AXI4_If/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_1\,
      Bus_RNW_reg_0 => \Using_AXI.AXI4_If/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg\,
      DI(2) => fsl_0_to_1_n_15,
      DI(1) => fsl_0_to_1_n_16,
      DI(0) => fsl_0_to_1_n_17,
      FSL0_M_Full_I => FSL0_M_Full_I,
      FSL1_S_Exists_I => FSL1_S_Exists_I,
      \FSL_Flag_Handle.fifo_length_i_reg[6]\(3) => fsl_0_to_1_n_11,
      \FSL_Flag_Handle.fifo_length_i_reg[6]\(2) => fsl_0_to_1_n_12,
      \FSL_Flag_Handle.fifo_length_i_reg[6]\(1) => fsl_0_to_1_n_13,
      \FSL_Flag_Handle.fifo_length_i_reg[6]\(0) => fsl_0_to_1_n_14,
      \FSL_Flag_Handle.write_addr_ptr_reg[0]\ => \Using_Bus_0.Bus0_If_n_16\,
      \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\ => \Using_AXI.AXI4_If/I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\,
      \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\ => \Using_AXI.AXI4_If/I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg_3\,
      Q(6 downto 0) => \Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/FSL_Flag_Handle.fifo_length_i_reg\(6 downto 0),
      S(0) => fsl_0_to_1_n_18,
      S0_AXI_ACLK => S0_AXI_ACLK,
      S0_AXI_WDATA(31 downto 0) => S0_AXI_WDATA(31 downto 0),
      SR(0) => Reset,
      SYS_Rst_I => SYS_Rst_I,
      dpo(31 downto 0) => dpo(31 downto 0),
      read_fsl_error => read_fsl_error,
      rit_detect_d1_reg(5) => \Using_Bus_1.Bus1_If_n_9\,
      rit_detect_d1_reg(4) => \Using_Bus_1.Bus1_If_n_10\,
      rit_detect_d1_reg(3) => \Using_Bus_1.Bus1_If_n_11\,
      rit_detect_d1_reg(2) => \Using_Bus_1.Bus1_If_n_12\,
      rit_detect_d1_reg(1) => \Using_Bus_1.Bus1_If_n_13\,
      rit_detect_d1_reg(0) => \Using_Bus_1.Bus1_If_n_14\,
      write_fsl_error => write_fsl_error
    );
fsl_1_to_0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsl_v20_1
     port map (
      Bus_RNW_reg => \Using_AXI.AXI4_If/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg\,
      Bus_RNW_reg_0 => \Using_AXI.AXI4_If/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg_1\,
      DI(2) => fsl_1_to_0_n_15,
      DI(1) => fsl_1_to_0_n_16,
      DI(0) => fsl_1_to_0_n_17,
      FSL0_S_Exists_I => FSL0_S_Exists_I,
      FSL1_M_Full_I => FSL1_M_Full_I,
      \FSL_Flag_Handle.fifo_length_i_reg[6]\(3) => fsl_1_to_0_n_11,
      \FSL_Flag_Handle.fifo_length_i_reg[6]\(2) => fsl_1_to_0_n_12,
      \FSL_Flag_Handle.fifo_length_i_reg[6]\(1) => fsl_1_to_0_n_13,
      \FSL_Flag_Handle.fifo_length_i_reg[6]\(0) => fsl_1_to_0_n_14,
      \FSL_Flag_Handle.write_addr_ptr_reg[0]\ => \Using_Bus_1.Bus1_If_n_16\,
      \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\ => \Using_AXI.AXI4_If/I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg_2\,
      \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\ => \Using_AXI.AXI4_If/I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\,
      Q(6 downto 0) => \Using_FIFO.Sync_FIFO_Gen.Sync_FIFO_I1/FSL_Flag_Handle.fifo_length_i_reg_5\(6 downto 0),
      S(0) => fsl_1_to_0_n_18,
      S0_AXI_ACLK => S0_AXI_ACLK,
      S1_AXI_WDATA(31 downto 0) => S1_AXI_WDATA(31 downto 0),
      SR(0) => Reset_0,
      SYS_Rst_I => SYS_Rst_I,
      dpo(31) => fsl_1_to_0_n_19,
      dpo(30) => fsl_1_to_0_n_20,
      dpo(29) => fsl_1_to_0_n_21,
      dpo(28) => fsl_1_to_0_n_22,
      dpo(27) => fsl_1_to_0_n_23,
      dpo(26) => fsl_1_to_0_n_24,
      dpo(25) => fsl_1_to_0_n_25,
      dpo(24) => fsl_1_to_0_n_26,
      dpo(23) => fsl_1_to_0_n_27,
      dpo(22) => fsl_1_to_0_n_28,
      dpo(21) => fsl_1_to_0_n_29,
      dpo(20) => fsl_1_to_0_n_30,
      dpo(19) => fsl_1_to_0_n_31,
      dpo(18) => fsl_1_to_0_n_32,
      dpo(17) => fsl_1_to_0_n_33,
      dpo(16) => fsl_1_to_0_n_34,
      dpo(15) => fsl_1_to_0_n_35,
      dpo(14) => fsl_1_to_0_n_36,
      dpo(13) => fsl_1_to_0_n_37,
      dpo(12) => fsl_1_to_0_n_38,
      dpo(11) => fsl_1_to_0_n_39,
      dpo(10) => fsl_1_to_0_n_40,
      dpo(9) => fsl_1_to_0_n_41,
      dpo(8) => fsl_1_to_0_n_42,
      dpo(7) => fsl_1_to_0_n_43,
      dpo(6) => fsl_1_to_0_n_44,
      dpo(5) => fsl_1_to_0_n_45,
      dpo(4) => fsl_1_to_0_n_46,
      dpo(3) => fsl_1_to_0_n_47,
      dpo(2) => fsl_1_to_0_n_48,
      dpo(1) => fsl_1_to_0_n_49,
      dpo(0) => fsl_1_to_0_n_50,
      read_fsl_error => read_fsl_error_6,
      rit_detect_d1_reg(5) => rit_register(0),
      rit_detect_d1_reg(4) => rit_register(1),
      rit_detect_d1_reg(3) => rit_register(2),
      rit_detect_d1_reg(2) => rit_register(3),
      rit_detect_d1_reg(1) => rit_register(4),
      rit_detect_d1_reg(0) => rit_register(5),
      write_fsl_error => write_fsl_error_4
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    S0_AXI_ACLK : in STD_LOGIC;
    S0_AXI_ARESETN : in STD_LOGIC;
    S0_AXI_AWADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S0_AXI_AWVALID : in STD_LOGIC;
    S0_AXI_AWREADY : out STD_LOGIC;
    S0_AXI_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S0_AXI_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S0_AXI_WVALID : in STD_LOGIC;
    S0_AXI_WREADY : out STD_LOGIC;
    S0_AXI_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S0_AXI_BVALID : out STD_LOGIC;
    S0_AXI_BREADY : in STD_LOGIC;
    S0_AXI_ARADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S0_AXI_ARVALID : in STD_LOGIC;
    S0_AXI_ARREADY : out STD_LOGIC;
    S0_AXI_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S0_AXI_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S0_AXI_RVALID : out STD_LOGIC;
    S0_AXI_RREADY : in STD_LOGIC;
    S1_AXI_ACLK : in STD_LOGIC;
    S1_AXI_ARESETN : in STD_LOGIC;
    S1_AXI_AWADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S1_AXI_AWVALID : in STD_LOGIC;
    S1_AXI_AWREADY : out STD_LOGIC;
    S1_AXI_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S1_AXI_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S1_AXI_WVALID : in STD_LOGIC;
    S1_AXI_WREADY : out STD_LOGIC;
    S1_AXI_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S1_AXI_BVALID : out STD_LOGIC;
    S1_AXI_BREADY : in STD_LOGIC;
    S1_AXI_ARADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S1_AXI_ARVALID : in STD_LOGIC;
    S1_AXI_ARREADY : out STD_LOGIC;
    S1_AXI_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S1_AXI_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S1_AXI_RVALID : out STD_LOGIC;
    S1_AXI_RREADY : in STD_LOGIC;
    Interrupt_0 : out STD_LOGIC;
    Interrupt_1 : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "mailbox_0,mailbox,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "mailbox,Vivado 2020.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal NLW_U0_M0_AXIS_TLAST_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_M0_AXIS_TVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_M1_AXIS_TLAST_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_M1_AXIS_TVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_S0_AXIS_TREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_S1_AXIS_TREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_M0_AXIS_TDATA_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_M1_AXIS_TDATA_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute C_ASYNC_CLKS : integer;
  attribute C_ASYNC_CLKS of U0 : label is 0;
  attribute C_ASYNC_INTERRUPTS : integer;
  attribute C_ASYNC_INTERRUPTS of U0 : label is 1;
  attribute C_ENABLE_BUS_ERROR : integer;
  attribute C_ENABLE_BUS_ERROR of U0 : label is 0;
  attribute C_EXT_RESET_HIGH : integer;
  attribute C_EXT_RESET_HIGH of U0 : label is 1;
  attribute C_FAMILY : string;
  attribute C_FAMILY of U0 : label is "zynquplus";
  attribute C_IMPL_STYLE : integer;
  attribute C_IMPL_STYLE of U0 : label is 0;
  attribute C_INTERCONNECT_PORT_0 : integer;
  attribute C_INTERCONNECT_PORT_0 of U0 : label is 2;
  attribute C_INTERCONNECT_PORT_1 : integer;
  attribute C_INTERCONNECT_PORT_1 of U0 : label is 2;
  attribute C_M0_AXIS_DATA_WIDTH : integer;
  attribute C_M0_AXIS_DATA_WIDTH of U0 : label is 32;
  attribute C_M1_AXIS_DATA_WIDTH : integer;
  attribute C_M1_AXIS_DATA_WIDTH of U0 : label is 32;
  attribute C_MAILBOX_DEPTH : integer;
  attribute C_MAILBOX_DEPTH of U0 : label is 64;
  attribute C_NUM_SYNC_FF : integer;
  attribute C_NUM_SYNC_FF of U0 : label is 2;
  attribute C_S0_AXIS_DATA_WIDTH : integer;
  attribute C_S0_AXIS_DATA_WIDTH of U0 : label is 32;
  attribute C_S0_AXI_ADDR_WIDTH : integer;
  attribute C_S0_AXI_ADDR_WIDTH of U0 : label is 32;
  attribute C_S0_AXI_BASEADDR : integer;
  attribute C_S0_AXI_BASEADDR of U0 : label is -1;
  attribute C_S0_AXI_DATA_WIDTH : integer;
  attribute C_S0_AXI_DATA_WIDTH of U0 : label is 32;
  attribute C_S0_AXI_HIGHADDR : integer;
  attribute C_S0_AXI_HIGHADDR of U0 : label is 0;
  attribute C_S1_AXIS_DATA_WIDTH : integer;
  attribute C_S1_AXIS_DATA_WIDTH of U0 : label is 32;
  attribute C_S1_AXI_ADDR_WIDTH : integer;
  attribute C_S1_AXI_ADDR_WIDTH of U0 : label is 32;
  attribute C_S1_AXI_BASEADDR : integer;
  attribute C_S1_AXI_BASEADDR of U0 : label is -1;
  attribute C_S1_AXI_DATA_WIDTH : integer;
  attribute C_S1_AXI_DATA_WIDTH of U0 : label is 32;
  attribute C_S1_AXI_HIGHADDR : integer;
  attribute C_S1_AXI_HIGHADDR of U0 : label is 0;
  attribute x_interface_info : string;
  attribute x_interface_info of Interrupt_0 : signal is "xilinx.com:signal:interrupt:1.0 INTERRUPT.Interrupt_0 INTERRUPT";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of Interrupt_0 : signal is "XIL_INTERFACENAME INTERRUPT.Interrupt_0, SENSITIVITY LEVEL_HIGH, SUGGESTED_PRIORITY HIGH, PortWidth 1";
  attribute x_interface_info of Interrupt_1 : signal is "xilinx.com:signal:interrupt:1.0 INTERRUPT.Interrupt_1 INTERRUPT";
  attribute x_interface_parameter of Interrupt_1 : signal is "XIL_INTERFACENAME INTERRUPT.Interrupt_1, SENSITIVITY LEVEL_HIGH, SUGGESTED_PRIORITY HIGH, PortWidth 1";
  attribute x_interface_info of S0_AXI_ACLK : signal is "xilinx.com:signal:clock:1.0 CLK.S0_AXI_ACLK CLK";
  attribute x_interface_parameter of S0_AXI_ACLK : signal is "XIL_INTERFACENAME CLK.S0_AXI_ACLK, ASSOCIATED_BUSIF S0_AXI, ASSOCIATED_RESET S0_AXI_ARESETN, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0";
  attribute x_interface_info of S0_AXI_ARESETN : signal is "xilinx.com:signal:reset:1.0 RST.S0_AXI_ARESETN RST";
  attribute x_interface_parameter of S0_AXI_ARESETN : signal is "XIL_INTERFACENAME RST.S0_AXI_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of S0_AXI_ARREADY : signal is "xilinx.com:interface:aximm:1.0 S0_AXI ARREADY";
  attribute x_interface_info of S0_AXI_ARVALID : signal is "xilinx.com:interface:aximm:1.0 S0_AXI ARVALID";
  attribute x_interface_info of S0_AXI_AWREADY : signal is "xilinx.com:interface:aximm:1.0 S0_AXI AWREADY";
  attribute x_interface_info of S0_AXI_AWVALID : signal is "xilinx.com:interface:aximm:1.0 S0_AXI AWVALID";
  attribute x_interface_info of S0_AXI_BREADY : signal is "xilinx.com:interface:aximm:1.0 S0_AXI BREADY";
  attribute x_interface_info of S0_AXI_BVALID : signal is "xilinx.com:interface:aximm:1.0 S0_AXI BVALID";
  attribute x_interface_info of S0_AXI_RREADY : signal is "xilinx.com:interface:aximm:1.0 S0_AXI RREADY";
  attribute x_interface_info of S0_AXI_RVALID : signal is "xilinx.com:interface:aximm:1.0 S0_AXI RVALID";
  attribute x_interface_info of S0_AXI_WREADY : signal is "xilinx.com:interface:aximm:1.0 S0_AXI WREADY";
  attribute x_interface_info of S0_AXI_WVALID : signal is "xilinx.com:interface:aximm:1.0 S0_AXI WVALID";
  attribute x_interface_info of S1_AXI_ACLK : signal is "xilinx.com:signal:clock:1.0 CLK.S1_AXI_ACLK CLK";
  attribute x_interface_parameter of S1_AXI_ACLK : signal is "XIL_INTERFACENAME CLK.S1_AXI_ACLK, ASSOCIATED_BUSIF S1_AXI, ASSOCIATED_RESET S1_AXI_ARESETN, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0";
  attribute x_interface_info of S1_AXI_ARESETN : signal is "xilinx.com:signal:reset:1.0 RST.S1_AXI_ARESETN RST";
  attribute x_interface_parameter of S1_AXI_ARESETN : signal is "XIL_INTERFACENAME RST.S1_AXI_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of S1_AXI_ARREADY : signal is "xilinx.com:interface:aximm:1.0 S1_AXI ARREADY";
  attribute x_interface_info of S1_AXI_ARVALID : signal is "xilinx.com:interface:aximm:1.0 S1_AXI ARVALID";
  attribute x_interface_info of S1_AXI_AWREADY : signal is "xilinx.com:interface:aximm:1.0 S1_AXI AWREADY";
  attribute x_interface_info of S1_AXI_AWVALID : signal is "xilinx.com:interface:aximm:1.0 S1_AXI AWVALID";
  attribute x_interface_info of S1_AXI_BREADY : signal is "xilinx.com:interface:aximm:1.0 S1_AXI BREADY";
  attribute x_interface_info of S1_AXI_BVALID : signal is "xilinx.com:interface:aximm:1.0 S1_AXI BVALID";
  attribute x_interface_info of S1_AXI_RREADY : signal is "xilinx.com:interface:aximm:1.0 S1_AXI RREADY";
  attribute x_interface_info of S1_AXI_RVALID : signal is "xilinx.com:interface:aximm:1.0 S1_AXI RVALID";
  attribute x_interface_info of S1_AXI_WREADY : signal is "xilinx.com:interface:aximm:1.0 S1_AXI WREADY";
  attribute x_interface_info of S1_AXI_WVALID : signal is "xilinx.com:interface:aximm:1.0 S1_AXI WVALID";
  attribute x_interface_info of S0_AXI_ARADDR : signal is "xilinx.com:interface:aximm:1.0 S0_AXI ARADDR";
  attribute x_interface_info of S0_AXI_AWADDR : signal is "xilinx.com:interface:aximm:1.0 S0_AXI AWADDR";
  attribute x_interface_parameter of S0_AXI_AWADDR : signal is "XIL_INTERFACENAME S0_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute x_interface_info of S0_AXI_BRESP : signal is "xilinx.com:interface:aximm:1.0 S0_AXI BRESP";
  attribute x_interface_info of S0_AXI_RDATA : signal is "xilinx.com:interface:aximm:1.0 S0_AXI RDATA";
  attribute x_interface_info of S0_AXI_RRESP : signal is "xilinx.com:interface:aximm:1.0 S0_AXI RRESP";
  attribute x_interface_info of S0_AXI_WDATA : signal is "xilinx.com:interface:aximm:1.0 S0_AXI WDATA";
  attribute x_interface_info of S0_AXI_WSTRB : signal is "xilinx.com:interface:aximm:1.0 S0_AXI WSTRB";
  attribute x_interface_info of S1_AXI_ARADDR : signal is "xilinx.com:interface:aximm:1.0 S1_AXI ARADDR";
  attribute x_interface_info of S1_AXI_AWADDR : signal is "xilinx.com:interface:aximm:1.0 S1_AXI AWADDR";
  attribute x_interface_parameter of S1_AXI_AWADDR : signal is "XIL_INTERFACENAME S1_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute x_interface_info of S1_AXI_BRESP : signal is "xilinx.com:interface:aximm:1.0 S1_AXI BRESP";
  attribute x_interface_info of S1_AXI_RDATA : signal is "xilinx.com:interface:aximm:1.0 S1_AXI RDATA";
  attribute x_interface_info of S1_AXI_RRESP : signal is "xilinx.com:interface:aximm:1.0 S1_AXI RRESP";
  attribute x_interface_info of S1_AXI_WDATA : signal is "xilinx.com:interface:aximm:1.0 S1_AXI WDATA";
  attribute x_interface_info of S1_AXI_WSTRB : signal is "xilinx.com:interface:aximm:1.0 S1_AXI WSTRB";
begin
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mailbox
     port map (
      Interrupt_0 => Interrupt_0,
      Interrupt_1 => Interrupt_1,
      M0_AXIS_ACLK => '0',
      M0_AXIS_TDATA(31 downto 0) => NLW_U0_M0_AXIS_TDATA_UNCONNECTED(31 downto 0),
      M0_AXIS_TLAST => NLW_U0_M0_AXIS_TLAST_UNCONNECTED,
      M0_AXIS_TREADY => '0',
      M0_AXIS_TVALID => NLW_U0_M0_AXIS_TVALID_UNCONNECTED,
      M1_AXIS_ACLK => '0',
      M1_AXIS_TDATA(31 downto 0) => NLW_U0_M1_AXIS_TDATA_UNCONNECTED(31 downto 0),
      M1_AXIS_TLAST => NLW_U0_M1_AXIS_TLAST_UNCONNECTED,
      M1_AXIS_TREADY => '0',
      M1_AXIS_TVALID => NLW_U0_M1_AXIS_TVALID_UNCONNECTED,
      S0_AXIS_ACLK => '0',
      S0_AXIS_TDATA(31 downto 0) => B"00000000000000000000000000000000",
      S0_AXIS_TLAST => '0',
      S0_AXIS_TREADY => NLW_U0_S0_AXIS_TREADY_UNCONNECTED,
      S0_AXIS_TVALID => '0',
      S0_AXI_ACLK => S0_AXI_ACLK,
      S0_AXI_ARADDR(31 downto 0) => S0_AXI_ARADDR(31 downto 0),
      S0_AXI_ARESETN => S0_AXI_ARESETN,
      S0_AXI_ARREADY => S0_AXI_ARREADY,
      S0_AXI_ARVALID => S0_AXI_ARVALID,
      S0_AXI_AWADDR(31 downto 0) => S0_AXI_AWADDR(31 downto 0),
      S0_AXI_AWREADY => S0_AXI_AWREADY,
      S0_AXI_AWVALID => S0_AXI_AWVALID,
      S0_AXI_BREADY => S0_AXI_BREADY,
      S0_AXI_BRESP(1 downto 0) => S0_AXI_BRESP(1 downto 0),
      S0_AXI_BVALID => S0_AXI_BVALID,
      S0_AXI_RDATA(31 downto 0) => S0_AXI_RDATA(31 downto 0),
      S0_AXI_RREADY => S0_AXI_RREADY,
      S0_AXI_RRESP(1 downto 0) => S0_AXI_RRESP(1 downto 0),
      S0_AXI_RVALID => S0_AXI_RVALID,
      S0_AXI_WDATA(31 downto 0) => S0_AXI_WDATA(31 downto 0),
      S0_AXI_WREADY => S0_AXI_WREADY,
      S0_AXI_WSTRB(3 downto 0) => S0_AXI_WSTRB(3 downto 0),
      S0_AXI_WVALID => S0_AXI_WVALID,
      S1_AXIS_ACLK => '0',
      S1_AXIS_TDATA(31 downto 0) => B"00000000000000000000000000000000",
      S1_AXIS_TLAST => '0',
      S1_AXIS_TREADY => NLW_U0_S1_AXIS_TREADY_UNCONNECTED,
      S1_AXIS_TVALID => '0',
      S1_AXI_ACLK => S1_AXI_ACLK,
      S1_AXI_ARADDR(31 downto 0) => S1_AXI_ARADDR(31 downto 0),
      S1_AXI_ARESETN => S1_AXI_ARESETN,
      S1_AXI_ARREADY => S1_AXI_ARREADY,
      S1_AXI_ARVALID => S1_AXI_ARVALID,
      S1_AXI_AWADDR(31 downto 0) => S1_AXI_AWADDR(31 downto 0),
      S1_AXI_AWREADY => S1_AXI_AWREADY,
      S1_AXI_AWVALID => S1_AXI_AWVALID,
      S1_AXI_BREADY => S1_AXI_BREADY,
      S1_AXI_BRESP(1 downto 0) => S1_AXI_BRESP(1 downto 0),
      S1_AXI_BVALID => S1_AXI_BVALID,
      S1_AXI_RDATA(31 downto 0) => S1_AXI_RDATA(31 downto 0),
      S1_AXI_RREADY => S1_AXI_RREADY,
      S1_AXI_RRESP(1 downto 0) => S1_AXI_RRESP(1 downto 0),
      S1_AXI_RVALID => S1_AXI_RVALID,
      S1_AXI_WDATA(31 downto 0) => S1_AXI_WDATA(31 downto 0),
      S1_AXI_WREADY => S1_AXI_WREADY,
      S1_AXI_WSTRB(3 downto 0) => S1_AXI_WSTRB(3 downto 0),
      S1_AXI_WVALID => S1_AXI_WVALID,
      SYS_Rst => '0'
    );
end STRUCTURE;
