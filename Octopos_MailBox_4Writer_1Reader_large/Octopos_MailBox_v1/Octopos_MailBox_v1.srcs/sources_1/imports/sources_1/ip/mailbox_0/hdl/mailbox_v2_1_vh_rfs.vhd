-------------------------------------------------------------------------------
-- gen_srlfifo.vhd - Entity and architecture
-------------------------------------------------------------------------------
--
-- (c) Copyright 2001-2010 Xilinx, Inc. All rights reserved.
--
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and 
-- international copyright and other intellectual property
-- laws.
--
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
--
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
--
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
--
-------------------------------------------------------------------------------
-- Filename:        gen_srlfifo.vhd
--
-- Description:     
--                  
-- VHDL-Standard:   VHDL'93
-------------------------------------------------------------------------------
-- Structure:   
--              gen_srlfifo.vhd
--
-------------------------------------------------------------------------------
-- Filename:        srl_fifo.vhd
--
-- Description:     
--                  
-- VHDL-Standard:   VHDL'93
-------------------------------------------------------------------------------
-- Structure:   
--              srl_fifo.vhd
--
-------------------------------------------------------------------------------
-- Author:          goran
--
-- History:
--   goran   2003-02-13    First Version
--   rikardw 2008-12-18    Reused in Mailbox (from FSL)
--
-------------------------------------------------------------------------------
-- Naming Conventions:
--      active low signals:                     "*_n"
--      clock signals:                          "clk", "clk_div#", "clk_#x" 
--      reset signals:                          "rst", "rst_n" 
--      generics:                               "C_*" 
--      user defined types:                     "*_TYPE" 
--      state machine next state:               "*_ns" 
--      state machine current state:            "*_cs" 
--      combinatorial signals:                  "*_com" 
--      pipelined or register delay signals:    "*_d#" 
--      counter signals:                        "*cnt*"
--      clock enable signals:                   "*_ce" 
--      internal version of output port         "*_i"
--      device pins:                            "*_pin" 
--      ports:                                  - Names begin with Uppercase 
--      processes:                              "*_PROCESS" 
--      component instantiations:               "<ENTITY_>I_<#|FUNC>
-------------------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity SRL_FIFO is
  generic (
    C_FIFO_LENGTH_WIDTH : integer := 4;
    C_DATA_BITS         : integer := 8
  );
  port (
    Clk             : in  std_logic;
    Reset           : in  std_logic;
    FIFO_Write      : in  std_logic;
    Data_In         : in  std_logic_vector(0 to C_DATA_BITS-1);
    FIFO_Read       : in  std_logic;
    Data_Out        : out std_logic_vector(0 to C_DATA_BITS-1);
    FIFO_Full       : out std_logic;
    FIFO_Length     : out std_logic_vector(0 to C_FIFO_LENGTH_WIDTH);
    Data_Exists     : out std_logic
  );
end entity SRL_FIFO;

library UNISIM;
use UNISIM.VCOMPONENTS.all;

architecture IMP of SRL_FIFO is

  signal Addr         : std_logic_vector(0 to 3);
  signal buffer_Full  : std_logic;
  signal buffer_Empty : std_logic;

  signal next_Data_Exists : std_logic;
  signal data_Exists_I    : std_logic;

  signal valid_Write : std_logic;

  signal hsum_A  : std_logic_vector(0 to 3);
  signal sum_A   : std_logic_vector(0 to 3);
  signal addr_cy : std_logic_vector(0 to 3);

  signal buffer_full_early  : std_logic;
  
  signal fifo_length_i      : std_logic_vector(0 to C_FIFO_LENGTH_WIDTH);
  
begin  -- architecture IMP

  -----------------------------------------------------------------------------
  -- Create Flags 
  -----------------------------------------------------------------------------
  buffer_full_early <= '1' when (sum_A = "1111") else '0';

  FDRE_I1: FDRE
    port map (
      Q  => buffer_Full,                  -- [out std_logic]
      C  => Clk,                      -- [in  std_logic]
      CE => data_Exists_I,            -- [in  std_logic]
      D  => buffer_full_early,                 -- [in  std_logic]
      R  => Reset);                   -- [in std_logic]
  
  FIFO_Full   <= buffer_Full;

  buffer_Empty <= '1' when (Addr = "0000") else '0';

  next_Data_Exists <= (data_Exists_I and not buffer_Empty) or
                      (buffer_Empty and FIFO_Write) or
                      (data_Exists_I and not FIFO_Read);

  Data_Exists_DFF : process (Clk) is
  begin  -- process Data_Exists_DFF
    if Clk'event and Clk = '1' then  -- rising clock edge
      if Reset = '1' then            -- synchronous reset (active high)
        data_Exists_I <= '0';
      else
        data_Exists_I <= next_Data_Exists;
      end if;
    end if;
  end process Data_Exists_DFF;

  Data_Exists <= data_Exists_I;
  
  valid_Write <= FIFO_Write and (FIFO_Read or not buffer_Full);
  

  -----------------------------------------------------------------------------
  -- Create address pointer
  -----------------------------------------------------------------------------
  addr_cy(0) <= valid_Write;

  Addr_Counters : for I in 0 to 3 generate
  begin
    hsum_A(I) <= (FIFO_Read xor addr(I)) and (FIFO_Write or not buffer_Empty);

    -- Don't need the last muxcy, addr_cy(4) is not used anywhere
    Used_MuxCY: if I < 3 generate      
    begin
      MUXCY_L_I : MUXCY_L
        port map (
          DI => addr(I),                  -- [in  std_logic]
          CI => addr_cy(I),               -- [in  std_logic]
          S  => hsum_A(I),                -- [in  std_logic]
          LO => addr_cy(I+1));            -- [out std_logic]
    end generate Used_MuxCY;

    XORCY_I : XORCY
      port map (
        LI => hsum_A(I),                -- [in  std_logic]
        CI => addr_cy(I),               -- [in  std_logic]
        O  => sum_A(I));                -- [out std_logic]

    FDRE_I : FDRE
      port map (
        Q  => addr(I),                  -- [out std_logic]
        C  => Clk,                      -- [in  std_logic]
        CE => data_Exists_I,            -- [in  std_logic]
        D  => sum_A(I),                 -- [in  std_logic]
        R  => Reset);                   -- [in std_logic]

  end generate Addr_Counters;
  
  
  -----------------------------------------------------------------------------
  -- Keep track of length
  -----------------------------------------------------------------------------
  -- Keep track of the real length, addr cannot be reused since it is 
  -- one lower than actual amount of data.
  Length_Counter: process (Clk) is
  begin  -- process Length_Counter
    if Clk'event and Clk = '1' then     -- rising clock edge
      if Reset = '1' then                     -- synchronous reset (active high)
        fifo_length_i <= (others => '0');
        
      else
        if( (valid_Write = '1') and (FIFO_Read = '0') ) then
          fifo_length_i <= std_logic_vector(unsigned(fifo_length_i) + 1);
          
        elsif( (valid_Write = '0') and (FIFO_Read = '1') ) then
          fifo_length_i <= std_logic_vector(unsigned(fifo_length_i) - 1);
          
        end if;
      end if;
    end if;
  end process Length_Counter;
  
  FIFO_Length <= fifo_length_i;
  
  
  -----------------------------------------------------------------------------
  -- Data storage
  -----------------------------------------------------------------------------
  FIFO_RAM : for I in 0 to C_DATA_BITS-1 generate
  begin
    SRL16E_I : SRL16E
      -- pragma translate_off
      generic map (
        INIT => x"0000")
      -- pragma translate_on
      port map (
        CE  => valid_Write,             -- [in  std_logic]
        D   => Data_In(I),              -- [in  std_logic]
        Clk => Clk,                     -- [in  std_logic]
        A0  => Addr(0),                 -- [in  std_logic]
        A1  => Addr(1),                 -- [in  std_logic]
        A2  => Addr(2),                 -- [in  std_logic]
        A3  => Addr(3),                 -- [in  std_logic]
        Q   => Data_Out(I));            -- [out std_logic]
  end generate FIFO_RAM;
  

end architecture IMP;



-------------------------------------------------------------------------------
-- gen_sync_bram.vhd - Entity and architecture
-------------------------------------------------------------------------------
--
-- (c) Copyright 2001-2010,2018 Xilinx, Inc. All rights reserved.
--
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
--
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
--
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
--
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
--
-------------------------------------------------------------------------------
-- Filename:        gen_sync_bram.vhd
--
-- Description:
--
-- VHDL-Standard:   VHDL'93
-------------------------------------------------------------------------------
-- Structure:
--              gen_sync_bram.vhd
--
-------------------------------------------------------------------------------
-- Author:          satish
--
-- History:
--   satish  2004-03-24    New Version
--   rikardw 2008-12-18    Reused in Mailbox (from FSL)
--
-- Description:
-- Code to infer synchronous dual port bram and separate read/write clock dual
-- port bram
--
-------------------------------------------------------------------------------
-- Naming Conventions:
--      active low signals:                     "*_n"
--      clock signals:                          "clk", "clk_div#", "clk_#x"
--      reset signals:                          "rst", "rst_n"
--      generics:                               "C_*"
--      user defined types:                     "*_TYPE"
--      state machine next state:               "*_ns"
--      state machine current state:            "*_cs"
--      combinatorial signals:                  "*_com"
--      pipelined or register delay signals:    "*_d#"
--      counter signals:                        "*cnt*"
--      clock enable signals:                   "*_ce"
--      internal version of output port         "*_i"
--      device pins:                            "*_pin"
--      ports:                                  - Names begin with Uppercase
--      processes:                              "*_PROCESS"
--      component instantiations:               "<ENTITY_>I_<#|FUNC>
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
entity Sync_BRAM is
  generic (
    C_IMPL_STYLE : integer := 1;
    C_DWIDTH     : integer := 32;
    C_AWIDTH     : integer := 16
    );
  port (
    clk     : in  std_logic;
    -- Write port
    we      : in  std_logic;
    a       : in  std_logic_vector(C_AWIDTH-1 downto 0);
    di      : in  std_logic_vector(C_DWIDTH-1 downto 0);
    spo     : out std_logic_vector(C_DWIDTH-1 downto 0);
    -- Read port
    dpra_en : in  std_logic;
    dpra    : in  std_logic_vector(C_AWIDTH-1 downto 0);
    dpo     : out std_logic_vector(C_DWIDTH-1 downto 0)
    );
end Sync_BRAM;

architecture syn of Sync_BRAM is

  attribute ram_style : string;

  function ImplStyle2String(x : integer) return string is
  begin
    if x = 2 then
      return "ultra";
    end if;

    return "block";
  end function ImplStyle2String;

  type ram_type is array ((2**C_AWIDTH)-1 downto 0) of std_logic_vector ((C_DWIDTH-1) downto 0);
  -- signal ram_mem : ram_type := (others => (others => '0'));
  signal ram_mem : ram_type;
  attribute ram_style of ram_mem : signal is ImplStyle2String(C_IMPL_STYLE);

  signal read_a : std_logic_vector(C_AWIDTH-1 downto 0);
  signal read_dpra : std_logic_vector(C_AWIDTH-1 downto 0);
