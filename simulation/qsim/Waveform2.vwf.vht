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
-- Generated on "08/15/2023 15:21:31"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          PROYECTO
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY PROYECTO_vhd_vec_tst IS
END PROYECTO_vhd_vec_tst;
ARCHITECTURE PROYECTO_arch OF PROYECTO_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL cnt15 : STD_LOGIC;
SIGNAL EnCnt : STD_LOGIC;
SIGNAL evento_critico : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL LdCnt : STD_LOGIC;
SIGNAL nivel_sensor : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL Q_ram : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL Resetn : STD_LOGIC;
SIGNAL T_sensor : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL time : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL wr : STD_LOGIC;
COMPONENT PROYECTO
	PORT (
	clk : IN STD_LOGIC;
	cnt15 : OUT STD_LOGIC;
	EnCnt : IN STD_LOGIC;
	evento_critico : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	LdCnt : IN STD_LOGIC;
	nivel_sensor : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
	Q_ram : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	Resetn : IN STD_LOGIC;
	T_sensor : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
	\time\ : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	wr : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : PROYECTO
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	cnt15 => cnt15,
	EnCnt => EnCnt,
	evento_critico => evento_critico,
	LdCnt => LdCnt,
	nivel_sensor => nivel_sensor,
	Q_ram => Q_ram,
	Resetn => Resetn,
	T_sensor => T_sensor,
	\time\ => time,
	wr => wr
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 10000 ps;
	clk <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;

-- Resetn
t_prcs_Resetn: PROCESS
BEGIN
	Resetn <= '0';
	WAIT FOR 50000 ps;
	Resetn <= '1';
WAIT;
END PROCESS t_prcs_Resetn;

-- EnCnt
t_prcs_EnCnt: PROCESS
BEGIN
	EnCnt <= '1';
	WAIT FOR 80000 ps;
	EnCnt <= '0';
	WAIT FOR 30000 ps;
	EnCnt <= '1';
WAIT;
END PROCESS t_prcs_EnCnt;

-- LdCnt
t_prcs_LdCnt: PROCESS
BEGIN
	LdCnt <= '1';
	WAIT FOR 80000 ps;
	LdCnt <= '0';
WAIT;
END PROCESS t_prcs_LdCnt;
-- time[4]
t_prcs_\time\_4: PROCESS
BEGIN
	time(4) <= '0';
	WAIT FOR 230000 ps;
	time(4) <= '1';
	WAIT FOR 50000 ps;
	time(4) <= '0';
	WAIT FOR 110000 ps;
	time(4) <= '1';
	WAIT FOR 180000 ps;
	time(4) <= '0';
	WAIT FOR 140000 ps;
	time(4) <= '1';
	WAIT FOR 80000 ps;
	time(4) <= '0';
WAIT;
END PROCESS t_prcs_\time\_4;
-- time[3]
t_prcs_\time\_3: PROCESS
BEGIN
	time(3) <= '0';
	WAIT FOR 130000 ps;
	time(3) <= '1';
	WAIT FOR 100000 ps;
	time(3) <= '0';
	WAIT FOR 50000 ps;
	time(3) <= '1';
	WAIT FOR 110000 ps;
	time(3) <= '0';
	WAIT FOR 460000 ps;
	time(3) <= '1';
	WAIT FOR 50000 ps;
	time(3) <= '0';
WAIT;
END PROCESS t_prcs_\time\_3;
-- time[2]
t_prcs_\time\_2: PROCESS
BEGIN
	time(2) <= '1';
	WAIT FOR 40000 ps;
	time(2) <= '0';
	WAIT FOR 40000 ps;
	time(2) <= '1';
	WAIT FOR 50000 ps;
	time(2) <= '0';
	WAIT FOR 100000 ps;
	time(2) <= '1';
	WAIT FOR 100000 ps;
	time(2) <= '0';
	WAIT FOR 120000 ps;
	time(2) <= '1';
	WAIT FOR 190000 ps;
	time(2) <= '0';
	WAIT FOR 210000 ps;
	time(2) <= '1';
	WAIT FOR 50000 ps;
	time(2) <= '0';
WAIT;
END PROCESS t_prcs_\time\_2;
-- time[1]
t_prcs_\time\_1: PROCESS
BEGIN
	time(1) <= '0';
	WAIT FOR 40000 ps;
	time(1) <= '1';
	WAIT FOR 140000 ps;
	time(1) <= '0';
	WAIT FOR 100000 ps;
	time(1) <= '1';
	WAIT FOR 110000 ps;
	time(1) <= '0';
	WAIT FOR 60000 ps;
	time(1) <= '1';
	WAIT FOR 260000 ps;
	time(1) <= '0';
	WAIT FOR 80000 ps;
	time(1) <= '1';
	WAIT FOR 110000 ps;
	time(1) <= '0';
WAIT;
END PROCESS t_prcs_\time\_1;
-- time[0]
t_prcs_\time\_0: PROCESS
BEGIN
	time(0) <= '1';
	WAIT FOR 40000 ps;
	time(0) <= '0';
	WAIT FOR 240000 ps;
	time(0) <= '1';
	WAIT FOR 110000 ps;
	time(0) <= '0';
	WAIT FOR 120000 ps;
	time(0) <= '1';
	WAIT FOR 130000 ps;
	time(0) <= '0';
	WAIT FOR 70000 ps;
	time(0) <= '1';
	WAIT FOR 190000 ps;
	time(0) <= '0';
WAIT;
END PROCESS t_prcs_\time\_0;

-- wr
t_prcs_wr: PROCESS
BEGIN
	wr <= '1';
	WAIT FOR 450000 ps;
	wr <= '0';
WAIT;
END PROCESS t_prcs_wr;
END PROYECTO_arch;
