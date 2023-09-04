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
-- Generated on "08/15/2023 17:41:27"
                                                             
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
SIGNAL datos : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL EnCnt : STD_LOGIC;
SIGNAL EnCritico : STD_LOGIC;
SIGNAL evento_critico : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL LdCnt : STD_LOGIC;
SIGNAL nivel_sensor : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL QCritico : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL Resetn : STD_LOGIC;
SIGNAL salidaPrueba : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL T_sensor : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL wr : STD_LOGIC;
COMPONENT PROYECTO
	PORT (
	clk : IN STD_LOGIC;
	cnt15 : OUT STD_LOGIC;
	datos : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	EnCnt : IN STD_LOGIC;
	EnCritico : IN STD_LOGIC;
	evento_critico : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	LdCnt : IN STD_LOGIC;
	nivel_sensor : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
	QCritico : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	Resetn : IN STD_LOGIC;
	salidaPrueba : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	T_sensor : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
	wr : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : PROYECTO
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	cnt15 => cnt15,
	datos => datos,
	EnCnt => EnCnt,
	EnCritico => EnCritico,
	evento_critico => evento_critico,
	LdCnt => LdCnt,
	nivel_sensor => nivel_sensor,
	QCritico => QCritico,
	Resetn => Resetn,
	salidaPrueba => salidaPrueba,
	T_sensor => T_sensor,
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
	WAIT FOR 70000 ps;
	Resetn <= '1';
WAIT;
END PROCESS t_prcs_Resetn;

-- EnCnt
t_prcs_EnCnt: PROCESS
BEGIN
	EnCnt <= '1';
	WAIT FOR 120000 ps;
	EnCnt <= '0';
	WAIT FOR 30000 ps;
	EnCnt <= '1';
WAIT;
END PROCESS t_prcs_EnCnt;

-- LdCnt
t_prcs_LdCnt: PROCESS
BEGIN
	LdCnt <= '1';
	WAIT FOR 120000 ps;
	LdCnt <= '0';
WAIT;
END PROCESS t_prcs_LdCnt;

-- wr
t_prcs_wr: PROCESS
BEGIN
	wr <= '1';
	WAIT FOR 410000 ps;
	wr <= '0';
WAIT;
END PROCESS t_prcs_wr;
-- datos[4]
t_prcs_datos_4: PROCESS
BEGIN
	datos(4) <= '0';
	WAIT FOR 220000 ps;
	datos(4) <= '1';
	WAIT FOR 160000 ps;
	datos(4) <= '0';
	WAIT FOR 190000 ps;
	datos(4) <= '1';
	WAIT FOR 80000 ps;
	datos(4) <= '0';
WAIT;
END PROCESS t_prcs_datos_4;
-- datos[3]
t_prcs_datos_3: PROCESS
BEGIN
	datos(3) <= '0';
	WAIT FOR 440000 ps;
	datos(3) <= '1';
	WAIT FOR 130000 ps;
	datos(3) <= '0';
WAIT;
END PROCESS t_prcs_datos_3;
-- datos[2]
t_prcs_datos_2: PROCESS
BEGIN
	datos(2) <= '0';
	WAIT FOR 120000 ps;
	datos(2) <= '1';
	WAIT FOR 170000 ps;
	datos(2) <= '0';
	WAIT FOR 280000 ps;
	datos(2) <= '1';
	WAIT FOR 80000 ps;
	datos(2) <= '0';
WAIT;
END PROCESS t_prcs_datos_2;
-- datos[1]
t_prcs_datos_1: PROCESS
BEGIN
	datos(1) <= '0';
	WAIT FOR 380000 ps;
	datos(1) <= '1';
	WAIT FOR 270000 ps;
	datos(1) <= '0';
WAIT;
END PROCESS t_prcs_datos_1;
-- datos[0]
t_prcs_datos_0: PROCESS
BEGIN
	datos(0) <= '0';
	WAIT FOR 120000 ps;
	datos(0) <= '1';
	WAIT FOR 100000 ps;
	datos(0) <= '0';
	WAIT FOR 70000 ps;
	datos(0) <= '1';
	WAIT FOR 150000 ps;
	datos(0) <= '0';
WAIT;
END PROCESS t_prcs_datos_0;

-- EnCritico
t_prcs_EnCritico: PROCESS
BEGIN
	EnCritico <= '0';
	WAIT FOR 410000 ps;
	EnCritico <= '1';
	WAIT FOR 50000 ps;
	EnCritico <= '0';
	WAIT FOR 50000 ps;
	EnCritico <= '1';
	WAIT FOR 40000 ps;
	EnCritico <= '0';
	WAIT FOR 50000 ps;
	EnCritico <= '1';
	WAIT FOR 30000 ps;
	EnCritico <= '0';
	WAIT FOR 50000 ps;
	EnCritico <= '1';
	WAIT FOR 50000 ps;
	EnCritico <= '0';
	WAIT FOR 50000 ps;
	EnCritico <= '1';
	WAIT FOR 30000 ps;
	EnCritico <= '0';
	WAIT FOR 50000 ps;
	EnCritico <= '1';
	WAIT FOR 70000 ps;
	EnCritico <= '0';
WAIT;
END PROCESS t_prcs_EnCritico;
END PROYECTO_arch;