begin
  process (clk)
  begin
    if (clk'event and clk = '1') then
      if (we = '1') then
        ram_mem(conv_integer(a)) <= di;
      end if;
      read_a <= a;
      if (dpra_en = '1') then
        read_dpra <= dpra;
      end if;
    end if;
  end process;
  spo <= ram_mem(conv_integer(read_a));
  dpo <= ram_mem(conv_integer(read_dpra));
end syn;





-------------------------------------------------------------------------------
-- gen_sync_dpram.vhd - Entity and architecture
-------------------------------------------------------------------------------
--
-- (c) Copyright 2001-2010 Xilinx, Inc. All rights reserved.
--
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and 
-- international copyright and other intellectual property
-- laws.
--
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
--
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
--
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
--
-------------------------------------------------------------------------------
-- Filename:        gen_sync_dpram.vhd
--
-- Description:     
--                  
-- VHDL-Standard:   VHDL'93
-------------------------------------------------------------------------------
-- Structure:   
--              gen_sync_dpram.vhd
--
-------------------------------------------------------------------------------
-- Author:          satish
--
-- History:
--   satish  2004-03-24    New Version
--   rikardw 2008-12-18    Reused in Mailbox (from FSL)
--
-- Description:
-- Code to infer synchronous dual port lut ram
--
-------------------------------------------------------------------------------
-- Naming Conventions:
--      active low signals:                     "*_n"
--      clock signals:                          "clk", "clk_div#", "clk_#x" 
--      reset signals:                          "rst", "rst_n" 
--      generics:                               "C_*" 
--      user defined types:                     "*_TYPE" 
--      state machine next state:               "*_ns" 
--      state machine current state:            "*_cs" 
--      combinatorial signals:                  "*_com" 
--      pipelined or register delay signals:    "*_d#" 
--      counter signals:                        "*cnt*"
--      clock enable signals:                   "*_ce" 
--      internal version of output port         "*_i"
--      device pins:                            "*_pin" 
--      ports:                                  - Names begin with Uppercase 
--      processes:                              "*_PROCESS" 
--      component instantiations:               "<ENTITY_>I_<#|FUNC>
-------------------------------------------------------------------------------
  
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all; 

entity Sync_DPRAM is 
  generic (
    C_DWIDTH : integer := 32;
    C_AWIDTH : integer := 16
    );    
  port ( 
    clk  : in std_logic; 
    we   : in std_logic; 
    a    : in std_logic_vector(C_AWIDTH-1 downto 0); 
    dpra : in std_logic_vector(C_AWIDTH-1 downto 0); 
    di   : in std_logic_vector(C_DWIDTH-1 downto 0); 
    spo  : out std_logic_vector(C_DWIDTH-1 downto 0); 
    dpo  : out std_logic_vector(C_DWIDTH-1 downto 0) 
    ); 
end Sync_DPRAM; 

architecture syn of Sync_DPRAM is 
  type ram_type is array ((2**C_AWIDTH)-1 downto 0) of std_logic_vector ((C_DWIDTH-1) downto 0); 
  -- signal RAM : ram_type := (others => (others => '0')); 
  signal RAM : ram_type;
begin 
  process (clk) 
    begin 
      if (clk'event and clk = '1') then 
          if (we = '1') then 
              RAM(conv_integer(a)) <= di; 
          end if; 
      end if; 
  end process; 
  spo <= RAM(conv_integer(a)); 
  dpo <= RAM(conv_integer(dpra)); 
end syn; 


-------------------------------------------------------------------------------
-- sync_fifo.vhd - Entity and architecture
-------------------------------------------------------------------------------
--
-- (c) Copyright 2001-2012,2018 Xilinx, Inc. All rights reserved.
--
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and 
-- international copyright and other intellectual property
-- laws.
--
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
--
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
--
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
--
-------------------------------------------------------------------------------
-- Filename:        sync_fifo.vhd
--
-- Description:     
--                  
-- VHDL-Standard:   VHDL'93
-------------------------------------------------------------------------------
-- Structure:   
--              sync_fifo.vhd
--
-------------------------------------------------------------------------------
-- Author:          satish
--
-- History:
--   satish  2004-03-24    New Version
--   rikardw 2008-12-18    Reused in Mailbox (from FSL)
--
-------------------------------------------------------------------------------
-- Naming Conventions:
--      active low signals:                     "*_n"
--      clock signals:                          "clk", "clk_div#", "clk_#x" 
--      reset signals:                          "rst", "rst_n" 
--      generics:                               "C_*" 
--      user defined types:                     "*_TYPE" 
--      state machine next state:               "*_ns" 
--      state machine current state:            "*_cs" 
--      combinatorial signals:                  "*_com" 
--      pipelined or register delay signals:    "*_d#" 
--      counter signals:                        "*cnt*"
--      clock enable signals:                   "*_ce" 
--      internal version of output port         "*_i"
--      device pins:                            "*_pin" 
--      ports:                                  - Names begin with Uppercase 
--      processes:                              "*_PROCESS" 
--      component instantiations:               "<ENTITY_>I_<#|FUNC>
-------------------------------------------------------------------------------
library IEEE;
use IEEE.Std_Logic_1164.all;
use IEEE.numeric_std.all;

library mailbox_v2_1_13;
use mailbox_v2_1_13.all;

entity Sync_FIFO is
  generic (
    C_IMPL_STYLE        : integer := 0;
    C_FIFO_LENGTH_WIDTH : integer := 4;
    WordSize            : integer := 8;
    MemSize             : integer := 16
    );
  port (
    Reset       : in std_logic;
    Clk         : in std_logic;

    WE          : in  std_logic;
    DataIn      : in  std_logic_vector(WordSize-1 downto 0);
    Full        : out std_logic;
    RD          : in  std_logic;
    FIFO_Length : out std_logic_vector(0 to C_FIFO_LENGTH_WIDTH);
    DataOut     : out std_logic_vector(WordSize-1 downto 0);
    Exists      : out std_logic
  );
end Sync_FIFO;

architecture VHDL_RTL of Sync_FIFO is

  -- signal read_addr_ptr_i      : natural;
  -- signal write_addr_ptr_i     : natural;

  -- purpose: calculate width of used address bits for address range  occupied by the
  -- memory. Requires 2^N sized blocks
  function addr_used_width (
    addr_size : integer)
    return integer is
    variable addr_cnt : integer := 0;
    variable cnt      : integer := 0;
  begin  -- addr_decode_width
    addr_cnt := addr_size;
    while addr_cnt > 0 loop
      addr_cnt := addr_cnt / 2;
      cnt      := cnt + 1;
    end loop;
    return cnt-1;
  end addr_used_width;

  signal Read_Address  : std_logic_vector(0 to C_FIFO_LENGTH_WIDTH-1);
  signal Write_Address : std_logic_vector(0 to C_FIFO_LENGTH_WIDTH-1);

  -- signal read_addr_ptr      : natural;
  -- signal write_addr_ptr     : natural;

  component SRL_FIFO is
    generic (
      C_FIFO_LENGTH_WIDTH : integer := 4;
      C_DATA_BITS         : integer);
    port (
      Clk             : in  std_logic;
      Reset           : in  std_logic;
      FIFO_Write      : in  std_logic;
      Data_In         : in  std_logic_vector(0 to C_DATA_BITS-1);
      FIFO_Read       : in  std_logic;
      Data_Out        : out std_logic_vector(0 to C_DATA_BITS-1);
      FIFO_Full       : out std_logic;
      FIFO_Length     : out std_logic_vector(0 to C_FIFO_LENGTH_WIDTH);
      Data_Exists     : out std_logic);
  end component SRL_FIFO;

  component Sync_DPRAM is
    generic (
      C_DWIDTH : integer := 32;
      C_AWIDTH : integer := 16
      );    
    port (
      clk  : in  std_logic;
      we   : in  std_logic;
      a    : in  std_logic_vector(C_AWIDTH-1 downto 0);
      dpra : in  std_logic_vector(C_AWIDTH-1 downto 0);
      di   : in  std_logic_vector(C_DWIDTH-1 downto 0);
      spo  : out std_logic_vector(C_DWIDTH-1 downto 0);
      dpo  : out std_logic_vector(C_DWIDTH-1 downto 0)
      ); 
  end component;

  component Sync_BRAM is
    generic (
      C_IMPL_STYLE : integer := 1;
      C_DWIDTH     : integer := 32;
      C_AWIDTH     : integer := 16
      );    
    port (
      clk     : in  std_logic;
      -- Write port
      we      : in  std_logic;
      a       : in  std_logic_vector(C_AWIDTH-1 downto 0);
      di      : in  std_logic_vector(C_DWIDTH-1 downto 0);
      spo     : out std_logic_vector(C_DWIDTH-1 downto 0);
      -- Read port
      dpra_en : in  std_logic;
      dpra    : in  std_logic_vector(C_AWIDTH-1 downto 0);
      dpo     : out std_logic_vector(C_DWIDTH-1 downto 0)
      ); 
  end component;

  signal read_bram_enable : std_logic;
  signal DataOut_BRAM     : std_logic_vector(WordSize-1 downto 0);

  
begin

  FSL_Flag_Handle : if ((MemSize > 16) or (C_IMPL_STYLE /= 0)) generate
    signal read_addr_ptr  : natural range 0 to MemSize-1;
    signal write_addr_ptr : natural range 0 to MemSize-1;

    signal full_i                    : std_logic;
    signal exists_i                  : std_logic;
    signal read_addr_incr            : std_logic;
    signal first_write_on_empty_fifo : std_logic;
    signal last_word                 : std_logic;

    signal fifo_length_i             : natural range 0 to MemSize;
  begin

    -- FIFO length handling
    Fifo_Length_Handle : process (Clk)
    begin
      if (Clk'event and Clk = '1') then
        if (Reset = '1') then
          fifo_length_i <= 0;
        else
          -- write and no read => increment length
          -- don't increment length when FULL
          if (WE = '1' and RD = '0' and full_i = '0') then
            fifo_length_i <= fifo_length_i + 1;
          -- read and no write => decrement length
          -- don't decrement length when EMPTY
          elsif (WE = '0' and RD = '1' and exists_i = '1') then
            fifo_length_i <= fifo_length_i - 1;
          end if;
        end if;
      end if;
    end process Fifo_Length_Handle;

    ---------------------------------------------------------------------------
    -- Need special handling for BRAM based fifo since there is one extra delay
    -- reading out data from it.
    -- We are pipelining the reading by making read_addr be one read ahead and
    -- are holding the data on the BRAM output by enabling/disabling the BRAM
    -- enable signal
    ---------------------------------------------------------------------------
    Rd_Delay_For_Bram : if (C_IMPL_STYLE /= 0) generate
      signal fall_through_data  : std_logic_vector(WordSize-1 downto 0);
      signal use_fall_through   : std_logic;
    begin

      -------------------------------------------------------------------------
      -- Need to detect when writing into an empty FIFO, 
      -------------------------------------------------------------------------
      First_Write : process (Clk) is
      begin  -- process First_Write
        if Clk'event and Clk = '1' then  -- rising clock edge
          if Reset = '1' then            -- synchronous reset (active high)
            first_write_on_empty_fifo <= '0';
          else
            first_write_on_empty_fifo <= WE and not exists_i;
          end if;
        end if;
      end process First_Write;

      -------------------------------------------------------------------------
      -- Read out BRAM contents on the first word written in an empty FIFO and
      -- all other FIFO read except when the last word is read since the "real"
      -- FIFO is actually empty at this time since the last word is on the
      -- output of the BRAM
      -------------------------------------------------------------------------
      last_word        <= '1' when (fifo_length_i = 1) else '0';
      read_bram_enable <= first_write_on_empty_fifo or (RD and (not last_word or WE));

      read_addr_incr <= read_bram_enable;

      -------------------------------------------------------------------------
      -- The exists flag is now if the BRAM output has valid data and not the
      -- content of the FIFO
      -------------------------------------------------------------------------
      FIFO_Exists_DFF : process (Clk) is
      begin  -- process FIFO_Exists_DFF
        if Clk'event and Clk = '1' then  -- rising clock edge
          if Reset = '1' then            -- synchronous reset (active high)
            Exists <= '0';
          else
            if (first_write_on_empty_fifo = '1') then
              Exists <= '1';
            elsif ((RD = '1') and (WE = '0') and (last_word = '1')) then
              Exists <= '0';
            end if;
          end if;
        end if;
      end process FIFO_Exists_DFF;
      
      -------------------------------------------------------------------------
      -- Data output with fallthrough
      -------------------------------------------------------------------------
      use_fall_through_DFF : process (Clk) is
      begin  -- process FIFO_Exists_DFF
        if Clk'event and Clk = '1' then  -- rising clock edge
          if ((RD and (not WE)) = '1') or (Reset = '1') then            -- synchronous reset (active high)
            use_fall_through <= '0';
          elsif (RD and not last_word) = '1' then
            use_fall_through <= '0';
          elsif (RD and WE and last_word) = '1' then
            use_fall_through <= '1';
          end if;
        end if;
      end process use_fall_through_DFF;

      fall_through_data_DFF : process (Clk) is
      begin  -- process FIFO_Exists_DFF
        if Clk'event and Clk = '1' then  -- rising clock edge
          if (RD and WE and last_word) = '1' then
            fall_through_data <= DataIn;
          end if;
        end if;
      end process fall_through_data_DFF;
            
      DataOut <= fall_through_data when (use_fall_through = '1') else DataOut_BRAM;
      
    end generate Rd_Delay_For_Bram;

    Rd_No_Delay : if (C_IMPL_STYLE = 0) generate
      read_addr_incr <= RD;
      Exists         <= exists_i;
    end generate Rd_No_Delay;

    -- Set Full and empty flags
    full_i   <= '1' when (fifo_length_i = MemSize) else '0';
    exists_i <= '1' when (fifo_length_i /= 0)      else '0';

    Full <= full_i;

    -- Increment Read Address Pointer
    Read_Addr_Handle : process (Clk)
    begin
      if (Clk'event and Clk = '1') then
        if (Reset = '1') then
          read_addr_ptr <= 0;
        elsif (read_addr_incr = '1') then
          read_addr_ptr <= (read_addr_ptr + 1) mod (2 ** C_FIFO_LENGTH_WIDTH);
        end if;
      end if;
    end process Read_Addr_Handle;

    -- Increment Write Address Pointer
    Write_Addr_Handle : process (Clk)
    begin
      if (Clk'event and Clk = '1') then
        if (Reset = '1') then
          write_addr_ptr <= 0;
        elsif (WE = '1') then
          write_addr_ptr <= (write_addr_ptr + 1) mod (2 ** C_FIFO_LENGTH_WIDTH);
        end if;
      end if;
    end process Write_Addr_Handle;

    Write_Address <= std_logic_vector(to_unsigned(write_addr_ptr, C_FIFO_LENGTH_WIDTH));
    Read_Address  <= std_logic_vector(to_unsigned(read_addr_ptr, C_FIFO_LENGTH_WIDTH));
    
    -- Length is generated here for all cases except SRL FIFO that generates it locally.
    FIFO_Length   <= std_logic_vector(to_unsigned(fifo_length_i, C_FIFO_LENGTH_WIDTH+1));
  end generate FSL_Flag_Handle;


  Sync_FIFO_I : if (C_IMPL_STYLE = 0) generate
  begin
    srl_fifo_i : if (MemSize <= 16) generate
    begin
      FSL_FIFO : SRL_FIFO
        generic map (
          C_FIFO_LENGTH_WIDTH => C_FIFO_LENGTH_WIDTH,
          C_DATA_BITS         => WordSize)
        port map (
          Clk             => Clk,
          Reset           => Reset,
          FIFO_Write      => WE,            -- Master Write Signal
          Data_In         => DataIn,        -- Master Data
          FIFO_Read       => RD,            -- Slave Read Signal
          Data_Out        => DataOut,       -- Slave Data
          FIFO_Full       => Full,          -- FIFO full signal
          FIFO_Length     => FIFO_Length,
          Data_Exists     => Exists);       -- Slave Data exists      
    end generate srl_fifo_i;

    dpram_fifo_i : if (MemSize > 16) generate
    begin
      DPRAM_FIFO : SYNC_DPRAM
        generic map (
          C_DWIDTH => WordSize,             -- [integer]
          C_AWIDTH => C_FIFO_LENGTH_WIDTH)  -- [integer]
        port map (
          clk  => Clk,                      -- [in  std_logic]
          we   => WE,                       -- [in  std_logic]
          a    => Write_Address,            -- [in  std_logic_vector(C_AWIDTH-1 downto 0)]
          dpra => Read_Address,             -- [in  std_logic_vector(C_AWIDTH-1 downto 0)]
          di   => DataIn,                   -- [in  std_logic_vector(C_DWIDTH-1 downto 0)]
          spo  => open,                     -- [out std_logic_vector(C_DWIDTH-1 downto 0)]
          dpo  => DataOut);                 -- [out std_logic_vector(C_DWIDTH-1 downto 0)]
    end generate dpram_fifo_i;

  end generate Sync_FIFO_I;

  Sync_BRAM_FIFO : if (C_IMPL_STYLE /= 0) generate
  begin
    Sync_BRAM_I1 : Sync_BRAM
      generic map (
        C_IMPL_STYLE => C_IMPL_STYLE,         -- [integer]
        C_DWIDTH     => WordSize,             -- [integer]
        C_AWIDTH     => C_FIFO_LENGTH_WIDTH)  -- [integer]
      port map (
        clk => Clk,                           -- [in  std_logic]

        -- Write port
        we  => WE,                            -- [in  std_logic]
        a   => Write_Address,                 -- [in  std_logic_vector(C_AWIDTH-1 downto 0)]
        di  => DataIn,                        -- [in  std_logic_vector(C_DWIDTH-1 downto 0)]
        spo => open,                          -- [out std_logic_vector(C_DWIDTH-1 downto 0)]

        -- Read port
        dpra_en => read_bram_enable,          -- [in  std_logic]
        dpra    => Read_Address,              -- [in  std_logic_vector(C_AWIDTH-1 downto 0)]
        dpo     => DataOut_BRAM);             -- [out std_logic_vector(C_DWIDTH-1 downto 0)]
  end generate Sync_BRAM_FIFO;
  
end VHDL_RTL;



-------------------------------------------------------------------------------
-- async_fifo.vhd - Entity and architecture
-------------------------------------------------------------------------------
--
-- (c) Copyright 2001-2010,2017 Xilinx, Inc. All rights reserved.
--
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and 
-- international copyright and other intellectual property
-- laws.
--
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
--
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
--
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
--
-------------------------------------------------------------------------------
-- Filename:        async_fifo.vhd
--
-- Description:     
--                  
-- VHDL-Standard:   VHDL'93
-------------------------------------------------------------------------------
-- Structure:   
--              async_fifo
--
-------------------------------------------------------------------------------
-- Author:          rolandp
--
-- History:
--   rolandp  2006          New Version
--   rikardw  2008-12-18    Reused in Mailbox (from FSL)
--   stefana  2017-04-25    Changed to use synchronous reset
--
-- Description:
-- Code to infer asynchronous dual port bram 
--
-------------------------------------------------------------------------------
-- Naming Conventions:
--      active low signals:                     "*_n"
--      clock signals:                          "clk", "clk_div#", "clk_#x" 
--      reset signals:                          "rst", "rst_n" 
--      generics:                               "C_*" 
--      user defined types:                     "*_TYPE" 
--      state machine next state:               "*_ns" 
--      state machine current state:            "*_cs" 
--      combinatorial signals:                  "*_com" 
--      pipelined or register delay signals:    "*_d#" 
--      counter signals:                        "*cnt*"
--      clock enable signals:                   "*_ce" 
--      internal version of output port         "*_i"
--      device pins:                            "*_pin" 
--      ports:                                  - Names begin with Uppercase 
--      processes:                              "*_PROCESS" 
--      component instantiations:               "<ENTITY_>I_<#|FUNC>
-------------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

library unisim;
use unisim.vcomponents.all;

entity Async_FIFO is
  generic (
    C_NUM_SYNC_FF       : integer := 2;
    C_IMPL_STYLE        : integer := 0;
    C_FIFO_LENGTH_WIDTH : integer := 4;
    WordSize            : integer := 8;
    Protect             : boolean := false
  );
  port (
    Reset     : in  std_logic;
    -- Clock region WrClk
    WrClk     : in  std_logic;
    WE        : in  std_logic;
    DataIn    : in  std_logic_vector(WordSize-1 downto 0);
    Wr_Length : out std_logic_vector(0 to C_FIFO_LENGTH_WIDTH);
    Full      : out std_logic;
    -- Clock region RdClk
    RdClk     : in  std_logic;
    RD        : in  std_logic;
    DataOut   : out std_logic_vector(WordSize-1 downto 0);
    Rd_Length : out std_logic_vector(0 to C_FIFO_LENGTH_WIDTH);
    Exists    : out std_logic
  );
end entity Async_FIFO;

architecture IMP of Async_FIFO is

  attribute ram_style : string;

  function Bin2Gray(constant bin : std_logic_vector)
    return std_logic_vector is
    variable gray : std_logic_vector(bin'range);
  begin
    gray(bin'high) := bin(bin'high);
    for I in bin'high - 1 downto bin'low loop
      gray(I) := bin(I + 1) xor bin(I);
    end loop;
    return gray;
  end function Bin2Gray;

  function Gray2Bin(constant gray : std_logic_vector)
    return std_logic_vector is
    variable bin : std_logic_vector(gray'range);
  begin

    bin(gray'high) := gray(gray'high);
    for I in gray'high - 1 downto gray'low loop
      bin(I) := bin(I + 1) xor gray(I);
    end loop;
    return bin;
  end function Gray2Bin;

  function ImplStyle2String(x : integer) return string is
  begin
    if x /= 0 then 
      return "block";
    end if;
    
    return "distributed";
  end function ImplStyle2String;

  subtype C_SYNC_POS             is integer range C_NUM_SYNC_FF downto 0;
  subtype C_FIFO_ADDR_POS        is integer range C_FIFO_LENGTH_WIDTH-1 downto 0;
  subtype FIFO_ADDR_TYPE         is std_logic_vector(C_FIFO_ADDR_POS);
  type SYNC_ADDR_TYPE            is array(C_SYNC_POS) of FIFO_ADDR_TYPE;
  
  type ram_type                  is array(2**C_FIFO_LENGTH_WIDTH-1 downto 0) of std_logic_vector(WordSize-1 downto 0);

  signal ram_mem                 : ram_type;
  attribute ram_style of ram_mem : signal is ImplStyle2String(C_IMPL_STYLE);

  signal rd_reset_sync : std_logic_vector(C_SYNC_POS) := (others => '1');
  signal rd_reset      : std_logic;
  signal wr_reset_sync : std_logic_vector(C_SYNC_POS) := (others => '1');
  signal wr_reset      : std_logic;
  
  signal read_enable  : std_logic;
  signal write_enable : std_logic;

  signal read_allow  : std_logic;
  signal write_allow : std_logic;

  signal empty_allow : std_logic;
  signal full_allow  : std_logic;

  signal full_i : std_logic;
  signal empty  : std_logic;

  signal emptyg : std_logic;
  signal fullg  : std_logic;

  signal read_addr_next : std_logic_vector(C_FIFO_LENGTH_WIDTH-1 downto 0);
  signal read_addr      : std_logic_vector(C_FIFO_LENGTH_WIDTH-1 downto 0);
  signal read_addrgray  : std_logic_vector(C_FIFO_LENGTH_WIDTH-1 downto 0);
  signal read_nextgray  : std_logic_vector(C_FIFO_LENGTH_WIDTH-1 downto 0);
  signal read_lastgray  : std_logic_vector(C_FIFO_LENGTH_WIDTH-1 downto 0);

  signal write_addr     : std_logic_vector(C_FIFO_LENGTH_WIDTH-1 downto 0);
  signal write_addrgray : std_logic_vector(C_FIFO_LENGTH_WIDTH-1 downto 0);
  signal write_nextgray : std_logic_vector(C_FIFO_LENGTH_WIDTH-1 downto 0);

  signal ecomp   : std_logic_vector(C_FIFO_LENGTH_WIDTH-1 downto 0);
  signal fcomp   : std_logic_vector(C_FIFO_LENGTH_WIDTH-1 downto 0);
  signal emuxcyo : std_logic_vector(C_FIFO_LENGTH_WIDTH-2 downto 0);
  signal fmuxcyo : std_logic_vector(C_FIFO_LENGTH_WIDTH-2 downto 0);
  
--  signal rd_write_nextgray    : std_logic_vector(C_FIFO_LENGTH_WIDTH-1 downto 0);
  signal rd_write_addrgray_dx : SYNC_ADDR_TYPE;
  signal rd_write_nextgray_dx : SYNC_ADDR_TYPE;
  signal rd_write_next        : FIFO_ADDR_TYPE;
--  signal wr_read_nextgray     : std_logic_vector(C_FIFO_LENGTH_WIDTH-1 downto 0);
  signal wr_read_lastgray_dx  : SYNC_ADDR_TYPE;
  signal wr_read_nextgray_dx  : SYNC_ADDR_TYPE;
  signal wr_read_next         : FIFO_ADDR_TYPE;
  signal write_addr_d1        : FIFO_ADDR_TYPE;
  signal read_addr_d1         : FIFO_ADDR_TYPE;
  signal Rd_Length_i          : FIFO_ADDR_TYPE;
  signal Wr_Length_i          : FIFO_ADDR_TYPE;
  
  attribute ASYNC_REG                         : string;
  attribute ASYNC_REG of rd_reset_sync        : signal is "TRUE";
  attribute ASYNC_REG of wr_reset_sync        : signal is "TRUE";
  attribute ASYNC_REG of empty                : signal is "TRUE";
  attribute ASYNC_REG of full                 : signal is "TRUE";
  attribute ASYNC_REG of rd_write_addrgray_dx : signal is "TRUE";
  attribute ASYNC_REG of rd_write_nextgray_dx : signal is "TRUE";
  attribute ASYNC_REG of wr_read_lastgray_dx  : signal is "TRUE";
  attribute ASYNC_REG of wr_read_nextgray_dx  : signal is "TRUE";
  
begin

  -------------------------------------------------------------------
  -- Make sure the reset signals are synchronized to RdClk and WrClk.
  -------------------------------------------------------------------

  Sync_Rd_Reset_DFFs : process(RdClk)
  begin
    if RdClk'event and RdClk = '1' then
      for I in 1 to C_NUM_SYNC_FF loop
        rd_reset_sync(I) <= rd_reset_sync(I-1);
      end loop;
      rd_reset_sync(0) <= Reset;
    end if;
  end process Sync_Rd_Reset_DFFs;

  rd_reset <= rd_reset_sync(C_NUM_SYNC_FF);

  Sync_Wr_Reset_DFFs : process(WrClk)
  begin
    if WrClk'event and WrClk = '1' then
      for I in 1 to C_NUM_SYNC_FF loop
        wr_reset_sync(I) <= wr_reset_sync(I-1);
      end loop;
      wr_reset_sync(0) <= Reset;
    end if;
  end process Sync_Wr_Reset_DFFs;

  wr_reset <= wr_reset_sync(C_NUM_SYNC_FF);


  ----------------------------------------------------------------
  --
  ----------------------------------------------------------------
  -- Assign local signals from ports
  read_enable  <= RD;
  write_enable <= WE;

  -- Memory array
  WritePort : process (WrClk)
  begin
    if (WrClk'event and WrClk = '1') then
      if (write_allow = '1') then
        ram_mem(To_integer(unsigned(write_addr))) <= DataIn;
      end if;
    end if;
  end process WritePort;

  ReadPort : process (RdClk)
  begin
    if (RdClk'event and RdClk = '1') then
      DataOut <= ram_mem(To_integer(unsigned(read_addr_next)));
    end if;
  end process ReadPort;

  ----------------------------------------------------------------
  --  Allow flags determine whether FIFO control logic can      --
  --  operate.  If read_enable is driven high, and the FIFO is  --
  --  not Empty, then Reads are allowed.  Similarly, if the     --
  --  write_enable signal is high, and the FIFO is not Full,    --
  --  then Writes are allowed.                                  --
  ----------------------------------------------------------------

  read_allow  <= (read_enable and not empty);
  write_allow <= (write_enable and not full_i);

  ---------------------------------------------------------------
  --  Empty flag is set on Reset (initial), or when gray       --
  --  code counters are equal, or when there is one word in    --
  --  the FIFO, and a Read operation is about to be performed. --
  ---------------------------------------------------------------

  empty_allow <= (empty or read_enable);  -- Is empty or possibly going to be empty

  EmptyFlag : process (RdClk)
  begin
    if (RdClk'event and RdClk = '1') then
      if (rd_reset = '1') then
        empty <= '1';
      elsif (empty_allow = '1') then
        empty <= emptyg;
      end if;
    end if;
  end process EmptyFlag;

  Exists <= not empty;

  ---------------------------------------------------------------
  --  Full flag is set on Reset (initial, but it is cleared    --
  --  on the first valid write_clock edge after Reset is       --
  --  de-asserted), or when Gray-code counters are one away    --
  --  from being equal (the Write Gray-code address is equal   --
  --  to the Last Read Gray-code address), or when the Next    --
  --  Write Gray-code address is equal to the Last Read Gray-  --
  --  code address, and a Write operation is about to be       --
  --  performed.                                               --
  ---------------------------------------------------------------

  full_allow <= (full_i or write_enable);  -- Is full or possibly going to be full

  FullFlag : process (WrClk)
  begin
    if (WrClk'event and WrClk = '1') then
      if (wr_reset = '1') then
        full_i <= '1';
      elsif (full_allow = '1') then
        full_i <= fullg;
      end if;
    end if;
  end process FullFlag;

  Full <= full_i;

  ----------------------------------------------------------------
  --  Generation of Read address pointers.  The primary one is  --
  --  binary (read_addr), and the Gray-code derivatives are     --
  --  generated via pipelining the binary-to-Gray-code result.  --
  --  The initial values are important, so they're in sequence. --
  --                                                            --
  --  Grey-code addresses are used so that the registered       --
  --  Full and Empty flags are always clean, and never in an    --
  --  unknown state due to the asynchonous relationship of the  --
  --  Read and Write clocks.  In the worst case scenario, Full  --
  --  and Empty would simply stay active one cycle longer, but  --
  --  it would not generate an error or give false values.      --
  ----------------------------------------------------------------

  read_addr_next <= std_logic_vector(unsigned(read_addr) + 1) when read_allow = '1' else read_addr;
  
  ReadAddrCnt : process (RdClk)
  begin
    if (RdClk'event and RdClk = '1') then
      if (rd_reset = '1') then
        read_addr <= (others => '0');
      else
        read_addr <= read_addr_next;
      end if;
    end if;
  end process ReadAddrCnt;

  ReadNextGray : process (RdClk)
  begin
    if (RdClk'event and RdClk = '1') then
      if (rd_reset = '1') then
        read_nextgray(read_nextgray'high-1 downto 0) <= (others => '0');
        read_nextgray(read_nextgray'high)            <= '1';
      elsif (read_allow = '1') then
        read_nextgray <= Bin2Gray(read_addr);
      end if;
    end if;
  end process ReadNextGray;

  ReadAddrGray : process (RdClk)
  begin
    if (RdClk'event and RdClk = '1') then
      if (rd_reset = '1') then
        read_addrgray(read_addrgray'high-1 downto 1) <= (others => '0');
        read_addrgray(0)                             <= '1';
        read_addrgray(read_addrgray'high)            <= '1';
      elsif (read_allow = '1') then
        read_addrgray <= read_nextgray;
      end if;
    end if;
  end process ReadAddrGray;

  ReadLastGrey : process (RdClk)
  begin
    if (RdClk'event and RdClk = '1') then
      if (rd_reset = '1') then
        read_lastgray(read_lastgray'high-1 downto 2) <= (others => '0');
        read_lastgray(0)                             <= '1';
        read_lastgray(1)                             <= '1';
        read_lastgray(read_lastgray'high)            <= '1';
      elsif (read_allow = '1') then
        read_lastgray <= read_addrgray;
      end if;
    end if;
  end process ReadLastGrey;

  ----------------------------------------------------------------
  --  Generation of Write address pointers.  Identical copy of  --
  --  read pointer generation above, except for names.          --
  ----------------------------------------------------------------

  WriteAddrCnt : process (WrClk)
  begin
    if (WrClk'event and WrClk = '1') then
      if (wr_reset = '1') then
        write_addr <= (others => '0');
      elsif (write_allow = '1') then
        write_addr <= std_logic_vector(unsigned(write_addr) + 1);
      end if;
    end if;
  end process WriteAddrCnt;

  WriteNextGray : process (WrClk)
  begin
    if (WrClk'event and WrClk = '1') then
      if (wr_reset = '1') then
        write_nextgray(write_nextgray'high-1 downto 0) <= (others => '0');
        write_nextgray(write_nextgray'high)            <= '1';
      elsif (write_allow = '1') then
        write_nextgray <= Bin2Gray(write_addr);
      end if;
    end if;
  end process WriteNextGray;

  WriteAddrGray : process (WrClk)
  begin
    if (WrClk'event and WrClk = '1') then
      if (wr_reset = '1') then
        write_addrgray(write_addrgray'high-1 downto 0) <= (others => '0');
        write_addrgray(0)                              <= '1';
        write_addrgray(write_addrgray'high)            <= '1';
      elsif (write_allow = '1') then
        write_addrgray <= write_nextgray;
      end if;
    end if;
  end process WriteAddrGray;

----------------------------------------------------------------
--  The two conditions decoded with special carry logic are   --
--  Empty and Full (gated versions).  These are used to       --
--  determine the next state of the Full/Empty flags.  Carry  --
--  logic is used for optimal speed.  (The previous           --
--  implementation of AlmostEmpty and AlmostFull have been    --
--  wrapped into the corresponding carry chains for faster    --
--  performance).                                             --
--                                                            --
--  When write_addrgray is equal to read_addrgray, the FIFO   --
--  is Empty, and emptyg (combinatorial) is asserted.  Or,    --
--  when write_addrgray is equal to read_nextgray (1 word in  --
--  the FIFO) then the FIFO potentially could be going Empty, --
--  so emptyg is asserted, and the Empty flip-flop enable is  --
--  gated with empty_allow, which is conditioned with a valid --
--  read.                                                     --
--                                                            --
--  Similarly, when read_lastgray is equal to write_addrgray, --
--  the FIFO is full (511 addresses).  Or, when read_lastgray --
--  is equal to write_nextgray, then the FIFO potentially     --   
--  could be going Full, so fullg is asserted, and the Full   --
--  flip-flop enable is gated with full_allow, which is       --   
--  conditioned with a valid write.                           --
--                                                            --
--  Note: To have utilized the full address space (512)       --   
--  would have required extra logic to determine Full/Empty   --
--  on equal addresses, and this would have slowed down the   --
--  overall performance, which was the top priority.          --   
----------------------------------------------------------------

  ECompare : process(write_addrgray, read_addrgray, read_nextgray, empty, rd_write_addrgray_dx)
    variable cur_write_addrgray        : FIFO_ADDR_TYPE;
  begin
    -- Select which synchronized element to use.
    if( C_NUM_SYNC_FF > 0 ) then
      cur_write_addrgray  := rd_write_addrgray_dx(C_NUM_SYNC_FF-1);
    else
      cur_write_addrgray  := write_addrgray;
    end if;
    
    -- Calculate signal for carry logic.
    for I in 0 to C_FIFO_LENGTH_WIDTH-1 loop
      ecomp(I) <= (not (cur_write_addrgray(I) xor read_addrgray(I)) and empty) or
                  (not (cur_write_addrgray(I) xor read_nextgray(I)) and not empty);
    end loop;
  end process ECompare;

  emuxcylow : MUXCY_L port map(DI => '0', CI => '1', S => ecomp(0), LO => emuxcyo(0));

  Gen_emuxcy : for I in 1 to C_FIFO_LENGTH_WIDTH-2 generate
  begin
    emuxcy : MUXCY_L port map(DI => '0', CI => emuxcyo(I-1), S => ecomp(I), LO => emuxcyo(I));
  end generate Gen_emuxcy;

  emuxcyhigh : MUXCY_L port map(DI => '0', CI => emuxcyo(C_FIFO_LENGTH_WIDTH-2), S => ecomp(C_FIFO_LENGTH_WIDTH-1), LO => emptyg);

  FCompare : process(read_lastgray, write_addrgray, write_nextgray, full_i, wr_read_lastgray_dx)
    variable cur_read_lastgray         : FIFO_ADDR_TYPE;
  begin
    -- Select which synchronized element to use.
    if( C_NUM_SYNC_FF > 0 ) then
      cur_read_lastgray := wr_read_lastgray_dx(C_NUM_SYNC_FF-1);
    else
      cur_read_lastgray := read_lastgray;
    end if;
    
    -- Calculate signal for carry logic.
    for I in 0 to C_FIFO_LENGTH_WIDTH-1 loop
      fcomp(I) <= (not (cur_read_lastgray(I) xor write_addrgray(I)) and full_i) or
                  (not (cur_read_lastgray(I) xor write_nextgray(I)) and not full_i);
    end loop;
  end process FCompare;

  fmuxcylow : MUXCY_L port map (DI => '0', CI => '1', S => fcomp(0), LO => fmuxcyo(0));

  Gen_fmuxcy : for I in 1 to C_FIFO_LENGTH_WIDTH-2 generate
  begin
    fmuxcy : MUXCY_L port map (DI => '0', CI => fmuxcyo(I-1), S => fcomp(I), LO => fmuxcyo(I));
  end generate Gen_fmuxcy;

  fmuxcyhigh : MUXCY_L port map (DI => '0', CI => fmuxcyo(C_FIFO_LENGTH_WIDTH-2), S => fcomp(C_FIFO_LENGTH_WIDTH-1), LO => fullg);
  
----------------------------------------------------------------
-- Transfer Read and Write Gray pointers to the other clock   --
-- domain. Convert Gray pointers to binary equivalent.        --
--                                                            --
-- Delay Read and Write Binary conters in respective domain   --
-- and use this value with the bonadary crossed value from    --
-- other doamin to create Length values.                      --
-- The delay of the Binary values are done to have a          --
-- binary value for the current active Gray value in each of  --
-- the clock domains.                                         --
----------------------------------------------------------------

  Rd_WriteAddrGray : process (RdClk)
  begin
    if (RdClk'event and RdClk = '1') then
--      rd_write_nextgray     <= write_nextgray;
--      rd_write_nextgray_d1  <= rd_write_nextgray;
      
      for I in 1 to C_NUM_SYNC_FF-1 loop
        rd_write_addrgray_dx(I) <= rd_write_addrgray_dx(I-1);
      end loop;
      rd_write_addrgray_dx(0) <= write_addrgray;
      for I in 1 to C_NUM_SYNC_FF-1 loop
        rd_write_nextgray_dx(I) <= rd_write_nextgray_dx(I-1);
      end loop;
      rd_write_nextgray_dx(0) <= write_nextgray;
      if( C_NUM_SYNC_FF > 0 ) then
        rd_write_next           <= Gray2Bin(rd_write_nextgray_dx(C_NUM_SYNC_FF-1));
      else
        rd_write_next           <= Gray2Bin(rd_write_nextgray_dx(0));
      end if;
    end if;
  end process Rd_WriteAddrGray;
  
  Wr_ReadAddrGray : process (WrClk)
  begin
    if (WrClk'event and WrClk = '1') then
--      wr_read_nextgray    <= read_nextgray;
--      wr_read_nextgray_d1 <= wr_read_nextgray;
      
      for I in 1 to C_NUM_SYNC_FF-1 loop
        wr_read_lastgray_dx(I)  <= wr_read_lastgray_dx(I-1);
      end loop;
      wr_read_lastgray_dx(0)  <= read_lastgray;
      for I in 1 to C_NUM_SYNC_FF-1 loop
        wr_read_nextgray_dx(I)  <= wr_read_nextgray_dx(I-1);
      end loop;
      wr_read_nextgray_dx(0)  <= read_nextgray;
      if( C_NUM_SYNC_FF > 0 ) then
        wr_read_next            <= Gray2Bin(wr_read_nextgray_dx(C_NUM_SYNC_FF-1));
      else
        wr_read_next            <= Gray2Bin(wr_read_nextgray_dx(0));
      end if;
    end if;
  end process Wr_ReadAddrGray;
  
  DelayedWriteAddrCnt : process (WrClk)
  begin
    if (WrClk'event and WrClk = '1') then
      if (wr_reset = '1') then
        write_addr_d1 <= (others=>'1');
      elsif (write_allow = '1') then
        write_addr_d1 <= write_addr;
      end if;
    end if;
  end process DelayedWriteAddrCnt;
  
  DelayedReadAddrCnt : process (RdClk)
  begin
    if (RdClk'event and RdClk = '1') then
      if (rd_reset = '1') then
        read_addr_d1 <= (others=>'1');
      elsif (read_allow = '1') then
        read_addr_d1 <= read_addr;
      end if;
    end if;
  end process DelayedReadAddrCnt;
  
  CalcWriteLength: process (WrClk)
  begin
    if (WrClk'event and WrClk = '1') then
      if (wr_reset = '1') then
        Wr_Length_i <= (others=>'0');
      else
        Wr_Length_i <= std_logic_vector(unsigned(write_addr_d1) - unsigned(wr_read_next));
      end if;
    end if;
  end process CalcWriteLength;
  
  CalcReadLength: process (RdClk)
  begin
    if (RdClk'event and RdClk = '1') then
      if (rd_reset = '1') then
        Rd_Length_i <= (others=>'0');
      else
        Rd_Length_i <= std_logic_vector(unsigned(rd_write_next) - unsigned(read_addr_d1));
      end if;
    end if;
  end process CalcReadLength;
  
  Rd_Length <= '0' & Rd_Length_i;
  Wr_Length <= '0' & Wr_Length_i;
  
  
end architecture IMP;




-------------------------------------------------------------------------------
-- fsl_v20.vhd - Entity and architecture
-------------------------------------------------------------------------------
--
-- (c) Copyright 2001-2010,2017 Xilinx, Inc. All rights reserved.
--
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and 
-- international copyright and other intellectual property
-- laws.
--
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
--
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
--
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
--
-------------------------------------------------------------------------------
-- Filename:        fsl_v20.vhd
--
-- Description:     
--                  
-- VHDL-Standard:   VHDL'93
-------------------------------------------------------------------------------
-- Structure:   
--              fsl_v20.vhd
--
-------------------------------------------------------------------------------
-- Author:          satish
--
-- History:
--   satish  2003-02-13    First Version
--   satish  2004-03-03    New Version
--   rolandp 2006-08-20    BRAM in asynch mode 
--   rikardw 2008-12-18    Reused in Mailbox (from FSL)
--   stefana 2017-04-21    Added FIFO reset/clear functionality
-------------------------------------------------------------------------------
-- Naming Conventions:
--      active low signals:                     "*_n"
--      clock signals:                          "clk", "clk_div#", "clk_#x" 
--      reset signals:                          "rst", "rst_n" 
--      generics:                               "C_*" 
--      user defined types:                     "*_TYPE" 
--      state machine next state:               "*_ns" 
--      state machine current state:            "*_cs" 
--      combinatorial signals:                  "*_com" 
--      pipelined or register delay signals:    "*_d#" 
--      counter signals:                        "*cnt*"
--      clock enable signals:                   "*_ce" 
--      internal version of output port         "*_i"
--      device pins:                            "*_pin" 
--      ports:                                  - Names begin with Uppercase 
--      processes:                              "*_PROCESS" 
--      component instantiations:               "<ENTITY_>I_<#|FUNC>
-------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;

library mailbox_v2_1_13;
use mailbox_v2_1_13.sync_fifo;
use mailbox_v2_1_13.async_fifo;


entity fsl_v20 is
  generic (
    C_ASYNC_CLKS        : integer := 0;
    C_NUM_SYNC_FF       : integer := 2;
    C_IMPL_STYLE        : integer := 0;
    C_FSL_DWIDTH        : integer := 32;
    C_FSL_DEPTH         : integer := 16;
    C_FIFO_LENGTH_WIDTH : integer := 4
  );
  port (
    -- Clock and reset signals
    FSL_Clk : in  std_logic;
    SYS_Rst : in  std_logic;
    FSL_Rst : out std_logic;

    -- FSL master signals
    FSL_M_Clk     : in  std_logic;
    FSL_M_Data    : in  std_logic_vector(0 to C_FSL_DWIDTH-1);
    FSL_M_Control : in  std_logic;
    FSL_M_Write   : in  std_logic;
    FSL_M_Full    : out std_logic;
    FSL_M_Reset   : in  std_logic;

    -- FSL slave signals
    FSL_S_Clk     : in  std_logic;
    FSL_S_Data    : out std_logic_vector(0 to C_FSL_DWIDTH-1);
    FSL_S_Control : out std_logic;
    FSL_S_Read    : in  std_logic;
    FSL_S_Exists  : out std_logic;
    FSL_S_Reset   : in  std_logic;

    -- FIFO status signals
    FSL_M_Length    : out std_logic_vector(0 to C_FIFO_LENGTH_WIDTH);
    FSL_S_Length    : out std_logic_vector(0 to C_FIFO_LENGTH_WIDTH);
    FSL_Full        : out std_logic;
    FSL_Has_Data    : out std_logic;
    FSL_Control_IRQ : out std_logic
    );
end entity fsl_v20;

architecture IMP of fsl_v20 is

  component Sync_FIFO is
    generic (
      C_IMPL_STYLE        : integer;
      C_FIFO_LENGTH_WIDTH : integer;
      WordSize            : integer;
      MemSize             : integer);
    port (
      Reset       : in Std_Logic;
      Clk         : in Std_Logic;

      WE          : in  Std_Logic;
      DataIn      : in  Std_Logic_Vector(WordSize-1 downto 0);
      Full        : out Std_Logic;
      RD          : in  Std_Logic;
      FIFO_Length : out std_logic_vector(0 to C_FIFO_LENGTH_WIDTH);
      DataOut     : out Std_Logic_Vector(WordSize-1 downto 0);
      Exists      : out Std_Logic);
  end component Sync_FIFO;
                        
  component Async_FIFO is
    generic (
      C_NUM_SYNC_FF       : integer;
      C_IMPL_STYLE        : integer;
      C_FIFO_LENGTH_WIDTH : integer;
      WordSize            : Integer;
      Protect             : Boolean);
    port (
      Reset   : in  Std_Logic;
      -- Clock region WrClk
      WrClk   : in  Std_Logic;
      WE      : in  Std_Logic;
      DataIn  : in  Std_Logic_Vector(WordSize-1 downto 0);
      Wr_Length : out std_logic_vector(0 to C_FIFO_LENGTH_WIDTH);
      Full    : out Std_Logic;
      -- Clock region RdClk
      RdClk   : in  Std_Logic;
      RD      : in  Std_Logic;
      DataOut : out Std_Logic_Vector(WordSize-1 downto 0);
      Rd_Length : out std_logic_vector(0 to C_FIFO_LENGTH_WIDTH);
      Exists  : out Std_Logic);
  end component Async_FIFO;
  
  signal Data_In      : std_logic_vector(0 to C_FSL_DWIDTH);
  signal Data_Out     : std_logic_vector(0 to C_FSL_DWIDTH);

  signal fifo_full       : std_logic;
  signal fifo_has_data   : std_logic;

  
begin  -- architecture IMP

  -----------------------------------------------------------------------------
  -- Reset handling
  -----------------------------------------------------------------------------
  FSL_Rst <= SYS_Rst;


  -----------------------------------------------------------------------------
  -- FIFO implementation
  -----------------------------------------------------------------------------
  Using_FIFO: if (C_FSL_DEPTH > 1) generate
    signal fifo_rst : std_logic;
  begin
    -- Map Master Data/Control signal
    Data_In(0 to C_FSL_DWIDTH-1) <= FSL_M_Data;

    -- Map Slave Data/Control signal
    FSL_S_Data    <= Data_Out(0 to C_FSL_DWIDTH-1);

    -- Generate FIFO reset signal
    fifo_rst      <= SYS_Rst or FSL_M_Reset or FSL_S_Reset;

    -- SRL FIFO BASED IMPLEMENTATION
    Sync_FIFO_Gen : if (C_ASYNC_CLKS = 0) generate
      signal fifo_length   : std_logic_vector(0 to C_FIFO_LENGTH_WIDTH);
    begin
      Sync_FIFO_I1 : Sync_FIFO
        generic map (
          C_FIFO_LENGTH_WIDTH => C_FIFO_LENGTH_WIDTH, -- [Integer]
          C_IMPL_STYLE        => C_IMPL_STYLE,        -- [Integer]
          WordSize            => C_FSL_DWIDTH,        -- [Integer]
          MemSize             => C_FSL_DEPTH)         -- [Integer]
        port map (
          Reset       => fifo_rst,
          Clk         => FSL_Clk,
          WE          => FSL_M_Write,
          DataIn      => Data_In(0 to C_FSL_DWIDTH-1),
          Full        => fifo_full,
          RD          => FSL_S_Read,
          FIFO_Length => fifo_length,
          DataOut     => Data_Out(0 to C_FSL_DWIDTH-1),
          Exists      => fifo_has_data);
      
      FSL_M_Full      <= fifo_full or SYS_Rst;  -- Inhibit writes during reset by
                                                -- forcing full to '1'
      FSL_M_Length  <= fifo_length;
      FSL_S_Length  <= fifo_length;
    end generate Sync_FIFO_Gen;
    
    Async_FIFO_Gen: if (C_ASYNC_CLKS /= 0) generate
    begin
      Async_FIFO_I1 : Async_FIFO
        generic map (
          C_NUM_SYNC_FF       => C_NUM_SYNC_FF,
          C_IMPL_STYLE        => C_IMPL_STYLE,
          C_FIFO_LENGTH_WIDTH => C_FIFO_LENGTH_WIDTH, -- [Integer]
          WordSize            => C_FSL_DWIDTH,        -- [Integer]
          Protect             => true)                -- [Boolean]
        port map (
          Reset     => fifo_rst,                      -- [in  Std_Logic]
          -- Clock region WrClk
          WrClk     => FSL_M_Clk,                     -- [in  Std_Logic]
          WE        => FSL_M_Write,                   -- [in  Std_Logic]
          DataIn    => Data_In(0 to C_FSL_DWIDTH-1),  -- [in  Std_Logic_Vector(WordSize-1 downto 0)]
          Wr_Length => FSL_M_Length,                  -- [out std_logic_vector(0 to C_FIFO_LENGTH_WIDTH)]
          Full      => fifo_full,                     -- [out Std_Logic]
          -- Clock region RdClk
          RdClk     => FSL_S_Clk,                     -- [in  Std_Logic]
          RD        => FSL_S_Read,                    -- [in  Std_Logic]
          DataOut   => Data_Out(0 to C_FSL_DWIDTH-1), -- [out Std_Logic_Vector(WordSize-1 downto 0)]
          Rd_Length => FSL_S_Length,                  -- [out std_logic_vector(0 to C_FIFO_LENGTH_WIDTH)]
          Exists    => fifo_has_data);                -- [out Std_Logic]

      FSL_M_Full      <= fifo_full;  -- Reset is affecting full asynchronously
      
    end generate Async_FIFO_Gen;
    
    FSL_S_Exists    <= fifo_has_data;

    FSL_Full        <= fifo_full;
    FSL_Has_Data    <= fifo_has_data;

    FSL_S_Control   <= '0';
    FSL_Control_IRQ <= '0';
    
  end generate Using_FIFO;
  
end architecture IMP;



-------------------------------------------------------------------------------
-- if_decode.vhd - Entity and architecture
-------------------------------------------------------------------------------
--
-- (c) Copyright 2001-2013,2017,2020 Xilinx, Inc. All rights reserved.
--
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and 
-- international copyright and other intellectual property
-- laws.
--
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
--
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
--
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
--
-------------------------------------------------------------------------------
-- Filename:        if_decode.vhd
--
-- Description:     
--                  
-- VHDL-Standard:   VHDL'93
-------------------------------------------------------------------------------
-- Structure:   
--              if_decode.vhd
--
-------------------------------------------------------------------------------
-- Author:          rikardw
--
-- History:
--   rikardw  2006-10-19    First Version
--   stefana  2012-12-14    Removed legacy interfaces
--   stefana  2017-04-21    Added FIFO reset/clear functionality
--
-------------------------------------------------------------------------------
-- Naming Conventions:
--      active low signals:                     "*_n"
--      clock signals:                          "clk", "clk_div#", "clk_#x" 
--      reset signals:                          "rst", "rst_n" 
--      generics:                               "C_*" 
--      user defined types:                     "*_TYPE" 
--      state machine next state:               "*_ns" 
--      state machine current state:            "*_cs" 
--      combinatorial signals:                  "*_com" 
--      pipelined or register delay signals:    "*_d#" 
--      counter signals:                        "*cnt*"
--      clock enable signals:                   "*_ce" 
--      internal version of output port         "*_i"
--      device pins:                            "*_pin" 
--      ports:                                  - Names begin with Uppercase 
--      processes:                              "*_PROCESS" 
--      component instantiations:               "<ENTITY_>I_<#|FUNC>
-------------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

library unisim;
use unisim.all;

library axi_lite_ipif_v3_0_4;
use axi_lite_ipif_v3_0_4.axi_lite_ipif;
use axi_lite_ipif_v3_0_4.ipif_pkg.all;

entity if_decode is
  generic (
    -- General generics.
    C_FAMILY                : string  := "virtex7";
    C_ENABLE_BUS_ERROR      : integer := 0;
    C_FIFO_LENGTH_WIDTH     : integer := 4;
    C_INTERCONNECT          : integer := 1;
    C_ASYNC_CLKS            : integer := 0;
    C_NUM_SYNC_FF           : integer := 2;
    C_ASYNC_INTERRUPTS      : integer := 1;
    
    -- FSL generics
    C_FSL_DWIDTH            : integer := 32;
    
    -- AXI4-Lite slave generics
    C_S_AXI_BASEADDR        : std_logic_vector       := X"FFFF_FFFF";
    C_S_AXI_HIGHADDR        : std_logic_vector       := X"0000_0000";
    C_S_AXI_ADDR_WIDTH      : integer                := 32;
    C_S_AXI_DATA_WIDTH      : integer                := 32
  );
  port (
    Rst              : in std_logic;

    -- AXI4-Lite SLAVE SINGLE INTERFACE
    S_AXI_ACLK       : in  std_logic;
    S_AXI_ARESETN    : in  std_logic;
    S_AXI_AWADDR     : in  std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
    S_AXI_AWVALID    : in  std_logic;
    S_AXI_AWREADY    : out std_logic;
    S_AXI_WDATA      : in  std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
    S_AXI_WSTRB      : in  std_logic_vector((C_S_AXI_DATA_WIDTH/8)-1 downto 0);
    S_AXI_WVALID     : in  std_logic;
    S_AXI_WREADY     : out std_logic;
    S_AXI_BRESP      : out std_logic_vector(1 downto 0);
    S_AXI_BVALID     : out std_logic;
    S_AXI_BREADY     : in  std_logic;
    S_AXI_ARADDR     : in  std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
    S_AXI_ARVALID    : in  std_logic;
    S_AXI_ARREADY    : out std_logic;
    S_AXI_RDATA      : out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
    S_AXI_RRESP      : out std_logic_vector(1 downto 0);
    S_AXI_RVALID     : out std_logic;
    S_AXI_RREADY     : in  std_logic;
    
    -- Information signals.
    FSL_M_Length     : in  std_logic_vector(0 to C_FIFO_LENGTH_WIDTH);
    FSL_S_Length     : in  std_logic_vector(0 to C_FIFO_LENGTH_WIDTH);
    Interrupt        : out std_logic;
    
    -- FSL master/slave interface signals.
    FSL_M_Clk        : out std_logic;
    FSL_M_Data       : out std_logic_vector(0 to C_FSL_DWIDTH-1);
    FSL_M_Control    : out std_logic;
    FSL_M_Write      : out std_logic;
    FSL_M_Full       : in  std_logic;
    FSL_M_Reset      : out std_logic;
    
    FSL_S_Clk        : out std_logic;
    FSL_S_Data       : in  std_logic_vector(0 to C_FSL_DWIDTH-1);
    FSL_S_Control    : in  std_logic;
    FSL_S_Read       : out std_logic;
    FSL_S_Exists     : in  std_logic;
    FSL_S_Reset      : out std_logic
  );
end entity if_decode;


library unisim;
use unisim.all;



architecture IMP of if_decode is

  -----------------------------------------------------------------------------
  -- Constant declaration
  -----------------------------------------------------------------------------
  
  -- Select interface to get data from.
  constant C_DATA_WIDTH           : integer:= C_S_AXI_DATA_WIDTH;
  
  constant C_BASEADDR             : std_logic_vector:= C_S_AXI_BASEADDR;
  
  -- Constants to generate register strobes.
  constant ZEROES                 : std_logic_vector(0 to 31) := X"00000000";
  
  constant C_ARD_ADDR_RANGE_ARRAY : SLV64_ARRAY_TYPE :=
          (
            -- Mailbox registers Base Address
            ZEROES & C_BASEADDR,
            ZEROES & (C_BASEADDR or X"00000037") 
          );
  
  constant C_ARD_NUM_CE_ARRAY     : INTEGER_ARRAY_TYPE :=
          (
            0 => 12
          );
  
  -- Constants for AXI4-Lite.
  constant C_S_AXI_MIN_SIZE       :std_logic_vector(31 downto 0):= X"00000FFF";
  constant C_USE_WSTRB            :integer                      := 0;
  constant C_DPHASE_TIMEOUT       :integer range 16 to 256      := 16;
    
  -- Constants for register map.
  constant C_WRDATA_REG           : integer:= 0;
  constant C_WRCTRL_REG           : integer:= 1;
  constant C_RDDATA_REG           : integer:= 2;
  constant C_RDCTRL_REG           : integer:= 3;
  constant C_STATUS_REG           : integer:= 4;
  constant C_ERROR_REG            : integer:= 5;
  constant C_SIT_REG              : integer:= 6;
  constant C_RIT_REG              : integer:= 7;
  constant C_IS_REG               : integer:= 8;
  constant C_IE_REG               : integer:= 9;
  constant C_IP_REG               : integer:= 10;
  constant C_CTRL_REG             : integer:= 11;
  
  -- Number of interrupt sources.
  constant C_INTERRUPT_WIDTH      : integer:= 3;
  
  -- Default levels for registers.
  constant C_SIT_DEFAULT_LEVEL    : integer:= 0;
  constant C_RIT_DEFAULT_LEVEL    : integer:= 0;
  
  component axi_lite_ipif is
    generic (
      C_S_AXI_DATA_WIDTH    : integer  range 32 to 32   := 32;
      C_S_AXI_ADDR_WIDTH    : integer                   := 32;
      C_S_AXI_MIN_SIZE      : std_logic_vector(31 downto 0):= X"000001FF";
      C_USE_WSTRB           : integer := 0;
      C_DPHASE_TIMEOUT      : integer range 0 to 256   := 16;
      C_ARD_ADDR_RANGE_ARRAY: SLV64_ARRAY_TYPE :=  -- not used
         (
           X"0000_0000_7000_0000", -- IP user0 base address
           X"0000_0000_7000_00FF", -- IP user0 high address
           X"0000_0000_7000_0100", -- IP user1 base address
           X"0000_0000_7000_01FF"  -- IP user1 high address
         );

      C_ARD_NUM_CE_ARRAY    : INTEGER_ARRAY_TYPE := -- not used
         (
           4,          -- User0 CE Number
           12          -- User1 CE Number
         );
      C_FAMILY              : string  := "virtex7"
    );
    port (
        --System signals
      S_AXI_ACLK            : in  std_logic;
      S_AXI_ARESETN         : in  std_logic;
      S_AXI_AWADDR          : in  std_logic_vector
                              (C_S_AXI_ADDR_WIDTH-1 downto 0);
      S_AXI_AWVALID         : in  std_logic;
      S_AXI_AWREADY         : out std_logic;
      S_AXI_WDATA           : in  std_logic_vector
                              (C_S_AXI_DATA_WIDTH-1 downto 0);
      S_AXI_WSTRB           : in  std_logic_vector
                              ((C_S_AXI_DATA_WIDTH/8)-1 downto 0);
      S_AXI_WVALID          : in  std_logic;
      S_AXI_WREADY          : out std_logic;
      S_AXI_BRESP           : out std_logic_vector(1 downto 0);
      S_AXI_BVALID          : out std_logic;
      S_AXI_BREADY          : in  std_logic;
      S_AXI_ARADDR          : in  std_logic_vector
                              (C_S_AXI_ADDR_WIDTH-1 downto 0);
      S_AXI_ARVALID         : in  std_logic;
      S_AXI_ARREADY         : out std_logic;
      S_AXI_RDATA           : out std_logic_vector
                              (C_S_AXI_DATA_WIDTH-1 downto 0);
      S_AXI_RRESP           : out std_logic_vector(1 downto 0);
      S_AXI_RVALID          : out std_logic;
      S_AXI_RREADY          : in  std_logic;
      -- Controls to the IP/IPIF modules
      Bus2IP_Clk            : out std_logic;
      Bus2IP_Resetn         : out std_logic;
      Bus2IP_Addr           : out std_logic_vector
                              ((C_S_AXI_ADDR_WIDTH-1) downto 0);
      Bus2IP_RNW            : out std_logic;
      Bus2IP_BE             : out std_logic_vector
                              (((C_S_AXI_DATA_WIDTH/8)-1) downto 0);
      Bus2IP_CS             : out std_logic_vector
                              (((C_ARD_ADDR_RANGE_ARRAY'LENGTH)/2-1) downto 0);
      Bus2IP_RdCE           : out std_logic_vector
                              ((calc_num_ce(C_ARD_NUM_CE_ARRAY)-1) downto 0);
      Bus2IP_WrCE           : out std_logic_vector
                              ((calc_num_ce(C_ARD_NUM_CE_ARRAY)-1) downto 0);
      Bus2IP_Data           : out std_logic_vector
                              ((C_S_AXI_DATA_WIDTH-1) downto 0);
      IP2Bus_Data           : in  std_logic_vector
                              ((C_S_AXI_DATA_WIDTH-1) downto 0);
      IP2Bus_WrAck          : in  std_logic;
      IP2Bus_RdAck          : in  std_logic;
      IP2Bus_Error          : in  std_logic
    );
  end component axi_lite_ipif;
  
  function log2(x : natural) return natural is
    variable i : natural := 0;
  begin
    if x = 0 then return 0;
    else
      while 2**i < x loop
        i := i+1;
      end loop;
      return i;
    end if;
  end function log2;

  -----------------------------------------------------------------------------
  -- Signal declaration
  -----------------------------------------------------------------------------
  -- IP Interconnect (IPIC) port signals 
  signal ip2bus_data      : std_logic_vector(0 to C_DATA_WIDTH - 1):= 
                           (others  => '0');
  signal ip2bus_error     : std_logic := '0';
  signal ip2bus_wrack     : std_logic := '0';
  signal ip2bus_rdack     : std_logic := '0';
  signal ip2bus_wrack_err : std_logic := '0';
  signal ip2bus_rdack_err : std_logic := '0';
  
  signal bus2ip_data      : std_logic_vector
                            (0 to C_DATA_WIDTH - 1);
  signal bus2ip_addr      : std_logic_vector(0 to C_S_AXI_ADDR_WIDTH - 1 );
  signal bus2ip_rdce      : std_logic_vector
                            (0 to calc_num_ce(C_ARD_NUM_CE_ARRAY)-1);
  signal bus2ip_wrce      : std_logic_vector
                            (0 to calc_num_ce(C_ARD_NUM_CE_ARRAY)-1);
  
  -- Internal signals.
  signal Clk_I              : std_logic;

  -- Decode signals.
  signal write_fsl          : std_logic;
  signal read_fsl           : std_logic;
  signal write_fsl_error    : std_logic;
  signal read_fsl_error     : std_logic;
  signal write_fsl_error_d1 : std_logic;
  signal read_fsl_error_d1  : std_logic;
  
  -- Error signals.
  signal full_error         : std_logic;
  signal empty_error        : std_logic;
  
  -- Registers.
  signal sit_register       : std_logic_vector(0 to C_FIFO_LENGTH_WIDTH-1);
  signal rit_register       : std_logic_vector(0 to C_FIFO_LENGTH_WIDTH-1);
  signal is_register        : std_logic_vector(0 to C_INTERRUPT_WIDTH-1);
  signal ie_register        : std_logic_vector(0 to C_INTERRUPT_WIDTH-1);
  signal ip_register        : std_logic_vector(0 to C_INTERRUPT_WIDTH-1);
  
  -- Detect signals.
  signal sit_detect_i       : std_logic;
  signal sit_detect_d0      : std_logic;
  signal sit_detect_d1      : std_logic;
  
  signal rit_detect_i       : std_logic;
  signal rit_detect_d0      : std_logic;
  signal rit_detect_d1      : std_logic;
  
  signal error_detect       : std_logic;
  signal interrupt_event    : std_logic_vector(0 to C_INTERRUPT_WIDTH-1);
  signal fsl_s_reset_count  : std_logic_vector(0 to log2(C_NUM_SYNC_FF)+1);
  signal fsl_m_reset_count  : std_logic_vector(0 to log2(C_NUM_SYNC_FF)+1);


begin  -- architecture IMP


  -----------------------------------------------------------------------------
  -- Select interface
  -----------------------------------------------------------------------------
  Using_AXI: if C_INTERCONNECT = 2  generate
  begin
    -----------------------------------------------------------------------------
    -- Assign clock nets
    -----------------------------------------------------------------------------
    -- FSL clock must be assigned when they are forwarded out.
    -- => Add delta to the internal AXI clock as well.
    Clk_I       <= S_AXI_ACLK;
    FSL_M_Clk   <= S_AXI_ACLK;
    FSL_S_Clk   <= S_AXI_ACLK;
  
  
    -----------------------------------------------------------------------------
    -- Instantiating the AXI4-Lite slave interface
    -----------------------------------------------------------------------------
    AXI4_If : axi_lite_ipif
      generic map
       (
        C_FAMILY                  => C_FAMILY,
        C_S_AXI_ADDR_WIDTH        => C_S_AXI_ADDR_WIDTH,
        C_S_AXI_DATA_WIDTH        => C_S_AXI_DATA_WIDTH,
        C_S_AXI_MIN_SIZE          => C_S_AXI_MIN_SIZE,
        C_USE_WSTRB               => C_USE_WSTRB,
        C_DPHASE_TIMEOUT          => C_DPHASE_TIMEOUT,
        C_ARD_ADDR_RANGE_ARRAY    => C_ARD_ADDR_RANGE_ARRAY,
        C_ARD_NUM_CE_ARRAY        => C_ARD_NUM_CE_ARRAY
       )
     port map
       (
        S_AXI_ACLK                =>  S_AXI_ACLK,
        S_AXI_ARESETN             =>  S_AXI_ARESETN,
        S_AXI_AWADDR              =>  S_AXI_AWADDR,
        S_AXI_AWVALID             =>  S_AXI_AWVALID,
        S_AXI_AWREADY             =>  S_AXI_AWREADY,
        S_AXI_WDATA               =>  S_AXI_WDATA,
        S_AXI_WSTRB               =>  S_AXI_WSTRB,
        S_AXI_WVALID              =>  S_AXI_WVALID,
        S_AXI_WREADY              =>  S_AXI_WREADY,
        S_AXI_BRESP               =>  S_AXI_BRESP,
        S_AXI_BVALID              =>  S_AXI_BVALID,
        S_AXI_BREADY              =>  S_AXI_BREADY,
        S_AXI_ARADDR              =>  S_AXI_ARADDR,
        S_AXI_ARVALID             =>  S_AXI_ARVALID,
        S_AXI_ARREADY             =>  S_AXI_ARREADY,
        S_AXI_RDATA               =>  S_AXI_RDATA,
        S_AXI_RRESP               =>  S_AXI_RRESP,
        S_AXI_RVALID              =>  S_AXI_RVALID,
        S_AXI_RREADY              =>  S_AXI_RREADY,
     
     -- IP Interconnect (IPIC) port signals 
        Bus2IP_Clk                => open,
        Bus2IP_Resetn             => open,
        IP2Bus_Data               => ip2bus_data,
        IP2Bus_WrAck              => ip2bus_wrack,
        IP2Bus_RdAck              => ip2bus_rdack,
        IP2Bus_Error              => ip2bus_error,
        Bus2IP_Addr               => bus2ip_addr,
        Bus2IP_Data               => bus2ip_data,
        Bus2IP_RNW                => open,
        Bus2IP_BE                 => open,
        Bus2IP_CS                 => open,
        Bus2IP_RdCE               => bus2ip_rdce,
        Bus2IP_WrCE               => bus2ip_wrce
       );
       
  end generate Using_AXI;
  
  
  -----------------------------------------------------------------------------
  -- Detect thresholds
  -----------------------------------------------------------------------------
  -- Compare levels.
  sit_detect_d0 <= '1' when (unsigned(FSL_M_Length) <= unsigned('0' & sit_register)) else '0';
  rit_detect_d0 <= '1' when (unsigned(FSL_S_Length) > unsigned('0' & rit_register)) else '0';
  
  -- Edge detection of new interrupt events.
  sit_detect_i  <= sit_detect_d0 and not sit_detect_d1;
  rit_detect_i  <= rit_detect_d0 and not rit_detect_d1;
  error_detect  <= ( write_fsl_error and not write_fsl_error_d1 ) or
                   ( read_fsl_error  and not read_fsl_error_d1  );
  
  
  Delay_Threshold_Reg: process(Clk_I)
  begin
    if( Clk_I'event and Clk_I = '1' ) then
      -- Remember last value.
      sit_detect_d1 <= sit_detect_d0;
      rit_detect_d1 <= rit_detect_d0;
        
    end if;
  end process Delay_Threshold_Reg;
  
  
  -----------------------------------------------------------------------------
  -- Detect interrupt
  -----------------------------------------------------------------------------
  -- Create vector with interrupts.
  interrupt_event <= error_detect & rit_detect_i & sit_detect_i;
  
  -- Mask interrupt source.
  ip_register     <= is_register and ie_register;
  
  -- Generate interrupt output.
  Use_Async : if C_ASYNC_INTERRUPTS > 0 generate
  begin
    Async_Reg : process (Clk_I) is
    begin
      if( Clk_I'event and Clk_I = '1' ) then
        if( Rst = '1' ) then
          Interrupt <= '0';
        else
          if( ip_register /= (ip_register'range=>'0') ) then
            Interrupt <= '1';
          else
            Interrupt <= '0';
          end if;
        end if;
      end if;
    end process Async_Reg;
  end generate Use_Async;

  No_Async : if C_ASYNC_INTERRUPTS = 0 generate
  begin
    Interrupt <= '1' when ( ip_register /= (ip_register'range=>'0') ) else '0';
  end generate No_Async;
  
  
  -----------------------------------------------------------------------------
  -- Decode FSL information
  -----------------------------------------------------------------------------
  -- Detect write access.
  write_fsl       <= bus2ip_wrce(C_WRDATA_REG);
  
  -- Detect read access.
  Read_FSL        <= bus2ip_rdce(C_RDDATA_REG);
  
  -- Detect FSL errors.
  write_fsl_error <= '1' when ( write_fsl = '1' ) and ( FSL_M_Full   = '1' ) else '0';
  read_fsl_error  <= '1' when ( read_fsl  = '1' ) and ( FSL_S_Exists = '0' ) else '0';
  
  
  -----------------------------------------------------------------------------
  -- Translate AXI accesses to FSL data streams
  -----------------------------------------------------------------------------
  -- Acknowledge signals at once.
  ip2bus_rdack    <= read_fsl or bus2ip_rdce(C_STATUS_REG) or bus2ip_rdce(C_ERROR_REG) or
                     bus2ip_rdce(C_SIT_REG) or bus2ip_rdce(C_RIT_REG) or
                     bus2ip_rdce(C_IS_REG) or bus2ip_rdce(C_IE_REG) or
                     bus2ip_rdce(C_IP_REG) or ip2bus_rdack_err;
                     
  ip2bus_wrack    <= write_fsl or bus2ip_wrce(C_SIT_REG) or bus2ip_wrce(C_RIT_REG) or
                     bus2ip_wrce(C_IS_REG) or bus2ip_wrce(C_IE_REG) or
                     bus2ip_wrce(C_CTRL_REG) or ip2bus_wrack_err;
  
  No_Bus_Error: if( C_ENABLE_BUS_ERROR = 0 ) generate
  begin
    ip2bus_error      <= '0';
    ip2bus_rdack_err  <= '0';
    ip2bus_wrack_err  <= '0';
  end generate No_Bus_Error;
  Using_Bus_Error: if( C_ENABLE_BUS_ERROR /= 0 ) generate
  begin
    -- Mark as error transfer.
    ip2bus_error      <= write_fsl_error or read_fsl_error or                       -- FIFO violation errors
                         ip2bus_rdack_err or                                        -- Illegal to read from registers.
                         ip2bus_wrack_err;                                          -- Illegal to write to registers.
    
    -- Ack Read errors also before timeout.
    ip2bus_rdack_err  <= bus2ip_rdce(C_RDCTRL_REG) or                               -- Extra needed to be able to ack errors.
                         bus2ip_rdce(C_WRDATA_REG) or bus2ip_rdce(C_WRCTRL_REG) or  -- Extra needed to be able to ack errors.
                         bus2ip_rdce(C_CTRL_REG);                                   -- Extra needed to be able to ack errors.
    
    -- Ack Write errors also before timeout.
    ip2bus_wrack_err  <= bus2ip_wrce(C_WRCTRL_REG) or                               -- Extra needed to be able to ack errors. 
                         bus2ip_wrce(C_RDDATA_REG) or bus2ip_wrce(C_RDCTRL_REG) or  -- Extra needed to be able to ack errors.
                         bus2ip_wrce(C_STATUS_REG) or bus2ip_wrce(C_ERROR_REG) or   -- Extra needed to be able to ack errors.
                         bus2ip_wrce(C_IP_REG);                                     -- Extra needed to be able to ack errors.
  end generate Using_Bus_Error;
  

  -----------------------------------------------------------------------------
  -- Handle the detection of errors.
  -----------------------------------------------------------------------------
  Detect_FSL_Error_Reg: process(Clk_I)
  begin
    if( Clk_I'event and Clk_I = '1' ) then
      if( Rst = '1' ) then
        full_error          <= '0';
        empty_error         <= '0';
        read_fsl_error_d1   <= '0';
        write_fsl_error_d1  <= '0';
        
      else
        -- Remember last value.
        read_fsl_error_d1   <= read_fsl_error;
        write_fsl_error_d1  <= write_fsl_error;
      
        -- Clear or remember new FSL "overflow".
        if( bus2ip_rdce(C_ERROR_REG) = '1' ) then
          full_error    <= '0';
        elsif( write_fsl_error = '1' ) then
          full_error    <= '1';
        end if;
        
        -- Clear or remember new FSL "underflow".
        if( bus2ip_rdce(C_ERROR_REG) = '1' ) then
          empty_error   <= '0';
        elsif( read_fsl_error = '1' ) then
          empty_error   <= '1';
        end if;
        
      end if;
    end if;
  end process Detect_FSL_Error_Reg;
  
  
  -----------------------------------------------------------------------------
  -- Translate AXI accesses to FSL or Register accesses
  -----------------------------------------------------------------------------
  -- Assert read signal.
  FSL_S_Read  <= '1' when ( read_fsl = '1' ) and ( FSL_S_Exists = '1' ) else '0';
  
  -- Select read data.
  IF_ReadRegisterData: process(bus2ip_rdce, FSL_M_Full, FSL_S_Exists, full_error, empty_error, FSL_S_Data,
                               rit_detect_d0, sit_detect_d0,
                               sit_register, rit_register, is_register, ie_register, ip_register)
  begin
    -- Default assignment.
    ip2bus_data <= (others=>'0');
  
    if( bus2ip_rdce(C_STATUS_REG) = '1' ) then
      -- Snapshot of FSL status bits.
      ip2bus_data(C_DATA_WIDTH-4)  <= rit_detect_d0;
      ip2bus_data(C_DATA_WIDTH-3)  <= sit_detect_d0;
      ip2bus_data(C_DATA_WIDTH-2)  <= FSL_M_Full;
      ip2bus_data(C_DATA_WIDTH-1)  <= not FSL_S_Exists;
      
    elsif( bus2ip_rdce(C_ERROR_REG) = '1' ) then
      -- Current Error flags.
      ip2bus_data(C_DATA_WIDTH-2)  <= full_error;
      ip2bus_data(C_DATA_WIDTH-1)  <= empty_error;
      
    elsif( bus2ip_rdce(C_SIT_REG) = '1' ) then
      -- Read SIT value.
      ip2bus_data(C_DATA_WIDTH-C_FIFO_LENGTH_WIDTH to C_DATA_WIDTH-1) <= sit_register;
      
    elsif( bus2ip_rdce(C_RIT_REG) = '1' ) then
      -- Read RIT value.
      ip2bus_data(C_DATA_WIDTH-C_FIFO_LENGTH_WIDTH to C_DATA_WIDTH-1) <= rit_register;
      
    elsif( bus2ip_rdce(C_IS_REG) = '1' ) then
      -- Read IS value.
      ip2bus_data(C_DATA_WIDTH-C_INTERRUPT_WIDTH to C_DATA_WIDTH-1) <= is_register;
      
    elsif( bus2ip_rdce(C_IE_REG) = '1' ) then
      -- Read IE value.
      ip2bus_data(C_DATA_WIDTH-C_INTERRUPT_WIDTH to C_DATA_WIDTH-1) <= ie_register;
      
    elsif( bus2ip_rdce(C_IP_REG) = '1' ) then
      -- Read IP value.
      ip2bus_data(C_DATA_WIDTH-C_INTERRUPT_WIDTH to C_DATA_WIDTH-1) <= ip_register;
      
    else
      -- Read mail data.
      ip2bus_data(C_DATA_WIDTH-C_FSL_DWIDTH to C_DATA_WIDTH-1) <= FSL_S_Data;
      
    end if;
  end process IF_ReadRegisterData;
  
  IF_WriteRegisterData: process(Clk_I)
  begin
    if( Clk_I'event and Clk_I = '1' ) then
      if( Rst = '1' ) then
        sit_register      <= std_logic_vector(to_unsigned(natural(C_SIT_DEFAULT_LEVEL), C_FIFO_LENGTH_WIDTH));
        rit_register      <= std_logic_vector(to_unsigned(natural(C_RIT_DEFAULT_LEVEL), C_FIFO_LENGTH_WIDTH));
        is_register       <= (others=>'0');
        ie_register       <= (others=>'0');
        FSL_S_Reset       <= '0';
        FSL_M_Reset       <= '0';
        fsl_s_reset_count <= (others=>'1');
        fsl_m_reset_count <= (others=>'1');

      else
        -- Write SIT value.
        if( bus2ip_wrce(C_SIT_REG) = '1' ) then
          sit_register  <= bus2ip_data(C_DATA_WIDTH-C_FIFO_LENGTH_WIDTH to C_DATA_WIDTH-1);
        end if;
        
        -- Write RIT value.
        if( bus2ip_wrce(C_RIT_REG) = '1' ) then
          rit_register  <= bus2ip_data(C_DATA_WIDTH-C_FIFO_LENGTH_WIDTH to C_DATA_WIDTH-1);
        end if;
        
        -- Manipulate IS value.
        -- Take into account that a new interrupt event can occur at the same cycle.
        -- New events has priority over clearing the flag in order to not miss the new event.
        for I in 0 to C_INTERRUPT_WIDTH - 1 loop
          if( interrupt_event(C_INTERRUPT_WIDTH - 1 - I) = '1' ) then
            is_register(is_register'right - I) <= '1';
          elsif( ( bus2ip_wrce(C_IS_REG) = '1' ) and 
                 ( bus2ip_data(C_DATA_WIDTH - 1 - I) = '1' ) ) then
            is_register(is_register'right - I) <= '0';
          end if;
        end loop;
        
        -- Write IE value.
        if( bus2ip_wrce(C_IE_REG) = '1' ) then
          ie_register   <= bus2ip_data(C_DATA_WIDTH-C_INTERRUPT_WIDTH to C_DATA_WIDTH-1);
        end if;

        -- Write CTRL value.
        if( bus2ip_wrce(C_CTRL_REG) = '1' ) and ( bus2ip_data(C_DATA_WIDTH-2) = '1' ) then
          if C_ASYNC_CLKS = 1 then
            fsl_s_reset_count <= (others=>'0');
          else
            FSL_S_Reset <= '1';
          end if;
        elsif C_ASYNC_CLKS = 0 then
          FSL_S_Reset <= '0';
        end if;
        if( bus2ip_wrce(C_CTRL_REG) = '1' ) and ( bus2ip_data(C_DATA_WIDTH-1) = '1' ) then
          if C_ASYNC_CLKS = 1 then
            fsl_m_reset_count <= (others=>'0');
          else
            FSL_M_Reset <= '1';
          end if;
        elsif C_ASYNC_CLKS = 0 then
          FSL_M_Reset <= '0';
        end if;

        -- Handle FSL reset pulse counters when using asynchronous FIFO
        if C_ASYNC_CLKS = 1 then
          if fsl_s_reset_count(0) = '1'then
            FSL_S_Reset <= '0';
          else
            FSL_S_Reset <= '1';
            fsl_s_reset_count <= std_logic_vector(unsigned(fsl_s_reset_count) + 1);
          end if;
          if fsl_m_reset_count(0) = '1' then
            FSL_M_Reset <= '0';
          else
            FSL_M_Reset <= '1';
            fsl_m_reset_count <= std_logic_vector(unsigned(fsl_m_reset_count) + 1);
          end if;
        end if;
      end if;
    end if;
  end process IF_WriteRegisterData;
  
  
  -----------------------------------------------------------------------------
  -- Translate AXI accesses to FSL Write accesses
  -----------------------------------------------------------------------------
  -- Handle write data.
  FSL_M_Write     <= '1' when ( write_fsl = '1' ) and ( FSL_M_Full = '0'   ) else '0';
  FSL_M_Data      <= bus2ip_data(C_DATA_WIDTH-C_FSL_DWIDTH to C_DATA_WIDTH-1);
  
  -- Decode Control write.
  FSL_M_Control   <= '0';


end architecture IMP;




-------------------------------------------------------------------------------
-- mailbox.vhd - Entity and architecture
-------------------------------------------------------------------------------
--
-- (c) Copyright 2001-2013,2017,2020 Xilinx, Inc. All rights reserved.
--
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and 
-- international copyright and other intellectual property
-- laws.
--
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
--
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
--
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
--
-------------------------------------------------------------------------------
-- Filename:        mailbox.vhd
--
-- Description:     
--                  
-- VHDL-Standard:   VHDL'93
-------------------------------------------------------------------------------
-- Structure:   
--              mailbox.vhd
--
-------------------------------------------------------------------------------
-- Author:          rikardw
--
-- History:
--   rikardw  2006-10-19    First Version
--   stefana  2012-12-14    Removed legacy interfaces
--   stefana  2017-04-21    Added FIFO reset/clear functionality
--
-------------------------------------------------------------------------------
-- Naming Conventions:
--      active low signals:                     "*_n"
--      clock signals:                          "clk", "clk_div#", "clk_#x" 
--      reset signals:                          "rst", "rst_n" 
--      generics:                               "C_*" 
--      user defined types:                     "*_TYPE" 
--      state machine next state:               "*_ns" 
--      state machine current state:            "*_cs" 
--      combinatorial signals:                  "*_com" 
--      pipelined or register delay signals:    "*_d#" 
--      counter signals:                        "*cnt*"
--      clock enable signals:                   "*_ce" 
--      internal version of output port         "*_i"
--      device pins:                            "*_pin" 
--      ports:                                  - Names begin with Uppercase 
--      processes:                              "*_PROCESS" 
--      component instantiations:               "<ENTITY_>I_<#|FUNC>
-------------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;

entity mailbox is
  generic (
    -- General.
    C_FAMILY                : string                 := "virtex7";
    C_EXT_RESET_HIGH        : integer                := 1;
    C_ENABLE_BUS_ERROR      : integer                := 0;
    
    -- AXI4 interface #0 specific.
    C_S0_AXI_BASEADDR       : std_logic_vector       := X"FFFF_FFFF";
    C_S0_AXI_HIGHADDR       : std_logic_vector       := X"0000_0000";
    C_S0_AXI_ADDR_WIDTH     : integer                := 32;
    C_S0_AXI_DATA_WIDTH     : integer                := 32;

    -- AXI4 interface #1 specific.
    C_S1_AXI_BASEADDR       : std_logic_vector       := X"FFFF_FFFF";
    C_S1_AXI_HIGHADDR       : std_logic_vector       := X"0000_0000";
    C_S1_AXI_ADDR_WIDTH     : integer                := 32;
    C_S1_AXI_DATA_WIDTH     : integer                := 32;

    -- AXI4-Stream interface #0 specific.
    C_M0_AXIS_DATA_WIDTH    : integer                := 32;
    C_S0_AXIS_DATA_WIDTH    : integer                := 32;

    -- AXI4-Stream interface #1 specific.
    C_M1_AXIS_DATA_WIDTH    : integer                := 32;
    C_S1_AXIS_DATA_WIDTH    : integer                := 32;

    -- Mailbox specific.
    C_ASYNC_CLKS            : integer                := 0;
    C_NUM_SYNC_FF           : integer                := 2;
    C_ASYNC_INTERRUPTS      : integer                := 1;
    C_IMPL_STYLE            : integer                := 0;
    C_INTERCONNECT_PORT_0   : integer                := 1;
    C_INTERCONNECT_PORT_1   : integer                := 1;
    C_MAILBOX_DEPTH         : integer                := 16
  );
  port (
    -- Common reset signal.
    SYS_Rst           : in  std_logic;

    -- AXI4-Lite interface #0 slave signals.
    S0_AXI_ACLK       : in  std_logic;
    S0_AXI_ARESETN    : in  std_logic;
    S0_AXI_AWADDR     : in  std_logic_vector(C_S0_AXI_ADDR_WIDTH-1 downto 0);
    S0_AXI_AWVALID    : in  std_logic;
    S0_AXI_AWREADY    : out std_logic;
    S0_AXI_WDATA      : in  std_logic_vector(C_S0_AXI_DATA_WIDTH-1 downto 0);
    S0_AXI_WSTRB      : in  std_logic_vector((C_S0_AXI_DATA_WIDTH/8)-1 downto 0);
    S0_AXI_WVALID     : in  std_logic;
    S0_AXI_WREADY     : out std_logic;
    S0_AXI_BRESP      : out std_logic_vector(1 downto 0);
    S0_AXI_BVALID     : out std_logic;
    S0_AXI_BREADY     : in  std_logic;
    S0_AXI_ARADDR     : in  std_logic_vector(C_S0_AXI_ADDR_WIDTH-1 downto 0);
    S0_AXI_ARVALID    : in  std_logic;
    S0_AXI_ARREADY    : out std_logic;
    S0_AXI_RDATA      : out std_logic_vector(C_S0_AXI_DATA_WIDTH-1 downto 0);
    S0_AXI_RRESP      : out std_logic_vector(1 downto 0);
    S0_AXI_RVALID     : out std_logic;
    S0_AXI_RREADY     : in  std_logic;
    
    -- AXI4-Lite interface #1 slave signals.
    S1_AXI_ACLK       : in  std_logic;
    S1_AXI_ARESETN    : in  std_logic;
    S1_AXI_AWADDR     : in  std_logic_vector(C_S1_AXI_ADDR_WIDTH-1 downto 0);
    S1_AXI_AWVALID    : in  std_logic;
    S1_AXI_AWREADY    : out std_logic;
    S1_AXI_WDATA      : in  std_logic_vector(C_S1_AXI_DATA_WIDTH-1 downto 0);
    S1_AXI_WSTRB      : in  std_logic_vector((C_S1_AXI_DATA_WIDTH/8)-1 downto 0);
    S1_AXI_WVALID     : in  std_logic;
    S1_AXI_WREADY     : out std_logic;
    S1_AXI_BRESP      : out std_logic_vector(1 downto 0);
    S1_AXI_BVALID     : out std_logic;
    S1_AXI_BREADY     : in  std_logic;
    S1_AXI_ARADDR     : in  std_logic_vector(C_S1_AXI_ADDR_WIDTH-1 downto 0);
    S1_AXI_ARVALID    : in  std_logic;
    S1_AXI_ARREADY    : out std_logic;
    S1_AXI_RDATA      : out std_logic_vector(C_S1_AXI_DATA_WIDTH-1 downto 0);
    S1_AXI_RRESP      : out std_logic_vector(1 downto 0);
    S1_AXI_RVALID     : out std_logic;
    S1_AXI_RREADY     : in  std_logic;
    
    -- AXI4-Stream interface #0 signals.
    M0_AXIS_ACLK      : in  std_logic;
    M0_AXIS_TLAST     : out std_logic;
    M0_AXIS_TDATA     : out std_logic_vector(C_M0_AXIS_DATA_WIDTH-1 downto 0);
    M0_AXIS_TVALID    : out std_logic;
    M0_AXIS_TREADY    : in  std_logic;
    
    S0_AXIS_ACLK      : in  std_logic;
    S0_AXIS_TLAST     : in  std_logic;
    S0_AXIS_TDATA     : in  std_logic_vector(C_S0_AXIS_DATA_WIDTH-1 downto 0);
    S0_AXIS_TVALID    : in  std_logic;
    S0_AXIS_TREADY    : out std_logic;
    
    -- AXI4-Stream interface #1 signals.
    M1_AXIS_ACLK      : in  std_logic;
    M1_AXIS_TLAST     : out std_logic;
    M1_AXIS_TDATA     : out std_logic_vector(C_M1_AXIS_DATA_WIDTH-1 downto 0);
    M1_AXIS_TVALID    : out std_logic;
    M1_AXIS_TREADY    : in  std_logic;
    
    S1_AXIS_ACLK      : in  std_logic;
    S1_AXIS_TLAST     : in  std_logic;
    S1_AXIS_TDATA     : in  std_logic_vector(C_S1_AXIS_DATA_WIDTH-1 downto 0);
    S1_AXIS_TVALID    : in  std_logic;
    S1_AXIS_TREADY    : out std_logic;
    
    -- Interrupt signals for each side.
    Interrupt_0       : out std_logic;
    Interrupt_1       : out std_logic
  );
end entity mailbox;


library Unisim;
use Unisim.vcomponents.all;

library mailbox_v2_1_13;
use mailbox_v2_1_13.All;


architecture IMP of mailbox is

  -----------------------------------------------------------------------------
  -- Function declaration
  -----------------------------------------------------------------------------
  function Log2(x : integer) return integer is
    variable i : integer := 0;
  begin
    if x = 0 then return 0;
    else

      while 2**i < x loop
        i := i+1;
      end loop;
      return i;
    end if;
  end function Log2;
  
  
  -----------------------------------------------------------------------------
  -- Constant declaration
  -----------------------------------------------------------------------------
  constant C_FIFO_LENGTH_WIDTH     : integer := Log2(C_MAILBOX_DEPTH);
  
  constant C_USE_AXI0              : boolean := ( C_INTERCONNECT_PORT_0 = 2 );
  constant C_USE_AXIS0             : boolean := ( C_INTERCONNECT_PORT_0 = 4 );
  constant C_USE_BUS0              : boolean := C_USE_AXI0;
  constant C_USE_STREAM0           : boolean := C_USE_AXIS0;
  
  constant C_USE_AXI1              : boolean := ( C_INTERCONNECT_PORT_1 = 2 );
  constant C_USE_AXIS1             : boolean := ( C_INTERCONNECT_PORT_1 = 4 );
  constant C_USE_BUS1              : boolean := C_USE_AXI1;
  constant C_USE_STREAM1           : boolean := C_USE_AXIS1;

  constant C_FSL_DWIDTH            : integer := 32;  -- Assume AXIS data width is 32

  -----------------------------------------------------------------------------
  -- Component declaration
  -----------------------------------------------------------------------------
  component if_decode is
    generic (
      -- General generics.
      C_FAMILY                : string                 := "virtex7";
      C_ENABLE_BUS_ERROR      : integer                := 0;
      C_FIFO_LENGTH_WIDTH     : integer                := 4;
      C_INTERCONNECT          : integer                := 1;
      C_ASYNC_CLKS            : integer                := 0;
      C_NUM_SYNC_FF           : integer                := 2;
      C_ASYNC_INTERRUPTS      : integer                := 1;

      -- FSL generics
      C_FSL_DWIDTH            : integer                := 32;

      -- AXI4-Lite slave generics
      C_S_AXI_BASEADDR        : std_logic_vector       := X"FFFF_FFFF";
      C_S_AXI_HIGHADDR        : std_logic_vector       := X"0000_0000";
      C_S_AXI_ADDR_WIDTH      : integer                := 32;
      C_S_AXI_DATA_WIDTH      : integer                := 32
    );
    port (
      Rst              : in std_logic;

      -- AXI4-Lite SLAVE SINGLE INTERFACE
      S_AXI_ACLK       : in  std_logic;
      S_AXI_ARESETN    : in  std_logic;
      S_AXI_AWADDR     : in  std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
      S_AXI_AWVALID    : in  std_logic;
      S_AXI_AWREADY    : out std_logic;
      S_AXI_WDATA      : in  std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
      S_AXI_WSTRB      : in  std_logic_vector((C_S_AXI_DATA_WIDTH/8)-1 downto 0);
      S_AXI_WVALID     : in  std_logic;
      S_AXI_WREADY     : out std_logic;
      S_AXI_BRESP      : out std_logic_vector(1 downto 0);
      S_AXI_BVALID     : out std_logic;
      S_AXI_BREADY     : in  std_logic;
      S_AXI_ARADDR     : in  std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
      S_AXI_ARVALID    : in  std_logic;
      S_AXI_ARREADY    : out std_logic;
      S_AXI_RDATA      : out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
      S_AXI_RRESP      : out std_logic_vector(1 downto 0);
      S_AXI_RVALID     : out std_logic;
      S_AXI_RREADY     : in  std_logic;
      
      -- Information signals.
      FSL_M_Length     : in  std_logic_vector(0 to C_FIFO_LENGTH_WIDTH);
      FSL_S_Length     : in  std_logic_vector(0 to C_FIFO_LENGTH_WIDTH);
      Interrupt        : out std_logic;
      
      -- FSL master/slave interface signals.
      FSL_M_Clk        : out std_logic;
      FSL_M_Data       : out std_logic_vector(0 to C_FSL_DWIDTH-1);
      FSL_M_Control    : out std_logic;
      FSL_M_Write      : out std_logic;
      FSL_M_Full       : in  std_logic;
      FSL_M_Reset      : out std_logic;
      
      FSL_S_Clk        : out std_logic;
      FSL_S_Data       : in  std_logic_vector(0 to C_FSL_DWIDTH-1);
      FSL_S_Control    : in  std_logic;
      FSL_S_Read       : out std_logic;
      FSL_S_Exists     : in  std_logic;
      FSL_S_Reset      : out std_logic
    );
  end component if_decode;

  component fsl_v20 is
    generic (
      C_ASYNC_CLKS        : integer := 0;
      C_NUM_SYNC_FF       : integer := 2;
      C_IMPL_STYLE        : integer := 0;
      C_FSL_DWIDTH        : integer := 32;
      C_FSL_DEPTH         : integer := 16;
      C_FIFO_LENGTH_WIDTH : integer := 4
    );
    port (
      -- Clock and reset signals
      FSL_Clk : in  std_logic;
      SYS_Rst : in  std_logic;
      FSL_Rst : out std_logic;
  
      -- FSL master signals
      FSL_M_Clk     : in  std_logic;
      FSL_M_Data    : in  std_logic_vector(0 to C_FSL_DWIDTH-1);
      FSL_M_Control : in  std_logic;
      FSL_M_Write   : in  std_logic;
      FSL_M_Full    : out std_logic;
      FSL_M_Reset   : in  std_logic;
  
      -- FSL slave signals
      FSL_S_Clk     : in  std_logic;
      FSL_S_Data    : out std_logic_vector(0 to C_FSL_DWIDTH-1);
      FSL_S_Control : out std_logic;
      FSL_S_Read    : in  std_logic;
      FSL_S_Exists  : out std_logic;
      FSL_S_Reset   : in  std_logic;
  
      -- FIFO status signals
      FSL_M_Length    : out std_logic_vector(0 to C_FIFO_LENGTH_WIDTH);
      FSL_S_Length    : out std_logic_vector(0 to C_FIFO_LENGTH_WIDTH);
      FSL_Full        : out std_logic;
      FSL_Has_Data    : out std_logic;
      FSL_Control_IRQ : out std_logic
      );
  end component fsl_v20;
  
  
  -----------------------------------------------------------------------------
  -- Signal declaration
  -----------------------------------------------------------------------------
  -- Common FSL Clock and reset signals.
  signal FSL_Clk_I                : std_logic;
  signal SYS_Rst_Input            : std_logic:= '0';
  signal SYS_Rst_If0              : std_logic:= '0';
  signal SYS_Rst_If1              : std_logic:= '0';
  signal SYS_Rst_If0_n            : std_logic:= '0';
  signal SYS_Rst_If1_n            : std_logic:= '0';
  signal SYS_Rst_I                : std_logic:= '0';
  signal if0_rst                  : std_logic:= '0';
  signal if1_rst                  : std_logic:= '0';
  
  -- FSL interface #0 master/slave signals.
  signal FSL0_M_Clk_I             : std_logic;
  signal FSL0_M_Data_I            : std_logic_vector(0 to C_FSL_DWIDTH-1);
  signal FSL0_M_Control_I         : std_logic;
  signal FSL0_M_Write_I           : std_logic;
  signal FSL0_M_Full_I            : std_logic;
  signal FSL0_M_Length_I          : std_logic_vector(0 to C_FIFO_LENGTH_WIDTH);
  signal FSL0_M_Reset_I           : std_logic;
  
  signal FSL0_S_Clk_I             : std_logic;
  signal FSL0_S_Data_I            : std_logic_vector(0 to C_FSL_DWIDTH-1);
  signal FSL0_S_Control_I         : std_logic;
  signal FSL0_S_Read_I            : std_logic;
  signal FSL0_S_Exists_I          : std_logic;
  signal FSL0_S_Length_I          : std_logic_vector(0 to C_FIFO_LENGTH_WIDTH);
  signal FSL0_S_Reset_I           : std_logic;
  
  signal FSL0_Has_Data_I          : std_logic;
  
  -- FSL interface #0 master/slave signals.
  signal FSL1_M_Clk_I             : std_logic;
  signal FSL1_M_Data_I            : std_logic_vector(0 to C_FSL_DWIDTH-1);
  signal FSL1_M_Control_I         : std_logic;
  signal FSL1_M_Write_I           : std_logic;
  signal FSL1_M_Full_I            : std_logic;
  signal FSL1_M_Length_I          : std_logic_vector(0 to C_FIFO_LENGTH_WIDTH);
  signal FSL1_M_Reset_I           : std_logic;
  
  signal FSL1_S_Clk_I             : std_logic;
  signal FSL1_S_Data_I            : std_logic_vector(0 to C_FSL_DWIDTH-1);
  signal FSL1_S_Control_I         : std_logic;
  signal FSL1_S_Read_I            : std_logic;
  signal FSL1_S_Exists_I          : std_logic;
  signal FSL1_S_Length_I          : std_logic_vector(0 to C_FIFO_LENGTH_WIDTH);
  signal FSL1_S_Reset_I           : std_logic;
  
  signal FSL1_Has_Data_I          : std_logic;
    
begin  -- architecture IMP


  -----------------------------------------------------------------------------
  -- Assign FSL clock net
  -----------------------------------------------------------------------------
  -- The FSL_Clk is ignored for asynchronous connections.
  -- => C_ASYNC_CLKS doesn't need to be taken into account here.
  Using_AXI0_4_FSL: if( C_USE_AXI0 ) generate
  begin
    -- Interface #0 is AXI4, use that clock for the internal FSL links.
    FSL_Clk_I <= S0_AXI_ACLK;
  end generate Using_AXI0_4_FSL;
  
  Using_AXIS0_4_FSL: if( C_USE_AXIS0 ) generate
  begin
    -- Interface #0 is AXI4-Stream, use that clock for the internal FSL links.
    FSL_Clk_I <= S0_AXIS_ACLK;
  end generate Using_AXIS0_4_FSL;
  

  -----------------------------------------------------------------------------
  -- Select Reset 
  -----------------------------------------------------------------------------
  Using_AXI0_4_Rst: if( C_USE_AXI0 ) generate
  begin
    -- Interface #0 is AXI4, use that reset.
    if0_rst <= not S0_AXI_ARESETN;
  end generate Using_AXI0_4_Rst;
  
  Using_No0_4_Rst: if( not (C_USE_AXI0) ) generate
  begin
    -- Interface #0 is streaming, no dedicated reset.
    if0_rst <= '0';
  end generate Using_No0_4_Rst;
  
  Using_AXI1_4_Rst: if( C_USE_AXI1 ) generate
  begin
    -- Interface #1 is AXI4, use that reset.
    if1_rst <= not S1_AXI_ARESETN;
  end generate Using_AXI1_4_Rst;
  
  Using_No1_4_Rst: if( not (C_USE_AXI1) ) generate
  begin
    -- Interface #1 is streaming, no dedicated reset.
    if1_rst <= '0';
  end generate Using_No1_4_Rst;
  
  
  -----------------------------------------------------------------------------
  -- Assign Reset net
  -----------------------------------------------------------------------------
  -- Translate the SYS_Rst signal to be active high.
  Sys_Rst_Proc : process (SYS_Rst) is
  begin
    if C_EXT_RESET_HIGH = 0 then
      SYS_Rst_Input <= not SYS_Rst;
    else
      SYS_Rst_Input <= SYS_Rst;
    end if;
  end process Sys_Rst_Proc;

  -- Assign reset net depending on the selected interfaces.
  Rst_Async: if (C_ASYNC_CLKS /= 0) generate
    signal Bus0_Rst_d1               : std_logic:= '0';
    signal Bus0_Rst_d2               : std_logic:= '0';
    signal Bus1_Rst_d1               : std_logic:= '0';
    signal Bus1_Rst_d2               : std_logic:= '0';
    signal SYS_Rst_Input0_d1         : std_logic:= '0';
    signal SYS_Rst_Input0_d2         : std_logic:= '0';
    signal SYS_Rst_Input1_d1         : std_logic:= '0';
    signal SYS_Rst_Input1_d2         : std_logic:= '0';
  
    attribute ASYNC_REG                         : string;
    attribute ASYNC_REG of SYS_RST_FF_I0_1     : label is "TRUE";
    attribute ASYNC_REG of SYS_RST_FF_I0_2     : label is "TRUE";
    attribute ASYNC_REG of Bus_RST_FF_I0_1     : label is "TRUE";
    attribute ASYNC_REG of Bus_RST_FF_I0_2     : label is "TRUE";
    attribute ASYNC_REG of SYS_RST_FF_I1_1     : label is "TRUE";
    attribute ASYNC_REG of SYS_RST_FF_I1_2     : label is "TRUE";
    attribute ASYNC_REG of Bus_RST_FF_I1_1     : label is "TRUE";
    attribute ASYNC_REG of Bus_RST_FF_I1_2     : label is "TRUE";
    
  begin
    SYS_RST_FF_I0_1 : FD
      port map (
        Q => SYS_Rst_Input0_d1,
        D => SYS_Rst_Input,
        C => FSL0_M_Clk_I);
        
    SYS_RST_FF_I0_2 : FD
      port map (
        Q => SYS_Rst_Input0_d2,
        D => SYS_Rst_Input0_d1,
        C => FSL0_M_Clk_I);
        
    Bus_RST_FF_I0_1 : FD
      port map (
        Q => Bus1_Rst_d1,
        D => if1_rst,
        C => FSL0_M_Clk_I);
        
    Bus_RST_FF_I0_2 : FD
      port map (
        Q => Bus1_Rst_d2,
        D => Bus1_Rst_d1,
        C => FSL0_M_Clk_I);
          
    Create_Sys_Rst0: process(FSL0_M_Clk_I)
    begin
      if( FSL0_M_Clk_I'event and FSL0_M_Clk_I = '1' ) then
        -- Synchronize to clock.
        
        SYS_Rst_If0      <= if0_rst or Bus1_Rst_d2 or SYS_Rst_Input0_d2;
      end if;
    end process Create_Sys_Rst0;
    
    SYS_RST_FF_I1_1 : FD
      port map (
        Q => SYS_Rst_Input1_d1,
        D => SYS_Rst_Input,
        C => FSL1_M_Clk_I);
        
    SYS_RST_FF_I1_2 : FD
      port map (
        Q => SYS_Rst_Input1_d2,
        D => SYS_Rst_Input1_d1,
        C => FSL1_M_Clk_I);
        
    Bus_RST_FF_I1_1 : FD
      port map (
        Q => Bus0_Rst_d1,
        D => if0_rst,
        C => FSL1_M_Clk_I);
        
    Bus_RST_FF_I1_2 : FD
      port map (
        Q => Bus0_Rst_d2,
        D => Bus0_Rst_d1,
        C => FSL1_M_Clk_I);
          
    Create_Sys_Rst1: process(FSL1_M_Clk_I)
    begin
      if( FSL1_M_Clk_I'event and FSL1_M_Clk_I = '1' ) then
        -- Synchronize to clock.
        
        SYS_Rst_If1      <= if1_rst or Bus0_Rst_d2 or SYS_Rst_Input1_d2;
      end if;
    end process Create_Sys_Rst1;
    
    -- Asynchronous reset for FIFOs.
    SYS_Rst_I        <= SYS_Rst_Input or if0_rst or if1_rst;
    
  end generate Rst_Async;

  Rst_Sync: if (C_ASYNC_CLKS = 0) generate
    signal SYS_Rst_Input_d1         : std_logic:= '0';
    signal SYS_Rst_Input_d2         : std_logic:= '0';
  
    attribute ASYNC_REG                         : string;
    attribute ASYNC_REG of SYS_Rst_Input_d1     : signal is "TRUE";
    attribute ASYNC_REG of SYS_Rst_Input_d2     : signal is "TRUE";
    
  begin
    Create_Sys_Rst: process(FSL_Clk_I)
    begin
      if( FSL_Clk_I'event and FSL_Clk_I = '1' ) then
        -- Synchronize to clock.
        SYS_Rst_Input_d1 <= SYS_Rst_Input;
        SYS_Rst_Input_d2 <= SYS_Rst_Input_d1;
        
        SYS_Rst_I        <= SYS_Rst_Input_d2 or if0_rst or if1_rst;
      end if;
    end process Create_Sys_Rst;
    
    SYS_Rst_If0 <= SYS_Rst_I;
    SYS_Rst_If1 <= SYS_Rst_I;
      
  end generate Rst_Sync;
  
  SYS_Rst_If0_n <= not SYS_Rst_If0;
  SYS_Rst_If1_n <= not SYS_Rst_If1;
  
  
  -----------------------------------------------------------------------------
  -- Instantiating MAILBOX Interface #0
  -----------------------------------------------------------------------------
  Using_Bus_0: if C_USE_BUS0 generate
  begin
    Bus0_If: if_decode
      generic map(
        -- General generics.
        C_FAMILY                => C_FAMILY,
        C_ENABLE_BUS_ERROR      => C_ENABLE_BUS_ERROR,
        C_FIFO_LENGTH_WIDTH     => C_FIFO_LENGTH_WIDTH,
        C_INTERCONNECT          => C_INTERCONNECT_PORT_0,
        C_ASYNC_CLKS            => C_ASYNC_CLKS,
        C_NUM_SYNC_FF           => C_NUM_SYNC_FF,
        C_ASYNC_INTERRUPTS      => C_ASYNC_INTERRUPTS,
        
        -- FSL generics
        C_FSL_DWIDTH            => C_FSL_DWIDTH,
        
        -- AXI4-Lite slave generics
        C_S_AXI_BASEADDR        => C_S0_AXI_BASEADDR,
        C_S_AXI_HIGHADDR        => C_S0_AXI_HIGHADDR,
        C_S_AXI_ADDR_WIDTH      => C_S0_AXI_ADDR_WIDTH,
        C_S_AXI_DATA_WIDTH      => C_S0_AXI_DATA_WIDTH
      )
      port map(
        Rst              => SYS_Rst_If0,

        -- AXI4-Lite SLAVE SINGLE INTERFACE
        S_AXI_ACLK       => S0_AXI_ACLK,
        S_AXI_ARESETN    => SYS_Rst_If0_n,
        S_AXI_AWADDR     => S0_AXI_AWADDR,
        S_AXI_AWVALID    => S0_AXI_AWVALID,
        S_AXI_AWREADY    => S0_AXI_AWREADY,
        S_AXI_WDATA      => S0_AXI_WDATA,
        S_AXI_WSTRB      => S0_AXI_WSTRB,
        S_AXI_WVALID     => S0_AXI_WVALID,
        S_AXI_WREADY     => S0_AXI_WREADY,
        S_AXI_BRESP      => S0_AXI_BRESP,
        S_AXI_BVALID     => S0_AXI_BVALID,
        S_AXI_BREADY     => S0_AXI_BREADY,
        S_AXI_ARADDR     => S0_AXI_ARADDR,
        S_AXI_ARVALID    => S0_AXI_ARVALID,
        S_AXI_ARREADY    => S0_AXI_ARREADY,
        S_AXI_RDATA      => S0_AXI_RDATA,
        S_AXI_RRESP      => S0_AXI_RRESP,
        S_AXI_RVALID     => S0_AXI_RVALID,
        S_AXI_RREADY     => S0_AXI_RREADY,
        
        -- Information signals.
        FSL_M_Length     => FSL0_M_Length_I,
        FSL_S_Length     => FSL0_S_Length_I,
        Interrupt        => Interrupt_0,
        
        -- FSL master/slave interface signals.
        FSL_M_Clk        => FSL0_M_Clk_I,
        FSL_M_Data       => FSL0_M_Data_I,
        FSL_M_Control    => FSL0_M_Control_I,
        FSL_M_Write      => FSL0_M_Write_I,
        FSL_M_Full       => FSL0_M_Full_I,
        FSL_M_Reset      => FSL0_M_Reset_I,
        
        FSL_S_Clk        => FSL0_S_Clk_I,
        FSL_S_Data       => FSL0_S_Data_I,
        FSL_S_Control    => FSL0_S_Control_I,
        FSL_S_Read       => FSL0_S_Read_I,
        FSL_S_Exists     => FSL0_S_Exists_I,
        FSL_S_Reset      => FSL0_S_Reset_I
      );
      
  end generate Using_Bus_0;
  No_If_0: if not C_USE_BUS0 generate
  begin
    -- Turn off unused.
    S0_AXI_AWREADY    <= '0';
    S0_AXI_WREADY     <= '0';
    S0_AXI_BRESP      <= (others=>'0');
    S0_AXI_BVALID     <= '0';
    S0_AXI_ARREADY    <= '0';
    S0_AXI_RDATA      <= (others=>'0');
    S0_AXI_RRESP      <= (others=>'0');
    S0_AXI_RVALID     <= '0';
    FSL0_M_Reset_I    <= '0';
    FSL0_S_Reset_I    <= '0';
  end generate No_If_0;
  
  Using_AXIS_0: if C_USE_AXIS0 generate
  begin
    -- Incoming data on interface #0.
    FSL0_M_Clk_I      <= S0_AXIS_ACLK;
    FSL0_M_Data_I     <= S0_AXIS_TDATA;
    FSL0_M_Control_I  <= S0_AXIS_TLAST;
    FSL0_M_Write_I    <= S0_AXIS_TVALID and not FSL0_M_Full_I;
    S0_AXIS_TREADY    <= not FSL0_M_Full_I;
    
    -- Outgoing data on interface #0.
    FSL0_S_Clk_I      <= M0_AXIS_ACLK;
    FSL0_S_Read_I     <= FSL0_S_Exists_I and M0_AXIS_TREADY;
    M0_AXIS_TDATA     <= FSL0_S_Data_I;
    M0_AXIS_TLAST     <= FSL0_S_Control_I;
    M0_AXIS_TVALID    <= FSL0_S_Exists_I;
    
    -- Interrrupt for interface #0.
    Interrupt_0       <= FSL0_Has_Data_I;
    
  end generate Using_AXIS_0;
  No_AXIS_0: if not C_USE_AXIS0  generate
  begin
    -- Turn off unused.
    S0_AXIS_TREADY    <= '0';
    M0_AXIS_TDATA     <= (others=>'0');
    M0_AXIS_TLAST     <= '0';
    M0_AXIS_TVALID    <= '0';
    
  end generate No_AXIS_0;
  
  
  -----------------------------------------------------------------------------
  -- Instantiating MAILBOX Interface #1
  -----------------------------------------------------------------------------
  Using_Bus_1: if C_USE_BUS1 generate
  begin
    Bus1_If: if_decode
      generic map(
        -- General generics.
        C_FAMILY                => C_FAMILY,
        C_ENABLE_BUS_ERROR      => C_ENABLE_BUS_ERROR,
        C_FIFO_LENGTH_WIDTH     => C_FIFO_LENGTH_WIDTH,
        C_INTERCONNECT          => C_INTERCONNECT_PORT_1,
        C_ASYNC_CLKS            => C_ASYNC_CLKS,
        C_NUM_SYNC_FF           => C_NUM_SYNC_FF,
        C_ASYNC_INTERRUPTS      => C_ASYNC_INTERRUPTS,
        
        -- FSL generics
        C_FSL_DWIDTH            => C_FSL_DWIDTH,
        
        -- AXI4-Lite slave generics
        C_S_AXI_BASEADDR        => C_S1_AXI_BASEADDR,
        C_S_AXI_HIGHADDR        => C_S1_AXI_HIGHADDR,
        C_S_AXI_ADDR_WIDTH      => C_S1_AXI_ADDR_WIDTH,
        C_S_AXI_DATA_WIDTH      => C_S1_AXI_DATA_WIDTH
      )
      port map(
        Rst              => SYS_Rst_If1,

        -- AXI4-Lite SLAVE SINGLE INTERFACE
        S_AXI_ACLK       => S1_AXI_ACLK,
        S_AXI_ARESETN    => SYS_Rst_If1_n,
        S_AXI_AWADDR     => S1_AXI_AWADDR,
        S_AXI_AWVALID    => S1_AXI_AWVALID,
        S_AXI_AWREADY    => S1_AXI_AWREADY,
        S_AXI_WDATA      => S1_AXI_WDATA,
        S_AXI_WSTRB      => S1_AXI_WSTRB,
        S_AXI_WVALID     => S1_AXI_WVALID,
        S_AXI_WREADY     => S1_AXI_WREADY,
        S_AXI_BRESP      => S1_AXI_BRESP,
        S_AXI_BVALID     => S1_AXI_BVALID,
        S_AXI_BREADY     => S1_AXI_BREADY,
        S_AXI_ARADDR     => S1_AXI_ARADDR,
        S_AXI_ARVALID    => S1_AXI_ARVALID,
        S_AXI_ARREADY    => S1_AXI_ARREADY,
        S_AXI_RDATA      => S1_AXI_RDATA,
        S_AXI_RRESP      => S1_AXI_RRESP,
        S_AXI_RVALID     => S1_AXI_RVALID,
        S_AXI_RREADY     => S1_AXI_RREADY,
        
        -- Information signals.
        FSL_M_Length     => FSL1_M_Length_I,
        FSL_S_Length     => FSL1_S_Length_I,
        Interrupt        => Interrupt_1,
        
        -- FSL master/slave interface signals.
        FSL_M_Clk        => FSL1_M_Clk_I,
        FSL_M_Data       => FSL1_M_Data_I,
        FSL_M_Control    => FSL1_M_Control_I,
        FSL_M_Write      => FSL1_M_Write_I,
        FSL_M_Full       => FSL1_M_Full_I,
        FSL_M_Reset      => FSL1_M_Reset_I,
        
        FSL_S_Clk        => FSL1_S_Clk_I,
        FSL_S_Data       => FSL1_S_Data_I,
        FSL_S_Control    => FSL1_S_Control_I,
        FSL_S_Read       => FSL1_S_Read_I,
        FSL_S_Exists     => FSL1_S_Exists_I,
        FSL_S_Reset      => FSL1_S_Reset_I
      );
  
  end generate Using_Bus_1;
  No_If_1: if not C_USE_BUS1 generate
  begin
    -- Turn off unused.
    S1_AXI_AWREADY    <= '0';
    S1_AXI_WREADY     <= '0';
    S1_AXI_BRESP      <= (others=>'0');
    S1_AXI_BVALID     <= '0';
    S1_AXI_ARREADY    <= '0';
    S1_AXI_RDATA      <= (others=>'0');
    S1_AXI_RRESP      <= (others=>'0');
    S1_AXI_RVALID     <= '0';
    FSL1_M_Reset_I    <= '0';
    FSL1_S_Reset_I    <= '0';
  end generate No_If_1;
  
  Using_AXIS_1: if C_USE_AXIS1 generate
  begin
    -- Incoming data on interface #1.
    FSL1_M_Clk_I      <= S1_AXIS_ACLK;
    FSL1_M_Data_I     <= S1_AXIS_TDATA;
    FSL1_M_Control_I  <= S1_AXIS_TLAST;
    FSL1_M_Write_I    <= S1_AXIS_TVALID and not FSL1_M_Full_I;
    S1_AXIS_TREADY    <= not FSL1_M_Full_I;
    
    -- Outgoing data on interface #1.
    FSL1_S_Clk_I      <= M1_AXIS_ACLK;
    FSL1_S_Read_I     <= FSL1_S_Exists_I and M1_AXIS_TREADY;
    M1_AXIS_TDATA     <= FSL1_S_Data_I;
    M1_AXIS_TLAST     <= FSL1_S_Control_I;
    M1_AXIS_TVALID    <= FSL1_S_Exists_I;
    
    -- Interrrupt for interface #1.
    Interrupt_1       <= FSL1_Has_Data_I;
    
  end generate Using_AXIS_1;
  No_AXIS_1: if not C_USE_AXIS1 generate
  begin
    -- Turn off unused.
    S1_AXIS_TREADY    <= '0';
    M1_AXIS_TDATA     <= (others=>'0');
    M1_AXIS_TLAST     <= '0';
    M1_AXIS_TVALID    <= '0';
    
  end generate No_AXIS_1;
  
  
  -----------------------------------------------------------------------------
  -- Instantiating MAILBOX channel (If #0 -> If #1)
  -----------------------------------------------------------------------------
  fsl_0_to_1: fsl_v20
    generic map (
      C_ASYNC_CLKS        => C_ASYNC_CLKS,
      C_NUM_SYNC_FF       => C_NUM_SYNC_FF,
      C_IMPL_STYLE        => C_IMPL_STYLE,
      C_FSL_DWIDTH        => C_FSL_DWIDTH,
      C_FSL_DEPTH         => C_MAILBOX_DEPTH,
      C_FIFO_LENGTH_WIDTH => C_FIFO_LENGTH_WIDTH
    )
    port map (
      -- Clock and reset signals
      FSL_Clk           => FSL_Clk_I,
      SYS_Rst           => SYS_Rst_I,
      FSL_Rst           => open,
  
      -- FSL master signals
      FSL_M_Clk         => FSL0_M_Clk_I,
      FSL_M_Data        => FSL0_M_Data_I,
      FSL_M_Control     => FSL0_M_Control_I,
      FSL_M_Write       => FSL0_M_Write_I,
      FSL_M_Full        => FSL0_M_Full_I,
      FSL_M_Reset       => FSL0_M_Reset_I,
  
      -- FSL slave signals
      FSL_S_Clk         => FSL1_S_Clk_I,
      FSL_S_Data        => FSL1_S_Data_I,
      FSL_S_Control     => FSL1_S_Control_I,
      FSL_S_Read        => FSL1_S_Read_I,
      FSL_S_Exists      => FSL1_S_Exists_I,
      FSL_S_Reset       => FSL1_S_Reset_I,
  
      -- FIFO status signals
      FSL_M_Length      => FSL0_M_Length_I,
      FSL_S_Length      => FSL1_S_Length_I,
      FSL_Full          => open,
      FSL_Has_Data      => FSL1_Has_Data_I,
      FSL_Control_IRQ   => open
    );
  
  
  -----------------------------------------------------------------------------
  -- Instantiating MAILBOX channel (If #1 -> If #0)
  -----------------------------------------------------------------------------
  fsl_1_to_0: fsl_v20
    generic map (
      C_ASYNC_CLKS        => C_ASYNC_CLKS,
      C_NUM_SYNC_FF       => C_NUM_SYNC_FF,
      C_IMPL_STYLE        => C_IMPL_STYLE,
      C_FSL_DWIDTH        => C_FSL_DWIDTH,
      C_FSL_DEPTH         => C_MAILBOX_DEPTH,
      C_FIFO_LENGTH_WIDTH => C_FIFO_LENGTH_WIDTH
    )
    port map (
      -- Clock and reset signals
      FSL_Clk           => FSL_Clk_I,
      SYS_Rst           => SYS_Rst_I,
      FSL_Rst           => open,
  
      -- FSL master signals
      FSL_M_Clk         => FSL1_M_Clk_I,
      FSL_M_Data        => FSL1_M_Data_I,
      FSL_M_Control     => FSL1_M_Control_I,
      FSL_M_Write       => FSL1_M_Write_I,
      FSL_M_Full        => FSL1_M_Full_I,
      FSL_M_Reset       => FSL1_M_Reset_I,
  
      -- FSL slave signals
      FSL_S_Clk         => FSL0_S_Clk_I,
      FSL_S_Data        => FSL0_S_Data_I,
      FSL_S_Control     => FSL0_S_Control_I,
      FSL_S_Read        => FSL0_S_Read_I,
      FSL_S_Exists      => FSL0_S_Exists_I,
      FSL_S_Reset       => FSL0_S_Reset_I,
  
      -- FIFO status signals
      FSL_M_Length      => FSL1_M_Length_I,
      FSL_S_Length      => FSL0_S_Length_I,
      FSL_Full          => open,
      FSL_Has_Data      => FSL0_Has_Data_I,
      FSL_Control_IRQ   => open
    );


end architecture IMP;





