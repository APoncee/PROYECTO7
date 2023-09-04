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
-- Generated on "08/15/2023 20:09:55"
                                                             
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
SIGNAL alta : STD_LOGIC;
SIGNAL baja : STD_LOGIC;
SIGNAL clk : STD_LOGIC;
SIGNAL EnCnt : STD_LOGIC;
SIGNAL EnH : STD_LOGIC;
SIGNAL EnReloj : STD_LOGIC;
SIGNAL EnSensor1 : STD_LOGIC;
SIGNAL EnSensor2 : STD_LOGIC;
SIGNAL LdCnt : STD_LOGIC;
SIGNAL LdH : STD_LOGIC;
SIGNAL lleno : STD_LOGIC;
SIGNAL nivel_sensor : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL Resetn : STD_LOGIC;
SIGNAL Sensor1 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL Sensor2 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL T_sensor : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL time_Actual : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL wr : STD_LOGIC;
COMPONENT PROYECTO
	PORT (
	alta : OUT STD_LOGIC;
	baja : OUT STD_LOGIC;
	clk : IN STD_LOGIC;
	EnCnt : IN STD_LOGIC;
	EnH : IN STD_LOGIC;
	EnReloj : IN STD_LOGIC;
	EnSensor1 : IN STD_LOGIC;
	EnSensor2 : IN STD_LOGIC;
	LdCnt : IN STD_LOGIC;
	LdH : IN STD_LOGIC;
	lleno : OUT STD_LOGIC;
	nivel_sensor : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	Resetn : IN STD_LOGIC;
	Sensor1 : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
	Sensor2 : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
	T_sensor : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	time_Actual : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	wr : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : PROYECTO
	PORT MAP (
-- list connections between master ports and signals
	alta => alta,
	baja => baja,
	clk => clk,
	EnCnt => EnCnt,
	EnH => EnH,
	EnReloj => EnReloj,
	EnSensor1 => EnSensor1,
	EnSensor2 => EnSensor2,
	LdCnt => LdCnt,
	LdH => LdH,
	lleno => lleno,
	nivel_sensor => nivel_sensor,
	Resetn => Resetn,
	Sensor1 => Sensor1,
	Sensor2 => Sensor2,
	T_sensor => T_sensor,
	time_Actual => time_Actual,
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

-- EnSensor1
t_prcs_EnSensor1: PROCESS
BEGIN
	EnSensor1 <= '0';
	WAIT FOR 50000 ps;
	EnSensor1 <= '1';
	WAIT FOR 20000 ps;
	EnSensor1 <= '0';
	WAIT FOR 30000 ps;
	EnSensor1 <= '1';
	WAIT FOR 20000 ps;
	EnSensor1 <= '0';
	WAIT FOR 20000 ps;
	EnSensor1 <= '1';
	WAIT FOR 20000 ps;
	EnSensor1 <= '0';
	WAIT FOR 40000 ps;
	EnSensor1 <= '1';
	WAIT FOR 40000 ps;
	EnSensor1 <= '0';
	WAIT FOR 30000 ps;
	EnSensor1 <= '1';
	WAIT FOR 30000 ps;
	EnSensor1 <= '0';
	WAIT FOR 30000 ps;
	EnSensor1 <= '1';
	WAIT FOR 50000 ps;
	EnSensor1 <= '0';
	WAIT FOR 30000 ps;
	EnSensor1 <= '1';
	WAIT FOR 40000 ps;
	EnSensor1 <= '0';
	WAIT FOR 50000 ps;
	EnSensor1 <= '1';
	WAIT FOR 30000 ps;
	EnSensor1 <= '0';
	WAIT FOR 40000 ps;
	EnSensor1 <= '1';
	WAIT FOR 40000 ps;
	EnSensor1 <= '0';
	WAIT FOR 20000 ps;
	EnSensor1 <= '1';
	WAIT FOR 120000 ps;
	EnSensor1 <= '0';
WAIT;
END PROCESS t_prcs_EnSensor1;

-- EnSensor2
t_prcs_EnSensor2: PROCESS
BEGIN
	EnSensor2 <= '0';
	WAIT FOR 50000 ps;
	EnSensor2 <= '1';
	WAIT FOR 20000 ps;
	EnSensor2 <= '0';
	WAIT FOR 30000 ps;
	EnSensor2 <= '1';
	WAIT FOR 20000 ps;
	EnSensor2 <= '0';
	WAIT FOR 20000 ps;
	EnSensor2 <= '1';
	WAIT FOR 20000 ps;
	EnSensor2 <= '0';
	WAIT FOR 40000 ps;
	EnSensor2 <= '1';
	WAIT FOR 40000 ps;
	EnSensor2 <= '0';
	WAIT FOR 30000 ps;
	EnSensor2 <= '1';
	WAIT FOR 30000 ps;
	EnSensor2 <= '0';
	WAIT FOR 30000 ps;
	EnSensor2 <= '1';
	WAIT FOR 50000 ps;
	EnSensor2 <= '0';
	WAIT FOR 30000 ps;
	EnSensor2 <= '1';
	WAIT FOR 40000 ps;
	EnSensor2 <= '0';
	WAIT FOR 50000 ps;
	EnSensor2 <= '1';
	WAIT FOR 30000 ps;
	EnSensor2 <= '0';
	WAIT FOR 40000 ps;
	EnSensor2 <= '1';
	WAIT FOR 40000 ps;
	EnSensor2 <= '0';
	WAIT FOR 20000 ps;
	EnSensor2 <= '1';
	WAIT FOR 120000 ps;
	EnSensor2 <= '0';
WAIT;
END PROCESS t_prcs_EnSensor2;
-- Sensor1[6]
t_prcs_Sensor1_6: PROCESS
BEGIN
	Sensor1(6) <= '0';
	WAIT FOR 570000 ps;
	Sensor1(6) <= '1';
	WAIT FOR 100000 ps;
	Sensor1(6) <= '0';
	WAIT FOR 160000 ps;
	Sensor1(6) <= '1';
	WAIT FOR 160000 ps;
	Sensor1(6) <= '0';
WAIT;
END PROCESS t_prcs_Sensor1_6;
-- Sensor1[5]
t_prcs_Sensor1_5: PROCESS
BEGIN
	Sensor1(5) <= '1';
	WAIT FOR 160000 ps;
	Sensor1(5) <= '0';
	WAIT FOR 170000 ps;
	Sensor1(5) <= '1';
	WAIT FOR 240000 ps;
	Sensor1(5) <= '0';
	WAIT FOR 100000 ps;
	Sensor1(5) <= '1';
	WAIT FOR 160000 ps;
	Sensor1(5) <= '0';
WAIT;
END PROCESS t_prcs_Sensor1_5;
-- Sensor1[4]
t_prcs_Sensor1_4: PROCESS
BEGIN
	Sensor1(4) <= '1';
	WAIT FOR 330000 ps;
	Sensor1(4) <= '0';
	WAIT FOR 340000 ps;
	Sensor1(4) <= '1';
	WAIT FOR 320000 ps;
	Sensor1(4) <= '0';
WAIT;
END PROCESS t_prcs_Sensor1_4;
-- Sensor1[3]
t_prcs_Sensor1_3: PROCESS
BEGIN
	Sensor1(3) <= '1';
	WAIT FOR 80000 ps;
	Sensor1(3) <= '0';
	WAIT FOR 80000 ps;
	Sensor1(3) <= '1';
	WAIT FOR 170000 ps;
	Sensor1(3) <= '0';
	WAIT FOR 80000 ps;
	Sensor1(3) <= '1';
	WAIT FOR 160000 ps;
	Sensor1(3) <= '0';
	WAIT FOR 100000 ps;
	Sensor1(3) <= '1';
	WAIT FOR 80000 ps;
	Sensor1(3) <= '0';
	WAIT FOR 170000 ps;
	Sensor1(3) <= '1';
	WAIT FOR 70000 ps;
	Sensor1(3) <= '0';
WAIT;
END PROCESS t_prcs_Sensor1_3;
-- Sensor1[2]
t_prcs_Sensor1_2: PROCESS
BEGIN
	Sensor1(2) <= '1';
	WAIT FOR 80000 ps;
	Sensor1(2) <= '0';
	WAIT FOR 160000 ps;
	Sensor1(2) <= '1';
	WAIT FOR 170000 ps;
	Sensor1(2) <= '0';
	WAIT FOR 160000 ps;
	Sensor1(2) <= '1';
	WAIT FOR 180000 ps;
	Sensor1(2) <= '0';
WAIT;
END PROCESS t_prcs_Sensor1_2;
-- Sensor1[1]
t_prcs_Sensor1_1: PROCESS
BEGIN
	Sensor1(1) <= '0';
	WAIT FOR 80000 ps;
	Sensor1(1) <= '1';
	WAIT FOR 80000 ps;
	Sensor1(1) <= '0';
	WAIT FOR 330000 ps;
	Sensor1(1) <= '1';
	WAIT FOR 340000 ps;
	Sensor1(1) <= '0';
	WAIT FOR 90000 ps;
	Sensor1(1) <= '1';
	WAIT FOR 70000 ps;
	Sensor1(1) <= '0';
WAIT;
END PROCESS t_prcs_Sensor1_1;
-- Sensor1[0]
t_prcs_Sensor1_0: PROCESS
BEGIN
	Sensor1(0) <= '0';
	WAIT FOR 160000 ps;
	Sensor1(0) <= '1';
	WAIT FOR 80000 ps;
	Sensor1(0) <= '0';
WAIT;
END PROCESS t_prcs_Sensor1_0;
-- Sensor2[6]
t_prcs_Sensor2_6: PROCESS
BEGIN
	Sensor2(6) <= '1';
	WAIT FOR 80000 ps;
	Sensor2(6) <= '0';
	WAIT FOR 80000 ps;
	Sensor2(6) <= '1';
	WAIT FOR 340000 ps;
	Sensor2(6) <= '0';
	WAIT FOR 170000 ps;
	Sensor2(6) <= '1';
	WAIT FOR 260000 ps;
	Sensor2(6) <= '0';
WAIT;
END PROCESS t_prcs_Sensor2_6;
-- Sensor2[5]
t_prcs_Sensor2_5: PROCESS
BEGIN
	Sensor2(5) <= '0';
	WAIT FOR 80000 ps;
	Sensor2(5) <= '1';
	WAIT FOR 80000 ps;
	Sensor2(5) <= '0';
	WAIT FOR 340000 ps;
	Sensor2(5) <= '1';
	WAIT FOR 170000 ps;
	Sensor2(5) <= '0';
WAIT;
END PROCESS t_prcs_Sensor2_5;
-- Sensor2[4]
t_prcs_Sensor2_4: PROCESS
BEGIN
	Sensor2(4) <= '1';
	WAIT FOR 160000 ps;
	Sensor2(4) <= '0';
	WAIT FOR 170000 ps;
	Sensor2(4) <= '1';
	WAIT FOR 170000 ps;
	Sensor2(4) <= '0';
	WAIT FOR 320000 ps;
	Sensor2(4) <= '1';
	WAIT FOR 110000 ps;
	Sensor2(4) <= '0';
WAIT;
END PROCESS t_prcs_Sensor2_4;
-- Sensor2[3]
t_prcs_Sensor2_3: PROCESS
BEGIN
	Sensor2(3) <= '0';
	WAIT FOR 80000 ps;
	Sensor2(3) <= '1';
	WAIT FOR 740000 ps;
	Sensor2(3) <= '0';
WAIT;
END PROCESS t_prcs_Sensor2_3;
-- Sensor2[2]
t_prcs_Sensor2_2: PROCESS
BEGIN
	Sensor2(2) <= '0';
	WAIT FOR 80000 ps;
	Sensor2(2) <= '1';
	WAIT FOR 80000 ps;
	Sensor2(2) <= '0';
	WAIT FOR 510000 ps;
	Sensor2(2) <= '1';
	WAIT FOR 150000 ps;
	Sensor2(2) <= '0';
WAIT;
END PROCESS t_prcs_Sensor2_2;
-- Sensor2[1]
t_prcs_Sensor2_1: PROCESS
BEGIN
	Sensor2(1) <= '0';
	WAIT FOR 330000 ps;
	Sensor2(1) <= '1';
	WAIT FOR 170000 ps;
	Sensor2(1) <= '0';
	WAIT FOR 170000 ps;
	Sensor2(1) <= '1';
	WAIT FOR 150000 ps;
	Sensor2(1) <= '0';
WAIT;
END PROCESS t_prcs_Sensor2_1;
-- Sensor2[0]
t_prcs_Sensor2_0: PROCESS
BEGIN
	Sensor2(0) <= '0';
	WAIT FOR 820000 ps;
	Sensor2(0) <= '1';
	WAIT FOR 110000 ps;
	Sensor2(0) <= '0';
WAIT;
END PROCESS t_prcs_Sensor2_0;

-- EnH
t_prcs_EnH: PROCESS
BEGIN
	EnH <= '1';
	WAIT FOR 25000 ps;
	EnH <= '0';
	WAIT FOR 50000 ps;
	EnH <= '1';
	WAIT FOR 25000 ps;
	EnH <= '0';
	WAIT FOR 50000 ps;
	EnH <= '1';
	WAIT FOR 125000 ps;
	EnH <= '0';
	WAIT FOR 100000 ps;
	EnH <= '1';
	WAIT FOR 25000 ps;
	EnH <= '0';
	WAIT FOR 50000 ps;
	EnH <= '1';
	WAIT FOR 125000 ps;
	EnH <= '0';
	WAIT FOR 25000 ps;
	EnH <= '1';
	WAIT FOR 25000 ps;
	EnH <= '0';
	WAIT FOR 25000 ps;
	EnH <= '1';
	WAIT FOR 25000 ps;
	EnH <= '0';
	WAIT FOR 25000 ps;
	EnH <= '1';
	WAIT FOR 50000 ps;
	EnH <= '0';
	WAIT FOR 100000 ps;
	EnH <= '1';
	WAIT FOR 50000 ps;
	EnH <= '0';
	WAIT FOR 50000 ps;
	EnH <= '1';
	WAIT FOR 25000 ps;
	EnH <= '0';
WAIT;
END PROCESS t_prcs_EnH;

-- LdH
t_prcs_LdH: PROCESS
BEGIN
	LdH <= '1';
	WAIT FOR 60000 ps;
	LdH <= '0';
	WAIT FOR 390000 ps;
	LdH <= '1';
	WAIT FOR 40000 ps;
	LdH <= '0';
WAIT;
END PROCESS t_prcs_LdH;

-- EnReloj
t_prcs_EnReloj: PROCESS
BEGIN
	EnReloj <= '0';
	WAIT FOR 70000 ps;
	EnReloj <= '1';
	WAIT FOR 40000 ps;
	EnReloj <= '0';
	WAIT FOR 20000 ps;
	EnReloj <= '1';
	WAIT FOR 150000 ps;
	EnReloj <= '0';
	WAIT FOR 40000 ps;
	EnReloj <= '1';
	WAIT FOR 100000 ps;
	EnReloj <= '0';
	WAIT FOR 30000 ps;
	EnReloj <= '1';
	WAIT FOR 40000 ps;
	EnReloj <= '0';
	WAIT FOR 20000 ps;
	EnReloj <= '1';
	WAIT FOR 50000 ps;
	EnReloj <= '0';
	WAIT FOR 40000 ps;
	EnReloj <= '1';
	WAIT FOR 40000 ps;
	EnReloj <= '0';
	WAIT FOR 20000 ps;
	EnReloj <= '1';
	WAIT FOR 70000 ps;
	EnReloj <= '0';
	WAIT FOR 40000 ps;
	EnReloj <= '1';
	WAIT FOR 60000 ps;
	EnReloj <= '0';
	WAIT FOR 50000 ps;
	EnReloj <= '1';
	WAIT FOR 40000 ps;
	EnReloj <= '0';
	WAIT FOR 40000 ps;
	EnReloj <= '1';
	WAIT FOR 30000 ps;
	EnReloj <= '0';
WAIT;
END PROCESS t_prcs_EnReloj;
END PROYECTO_arch;
