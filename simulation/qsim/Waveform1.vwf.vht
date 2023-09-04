-- Copyright (C) 2019  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "08/15/2023 14:56:06"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          bloque_ram
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY bloque_ram_vhd_vec_tst IS
END bloque_ram_vhd_vec_tst;
ARCHITECTURE bloque_ram_arch OF bloque_ram_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL address : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL clock : STD_LOGIC;
SIGNAL data : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL q : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL wren : STD_LOGIC;
COMPONENT bloque_ram
	PORT (
	address : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	clock : IN STD_LOGIC;
	data : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	q : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	wren : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : bloque_ram
	PORT MAP (
-- list connections between master ports and signals
	address => address,
	clock => clock,
	data => data,
	q => q,
	wren => wren
	);

-- clock
t_prcs_clock: PROCESS
BEGIN
LOOP
	clock <= '0';
	WAIT FOR 10000 ps;
	clock <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clock;
-- address[3]
t_prcs_address_3: PROCESS
BEGIN
	address(3) <= '0';
	WAIT FOR 560000 ps;
	address(3) <= '1';
	WAIT FOR 140000 ps;
	address(3) <= '0';
WAIT;
END PROCESS t_prcs_address_3;
-- address[2]
t_prcs_address_2: PROCESS
BEGIN
	address(2) <= '0';
	WAIT FOR 340000 ps;
	address(2) <= '1';
	WAIT FOR 220000 ps;
	address(2) <= '0';
	WAIT FOR 270000 ps;
	address(2) <= '1';
WAIT;
END PROCESS t_prcs_address_2;
-- address[1]
t_prcs_address_1: PROCESS
BEGIN
	address(1) <= '0';
	WAIT FOR 160000 ps;
	address(1) <= '1';
	WAIT FOR 180000 ps;
	address(1) <= '0';
	WAIT FOR 140000 ps;
	address(1) <= '1';
	WAIT FOR 80000 ps;
	address(1) <= '0';
	WAIT FOR 90000 ps;
	address(1) <= '1';
	WAIT FOR 50000 ps;
	address(1) <= '0';
	WAIT FOR 60000 ps;
	address(1) <= '1';
	WAIT FOR 70000 ps;
	address(1) <= '0';
	WAIT FOR 90000 ps;
	address(1) <= '1';
WAIT;
END PROCESS t_prcs_address_1;
-- address[0]
t_prcs_address_0: PROCESS
BEGIN
	address(0) <= '0';
	WAIT FOR 80000 ps;
	address(0) <= '1';
	WAIT FOR 80000 ps;
	address(0) <= '0';
	WAIT FOR 100000 ps;
	address(0) <= '1';
	WAIT FOR 80000 ps;
	address(0) <= '0';
	WAIT FOR 70000 ps;
	address(0) <= '1';
	WAIT FOR 70000 ps;
	address(0) <= '0';
	WAIT FOR 40000 ps;
	address(0) <= '1';
	WAIT FOR 40000 ps;
	address(0) <= '0';
	WAIT FOR 50000 ps;
	address(0) <= '1';
	WAIT FOR 40000 ps;
	address(0) <= '0';
	WAIT FOR 90000 ps;
	address(0) <= '1';
	WAIT FOR 20000 ps;
	address(0) <= '0';
	WAIT FOR 30000 ps;
	address(0) <= '1';
	WAIT FOR 40000 ps;
	address(0) <= '0';
	WAIT FOR 40000 ps;
	address(0) <= '1';
	WAIT FOR 50000 ps;
	address(0) <= '0';
	WAIT FOR 50000 ps;
	address(0) <= '1';
WAIT;
END PROCESS t_prcs_address_0;
-- data[4]
t_prcs_data_4: PROCESS
BEGIN
	data(4) <= '0';
	WAIT FOR 80000 ps;
	data(4) <= '1';
	WAIT FOR 80000 ps;
	data(4) <= '0';
	WAIT FOR 180000 ps;
	data(4) <= '1';
	WAIT FOR 140000 ps;
	data(4) <= '0';
WAIT;
END PROCESS t_prcs_data_4;
-- data[3]
t_prcs_data_3: PROCESS
BEGIN
	data(3) <= '1';
	WAIT FOR 80000 ps;
	data(3) <= '0';
	WAIT FOR 80000 ps;
	data(3) <= '1';
	WAIT FOR 100000 ps;
	data(3) <= '0';
	WAIT FOR 300000 ps;
	data(3) <= '1';
	WAIT FOR 140000 ps;
	data(3) <= '0';
WAIT;
END PROCESS t_prcs_data_3;
-- data[2]
t_prcs_data_2: PROCESS
BEGIN
	data(2) <= '1';
	WAIT FOR 340000 ps;
	data(2) <= '0';
	WAIT FOR 70000 ps;
	data(2) <= '1';
	WAIT FOR 70000 ps;
	data(2) <= '0';
	WAIT FOR 80000 ps;
	data(2) <= '1';
	WAIT FOR 50000 ps;
	data(2) <= '0';
	WAIT FOR 90000 ps;
	data(2) <= '1';
	WAIT FOR 40000 ps;
	data(2) <= '0';
WAIT;
END PROCESS t_prcs_data_2;
-- data[1]
t_prcs_data_1: PROCESS
BEGIN
	data(1) <= '0';
	WAIT FOR 160000 ps;
	data(1) <= '1';
	WAIT FOR 100000 ps;
	data(1) <= '0';
	WAIT FOR 150000 ps;
	data(1) <= '1';
	WAIT FOR 150000 ps;
	data(1) <= '0';
	WAIT FOR 90000 ps;
	data(1) <= '1';
	WAIT FOR 90000 ps;
	data(1) <= '0';
WAIT;
END PROCESS t_prcs_data_1;
-- data[0]
t_prcs_data_0: PROCESS
BEGIN
	data(0) <= '0';
	WAIT FOR 160000 ps;
	data(0) <= '1';
	WAIT FOR 180000 ps;
	data(0) <= '0';
	WAIT FOR 180000 ps;
	data(0) <= '1';
	WAIT FOR 40000 ps;
	data(0) <= '0';
	WAIT FOR 50000 ps;
	data(0) <= '1';
	WAIT FOR 130000 ps;
	data(0) <= '0';
WAIT;
END PROCESS t_prcs_data_0;

-- wren
t_prcs_wren: PROCESS
BEGIN
	wren <= '1';
	WAIT FOR 690000 ps;
	wren <= '0';
WAIT;
END PROCESS t_prcs_wren;
END bloque_ram_arch;
