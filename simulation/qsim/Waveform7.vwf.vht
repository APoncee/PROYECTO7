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
-- Generated on "08/24/2023 12:31:43"
                                                             
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
SIGNAL ALARMA : STD_LOGIC;
SIGNAL CARGADO : STD_LOGIC;
SIGNAL CargarRam : STD_LOGIC;
SIGNAL clk : STD_LOGIC;
SIGNAL Consultar : STD_LOGIC;
SIGNAL dato1 : STD_LOGIC_VECTOR(11 DOWNTO 0);
SIGNAL dato2 : STD_LOGIC_VECTOR(11 DOWNTO 0);
SIGNAL display1 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL display2 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL ERROR : STD_LOGIC;
SIGNAL ESTADOS : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL EVENTO : STD_LOGIC;
SIGNAL FIN : STD_LOGIC;
SIGNAL FINALIZAR : STD_LOGIC;
SIGNAL nivel_sensor : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL NO_LLENAR : STD_LOGIC;
SIGNAL Resetn : STD_LOGIC;
SIGNAL START : STD_LOGIC;
SIGNAL T_sensor : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL TEMP_ALTA : STD_LOGIC;
SIGNAL TEMP_BAJA : STD_LOGIC;
SIGNAL time_Actual : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL VALVULA_OFF : STD_LOGIC;
SIGNAL VALVULA_ON : STD_LOGIC;
COMPONENT PROYECTO
	PORT (
	ALARMA : OUT STD_LOGIC;
	CARGADO : OUT STD_LOGIC;
	CargarRam : IN STD_LOGIC;
	clk : IN STD_LOGIC;
	Consultar : IN STD_LOGIC;
	dato1 : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
	dato2 : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
	display1 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	display2 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	ERROR : OUT STD_LOGIC;
	ESTADOS : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	EVENTO : OUT STD_LOGIC;
	FIN : OUT STD_LOGIC;
	FINALIZAR : IN STD_LOGIC;
	nivel_sensor : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	NO_LLENAR : OUT STD_LOGIC;
	Resetn : IN STD_LOGIC;
	START : IN STD_LOGIC;
	T_sensor : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	TEMP_ALTA : OUT STD_LOGIC;
	TEMP_BAJA : OUT STD_LOGIC;
	time_Actual : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	VALVULA_OFF : OUT STD_LOGIC;
	VALVULA_ON : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : PROYECTO
	PORT MAP (
-- list connections between master ports and signals
	ALARMA => ALARMA,
	CARGADO => CARGADO,
	CargarRam => CargarRam,
	clk => clk,
	Consultar => Consultar,
	dato1 => dato1,
	dato2 => dato2,
	display1 => display1,
	display2 => display2,
	ERROR => ERROR,
	ESTADOS => ESTADOS,
	EVENTO => EVENTO,
	FIN => FIN,
	FINALIZAR => FINALIZAR,
	nivel_sensor => nivel_sensor,
	NO_LLENAR => NO_LLENAR,
	Resetn => Resetn,
	START => START,
	T_sensor => T_sensor,
	TEMP_ALTA => TEMP_ALTA,
	TEMP_BAJA => TEMP_BAJA,
	time_Actual => time_Actual,
	VALVULA_OFF => VALVULA_OFF,
	VALVULA_ON => VALVULA_ON
	);
-- dato1[11]
t_prcs_dato1_11: PROCESS
BEGIN
	dato1(11) <= '0';
	WAIT FOR 50000 ps;
	dato1(11) <= '1';
	WAIT FOR 200000 ps;
	dato1(11) <= '0';
WAIT;
END PROCESS t_prcs_dato1_11;
-- dato1[10]
t_prcs_dato1_10: PROCESS
BEGIN
	dato1(10) <= '0';
	WAIT FOR 50000 ps;
	dato1(10) <= '1';
	WAIT FOR 80000 ps;
	dato1(10) <= '0';
WAIT;
END PROCESS t_prcs_dato1_10;
-- dato1[9]
t_prcs_dato1_9: PROCESS
BEGIN
	dato1(9) <= '0';
	WAIT FOR 50000 ps;
	dato1(9) <= '1';
	WAIT FOR 80000 ps;
	dato1(9) <= '0';
	WAIT FOR 80000 ps;
	dato1(9) <= '1';
	WAIT FOR 40000 ps;
	dato1(9) <= '0';
WAIT;
END PROCESS t_prcs_dato1_9;
-- dato1[8]
t_prcs_dato1_8: PROCESS
BEGIN
	dato1(8) <= '0';
	WAIT FOR 50000 ps;
	dato1(8) <= '1';
	WAIT FOR 80000 ps;
	dato1(8) <= '0';
	WAIT FOR 80000 ps;
	dato1(8) <= '1';
	WAIT FOR 40000 ps;
	dato1(8) <= '0';
WAIT;
END PROCESS t_prcs_dato1_8;
-- dato1[7]
t_prcs_dato1_7: PROCESS
BEGIN
	dato1(7) <= '0';
	WAIT FOR 50000 ps;
	dato1(7) <= '1';
	WAIT FOR 80000 ps;
	dato1(7) <= '0';
	WAIT FOR 80000 ps;
	dato1(7) <= '1';
	WAIT FOR 40000 ps;
	dato1(7) <= '0';
WAIT;
END PROCESS t_prcs_dato1_7;
-- dato1[6]
t_prcs_dato1_6: PROCESS
BEGIN
	dato1(6) <= '1';
	WAIT FOR 50000 ps;
	dato1(6) <= '0';
	WAIT FOR 40000 ps;
	dato1(6) <= '1';
	WAIT FOR 40000 ps;
	dato1(6) <= '0';
	WAIT FOR 80000 ps;
	dato1(6) <= '1';
	WAIT FOR 40000 ps;
	dato1(6) <= '0';
WAIT;
END PROCESS t_prcs_dato1_6;
-- dato1[5]
t_prcs_dato1_5: PROCESS
BEGIN
	dato1(5) <= '1';
	WAIT FOR 210000 ps;
	dato1(5) <= '0';
WAIT;
END PROCESS t_prcs_dato1_5;
-- dato1[4]
t_prcs_dato1_4: PROCESS
BEGIN
	dato1(4) <= '0';
	WAIT FOR 90000 ps;
	dato1(4) <= '1';
	WAIT FOR 120000 ps;
	dato1(4) <= '0';
WAIT;
END PROCESS t_prcs_dato1_4;
-- dato1[3]
t_prcs_dato1_3: PROCESS
BEGIN
	dato1(3) <= '0';
	WAIT FOR 90000 ps;
	dato1(3) <= '1';
	WAIT FOR 40000 ps;
	dato1(3) <= '0';
	WAIT FOR 80000 ps;
	dato1(3) <= '1';
	WAIT FOR 40000 ps;
	dato1(3) <= '0';
WAIT;
END PROCESS t_prcs_dato1_3;
-- dato1[2]
t_prcs_dato1_2: PROCESS
BEGIN
	dato1(2) <= '1';
	WAIT FOR 50000 ps;
	dato1(2) <= '0';
	WAIT FOR 160000 ps;
	dato1(2) <= '1';
	WAIT FOR 40000 ps;
	dato1(2) <= '0';
WAIT;
END PROCESS t_prcs_dato1_2;
-- dato1[1]
t_prcs_dato1_1: PROCESS
BEGIN
	dato1(1) <= '0';
	WAIT FOR 90000 ps;
	dato1(1) <= '1';
	WAIT FOR 40000 ps;
	dato1(1) <= '0';
WAIT;
END PROCESS t_prcs_dato1_1;
-- dato1[0]
t_prcs_dato1_0: PROCESS
BEGIN
	dato1(0) <= '0';
WAIT;
END PROCESS t_prcs_dato1_0;
-- dato2[11]
t_prcs_dato2_11: PROCESS
BEGIN
	dato2(11) <= '0';
	WAIT FOR 50000 ps;
	dato2(11) <= '1';
	WAIT FOR 160000 ps;
	dato2(11) <= '0';
WAIT;
END PROCESS t_prcs_dato2_11;
-- dato2[10]
t_prcs_dato2_10: PROCESS
BEGIN
	dato2(10) <= '1';
	WAIT FOR 150000 ps;
	dato2(10) <= '0';
WAIT;
END PROCESS t_prcs_dato2_10;
-- dato2[9]
t_prcs_dato2_9: PROCESS
BEGIN
	dato2(9) <= '1';
	WAIT FOR 90000 ps;
	dato2(9) <= '0';
WAIT;
END PROCESS t_prcs_dato2_9;
-- dato2[8]
t_prcs_dato2_8: PROCESS
BEGIN
	dato2(8) <= '1';
	WAIT FOR 90000 ps;
	dato2(8) <= '0';
	WAIT FOR 120000 ps;
	dato2(8) <= '1';
	WAIT FOR 40000 ps;
	dato2(8) <= '0';
WAIT;
END PROCESS t_prcs_dato2_8;
-- dato2[7]
t_prcs_dato2_7: PROCESS
BEGIN
	dato2(7) <= '1';
	WAIT FOR 90000 ps;
	dato2(7) <= '0';
	WAIT FOR 120000 ps;
	dato2(7) <= '1';
	WAIT FOR 40000 ps;
	dato2(7) <= '0';
WAIT;
END PROCESS t_prcs_dato2_7;
-- dato2[6]
t_prcs_dato2_6: PROCESS
BEGIN
	dato2(6) <= '1';
	WAIT FOR 90000 ps;
	dato2(6) <= '0';
	WAIT FOR 120000 ps;
	dato2(6) <= '1';
	WAIT FOR 40000 ps;
	dato2(6) <= '0';
WAIT;
END PROCESS t_prcs_dato2_6;
-- dato2[5]
t_prcs_dato2_5: PROCESS
BEGIN
	dato2(5) <= '0';
	WAIT FOR 50000 ps;
	dato2(5) <= '1';
	WAIT FOR 40000 ps;
	dato2(5) <= '0';
	WAIT FOR 60000 ps;
	dato2(5) <= '1';
	WAIT FOR 100000 ps;
	dato2(5) <= '0';
WAIT;
END PROCESS t_prcs_dato2_5;
-- dato2[4]
t_prcs_dato2_4: PROCESS
BEGIN
	dato2(4) <= '1';
	WAIT FOR 250000 ps;
	dato2(4) <= '0';
WAIT;
END PROCESS t_prcs_dato2_4;
-- dato2[3]
t_prcs_dato2_3: PROCESS
BEGIN
	dato2(3) <= '0';
	WAIT FOR 90000 ps;
	dato2(3) <= '1';
	WAIT FOR 60000 ps;
	dato2(3) <= '0';
WAIT;
END PROCESS t_prcs_dato2_3;
-- dato2[2]
t_prcs_dato2_2: PROCESS
BEGIN
	dato2(2) <= '0';
	WAIT FOR 210000 ps;
	dato2(2) <= '1';
	WAIT FOR 40000 ps;
	dato2(2) <= '0';
WAIT;
END PROCESS t_prcs_dato2_2;
-- dato2[1]
t_prcs_dato2_1: PROCESS
BEGIN
	dato2(1) <= '0';
	WAIT FOR 50000 ps;
	dato2(1) <= '1';
	WAIT FOR 40000 ps;
	dato2(1) <= '0';
WAIT;
END PROCESS t_prcs_dato2_1;
-- dato2[0]
t_prcs_dato2_0: PROCESS
BEGIN
	dato2(0) <= '0';
WAIT;
END PROCESS t_prcs_dato2_0;

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

-- START
t_prcs_START: PROCESS
BEGIN
	START <= '0';
	WAIT FOR 40000 ps;
	START <= '1';
	WAIT FOR 20000 ps;
	START <= '0';
WAIT;
END PROCESS t_prcs_START;

-- CargarRam
t_prcs_CargarRam: PROCESS
BEGIN
	CargarRam <= '0';
	WAIT FOR 190000 ps;
	CargarRam <= '1';
	WAIT FOR 20000 ps;
	CargarRam <= '0';
WAIT;
END PROCESS t_prcs_CargarRam;

-- Consultar
t_prcs_Consultar: PROCESS
BEGIN
	Consultar <= '0';
WAIT;
END PROCESS t_prcs_Consultar;

-- FINALIZAR
t_prcs_FINALIZAR: PROCESS
BEGIN
	FINALIZAR <= '0';
WAIT;
END PROCESS t_prcs_FINALIZAR;
END PROYECTO_arch;
