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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 19.1.0 Build 670 09/22/2019 SJ Lite Edition"

-- DATE "08/24/2023 12:31:46"

-- 
-- Device: Altera 5CSXFC6D6F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	PROYECTO IS
    PORT (
	ERROR : OUT std_logic;
	Resetn : IN std_logic;
	clk : IN std_logic;
	START : IN std_logic;
	nivel_sensor : OUT std_logic_vector(6 DOWNTO 0);
	dato2 : IN std_logic_vector(11 DOWNTO 0);
	T_sensor : OUT std_logic_vector(6 DOWNTO 0);
	dato1 : IN std_logic_vector(11 DOWNTO 0);
	time_Actual : OUT std_logic_vector(4 DOWNTO 0);
	CargarRam : IN std_logic;
	Consultar : IN std_logic;
	FINALIZAR : IN std_logic;
	NO_LLENAR : OUT std_logic;
	ALARMA : OUT std_logic;
	VALVULA_ON : OUT std_logic;
	VALVULA_OFF : OUT std_logic;
	EVENTO : OUT std_logic;
	FIN : OUT std_logic;
	TEMP_ALTA : OUT std_logic;
	TEMP_BAJA : OUT std_logic;
	CARGADO : OUT std_logic;
	display1 : OUT std_logic_vector(6 DOWNTO 0);
	display2 : OUT std_logic_vector(6 DOWNTO 0);
	ESTADOS : OUT std_logic_vector(4 DOWNTO 0)
	);
END PROYECTO;

-- Design Ports Information
-- ERROR	=>  Location: PIN_AD19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nivel_sensor[6]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nivel_sensor[5]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nivel_sensor[4]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nivel_sensor[3]	=>  Location: PIN_AJ21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nivel_sensor[2]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nivel_sensor[1]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nivel_sensor[0]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T_sensor[6]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T_sensor[5]	=>  Location: PIN_AD25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T_sensor[4]	=>  Location: PIN_AG26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T_sensor[3]	=>  Location: PIN_AH28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T_sensor[2]	=>  Location: PIN_AK27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T_sensor[1]	=>  Location: PIN_AK29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T_sensor[0]	=>  Location: PIN_AG20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- time_Actual[4]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- time_Actual[3]	=>  Location: PIN_AK23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- time_Actual[2]	=>  Location: PIN_AJ24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- time_Actual[1]	=>  Location: PIN_AF24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- time_Actual[0]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NO_LLENAR	=>  Location: PIN_AD21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALARMA	=>  Location: PIN_AJ26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VALVULA_ON	=>  Location: PIN_AG25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VALVULA_OFF	=>  Location: PIN_AH25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EVENTO	=>  Location: PIN_AJ25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FIN	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TEMP_ALTA	=>  Location: PIN_AK28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TEMP_BAJA	=>  Location: PIN_AD20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CARGADO	=>  Location: PIN_AG27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display1[6]	=>  Location: PIN_AG23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display1[5]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display1[4]	=>  Location: PIN_AH22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display1[3]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display1[2]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display1[1]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display1[0]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display2[6]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display2[5]	=>  Location: PIN_AG22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display2[4]	=>  Location: PIN_AF20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display2[3]	=>  Location: PIN_AK22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display2[2]	=>  Location: PIN_AJ22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display2[1]	=>  Location: PIN_AH24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display2[0]	=>  Location: PIN_AK21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ESTADOS[4]	=>  Location: PIN_AE22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ESTADOS[3]	=>  Location: PIN_AK26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ESTADOS[2]	=>  Location: PIN_AK24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ESTADOS[1]	=>  Location: PIN_AC20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ESTADOS[0]	=>  Location: PIN_AE23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Resetn	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CargarRam	=>  Location: PIN_Y18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FINALIZAR	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Consultar	=>  Location: PIN_AH23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- START	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dato2[0]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dato2[1]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dato2[2]	=>  Location: PIN_AJ29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dato2[3]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dato2[4]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dato2[5]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dato2[6]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dato2[7]	=>  Location: PIN_AJ27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dato2[8]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dato2[9]	=>  Location: PIN_AH29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dato2[10]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dato2[11]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dato1[0]	=>  Location: PIN_AC23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dato1[1]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dato1[2]	=>  Location: PIN_AF26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dato1[3]	=>  Location: PIN_AE24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dato1[4]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dato1[5]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dato1[6]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dato1[7]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dato1[8]	=>  Location: PIN_AC22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dato1[9]	=>  Location: PIN_AH27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dato1[10]	=>  Location: PIN_AF25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dato1[11]	=>  Location: PIN_AF21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF PROYECTO IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_ERROR : std_logic;
SIGNAL ww_Resetn : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_START : std_logic;
SIGNAL ww_nivel_sensor : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_dato2 : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_T_sensor : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_dato1 : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_time_Actual : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_CargarRam : std_logic;
SIGNAL ww_Consultar : std_logic;
SIGNAL ww_FINALIZAR : std_logic;
SIGNAL ww_NO_LLENAR : std_logic;
SIGNAL ww_ALARMA : std_logic;
SIGNAL ww_VALVULA_ON : std_logic;
SIGNAL ww_VALVULA_OFF : std_logic;
SIGNAL ww_EVENTO : std_logic;
SIGNAL ww_FIN : std_logic;
SIGNAL ww_TEMP_ALTA : std_logic;
SIGNAL ww_TEMP_BAJA : std_logic;
SIGNAL ww_CARGADO : std_logic;
SIGNAL ww_display1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_display2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_ESTADOS : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst100|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \inst100|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst100|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \inst25|Mult0~8_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst25|Mult0~8_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst25|Mult0~8_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst25|Mult0~8_AX_bus\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \inst25|Mult0~8_AY_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst25|Mult0~8_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \inst24|Mult0~8_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst24|Mult0~8_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst24|Mult0~8_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst24|Mult0~8_AX_bus\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \inst24|Mult0~8_AY_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst24|Mult0~8_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \inst25|Mult0~8_resulta\ : std_logic;
SIGNAL \inst25|Mult0~9\ : std_logic;
SIGNAL \inst25|Mult0~10\ : std_logic;
SIGNAL \inst25|Mult0~11\ : std_logic;
SIGNAL \inst25|Mult0~12\ : std_logic;
SIGNAL \inst25|Mult0~13\ : std_logic;
SIGNAL \inst25|Mult0~14\ : std_logic;
SIGNAL \inst25|Mult0~15\ : std_logic;
SIGNAL \inst25|Mult0~16\ : std_logic;
SIGNAL \inst25|Mult0~17\ : std_logic;
SIGNAL \inst25|Mult0~18\ : std_logic;
SIGNAL \inst25|Mult0~19\ : std_logic;
SIGNAL \inst25|Mult0~27\ : std_logic;
SIGNAL \inst25|Mult0~28\ : std_logic;
SIGNAL \inst25|Mult0~29\ : std_logic;
SIGNAL \inst25|Mult0~30\ : std_logic;
SIGNAL \inst25|Mult0~31\ : std_logic;
SIGNAL \inst25|Mult0~32\ : std_logic;
SIGNAL \inst25|Mult0~33\ : std_logic;
SIGNAL \inst25|Mult0~34\ : std_logic;
SIGNAL \inst25|Mult0~35\ : std_logic;
SIGNAL \inst25|Mult0~36\ : std_logic;
SIGNAL \inst25|Mult0~37\ : std_logic;
SIGNAL \inst25|Mult0~38\ : std_logic;
SIGNAL \inst25|Mult0~39\ : std_logic;
SIGNAL \inst25|Mult0~40\ : std_logic;
SIGNAL \inst25|Mult0~41\ : std_logic;
SIGNAL \inst25|Mult0~42\ : std_logic;
SIGNAL \inst25|Mult0~43\ : std_logic;
SIGNAL \inst25|Mult0~44\ : std_logic;
SIGNAL \inst25|Mult0~45\ : std_logic;
SIGNAL \inst25|Mult0~46\ : std_logic;
SIGNAL \inst25|Mult0~47\ : std_logic;
SIGNAL \inst25|Mult0~48\ : std_logic;
SIGNAL \inst25|Mult0~49\ : std_logic;
SIGNAL \inst25|Mult0~50\ : std_logic;
SIGNAL \inst25|Mult0~51\ : std_logic;
SIGNAL \inst25|Mult0~52\ : std_logic;
SIGNAL \inst25|Mult0~53\ : std_logic;
SIGNAL \inst25|Mult0~54\ : std_logic;
SIGNAL \inst25|Mult0~55\ : std_logic;
SIGNAL \inst25|Mult0~56\ : std_logic;
SIGNAL \inst25|Mult0~57\ : std_logic;
SIGNAL \inst25|Mult0~58\ : std_logic;
SIGNAL \inst25|Mult0~59\ : std_logic;
SIGNAL \inst25|Mult0~60\ : std_logic;
SIGNAL \inst25|Mult0~61\ : std_logic;
SIGNAL \inst25|Mult0~62\ : std_logic;
SIGNAL \inst25|Mult0~63\ : std_logic;
SIGNAL \inst25|Mult0~64\ : std_logic;
SIGNAL \inst25|Mult0~65\ : std_logic;
SIGNAL \inst25|Mult0~66\ : std_logic;
SIGNAL \inst25|Mult0~67\ : std_logic;
SIGNAL \inst25|Mult0~68\ : std_logic;
SIGNAL \inst25|Mult0~69\ : std_logic;
SIGNAL \inst25|Mult0~70\ : std_logic;
SIGNAL \inst25|Mult0~71\ : std_logic;
SIGNAL \inst24|Mult0~8_resulta\ : std_logic;
SIGNAL \inst24|Mult0~9\ : std_logic;
SIGNAL \inst24|Mult0~10\ : std_logic;
SIGNAL \inst24|Mult0~11\ : std_logic;
SIGNAL \inst24|Mult0~12\ : std_logic;
SIGNAL \inst24|Mult0~13\ : std_logic;
SIGNAL \inst24|Mult0~14\ : std_logic;
SIGNAL \inst24|Mult0~15\ : std_logic;
SIGNAL \inst24|Mult0~16\ : std_logic;
SIGNAL \inst24|Mult0~17\ : std_logic;
SIGNAL \inst24|Mult0~18\ : std_logic;
SIGNAL \inst24|Mult0~19\ : std_logic;
SIGNAL \inst24|Mult0~27\ : std_logic;
SIGNAL \inst24|Mult0~28\ : std_logic;
SIGNAL \inst24|Mult0~29\ : std_logic;
SIGNAL \inst24|Mult0~30\ : std_logic;
SIGNAL \inst24|Mult0~31\ : std_logic;
SIGNAL \inst24|Mult0~32\ : std_logic;
SIGNAL \inst24|Mult0~33\ : std_logic;
SIGNAL \inst24|Mult0~34\ : std_logic;
SIGNAL \inst24|Mult0~35\ : std_logic;
SIGNAL \inst24|Mult0~36\ : std_logic;
SIGNAL \inst24|Mult0~37\ : std_logic;
SIGNAL \inst24|Mult0~38\ : std_logic;
SIGNAL \inst24|Mult0~39\ : std_logic;
SIGNAL \inst24|Mult0~40\ : std_logic;
SIGNAL \inst24|Mult0~41\ : std_logic;
SIGNAL \inst24|Mult0~42\ : std_logic;
SIGNAL \inst24|Mult0~43\ : std_logic;
SIGNAL \inst24|Mult0~44\ : std_logic;
SIGNAL \inst24|Mult0~45\ : std_logic;
SIGNAL \inst24|Mult0~46\ : std_logic;
SIGNAL \inst24|Mult0~47\ : std_logic;
SIGNAL \inst24|Mult0~48\ : std_logic;
SIGNAL \inst24|Mult0~49\ : std_logic;
SIGNAL \inst24|Mult0~50\ : std_logic;
SIGNAL \inst24|Mult0~51\ : std_logic;
SIGNAL \inst24|Mult0~52\ : std_logic;
SIGNAL \inst24|Mult0~53\ : std_logic;
SIGNAL \inst24|Mult0~54\ : std_logic;
SIGNAL \inst24|Mult0~55\ : std_logic;
SIGNAL \inst24|Mult0~56\ : std_logic;
SIGNAL \inst24|Mult0~57\ : std_logic;
SIGNAL \inst24|Mult0~58\ : std_logic;
SIGNAL \inst24|Mult0~59\ : std_logic;
SIGNAL \inst24|Mult0~60\ : std_logic;
SIGNAL \inst24|Mult0~61\ : std_logic;
SIGNAL \inst24|Mult0~62\ : std_logic;
SIGNAL \inst24|Mult0~63\ : std_logic;
SIGNAL \inst24|Mult0~64\ : std_logic;
SIGNAL \inst24|Mult0~65\ : std_logic;
SIGNAL \inst24|Mult0~66\ : std_logic;
SIGNAL \inst24|Mult0~67\ : std_logic;
SIGNAL \inst24|Mult0~68\ : std_logic;
SIGNAL \inst24|Mult0~69\ : std_logic;
SIGNAL \inst24|Mult0~70\ : std_logic;
SIGNAL \inst24|Mult0~71\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \Resetn~input_o\ : std_logic;
SIGNAL \Consultar~input_o\ : std_logic;
SIGNAL \START~input_o\ : std_logic;
SIGNAL \FINALIZAR~input_o\ : std_logic;
SIGNAL \inst23|temp~3_combout\ : std_logic;
SIGNAL \inst23|temp[0]~DUPLICATE_q\ : std_logic;
SIGNAL \inst27|y.TAN~DUPLICATE_q\ : std_logic;
SIGNAL \inst27|y~33_combout\ : std_logic;
SIGNAL \inst27|y.TAO~DUPLICATE_q\ : std_logic;
SIGNAL \inst23|temp~0_combout\ : std_logic;
SIGNAL \inst23|temp[3]~DUPLICATE_q\ : std_logic;
SIGNAL \inst27|y~35_combout\ : std_logic;
SIGNAL \inst27|y.TAR~q\ : std_logic;
SIGNAL \inst27|y~41_combout\ : std_logic;
SIGNAL \inst27|y.TAB~q\ : std_logic;
SIGNAL \dato1[0]~input_o\ : std_logic;
SIGNAL \dato1[1]~input_o\ : std_logic;
SIGNAL \dato1[2]~input_o\ : std_logic;
SIGNAL \dato1[3]~input_o\ : std_logic;
SIGNAL \dato1[4]~input_o\ : std_logic;
SIGNAL \dato1[5]~input_o\ : std_logic;
SIGNAL \dato1[6]~input_o\ : std_logic;
SIGNAL \dato1[7]~input_o\ : std_logic;
SIGNAL \dato1[8]~input_o\ : std_logic;
SIGNAL \dato1[9]~input_o\ : std_logic;
SIGNAL \dato1[10]~input_o\ : std_logic;
SIGNAL \dato1[11]~input_o\ : std_logic;
SIGNAL \inst27|mss_transiciones~1_combout\ : std_logic;
SIGNAL \dato2[0]~input_o\ : std_logic;
SIGNAL \dato2[1]~input_o\ : std_logic;
SIGNAL \dato2[2]~input_o\ : std_logic;
SIGNAL \dato2[3]~input_o\ : std_logic;
SIGNAL \dato2[4]~input_o\ : std_logic;
SIGNAL \dato2[5]~input_o\ : std_logic;
SIGNAL \dato2[6]~input_o\ : std_logic;
SIGNAL \dato2[7]~input_o\ : std_logic;
SIGNAL \dato2[8]~input_o\ : std_logic;
SIGNAL \dato2[9]~input_o\ : std_logic;
SIGNAL \dato2[10]~input_o\ : std_logic;
SIGNAL \dato2[11]~input_o\ : std_logic;
SIGNAL \inst103|q[3]~feeder_combout\ : std_logic;
SIGNAL \inst103|q[2]~feeder_combout\ : std_logic;
SIGNAL \inst103|q[5]~feeder_combout\ : std_logic;
SIGNAL \inst103|q[4]~feeder_combout\ : std_logic;
SIGNAL \inst11|LessThan0~0_combout\ : std_logic;
SIGNAL \inst103|q[0]~feeder_combout\ : std_logic;
SIGNAL \inst27|y~28_combout\ : std_logic;
SIGNAL \inst27|y.TAF~q\ : std_logic;
SIGNAL \inst27|Selector2~0_combout\ : std_logic;
SIGNAL \inst27|y.TAG~q\ : std_logic;
SIGNAL \inst27|y.TAM~q\ : std_logic;
SIGNAL \inst27|mss_transiciones~0_combout\ : std_logic;
SIGNAL \inst27|Selector5~0_combout\ : std_logic;
SIGNAL \inst27|y.TAS~q\ : std_logic;
SIGNAL \inst27|y~31_combout\ : std_logic;
SIGNAL \inst27|y.TAU~q\ : std_logic;
SIGNAL \inst27|y~30_combout\ : std_logic;
SIGNAL \inst27|y.TAT~q\ : std_logic;
SIGNAL \inst27|y~36_combout\ : std_logic;
SIGNAL \inst27|y.TAV~q\ : std_logic;
SIGNAL \inst27|y~40_combout\ : std_logic;
SIGNAL \inst27|y.TAD~q\ : std_logic;
SIGNAL \inst27|EnH~0_combout\ : std_logic;
SIGNAL \inst19|temp~4_combout\ : std_logic;
SIGNAL \inst19|temp[1]~DUPLICATE_q\ : std_logic;
SIGNAL \inst19|temp[0]~DUPLICATE_q\ : std_logic;
SIGNAL \inst19|temp~2_combout\ : std_logic;
SIGNAL \inst19|temp~1_combout\ : std_logic;
SIGNAL \inst19|temp[3]~DUPLICATE_q\ : std_logic;
SIGNAL \inst19|temp[2]~DUPLICATE_q\ : std_logic;
SIGNAL \inst27|y~39_combout\ : std_logic;
SIGNAL \inst27|y.TAE~q\ : std_logic;
SIGNAL \inst27|Selector1~0_combout\ : std_logic;
SIGNAL \inst27|Selector1~3_combout\ : std_logic;
SIGNAL \inst27|y.TAD~DUPLICATE_q\ : std_logic;
SIGNAL \inst27|Selector1~2_combout\ : std_logic;
SIGNAL \inst27|y~29_combout\ : std_logic;
SIGNAL \inst27|y.TAH~q\ : std_logic;
SIGNAL \inst27|y~27_combout\ : std_logic;
SIGNAL \inst27|y.TAI~DUPLICATE_q\ : std_logic;
SIGNAL \inst27|Alarma~combout\ : std_logic;
SIGNAL \inst27|y.TAJ~q\ : std_logic;
SIGNAL \inst27|Selector1~1_combout\ : std_logic;
SIGNAL \inst27|Selector1~4_combout\ : std_logic;
SIGNAL \inst27|y.TAC~q\ : std_logic;
SIGNAL \inst19|temp~3_combout\ : std_logic;
SIGNAL \inst19|temp~0_combout\ : std_logic;
SIGNAL \inst19|temp[4]~DUPLICATE_q\ : std_logic;
SIGNAL \inst104|q[4]~DUPLICATE_q\ : std_logic;
SIGNAL \inst27|y~32_combout\ : std_logic;
SIGNAL \inst27|y.TAW~q\ : std_logic;
SIGNAL \inst27|Selector0~0_combout\ : std_logic;
SIGNAL \inst27|y.TAA~q\ : std_logic;
SIGNAL \inst23|temp~1_combout\ : std_logic;
SIGNAL \inst23|temp[2]~DUPLICATE_q\ : std_logic;
SIGNAL \inst27|y.TAO~q\ : std_logic;
SIGNAL \inst27|y~34_combout\ : std_logic;
SIGNAL \inst27|y.TAQ~q\ : std_logic;
SIGNAL \inst26|AND_result~combout\ : std_logic;
SIGNAL \inst27|Selector4~0_combout\ : std_logic;
SIGNAL \inst27|y.TAP~q\ : std_logic;
SIGNAL \inst27|y.TAM~DUPLICATE_q\ : std_logic;
SIGNAL \inst27|WideOr11~combout\ : std_logic;
SIGNAL \CargarRam~input_o\ : std_logic;
SIGNAL \inst27|Selector3~0_combout\ : std_logic;
SIGNAL \inst27|y.TAK~q\ : std_logic;
SIGNAL \inst27|y~37_combout\ : std_logic;
SIGNAL \inst27|y.TAN~q\ : std_logic;
SIGNAL \inst23|temp~2_combout\ : std_logic;
SIGNAL \inst23|temp[1]~DUPLICATE_q\ : std_logic;
SIGNAL \inst27|y~38_combout\ : std_logic;
SIGNAL \inst27|y.TAL~q\ : std_logic;
SIGNAL \inst104|q[0]~feeder_combout\ : std_logic;
SIGNAL \inst104|q[1]~DUPLICATE_q\ : std_logic;
SIGNAL \inst34|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~18\ : std_logic;
SIGNAL \inst34|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~19\ : std_logic;
SIGNAL \inst34|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~14\ : std_logic;
SIGNAL \inst34|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~15\ : std_logic;
SIGNAL \inst34|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~10\ : std_logic;
SIGNAL \inst34|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~11\ : std_logic;
SIGNAL \inst34|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~6\ : std_logic;
SIGNAL \inst34|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\ : std_logic;
SIGNAL \inst34|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ : std_logic;
SIGNAL \inst34|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5_sumout\ : std_logic;
SIGNAL \inst34|Div0|auto_generated|divider|divider|StageOut[18]~0_combout\ : std_logic;
SIGNAL \inst34|Div0|auto_generated|divider|divider|StageOut[18]~1_combout\ : std_logic;
SIGNAL \inst34|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~9_sumout\ : std_logic;
SIGNAL \inst34|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~13_sumout\ : std_logic;
SIGNAL \inst34|Div0|auto_generated|divider|divider|StageOut[16]~2_combout\ : std_logic;
SIGNAL \inst34|Div0|auto_generated|divider|divider|StageOut[16]~3_combout\ : std_logic;
SIGNAL \inst34|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~17_sumout\ : std_logic;
SIGNAL \inst34|Div0|auto_generated|divider|divider|op_5~26_cout\ : std_logic;
SIGNAL \inst34|Div0|auto_generated|divider|divider|op_5~22_cout\ : std_logic;
SIGNAL \inst34|Div0|auto_generated|divider|divider|op_5~18_cout\ : std_logic;
SIGNAL \inst34|Div0|auto_generated|divider|divider|op_5~14_cout\ : std_logic;
SIGNAL \inst34|Div0|auto_generated|divider|divider|op_5~10_cout\ : std_logic;
SIGNAL \inst34|Div0|auto_generated|divider|divider|op_5~6_cout\ : std_logic;
SIGNAL \inst34|Div0|auto_generated|divider|divider|op_5~1_sumout\ : std_logic;
SIGNAL \inst30|Mux1~0_combout\ : std_logic;
SIGNAL \inst30|Mux6~0_combout\ : std_logic;
SIGNAL \inst34|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~14\ : std_logic;
SIGNAL \inst34|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~15\ : std_logic;
SIGNAL \inst34|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~10\ : std_logic;
SIGNAL \inst34|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~11\ : std_logic;
SIGNAL \inst34|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~6\ : std_logic;
SIGNAL \inst34|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~7\ : std_logic;
SIGNAL \inst34|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~18\ : std_logic;
SIGNAL \inst34|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~19\ : std_logic;
SIGNAL \inst34|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ : std_logic;
SIGNAL \inst34|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~17_sumout\ : std_logic;
SIGNAL \inst34|Mod0|auto_generated|divider|divider|StageOut[18]~6_combout\ : std_logic;
SIGNAL \inst34|Mod0|auto_generated|divider|divider|StageOut[18]~7_combout\ : std_logic;
SIGNAL \inst34|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_sumout\ : std_logic;
SIGNAL \inst34|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~9_sumout\ : std_logic;
SIGNAL \inst34|Mod0|auto_generated|divider|divider|StageOut[16]~1_combout\ : std_logic;
SIGNAL \inst34|Mod0|auto_generated|divider|divider|StageOut[16]~2_combout\ : std_logic;
SIGNAL \inst34|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~13_sumout\ : std_logic;
SIGNAL \inst34|Mod0|auto_generated|divider|divider|op_5~26_cout\ : std_logic;
SIGNAL \inst34|Mod0|auto_generated|divider|divider|op_5~18\ : std_logic;
SIGNAL \inst34|Mod0|auto_generated|divider|divider|op_5~14\ : std_logic;
SIGNAL \inst34|Mod0|auto_generated|divider|divider|op_5~10\ : std_logic;
SIGNAL \inst34|Mod0|auto_generated|divider|divider|op_5~2\ : std_logic;
SIGNAL \inst34|Mod0|auto_generated|divider|divider|op_5~22_cout\ : std_logic;
SIGNAL \inst34|Mod0|auto_generated|divider|divider|op_5~5_sumout\ : std_logic;
SIGNAL \inst34|Mod0|auto_generated|divider|divider|op_5~1_sumout\ : std_logic;
SIGNAL \inst34|Mod0|auto_generated|divider|divider|StageOut[23]~0_combout\ : std_logic;
SIGNAL \inst34|Mod0|auto_generated|divider|divider|op_5~13_sumout\ : std_logic;
SIGNAL \inst34|Mod0|auto_generated|divider|divider|StageOut[21]~4_combout\ : std_logic;
SIGNAL \inst34|Mod0|auto_generated|divider|divider|op_5~17_sumout\ : std_logic;
SIGNAL \inst34|Mod0|auto_generated|divider|divider|StageOut[20]~5_combout\ : std_logic;
SIGNAL \inst34|Mod0|auto_generated|divider|divider|op_5~9_sumout\ : std_logic;
SIGNAL \inst34|Mod0|auto_generated|divider|divider|StageOut[22]~3_combout\ : std_logic;
SIGNAL \inst29|Mux0~0_combout\ : std_logic;
SIGNAL \inst29|Mux1~0_combout\ : std_logic;
SIGNAL \inst29|Mux2~0_combout\ : std_logic;
SIGNAL \inst29|Mux3~0_combout\ : std_logic;
SIGNAL \inst29|Mux4~0_combout\ : std_logic;
SIGNAL \inst29|Mux5~0_combout\ : std_logic;
SIGNAL \inst29|Mux6~0_combout\ : std_logic;
SIGNAL \inst27|y.TAF~DUPLICATE_q\ : std_logic;
SIGNAL \inst27|y.TAI~q\ : std_logic;
SIGNAL \inst27|WideOr12~combout\ : std_logic;
SIGNAL \inst27|WideOr6~0_combout\ : std_logic;
SIGNAL \inst27|WideOr6~combout\ : std_logic;
SIGNAL \inst27|WideOr7~0_combout\ : std_logic;
SIGNAL \inst27|WideOr7~combout\ : std_logic;
SIGNAL \inst27|WideOr8~0_combout\ : std_logic;
SIGNAL \inst27|WideOr8~1_combout\ : std_logic;
SIGNAL \inst27|WideOr8~combout\ : std_logic;
SIGNAL \inst27|WideOr9~combout\ : std_logic;
SIGNAL \inst27|WideOr10~0_combout\ : std_logic;
SIGNAL \inst27|WideOr10~combout\ : std_logic;
SIGNAL \inst25|mapped_value\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \inst100|altsyncram_component|auto_generated|q_a\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst104|q\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst102|q\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \inst24|mapped_value\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \inst103|q\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \inst19|temp\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst23|temp\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst25|ALT_INV_mapped_value\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst34|Mod0|auto_generated|divider|divider|ALT_INV_op_5~17_sumout\ : std_logic;
SIGNAL \inst100|altsyncram_component|auto_generated|ALT_INV_q_a\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst34|Mod0|auto_generated|divider|divider|ALT_INV_op_5~13_sumout\ : std_logic;
SIGNAL \inst34|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[0]~13_sumout\ : std_logic;
SIGNAL \inst34|Mod0|auto_generated|divider|divider|ALT_INV_op_5~9_sumout\ : std_logic;
SIGNAL \inst34|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[1]~9_sumout\ : std_logic;
SIGNAL \inst34|Mod0|auto_generated|divider|divider|ALT_INV_op_5~5_sumout\ : std_logic;
SIGNAL \inst34|Mod0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\ : std_logic;
SIGNAL \inst34|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[2]~5_sumout\ : std_logic;
SIGNAL \inst34|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\ : std_logic;
SIGNAL \inst34|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\ : std_logic;
SIGNAL \inst34|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\ : std_logic;
SIGNAL \inst34|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[1]~13_sumout\ : std_logic;
SIGNAL \inst34|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[2]~9_sumout\ : std_logic;
SIGNAL \inst34|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[3]~17_sumout\ : std_logic;
SIGNAL \inst34|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[3]~5_sumout\ : std_logic;
SIGNAL \inst27|ALT_INV_y.TAA~q\ : std_logic;
SIGNAL \inst27|ALT_INV_Selector1~3_combout\ : std_logic;
SIGNAL \inst27|ALT_INV_Selector1~2_combout\ : std_logic;
SIGNAL \inst27|ALT_INV_Selector1~1_combout\ : std_logic;
SIGNAL \inst34|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[20]~5_combout\ : std_logic;
SIGNAL \inst34|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[21]~4_combout\ : std_logic;
SIGNAL \inst34|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[22]~3_combout\ : std_logic;
SIGNAL \inst34|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[16]~2_combout\ : std_logic;
SIGNAL \inst34|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[16]~1_combout\ : std_logic;
SIGNAL \inst34|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[23]~0_combout\ : std_logic;
SIGNAL \inst26|ALT_INV_AND_result~combout\ : std_logic;
SIGNAL \inst23|ALT_INV_temp\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst27|ALT_INV_Selector1~0_combout\ : std_logic;
SIGNAL \inst19|ALT_INV_temp\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst11|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \inst27|ALT_INV_mss_transiciones~1_combout\ : std_logic;
SIGNAL \inst27|ALT_INV_mss_transiciones~0_combout\ : std_logic;
SIGNAL \inst27|ALT_INV_WideOr10~0_combout\ : std_logic;
SIGNAL \inst27|ALT_INV_y.TAB~q\ : std_logic;
SIGNAL \inst27|ALT_INV_EnH~0_combout\ : std_logic;
SIGNAL \inst27|ALT_INV_y.TAD~q\ : std_logic;
SIGNAL \inst27|ALT_INV_y.TAC~q\ : std_logic;
SIGNAL \inst27|ALT_INV_WideOr8~1_combout\ : std_logic;
SIGNAL \inst27|ALT_INV_y.TAG~q\ : std_logic;
SIGNAL \inst27|ALT_INV_y.TAE~q\ : std_logic;
SIGNAL \inst27|ALT_INV_WideOr8~0_combout\ : std_logic;
SIGNAL \inst27|ALT_INV_WideOr7~0_combout\ : std_logic;
SIGNAL \inst27|ALT_INV_y.TAP~q\ : std_logic;
SIGNAL \inst27|ALT_INV_y.TAL~q\ : std_logic;
SIGNAL \inst27|ALT_INV_y.TAN~q\ : std_logic;
SIGNAL \inst27|ALT_INV_y.TAM~q\ : std_logic;
SIGNAL \inst27|ALT_INV_y.TAJ~q\ : std_logic;
SIGNAL \inst27|ALT_INV_WideOr6~0_combout\ : std_logic;
SIGNAL \inst27|ALT_INV_y.TAS~q\ : std_logic;
SIGNAL \inst27|ALT_INV_y.TAV~q\ : std_logic;
SIGNAL \inst27|ALT_INV_y.TAR~q\ : std_logic;
SIGNAL \inst27|ALT_INV_y.TAQ~q\ : std_logic;
SIGNAL \inst27|ALT_INV_y.TAO~q\ : std_logic;
SIGNAL \inst27|ALT_INV_y.TAW~q\ : std_logic;
SIGNAL \inst27|ALT_INV_y.TAK~q\ : std_logic;
SIGNAL \inst27|ALT_INV_y.TAU~q\ : std_logic;
SIGNAL \inst27|ALT_INV_y.TAT~q\ : std_logic;
SIGNAL \inst104|ALT_INV_q\ : std_logic_vector(4 DOWNTO 1);
SIGNAL \inst102|ALT_INV_q\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \inst103|ALT_INV_q\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \inst27|ALT_INV_y.TAH~q\ : std_logic;
SIGNAL \inst27|ALT_INV_y.TAF~q\ : std_logic;
SIGNAL \inst27|ALT_INV_y.TAI~q\ : std_logic;
SIGNAL \inst34|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[0]~17_sumout\ : std_logic;
SIGNAL \inst23|ALT_INV_temp[0]~DUPLICATE_q\ : std_logic;
SIGNAL \inst23|ALT_INV_temp[1]~DUPLICATE_q\ : std_logic;
SIGNAL \inst23|ALT_INV_temp[2]~DUPLICATE_q\ : std_logic;
SIGNAL \inst23|ALT_INV_temp[3]~DUPLICATE_q\ : std_logic;
SIGNAL \inst19|ALT_INV_temp[0]~DUPLICATE_q\ : std_logic;
SIGNAL \inst19|ALT_INV_temp[1]~DUPLICATE_q\ : std_logic;
SIGNAL \inst19|ALT_INV_temp[2]~DUPLICATE_q\ : std_logic;
SIGNAL \inst19|ALT_INV_temp[3]~DUPLICATE_q\ : std_logic;
SIGNAL \inst19|ALT_INV_temp[4]~DUPLICATE_q\ : std_logic;
SIGNAL \inst27|ALT_INV_y.TAD~DUPLICATE_q\ : std_logic;
SIGNAL \inst27|ALT_INV_y.TAN~DUPLICATE_q\ : std_logic;
SIGNAL \inst27|ALT_INV_y.TAM~DUPLICATE_q\ : std_logic;
SIGNAL \inst27|ALT_INV_y.TAO~DUPLICATE_q\ : std_logic;
SIGNAL \inst104|ALT_INV_q[4]~DUPLICATE_q\ : std_logic;
SIGNAL \inst27|ALT_INV_y.TAF~DUPLICATE_q\ : std_logic;
SIGNAL \inst27|ALT_INV_y.TAI~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_START~input_o\ : std_logic;
SIGNAL \ALT_INV_Consultar~input_o\ : std_logic;
SIGNAL \ALT_INV_FINALIZAR~input_o\ : std_logic;
SIGNAL \ALT_INV_CargarRam~input_o\ : std_logic;
SIGNAL \inst34|Div0|auto_generated|divider|divider|ALT_INV_StageOut[16]~3_combout\ : std_logic;
SIGNAL \inst34|Div0|auto_generated|divider|divider|ALT_INV_StageOut[16]~2_combout\ : std_logic;
SIGNAL \inst34|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[18]~7_combout\ : std_logic;
SIGNAL \inst34|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[18]~6_combout\ : std_logic;
SIGNAL \inst34|Div0|auto_generated|divider|divider|ALT_INV_StageOut[18]~1_combout\ : std_logic;
SIGNAL \inst34|Div0|auto_generated|divider|divider|ALT_INV_StageOut[18]~0_combout\ : std_logic;

BEGIN

ERROR <= ww_ERROR;
ww_Resetn <= Resetn;
ww_clk <= clk;
ww_START <= START;
nivel_sensor <= ww_nivel_sensor;
ww_dato2 <= dato2;
T_sensor <= ww_T_sensor;
ww_dato1 <= dato1;
time_Actual <= ww_time_Actual;
ww_CargarRam <= CargarRam;
ww_Consultar <= Consultar;
ww_FINALIZAR <= FINALIZAR;
NO_LLENAR <= ww_NO_LLENAR;
ALARMA <= ww_ALARMA;
VALVULA_ON <= ww_VALVULA_ON;
VALVULA_OFF <= ww_VALVULA_OFF;
EVENTO <= ww_EVENTO;
FIN <= ww_FIN;
TEMP_ALTA <= ww_TEMP_ALTA;
TEMP_BAJA <= ww_TEMP_BAJA;
CARGADO <= ww_CARGADO;
display1 <= ww_display1;
display2 <= ww_display2;
ESTADOS <= ww_ESTADOS;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst100|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \inst104|q[4]~DUPLICATE_q\ & \inst104|q\(3) & \inst104|q\(2) & 
\inst104|q[1]~DUPLICATE_q\ & \inst104|q\(0));

\inst100|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\inst23|temp\(3) & \inst23|temp[2]~DUPLICATE_q\ & \inst23|temp[1]~DUPLICATE_q\ & \inst23|temp[0]~DUPLICATE_q\);

\inst100|altsyncram_component|auto_generated|q_a\(0) <= \inst100|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\inst100|altsyncram_component|auto_generated|q_a\(1) <= \inst100|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\inst100|altsyncram_component|auto_generated|q_a\(2) <= \inst100|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\inst100|altsyncram_component|auto_generated|q_a\(3) <= \inst100|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\inst100|altsyncram_component|auto_generated|q_a\(4) <= \inst100|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);

\inst25|Mult0~8_ACLR_bus\ <= (gnd & gnd);

\inst25|Mult0~8_CLK_bus\ <= (gnd & gnd & \clk~inputCLKENA0_outclk\);

\inst25|Mult0~8_ENA_bus\ <= (vcc & vcc & vcc);

\inst25|Mult0~8_AX_bus\ <= (vcc & gnd & gnd & gnd & vcc & vcc & gnd);

\inst25|Mult0~8_AY_bus\ <= (\dato2[11]~input_o\ & \dato2[10]~input_o\ & \dato2[9]~input_o\ & \dato2[8]~input_o\ & \dato2[7]~input_o\ & \dato2[6]~input_o\ & \dato2[5]~input_o\ & \dato2[4]~input_o\ & \dato2[3]~input_o\ & \dato2[2]~input_o\ & 
\dato2[1]~input_o\ & \dato2[0]~input_o\);

\inst25|Mult0~8_resulta\ <= \inst25|Mult0~8_RESULTA_bus\(0);
\inst25|Mult0~9\ <= \inst25|Mult0~8_RESULTA_bus\(1);
\inst25|Mult0~10\ <= \inst25|Mult0~8_RESULTA_bus\(2);
\inst25|Mult0~11\ <= \inst25|Mult0~8_RESULTA_bus\(3);
\inst25|Mult0~12\ <= \inst25|Mult0~8_RESULTA_bus\(4);
\inst25|Mult0~13\ <= \inst25|Mult0~8_RESULTA_bus\(5);
\inst25|Mult0~14\ <= \inst25|Mult0~8_RESULTA_bus\(6);
\inst25|Mult0~15\ <= \inst25|Mult0~8_RESULTA_bus\(7);
\inst25|Mult0~16\ <= \inst25|Mult0~8_RESULTA_bus\(8);
\inst25|Mult0~17\ <= \inst25|Mult0~8_RESULTA_bus\(9);
\inst25|Mult0~18\ <= \inst25|Mult0~8_RESULTA_bus\(10);
\inst25|Mult0~19\ <= \inst25|Mult0~8_RESULTA_bus\(11);
\inst25|mapped_value\(0) <= \inst25|Mult0~8_RESULTA_bus\(12);
\inst25|mapped_value\(1) <= \inst25|Mult0~8_RESULTA_bus\(13);
\inst25|mapped_value\(2) <= \inst25|Mult0~8_RESULTA_bus\(14);
\inst25|mapped_value\(3) <= \inst25|Mult0~8_RESULTA_bus\(15);
\inst25|mapped_value\(4) <= \inst25|Mult0~8_RESULTA_bus\(16);
\inst25|mapped_value\(5) <= \inst25|Mult0~8_RESULTA_bus\(17);
\inst25|mapped_value\(6) <= \inst25|Mult0~8_RESULTA_bus\(18);
\inst25|Mult0~27\ <= \inst25|Mult0~8_RESULTA_bus\(19);
\inst25|Mult0~28\ <= \inst25|Mult0~8_RESULTA_bus\(20);
\inst25|Mult0~29\ <= \inst25|Mult0~8_RESULTA_bus\(21);
\inst25|Mult0~30\ <= \inst25|Mult0~8_RESULTA_bus\(22);
\inst25|Mult0~31\ <= \inst25|Mult0~8_RESULTA_bus\(23);
\inst25|Mult0~32\ <= \inst25|Mult0~8_RESULTA_bus\(24);
\inst25|Mult0~33\ <= \inst25|Mult0~8_RESULTA_bus\(25);
\inst25|Mult0~34\ <= \inst25|Mult0~8_RESULTA_bus\(26);
\inst25|Mult0~35\ <= \inst25|Mult0~8_RESULTA_bus\(27);
\inst25|Mult0~36\ <= \inst25|Mult0~8_RESULTA_bus\(28);
\inst25|Mult0~37\ <= \inst25|Mult0~8_RESULTA_bus\(29);
\inst25|Mult0~38\ <= \inst25|Mult0~8_RESULTA_bus\(30);
\inst25|Mult0~39\ <= \inst25|Mult0~8_RESULTA_bus\(31);
\inst25|Mult0~40\ <= \inst25|Mult0~8_RESULTA_bus\(32);
\inst25|Mult0~41\ <= \inst25|Mult0~8_RESULTA_bus\(33);
\inst25|Mult0~42\ <= \inst25|Mult0~8_RESULTA_bus\(34);
\inst25|Mult0~43\ <= \inst25|Mult0~8_RESULTA_bus\(35);
\inst25|Mult0~44\ <= \inst25|Mult0~8_RESULTA_bus\(36);
\inst25|Mult0~45\ <= \inst25|Mult0~8_RESULTA_bus\(37);
\inst25|Mult0~46\ <= \inst25|Mult0~8_RESULTA_bus\(38);
\inst25|Mult0~47\ <= \inst25|Mult0~8_RESULTA_bus\(39);
\inst25|Mult0~48\ <= \inst25|Mult0~8_RESULTA_bus\(40);
\inst25|Mult0~49\ <= \inst25|Mult0~8_RESULTA_bus\(41);
\inst25|Mult0~50\ <= \inst25|Mult0~8_RESULTA_bus\(42);
\inst25|Mult0~51\ <= \inst25|Mult0~8_RESULTA_bus\(43);
\inst25|Mult0~52\ <= \inst25|Mult0~8_RESULTA_bus\(44);
\inst25|Mult0~53\ <= \inst25|Mult0~8_RESULTA_bus\(45);
\inst25|Mult0~54\ <= \inst25|Mult0~8_RESULTA_bus\(46);
\inst25|Mult0~55\ <= \inst25|Mult0~8_RESULTA_bus\(47);
\inst25|Mult0~56\ <= \inst25|Mult0~8_RESULTA_bus\(48);
\inst25|Mult0~57\ <= \inst25|Mult0~8_RESULTA_bus\(49);
\inst25|Mult0~58\ <= \inst25|Mult0~8_RESULTA_bus\(50);
\inst25|Mult0~59\ <= \inst25|Mult0~8_RESULTA_bus\(51);
\inst25|Mult0~60\ <= \inst25|Mult0~8_RESULTA_bus\(52);
\inst25|Mult0~61\ <= \inst25|Mult0~8_RESULTA_bus\(53);
\inst25|Mult0~62\ <= \inst25|Mult0~8_RESULTA_bus\(54);
\inst25|Mult0~63\ <= \inst25|Mult0~8_RESULTA_bus\(55);
\inst25|Mult0~64\ <= \inst25|Mult0~8_RESULTA_bus\(56);
\inst25|Mult0~65\ <= \inst25|Mult0~8_RESULTA_bus\(57);
\inst25|Mult0~66\ <= \inst25|Mult0~8_RESULTA_bus\(58);
\inst25|Mult0~67\ <= \inst25|Mult0~8_RESULTA_bus\(59);
\inst25|Mult0~68\ <= \inst25|Mult0~8_RESULTA_bus\(60);
\inst25|Mult0~69\ <= \inst25|Mult0~8_RESULTA_bus\(61);
\inst25|Mult0~70\ <= \inst25|Mult0~8_RESULTA_bus\(62);
\inst25|Mult0~71\ <= \inst25|Mult0~8_RESULTA_bus\(63);

\inst24|Mult0~8_ACLR_bus\ <= (gnd & gnd);

\inst24|Mult0~8_CLK_bus\ <= (gnd & gnd & \clk~inputCLKENA0_outclk\);

\inst24|Mult0~8_ENA_bus\ <= (vcc & vcc & vcc);

\inst24|Mult0~8_AX_bus\ <= (vcc & gnd & gnd & gnd & vcc & vcc & gnd);

\inst24|Mult0~8_AY_bus\ <= (\dato1[11]~input_o\ & \dato1[10]~input_o\ & \dato1[9]~input_o\ & \dato1[8]~input_o\ & \dato1[7]~input_o\ & \dato1[6]~input_o\ & \dato1[5]~input_o\ & \dato1[4]~input_o\ & \dato1[3]~input_o\ & \dato1[2]~input_o\ & 
\dato1[1]~input_o\ & \dato1[0]~input_o\);

\inst24|Mult0~8_resulta\ <= \inst24|Mult0~8_RESULTA_bus\(0);
\inst24|Mult0~9\ <= \inst24|Mult0~8_RESULTA_bus\(1);
\inst24|Mult0~10\ <= \inst24|Mult0~8_RESULTA_bus\(2);
\inst24|Mult0~11\ <= \inst24|Mult0~8_RESULTA_bus\(3);
\inst24|Mult0~12\ <= \inst24|Mult0~8_RESULTA_bus\(4);
\inst24|Mult0~13\ <= \inst24|Mult0~8_RESULTA_bus\(5);
\inst24|Mult0~14\ <= \inst24|Mult0~8_RESULTA_bus\(6);
\inst24|Mult0~15\ <= \inst24|Mult0~8_RESULTA_bus\(7);
\inst24|Mult0~16\ <= \inst24|Mult0~8_RESULTA_bus\(8);
\inst24|Mult0~17\ <= \inst24|Mult0~8_RESULTA_bus\(9);
\inst24|Mult0~18\ <= \inst24|Mult0~8_RESULTA_bus\(10);
\inst24|Mult0~19\ <= \inst24|Mult0~8_RESULTA_bus\(11);
\inst24|mapped_value\(0) <= \inst24|Mult0~8_RESULTA_bus\(12);
\inst24|mapped_value\(1) <= \inst24|Mult0~8_RESULTA_bus\(13);
\inst24|mapped_value\(2) <= \inst24|Mult0~8_RESULTA_bus\(14);
\inst24|mapped_value\(3) <= \inst24|Mult0~8_RESULTA_bus\(15);
\inst24|mapped_value\(4) <= \inst24|Mult0~8_RESULTA_bus\(16);
\inst24|mapped_value\(5) <= \inst24|Mult0~8_RESULTA_bus\(17);
\inst24|mapped_value\(6) <= \inst24|Mult0~8_RESULTA_bus\(18);
\inst24|Mult0~27\ <= \inst24|Mult0~8_RESULTA_bus\(19);
\inst24|Mult0~28\ <= \inst24|Mult0~8_RESULTA_bus\(20);
\inst24|Mult0~29\ <= \inst24|Mult0~8_RESULTA_bus\(21);
\inst24|Mult0~30\ <= \inst24|Mult0~8_RESULTA_bus\(22);
\inst24|Mult0~31\ <= \inst24|Mult0~8_RESULTA_bus\(23);
\inst24|Mult0~32\ <= \inst24|Mult0~8_RESULTA_bus\(24);
\inst24|Mult0~33\ <= \inst24|Mult0~8_RESULTA_bus\(25);
\inst24|Mult0~34\ <= \inst24|Mult0~8_RESULTA_bus\(26);
\inst24|Mult0~35\ <= \inst24|Mult0~8_RESULTA_bus\(27);
\inst24|Mult0~36\ <= \inst24|Mult0~8_RESULTA_bus\(28);
\inst24|Mult0~37\ <= \inst24|Mult0~8_RESULTA_bus\(29);
\inst24|Mult0~38\ <= \inst24|Mult0~8_RESULTA_bus\(30);
\inst24|Mult0~39\ <= \inst24|Mult0~8_RESULTA_bus\(31);
\inst24|Mult0~40\ <= \inst24|Mult0~8_RESULTA_bus\(32);
\inst24|Mult0~41\ <= \inst24|Mult0~8_RESULTA_bus\(33);
\inst24|Mult0~42\ <= \inst24|Mult0~8_RESULTA_bus\(34);
\inst24|Mult0~43\ <= \inst24|Mult0~8_RESULTA_bus\(35);
\inst24|Mult0~44\ <= \inst24|Mult0~8_RESULTA_bus\(36);
\inst24|Mult0~45\ <= \inst24|Mult0~8_RESULTA_bus\(37);
\inst24|Mult0~46\ <= \inst24|Mult0~8_RESULTA_bus\(38);
\inst24|Mult0~47\ <= \inst24|Mult0~8_RESULTA_bus\(39);
\inst24|Mult0~48\ <= \inst24|Mult0~8_RESULTA_bus\(40);
\inst24|Mult0~49\ <= \inst24|Mult0~8_RESULTA_bus\(41);
\inst24|Mult0~50\ <= \inst24|Mult0~8_RESULTA_bus\(42);
\inst24|Mult0~51\ <= \inst24|Mult0~8_RESULTA_bus\(43);
\inst24|Mult0~52\ <= \inst24|Mult0~8_RESULTA_bus\(44);
\inst24|Mult0~53\ <= \inst24|Mult0~8_RESULTA_bus\(45);
\inst24|Mult0~54\ <= \inst24|Mult0~8_RESULTA_bus\(46);
\inst24|Mult0~55\ <= \inst24|Mult0~8_RESULTA_bus\(47);
\inst24|Mult0~56\ <= \inst24|Mult0~8_RESULTA_bus\(48);
\inst24|Mult0~57\ <= \inst24|Mult0~8_RESULTA_bus\(49);
\inst24|Mult0~58\ <= \inst24|Mult0~8_RESULTA_bus\(50);
\inst24|Mult0~59\ <= \inst24|Mult0~8_RESULTA_bus\(51);
\inst24|Mult0~60\ <= \inst24|Mult0~8_RESULTA_bus\(52);
\inst24|Mult0~61\ <= \inst24|Mult0~8_RESULTA_bus\(53);
\inst24|Mult0~62\ <= \inst24|Mult0~8_RESULTA_bus\(54);
\inst24|Mult0~63\ <= \inst24|Mult0~8_RESULTA_bus\(55);
\inst24|Mult0~64\ <= \inst24|Mult0~8_RESULTA_bus\(56);
\inst24|Mult0~65\ <= \inst24|Mult0~8_RESULTA_bus\(57);
\inst24|Mult0~66\ <= \inst24|Mult0~8_RESULTA_bus\(58);
\inst24|Mult0~67\ <= \inst24|Mult0~8_RESULTA_bus\(59);
\inst24|Mult0~68\ <= \inst24|Mult0~8_RESULTA_bus\(60);
\inst24|Mult0~69\ <= \inst24|Mult0~8_RESULTA_bus\(61);
\inst24|Mult0~70\ <= \inst24|Mult0~8_RESULTA_bus\(62);
\inst24|Mult0~71\ <= \inst24|Mult0~8_RESULTA_bus\(63);
\inst25|ALT_INV_mapped_value\(3) <= NOT \inst25|mapped_value\(3);
\inst25|ALT_INV_mapped_value\(2) <= NOT \inst25|mapped_value\(2);
\inst25|ALT_INV_mapped_value\(0) <= NOT \inst25|mapped_value\(0);
\inst34|Mod0|auto_generated|divider|divider|ALT_INV_op_5~17_sumout\ <= NOT \inst34|Mod0|auto_generated|divider|divider|op_5~17_sumout\;
\inst100|altsyncram_component|auto_generated|ALT_INV_q_a\(1) <= NOT \inst100|altsyncram_component|auto_generated|q_a\(1);
\inst100|altsyncram_component|auto_generated|ALT_INV_q_a\(2) <= NOT \inst100|altsyncram_component|auto_generated|q_a\(2);
\inst100|altsyncram_component|auto_generated|ALT_INV_q_a\(3) <= NOT \inst100|altsyncram_component|auto_generated|q_a\(3);
\inst100|altsyncram_component|auto_generated|ALT_INV_q_a\(4) <= NOT \inst100|altsyncram_component|auto_generated|q_a\(4);
\inst100|altsyncram_component|auto_generated|ALT_INV_q_a\(0) <= NOT \inst100|altsyncram_component|auto_generated|q_a\(0);
\inst34|Mod0|auto_generated|divider|divider|ALT_INV_op_5~13_sumout\ <= NOT \inst34|Mod0|auto_generated|divider|divider|op_5~13_sumout\;
\inst34|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[0]~13_sumout\ <= NOT \inst34|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~13_sumout\;
\inst34|Mod0|auto_generated|divider|divider|ALT_INV_op_5~9_sumout\ <= NOT \inst34|Mod0|auto_generated|divider|divider|op_5~9_sumout\;
\inst34|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[1]~9_sumout\ <= NOT \inst34|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~9_sumout\;
\inst34|Mod0|auto_generated|divider|divider|ALT_INV_op_5~5_sumout\ <= NOT \inst34|Mod0|auto_generated|divider|divider|op_5~5_sumout\;
\inst34|Mod0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\ <= NOT \inst34|Mod0|auto_generated|divider|divider|op_5~1_sumout\;
\inst34|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[2]~5_sumout\ <= NOT \inst34|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_sumout\;
\inst34|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\ <= NOT \inst34|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\;
\inst34|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\ <= NOT \inst34|Div0|auto_generated|divider|divider|op_5~1_sumout\;
\inst34|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\ <= NOT \inst34|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\;
\inst34|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[1]~13_sumout\ <= NOT \inst34|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~13_sumout\;
\inst34|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[2]~9_sumout\ <= NOT \inst34|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~9_sumout\;
\inst34|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[3]~17_sumout\ <= NOT \inst34|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~17_sumout\;
\inst34|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[3]~5_sumout\ <= NOT \inst34|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5_sumout\;
\inst25|ALT_INV_mapped_value\(5) <= NOT \inst25|mapped_value\(5);
\inst25|ALT_INV_mapped_value\(4) <= NOT \inst25|mapped_value\(4);
\inst27|ALT_INV_y.TAA~q\ <= NOT \inst27|y.TAA~q\;
\inst27|ALT_INV_Selector1~3_combout\ <= NOT \inst27|Selector1~3_combout\;
\inst27|ALT_INV_Selector1~2_combout\ <= NOT \inst27|Selector1~2_combout\;
\inst27|ALT_INV_Selector1~1_combout\ <= NOT \inst27|Selector1~1_combout\;
\inst34|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[20]~5_combout\ <= NOT \inst34|Mod0|auto_generated|divider|divider|StageOut[20]~5_combout\;
\inst34|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[21]~4_combout\ <= NOT \inst34|Mod0|auto_generated|divider|divider|StageOut[21]~4_combout\;
\inst34|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[22]~3_combout\ <= NOT \inst34|Mod0|auto_generated|divider|divider|StageOut[22]~3_combout\;
\inst34|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[16]~2_combout\ <= NOT \inst34|Mod0|auto_generated|divider|divider|StageOut[16]~2_combout\;
\inst34|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[16]~1_combout\ <= NOT \inst34|Mod0|auto_generated|divider|divider|StageOut[16]~1_combout\;
\inst34|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[23]~0_combout\ <= NOT \inst34|Mod0|auto_generated|divider|divider|StageOut[23]~0_combout\;
\inst26|ALT_INV_AND_result~combout\ <= NOT \inst26|AND_result~combout\;
\inst23|ALT_INV_temp\(0) <= NOT \inst23|temp\(0);
\inst23|ALT_INV_temp\(1) <= NOT \inst23|temp\(1);
\inst23|ALT_INV_temp\(2) <= NOT \inst23|temp\(2);
\inst23|ALT_INV_temp\(3) <= NOT \inst23|temp\(3);
\inst27|ALT_INV_Selector1~0_combout\ <= NOT \inst27|Selector1~0_combout\;
\inst19|ALT_INV_temp\(0) <= NOT \inst19|temp\(0);
\inst19|ALT_INV_temp\(1) <= NOT \inst19|temp\(1);
\inst19|ALT_INV_temp\(2) <= NOT \inst19|temp\(2);
\inst19|ALT_INV_temp\(3) <= NOT \inst19|temp\(3);
\inst19|ALT_INV_temp\(4) <= NOT \inst19|temp\(4);
\inst11|ALT_INV_LessThan0~0_combout\ <= NOT \inst11|LessThan0~0_combout\;
\inst27|ALT_INV_mss_transiciones~1_combout\ <= NOT \inst27|mss_transiciones~1_combout\;
\inst27|ALT_INV_mss_transiciones~0_combout\ <= NOT \inst27|mss_transiciones~0_combout\;
\inst27|ALT_INV_WideOr10~0_combout\ <= NOT \inst27|WideOr10~0_combout\;
\inst27|ALT_INV_y.TAB~q\ <= NOT \inst27|y.TAB~q\;
\inst27|ALT_INV_EnH~0_combout\ <= NOT \inst27|EnH~0_combout\;
\inst27|ALT_INV_y.TAD~q\ <= NOT \inst27|y.TAD~q\;
\inst27|ALT_INV_y.TAC~q\ <= NOT \inst27|y.TAC~q\;
\inst27|ALT_INV_WideOr8~1_combout\ <= NOT \inst27|WideOr8~1_combout\;
\inst27|ALT_INV_y.TAG~q\ <= NOT \inst27|y.TAG~q\;
\inst27|ALT_INV_y.TAE~q\ <= NOT \inst27|y.TAE~q\;
\inst27|ALT_INV_WideOr8~0_combout\ <= NOT \inst27|WideOr8~0_combout\;
\inst27|ALT_INV_WideOr7~0_combout\ <= NOT \inst27|WideOr7~0_combout\;
\inst27|ALT_INV_y.TAP~q\ <= NOT \inst27|y.TAP~q\;
\inst27|ALT_INV_y.TAL~q\ <= NOT \inst27|y.TAL~q\;
\inst27|ALT_INV_y.TAN~q\ <= NOT \inst27|y.TAN~q\;
\inst27|ALT_INV_y.TAM~q\ <= NOT \inst27|y.TAM~q\;
\inst27|ALT_INV_y.TAJ~q\ <= NOT \inst27|y.TAJ~q\;
\inst27|ALT_INV_WideOr6~0_combout\ <= NOT \inst27|WideOr6~0_combout\;
\inst27|ALT_INV_y.TAS~q\ <= NOT \inst27|y.TAS~q\;
\inst27|ALT_INV_y.TAV~q\ <= NOT \inst27|y.TAV~q\;
\inst27|ALT_INV_y.TAR~q\ <= NOT \inst27|y.TAR~q\;
\inst27|ALT_INV_y.TAQ~q\ <= NOT \inst27|y.TAQ~q\;
\inst27|ALT_INV_y.TAO~q\ <= NOT \inst27|y.TAO~q\;
\inst27|ALT_INV_y.TAW~q\ <= NOT \inst27|y.TAW~q\;
\inst27|ALT_INV_y.TAK~q\ <= NOT \inst27|y.TAK~q\;
\inst27|ALT_INV_y.TAU~q\ <= NOT \inst27|y.TAU~q\;
\inst27|ALT_INV_y.TAT~q\ <= NOT \inst27|y.TAT~q\;
\inst104|ALT_INV_q\(1) <= NOT \inst104|q\(1);
\inst104|ALT_INV_q\(2) <= NOT \inst104|q\(2);
\inst104|ALT_INV_q\(3) <= NOT \inst104|q\(3);
\inst104|ALT_INV_q\(4) <= NOT \inst104|q\(4);
\inst102|ALT_INV_q\(0) <= NOT \inst102|q\(0);
\inst102|ALT_INV_q\(1) <= NOT \inst102|q\(1);
\inst102|ALT_INV_q\(2) <= NOT \inst102|q\(2);
\inst102|ALT_INV_q\(3) <= NOT \inst102|q\(3);
\inst102|ALT_INV_q\(4) <= NOT \inst102|q\(4);
\inst102|ALT_INV_q\(5) <= NOT \inst102|q\(5);
\inst102|ALT_INV_q\(6) <= NOT \inst102|q\(6);
\inst103|ALT_INV_q\(0) <= NOT \inst103|q\(0);
\inst103|ALT_INV_q\(1) <= NOT \inst103|q\(1);
\inst103|ALT_INV_q\(2) <= NOT \inst103|q\(2);
\inst103|ALT_INV_q\(3) <= NOT \inst103|q\(3);
\inst103|ALT_INV_q\(4) <= NOT \inst103|q\(4);
\inst103|ALT_INV_q\(5) <= NOT \inst103|q\(5);
\inst103|ALT_INV_q\(6) <= NOT \inst103|q\(6);
\inst27|ALT_INV_y.TAH~q\ <= NOT \inst27|y.TAH~q\;
\inst27|ALT_INV_y.TAF~q\ <= NOT \inst27|y.TAF~q\;
\inst27|ALT_INV_y.TAI~q\ <= NOT \inst27|y.TAI~q\;
\inst34|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[0]~17_sumout\ <= NOT \inst34|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~17_sumout\;
\inst23|ALT_INV_temp[0]~DUPLICATE_q\ <= NOT \inst23|temp[0]~DUPLICATE_q\;
\inst23|ALT_INV_temp[1]~DUPLICATE_q\ <= NOT \inst23|temp[1]~DUPLICATE_q\;
\inst23|ALT_INV_temp[2]~DUPLICATE_q\ <= NOT \inst23|temp[2]~DUPLICATE_q\;
\inst23|ALT_INV_temp[3]~DUPLICATE_q\ <= NOT \inst23|temp[3]~DUPLICATE_q\;
\inst19|ALT_INV_temp[0]~DUPLICATE_q\ <= NOT \inst19|temp[0]~DUPLICATE_q\;
\inst19|ALT_INV_temp[1]~DUPLICATE_q\ <= NOT \inst19|temp[1]~DUPLICATE_q\;
\inst19|ALT_INV_temp[2]~DUPLICATE_q\ <= NOT \inst19|temp[2]~DUPLICATE_q\;
\inst19|ALT_INV_temp[3]~DUPLICATE_q\ <= NOT \inst19|temp[3]~DUPLICATE_q\;
\inst19|ALT_INV_temp[4]~DUPLICATE_q\ <= NOT \inst19|temp[4]~DUPLICATE_q\;
\inst27|ALT_INV_y.TAD~DUPLICATE_q\ <= NOT \inst27|y.TAD~DUPLICATE_q\;
\inst27|ALT_INV_y.TAN~DUPLICATE_q\ <= NOT \inst27|y.TAN~DUPLICATE_q\;
\inst27|ALT_INV_y.TAM~DUPLICATE_q\ <= NOT \inst27|y.TAM~DUPLICATE_q\;
\inst27|ALT_INV_y.TAO~DUPLICATE_q\ <= NOT \inst27|y.TAO~DUPLICATE_q\;
\inst104|ALT_INV_q[4]~DUPLICATE_q\ <= NOT \inst104|q[4]~DUPLICATE_q\;
\inst27|ALT_INV_y.TAF~DUPLICATE_q\ <= NOT \inst27|y.TAF~DUPLICATE_q\;
\inst27|ALT_INV_y.TAI~DUPLICATE_q\ <= NOT \inst27|y.TAI~DUPLICATE_q\;
\ALT_INV_START~input_o\ <= NOT \START~input_o\;
\ALT_INV_Consultar~input_o\ <= NOT \Consultar~input_o\;
\ALT_INV_FINALIZAR~input_o\ <= NOT \FINALIZAR~input_o\;
\ALT_INV_CargarRam~input_o\ <= NOT \CargarRam~input_o\;
\inst34|Div0|auto_generated|divider|divider|ALT_INV_StageOut[16]~3_combout\ <= NOT \inst34|Div0|auto_generated|divider|divider|StageOut[16]~3_combout\;
\inst34|Div0|auto_generated|divider|divider|ALT_INV_StageOut[16]~2_combout\ <= NOT \inst34|Div0|auto_generated|divider|divider|StageOut[16]~2_combout\;
\inst34|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[18]~7_combout\ <= NOT \inst34|Mod0|auto_generated|divider|divider|StageOut[18]~7_combout\;
\inst34|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[18]~6_combout\ <= NOT \inst34|Mod0|auto_generated|divider|divider|StageOut[18]~6_combout\;
\inst34|Div0|auto_generated|divider|divider|ALT_INV_StageOut[18]~1_combout\ <= NOT \inst34|Div0|auto_generated|divider|divider|StageOut[18]~1_combout\;
\inst34|Div0|auto_generated|divider|divider|ALT_INV_StageOut[18]~0_combout\ <= NOT \inst34|Div0|auto_generated|divider|divider|StageOut[18]~0_combout\;

-- Location: IOOBUF_X64_Y0_N36
\display1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst34|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	oe => \inst27|y.TAQ~q\,
	devoe => ww_devoe,
	o => ww_display1(6));

-- Location: IOOBUF_X66_Y0_N59
\display1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst30|Mux1~0_combout\,
	oe => \inst27|y.TAQ~q\,
	devoe => ww_devoe,
	o => ww_display1(5));

-- Location: IOOBUF_X66_Y0_N93
\display1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst30|Mux1~0_combout\,
	oe => \inst27|y.TAQ~q\,
	devoe => ww_devoe,
	o => ww_display1(4));

-- Location: IOOBUF_X66_Y0_N42
\display1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst34|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	oe => \inst27|y.TAQ~q\,
	devoe => ww_devoe,
	o => ww_display1(3));

-- Location: IOOBUF_X64_Y0_N2
\display1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst34|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	oe => \inst27|y.TAQ~q\,
	devoe => ww_devoe,
	o => ww_display1(2));

-- Location: IOOBUF_X64_Y0_N19
\display1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst30|Mux1~0_combout\,
	oe => \inst27|y.TAQ~q\,
	devoe => ww_devoe,
	o => ww_display1(1));

-- Location: IOOBUF_X68_Y0_N2
\display1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst30|Mux6~0_combout\,
	oe => \inst27|y.TAQ~q\,
	devoe => ww_devoe,
	o => ww_display1(0));

-- Location: IOOBUF_X68_Y0_N19
\display2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst29|Mux0~0_combout\,
	oe => \inst27|y.TAQ~q\,
	devoe => ww_devoe,
	o => ww_display2(6));

-- Location: IOOBUF_X66_Y0_N76
\display2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst29|Mux1~0_combout\,
	oe => \inst27|y.TAQ~q\,
	devoe => ww_devoe,
	o => ww_display2(5));

-- Location: IOOBUF_X70_Y0_N2
\display2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst29|Mux2~0_combout\,
	oe => \inst27|y.TAQ~q\,
	devoe => ww_devoe,
	o => ww_display2(4));

-- Location: IOOBUF_X68_Y0_N53
\display2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst29|Mux3~0_combout\,
	oe => \inst27|y.TAQ~q\,
	devoe => ww_devoe,
	o => ww_display2(3));

-- Location: IOOBUF_X70_Y0_N53
\display2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst29|Mux4~0_combout\,
	oe => \inst27|y.TAQ~q\,
	devoe => ww_devoe,
	o => ww_display2(2));

-- Location: IOOBUF_X64_Y0_N53
\display2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst29|Mux5~0_combout\,
	oe => \inst27|y.TAQ~q\,
	devoe => ww_devoe,
	o => ww_display2(1));

-- Location: IOOBUF_X68_Y0_N36
\display2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst29|Mux6~0_combout\,
	oe => \inst27|y.TAQ~q\,
	devoe => ww_devoe,
	o => ww_display2(0));

-- Location: IOOBUF_X76_Y0_N19
\ERROR~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst27|WideOr12~combout\,
	devoe => ww_devoe,
	o => ww_ERROR);

-- Location: IOOBUF_X89_Y9_N56
\nivel_sensor[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst103|q\(6),
	devoe => ww_devoe,
	o => ww_nivel_sensor(6));

-- Location: IOOBUF_X89_Y9_N39
\nivel_sensor[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst103|q\(5),
	devoe => ww_devoe,
	o => ww_nivel_sensor(5));

-- Location: IOOBUF_X89_Y9_N5
\nivel_sensor[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst103|q\(4),
	devoe => ww_devoe,
	o => ww_nivel_sensor(4));

-- Location: IOOBUF_X62_Y0_N53
\nivel_sensor[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst103|q\(3),
	devoe => ww_devoe,
	o => ww_nivel_sensor(3));

-- Location: IOOBUF_X89_Y8_N22
\nivel_sensor[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst103|q\(2),
	devoe => ww_devoe,
	o => ww_nivel_sensor(2));

-- Location: IOOBUF_X89_Y11_N96
\nivel_sensor[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst103|q\(1),
	devoe => ww_devoe,
	o => ww_nivel_sensor(1));

-- Location: IOOBUF_X89_Y13_N22
\nivel_sensor[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst103|q\(0),
	devoe => ww_devoe,
	o => ww_nivel_sensor(0));

-- Location: IOOBUF_X84_Y0_N19
\T_sensor[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst102|q\(6),
	devoe => ww_devoe,
	o => ww_T_sensor(6));

-- Location: IOOBUF_X89_Y4_N45
\T_sensor[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst102|q\(5),
	devoe => ww_devoe,
	o => ww_T_sensor(5));

-- Location: IOOBUF_X84_Y0_N36
\T_sensor[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst102|q\(4),
	devoe => ww_devoe,
	o => ww_T_sensor(4));

-- Location: IOOBUF_X89_Y4_N96
\T_sensor[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst102|q\(3),
	devoe => ww_devoe,
	o => ww_T_sensor(3));

-- Location: IOOBUF_X80_Y0_N53
\T_sensor[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst102|q\(2),
	devoe => ww_devoe,
	o => ww_T_sensor(2));

-- Location: IOOBUF_X82_Y0_N93
\T_sensor[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst102|q\(1),
	devoe => ww_devoe,
	o => ww_T_sensor(1));

-- Location: IOOBUF_X62_Y0_N19
\T_sensor[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst102|q\(0),
	devoe => ww_devoe,
	o => ww_T_sensor(0));

-- Location: IOOBUF_X74_Y0_N42
\time_Actual[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst104|q[4]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_time_Actual(4));

-- Location: IOOBUF_X72_Y0_N36
\time_Actual[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst104|q\(3),
	devoe => ww_devoe,
	o => ww_time_Actual(3));

-- Location: IOOBUF_X74_Y0_N76
\time_Actual[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst104|q\(2),
	devoe => ww_devoe,
	o => ww_time_Actual(2));

-- Location: IOOBUF_X74_Y0_N59
\time_Actual[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst104|q[1]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_time_Actual(1));

-- Location: IOOBUF_X72_Y0_N19
\time_Actual[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst104|q\(0),
	devoe => ww_devoe,
	o => ww_time_Actual(0));

-- Location: IOOBUF_X82_Y0_N59
\NO_LLENAR~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst27|y.TAF~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_NO_LLENAR);

-- Location: IOOBUF_X76_Y0_N36
\ALARMA~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst27|Alarma~combout\,
	devoe => ww_devoe,
	o => ww_ALARMA);

-- Location: IOOBUF_X78_Y0_N36
\VALVULA_ON~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst27|y.TAT~q\,
	devoe => ww_devoe,
	o => ww_VALVULA_ON);

-- Location: IOOBUF_X78_Y0_N53
\VALVULA_OFF~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst27|y.TAU~q\,
	devoe => ww_devoe,
	o => ww_VALVULA_OFF);

-- Location: IOOBUF_X74_Y0_N93
\EVENTO~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst27|y.TAK~q\,
	devoe => ww_devoe,
	o => ww_EVENTO);

-- Location: IOOBUF_X89_Y4_N62
\FIN~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst27|y.TAW~q\,
	devoe => ww_devoe,
	o => ww_FIN);

-- Location: IOOBUF_X82_Y0_N76
\TEMP_ALTA~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst27|y.TAI~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_TEMP_ALTA);

-- Location: IOOBUF_X82_Y0_N42
\TEMP_BAJA~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst27|y.TAH~q\,
	devoe => ww_devoe,
	o => ww_TEMP_BAJA);

-- Location: IOOBUF_X89_Y4_N79
\CARGADO~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst27|y.TAO~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_CARGADO);

-- Location: IOOBUF_X78_Y0_N2
\ESTADOS[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst27|WideOr6~combout\,
	devoe => ww_devoe,
	o => ww_ESTADOS(4));

-- Location: IOOBUF_X76_Y0_N53
\ESTADOS[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst27|WideOr7~combout\,
	devoe => ww_devoe,
	o => ww_ESTADOS(3));

-- Location: IOOBUF_X72_Y0_N53
\ESTADOS[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst27|WideOr8~combout\,
	devoe => ww_devoe,
	o => ww_ESTADOS(2));

-- Location: IOOBUF_X76_Y0_N2
\ESTADOS[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst27|WideOr9~combout\,
	devoe => ww_devoe,
	o => ww_ESTADOS(1));

-- Location: IOOBUF_X78_Y0_N19
\ESTADOS[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst27|WideOr10~combout\,
	devoe => ww_devoe,
	o => ww_ESTADOS(0));

-- Location: IOIBUF_X89_Y25_N21
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G10
\clk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clk~input_o\,
	outclk => \clk~inputCLKENA0_outclk\);

-- Location: IOIBUF_X89_Y6_N4
\Resetn~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Resetn,
	o => \Resetn~input_o\);

-- Location: IOIBUF_X70_Y0_N35
\Consultar~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Consultar,
	o => \Consultar~input_o\);

-- Location: IOIBUF_X80_Y0_N1
\START~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_START,
	o => \START~input_o\);

-- Location: IOIBUF_X60_Y0_N1
\FINALIZAR~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FINALIZAR,
	o => \FINALIZAR~input_o\);

-- Location: FF_X81_Y4_N28
\inst23|temp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst23|temp~3_combout\,
	clrn => \Resetn~input_o\,
	ena => \inst27|WideOr11~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst23|temp\(0));

-- Location: LABCELL_X81_Y4_N27
\inst23|temp~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst23|temp~3_combout\ = ( !\inst23|temp\(0) & ( \inst27|y.TAA~q\ & ( !\inst27|y.TAN~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst27|ALT_INV_y.TAN~q\,
	datae => \inst23|ALT_INV_temp\(0),
	dataf => \inst27|ALT_INV_y.TAA~q\,
	combout => \inst23|temp~3_combout\);

-- Location: FF_X81_Y4_N29
\inst23|temp[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst23|temp~3_combout\,
	clrn => \Resetn~input_o\,
	ena => \inst27|WideOr11~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst23|temp[0]~DUPLICATE_q\);

-- Location: FF_X81_Y4_N43
\inst27|y.TAN~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst27|y~37_combout\,
	clrn => \Resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst27|y.TAN~DUPLICATE_q\);

-- Location: MLABCELL_X82_Y4_N9
\inst27|y~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst27|y~33_combout\ = ( \inst27|y.TAP~q\ ) # ( !\inst27|y.TAP~q\ & ( \inst27|y.TAN~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst27|ALT_INV_y.TAN~DUPLICATE_q\,
	dataf => \inst27|ALT_INV_y.TAP~q\,
	combout => \inst27|y~33_combout\);

-- Location: FF_X82_Y4_N10
\inst27|y.TAO~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst27|y~33_combout\,
	clrn => \Resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst27|y.TAO~DUPLICATE_q\);

-- Location: FF_X81_Y4_N59
\inst23|temp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst23|temp~0_combout\,
	clrn => \Resetn~input_o\,
	ena => \inst27|WideOr11~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst23|temp\(3));

-- Location: LABCELL_X81_Y4_N57
\inst23|temp~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst23|temp~0_combout\ = ( \inst23|temp\(3) & ( \inst23|temp[2]~DUPLICATE_q\ & ( (\inst27|y.TAA~q\ & (!\inst27|y.TAN~q\ & ((!\inst23|temp\(1)) # (!\inst23|temp[0]~DUPLICATE_q\)))) ) ) ) # ( !\inst23|temp\(3) & ( \inst23|temp[2]~DUPLICATE_q\ & ( 
-- (\inst27|y.TAA~q\ & (!\inst27|y.TAN~q\ & (\inst23|temp\(1) & \inst23|temp[0]~DUPLICATE_q\))) ) ) ) # ( \inst23|temp\(3) & ( !\inst23|temp[2]~DUPLICATE_q\ & ( (\inst27|y.TAA~q\ & !\inst27|y.TAN~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010001000100010000000000000001000100010001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst27|ALT_INV_y.TAA~q\,
	datab => \inst27|ALT_INV_y.TAN~q\,
	datac => \inst23|ALT_INV_temp\(1),
	datad => \inst23|ALT_INV_temp[0]~DUPLICATE_q\,
	datae => \inst23|ALT_INV_temp\(3),
	dataf => \inst23|ALT_INV_temp[2]~DUPLICATE_q\,
	combout => \inst23|temp~0_combout\);

-- Location: FF_X81_Y4_N58
\inst23|temp[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst23|temp~0_combout\,
	clrn => \Resetn~input_o\,
	ena => \inst27|WideOr11~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst23|temp[3]~DUPLICATE_q\);

-- Location: MLABCELL_X84_Y4_N51
\inst27|y~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst27|y~35_combout\ = ( \inst23|temp[3]~DUPLICATE_q\ & ( \inst23|temp[1]~DUPLICATE_q\ & ( (\inst23|temp[2]~DUPLICATE_q\ & (\inst23|temp[0]~DUPLICATE_q\ & \inst27|y.TAO~DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst23|ALT_INV_temp[2]~DUPLICATE_q\,
	datac => \inst23|ALT_INV_temp[0]~DUPLICATE_q\,
	datad => \inst27|ALT_INV_y.TAO~DUPLICATE_q\,
	datae => \inst23|ALT_INV_temp[3]~DUPLICATE_q\,
	dataf => \inst23|ALT_INV_temp[1]~DUPLICATE_q\,
	combout => \inst27|y~35_combout\);

-- Location: FF_X84_Y4_N52
\inst27|y.TAR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst27|y~35_combout\,
	clrn => \Resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst27|y.TAR~q\);

-- Location: MLABCELL_X84_Y4_N57
\inst27|y~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst27|y~41_combout\ = ( \inst27|y.TAA~q\ & ( (\START~input_o\ & \inst27|y.TAB~q\) ) ) # ( !\inst27|y.TAA~q\ & ( \START~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_START~input_o\,
	datad => \inst27|ALT_INV_y.TAB~q\,
	dataf => \inst27|ALT_INV_y.TAA~q\,
	combout => \inst27|y~41_combout\);

-- Location: FF_X84_Y4_N59
\inst27|y.TAB\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst27|y~41_combout\,
	clrn => \Resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst27|y.TAB~q\);

-- Location: IOIBUF_X86_Y0_N18
\dato1[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dato1(0),
	o => \dato1[0]~input_o\);

-- Location: IOIBUF_X88_Y0_N2
\dato1[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dato1(1),
	o => \dato1[1]~input_o\);

-- Location: IOIBUF_X86_Y0_N52
\dato1[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dato1(2),
	o => \dato1[2]~input_o\);

-- Location: IOIBUF_X88_Y0_N53
\dato1[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dato1(3),
	o => \dato1[3]~input_o\);

-- Location: IOIBUF_X88_Y0_N36
\dato1[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dato1(4),
	o => \dato1[4]~input_o\);

-- Location: IOIBUF_X80_Y0_N18
\dato1[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dato1(5),
	o => \dato1[5]~input_o\);

-- Location: IOIBUF_X88_Y0_N19
\dato1[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dato1(6),
	o => \dato1[6]~input_o\);

-- Location: IOIBUF_X84_Y0_N1
\dato1[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dato1(7),
	o => \dato1[7]~input_o\);

-- Location: IOIBUF_X86_Y0_N1
\dato1[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dato1(8),
	o => \dato1[8]~input_o\);

-- Location: IOIBUF_X84_Y0_N52
\dato1[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dato1(9),
	o => \dato1[9]~input_o\);

-- Location: IOIBUF_X86_Y0_N35
\dato1[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dato1(10),
	o => \dato1[10]~input_o\);

-- Location: IOIBUF_X70_Y0_N18
\dato1[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dato1(11),
	o => \dato1[11]~input_o\);

-- Location: DSP_X86_Y4_N0
\inst24|Mult0~8\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 7,
	ay_scan_in_clock => "none",
	ay_scan_in_width => 12,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	by_clock => "none",
	by_use_scan_in => "false",
	bz_clock => "none",
	coef_a_0 => 0,
	coef_a_1 => 0,
	coef_a_2 => 0,
	coef_a_3 => 0,
	coef_a_4 => 0,
	coef_a_5 => 0,
	coef_a_6 => 0,
	coef_a_7 => 0,
	coef_b_0 => 0,
	coef_b_1 => 0,
	coef_b_2 => 0,
	coef_b_3 => 0,
	coef_b_4 => 0,
	coef_b_5 => 0,
	coef_b_6 => 0,
	coef_b_7 => 0,
	coef_sel_a_clock => "none",
	coef_sel_b_clock => "none",
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 0,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m18x18_full",
	output_clock => "0",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	signed_max => "false",
	signed_may => "false",
	signed_mbx => "false",
	signed_mby => "false",
	sub_clock => "none",
	use_chainadder => "false")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	aclr => \inst24|Mult0~8_ACLR_bus\,
	clk => \inst24|Mult0~8_CLK_bus\,
	ena => \inst24|Mult0~8_ENA_bus\,
	ax => \inst24|Mult0~8_AX_bus\,
	ay => \inst24|Mult0~8_AY_bus\,
	resulta => \inst24|Mult0~8_RESULTA_bus\);

-- Location: FF_X85_Y4_N56
\inst102|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst24|mapped_value\(2),
	clrn => \Resetn~input_o\,
	sload => VCC,
	ena => \inst27|y.TAE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst102|q\(2));

-- Location: FF_X85_Y4_N32
\inst102|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst24|mapped_value\(0),
	clrn => \Resetn~input_o\,
	sload => VCC,
	ena => \inst27|y.TAE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst102|q\(0));

-- Location: FF_X85_Y4_N2
\inst102|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst24|mapped_value\(5),
	clrn => \Resetn~input_o\,
	sload => VCC,
	ena => \inst27|y.TAE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst102|q\(5));

-- Location: FF_X85_Y4_N35
\inst102|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst24|mapped_value\(4),
	clrn => \Resetn~input_o\,
	sload => VCC,
	ena => \inst27|y.TAE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst102|q\(4));

-- Location: FF_X85_Y4_N53
\inst102|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst24|mapped_value\(3),
	clrn => \Resetn~input_o\,
	sload => VCC,
	ena => \inst27|y.TAE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst102|q\(3));

-- Location: LABCELL_X85_Y4_N33
\inst27|mss_transiciones~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst27|mss_transiciones~1_combout\ = ( \inst102|q\(4) & ( \inst102|q\(3) & ( (\inst102|q\(2) & (\inst102|q\(5) & ((\inst102|q\(1)) # (\inst102|q\(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst102|ALT_INV_q\(2),
	datab => \inst102|ALT_INV_q\(0),
	datac => \inst102|ALT_INV_q\(1),
	datad => \inst102|ALT_INV_q\(5),
	datae => \inst102|ALT_INV_q\(4),
	dataf => \inst102|ALT_INV_q\(3),
	combout => \inst27|mss_transiciones~1_combout\);

-- Location: IOIBUF_X89_Y11_N78
\dato2[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dato2(0),
	o => \dato2[0]~input_o\);

-- Location: IOIBUF_X89_Y8_N4
\dato2[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dato2(1),
	o => \dato2[1]~input_o\);

-- Location: IOIBUF_X89_Y6_N38
\dato2[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dato2(2),
	o => \dato2[2]~input_o\);

-- Location: IOIBUF_X89_Y9_N21
\dato2[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dato2(3),
	o => \dato2[3]~input_o\);

-- Location: IOIBUF_X89_Y11_N61
\dato2[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dato2(4),
	o => \dato2[4]~input_o\);

-- Location: IOIBUF_X89_Y8_N55
\dato2[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dato2(5),
	o => \dato2[5]~input_o\);

-- Location: IOIBUF_X89_Y13_N4
\dato2[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dato2(6),
	o => \dato2[6]~input_o\);

-- Location: IOIBUF_X80_Y0_N35
\dato2[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dato2(7),
	o => \dato2[7]~input_o\);

-- Location: IOIBUF_X89_Y6_N21
\dato2[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dato2(8),
	o => \dato2[8]~input_o\);

-- Location: IOIBUF_X89_Y6_N55
\dato2[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dato2(9),
	o => \dato2[9]~input_o\);

-- Location: IOIBUF_X89_Y11_N44
\dato2[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dato2(10),
	o => \dato2[10]~input_o\);

-- Location: IOIBUF_X89_Y8_N38
\dato2[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dato2(11),
	o => \dato2[11]~input_o\);

-- Location: DSP_X86_Y6_N0
\inst25|Mult0~8\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 7,
	ay_scan_in_clock => "none",
	ay_scan_in_width => 12,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	by_clock => "none",
	by_use_scan_in => "false",
	bz_clock => "none",
	coef_a_0 => 0,
	coef_a_1 => 0,
	coef_a_2 => 0,
	coef_a_3 => 0,
	coef_a_4 => 0,
	coef_a_5 => 0,
	coef_a_6 => 0,
	coef_a_7 => 0,
	coef_b_0 => 0,
	coef_b_1 => 0,
	coef_b_2 => 0,
	coef_b_3 => 0,
	coef_b_4 => 0,
	coef_b_5 => 0,
	coef_b_6 => 0,
	coef_b_7 => 0,
	coef_sel_a_clock => "none",
	coef_sel_b_clock => "none",
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 0,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m18x18_full",
	output_clock => "0",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	signed_max => "false",
	signed_may => "false",
	signed_mbx => "false",
	signed_mby => "false",
	sub_clock => "none",
	use_chainadder => "false")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	aclr => \inst25|Mult0~8_ACLR_bus\,
	clk => \inst25|Mult0~8_CLK_bus\,
	ena => \inst25|Mult0~8_ENA_bus\,
	ax => \inst25|Mult0~8_AX_bus\,
	ay => \inst25|Mult0~8_AY_bus\,
	resulta => \inst25|Mult0~8_RESULTA_bus\);

-- Location: LABCELL_X85_Y6_N39
\inst103|q[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst103|q[3]~feeder_combout\ = ( \inst25|mapped_value\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst25|ALT_INV_mapped_value\(3),
	combout => \inst103|q[3]~feeder_combout\);

-- Location: FF_X85_Y6_N41
\inst103|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst103|q[3]~feeder_combout\,
	clrn => \Resetn~input_o\,
	ena => \inst27|y.TAE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst103|q\(3));

-- Location: LABCELL_X85_Y6_N9
\inst103|q[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst103|q[2]~feeder_combout\ = ( \inst25|mapped_value\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst25|ALT_INV_mapped_value\(2),
	combout => \inst103|q[2]~feeder_combout\);

-- Location: FF_X85_Y6_N11
\inst103|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst103|q[2]~feeder_combout\,
	clrn => \Resetn~input_o\,
	ena => \inst27|y.TAE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst103|q\(2));

-- Location: LABCELL_X85_Y6_N0
\inst103|q[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst103|q[5]~feeder_combout\ = ( \inst25|mapped_value\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst25|ALT_INV_mapped_value\(5),
	combout => \inst103|q[5]~feeder_combout\);

-- Location: FF_X85_Y6_N2
\inst103|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst103|q[5]~feeder_combout\,
	clrn => \Resetn~input_o\,
	ena => \inst27|y.TAE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst103|q\(5));

-- Location: LABCELL_X85_Y6_N54
\inst103|q[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst103|q[4]~feeder_combout\ = ( \inst25|mapped_value\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst25|ALT_INV_mapped_value\(4),
	combout => \inst103|q[4]~feeder_combout\);

-- Location: FF_X85_Y6_N56
\inst103|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst103|q[4]~feeder_combout\,
	clrn => \Resetn~input_o\,
	ena => \inst27|y.TAE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst103|q\(4));

-- Location: LABCELL_X85_Y6_N27
\inst11|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst11|LessThan0~0_combout\ = ( \inst103|q\(4) & ( (\inst103|q\(3) & (\inst103|q\(2) & \inst103|q\(5))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000001100000000000000000000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst103|ALT_INV_q\(3),
	datac => \inst103|ALT_INV_q\(2),
	datad => \inst103|ALT_INV_q\(5),
	datae => \inst103|ALT_INV_q\(4),
	combout => \inst11|LessThan0~0_combout\);

-- Location: FF_X85_Y6_N25
\inst103|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst25|mapped_value\(1),
	clrn => \Resetn~input_o\,
	sload => VCC,
	ena => \inst27|y.TAE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst103|q\(1));

-- Location: LABCELL_X85_Y6_N3
\inst103|q[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst103|q[0]~feeder_combout\ = ( \inst25|mapped_value\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst25|ALT_INV_mapped_value\(0),
	combout => \inst103|q[0]~feeder_combout\);

-- Location: FF_X85_Y6_N5
\inst103|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst103|q[0]~feeder_combout\,
	clrn => \Resetn~input_o\,
	ena => \inst27|y.TAE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst103|q\(0));

-- Location: FF_X85_Y6_N34
\inst103|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst25|mapped_value\(6),
	clrn => \Resetn~input_o\,
	sload => VCC,
	ena => \inst27|y.TAE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst103|q\(6));

-- Location: LABCELL_X85_Y6_N51
\inst27|y~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst27|y~28_combout\ = ( \inst103|q\(0) & ( \inst103|q\(6) & ( \inst27|y.TAE~q\ ) ) ) # ( !\inst103|q\(0) & ( \inst103|q\(6) & ( \inst27|y.TAE~q\ ) ) ) # ( \inst103|q\(0) & ( !\inst103|q\(6) & ( (\inst11|LessThan0~0_combout\ & \inst27|y.TAE~q\) ) ) ) # ( 
-- !\inst103|q\(0) & ( !\inst103|q\(6) & ( (\inst11|LessThan0~0_combout\ & (\inst103|q\(1) & \inst27|y.TAE~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000101010100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|ALT_INV_LessThan0~0_combout\,
	datac => \inst103|ALT_INV_q\(1),
	datad => \inst27|ALT_INV_y.TAE~q\,
	datae => \inst103|ALT_INV_q\(0),
	dataf => \inst103|ALT_INV_q\(6),
	combout => \inst27|y~28_combout\);

-- Location: FF_X85_Y6_N53
\inst27|y.TAF\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst27|y~28_combout\,
	clrn => \Resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst27|y.TAF~q\);

-- Location: LABCELL_X85_Y6_N45
\inst27|Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst27|Selector2~0_combout\ = ( \inst103|q\(0) & ( \inst103|q\(6) & ( \inst27|y.TAF~q\ ) ) ) # ( !\inst103|q\(0) & ( \inst103|q\(6) & ( \inst27|y.TAF~q\ ) ) ) # ( \inst103|q\(0) & ( !\inst103|q\(6) & ( ((!\inst11|LessThan0~0_combout\ & \inst27|y.TAE~q\)) 
-- # (\inst27|y.TAF~q\) ) ) ) # ( !\inst103|q\(0) & ( !\inst103|q\(6) & ( ((\inst27|y.TAE~q\ & ((!\inst11|LessThan0~0_combout\) # (!\inst103|q\(1))))) # (\inst27|y.TAF~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001011111111001000101111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|ALT_INV_LessThan0~0_combout\,
	datab => \inst27|ALT_INV_y.TAE~q\,
	datac => \inst103|ALT_INV_q\(1),
	datad => \inst27|ALT_INV_y.TAF~q\,
	datae => \inst103|ALT_INV_q\(0),
	dataf => \inst103|ALT_INV_q\(6),
	combout => \inst27|Selector2~0_combout\);

-- Location: FF_X85_Y6_N46
\inst27|y.TAG\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst27|Selector2~0_combout\,
	clrn => \Resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst27|y.TAG~q\);

-- Location: FF_X81_Y4_N4
\inst27|y.TAM\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst27|y.TAL~q\,
	clrn => \Resetn~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst27|y.TAM~q\);

-- Location: FF_X85_Y4_N5
\inst102|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst24|mapped_value\(6),
	clrn => \Resetn~input_o\,
	sload => VCC,
	ena => \inst27|y.TAE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst102|q\(6));

-- Location: LABCELL_X85_Y4_N57
\inst27|mss_transiciones~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst27|mss_transiciones~0_combout\ = ( !\inst102|q\(5) & ( (!\inst102|q\(4)) # ((!\inst102|q\(2) & !\inst102|q\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011001100000000000000000011111100110011000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst102|ALT_INV_q\(4),
	datac => \inst102|ALT_INV_q\(2),
	datad => \inst102|ALT_INV_q\(3),
	datae => \inst102|ALT_INV_q\(5),
	combout => \inst27|mss_transiciones~0_combout\);

-- Location: LABCELL_X85_Y4_N9
\inst27|Selector5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst27|Selector5~0_combout\ = ( \inst27|mss_transiciones~0_combout\ & ( \inst27|y.TAM~q\ ) ) # ( !\inst27|mss_transiciones~0_combout\ & ( ((!\inst27|mss_transiciones~1_combout\ & (\inst27|y.TAG~q\ & !\inst102|q\(6)))) # (\inst27|y.TAM~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010111100001111001011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst27|ALT_INV_mss_transiciones~1_combout\,
	datab => \inst27|ALT_INV_y.TAG~q\,
	datac => \inst27|ALT_INV_y.TAM~q\,
	datad => \inst102|ALT_INV_q\(6),
	dataf => \inst27|ALT_INV_mss_transiciones~0_combout\,
	combout => \inst27|Selector5~0_combout\);

-- Location: FF_X85_Y4_N11
\inst27|y.TAS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst27|Selector5~0_combout\,
	clrn => \Resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst27|y.TAS~q\);

-- Location: MLABCELL_X84_Y4_N6
\inst27|y~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst27|y~31_combout\ = ( !\inst102|q\(6) & ( (\inst27|y.TAS~q\ & ((!\inst102|q\(5)) # ((!\inst102|q\(3) & !\inst102|q\(4))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101000000010101010100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst27|ALT_INV_y.TAS~q\,
	datab => \inst102|ALT_INV_q\(3),
	datac => \inst102|ALT_INV_q\(4),
	datad => \inst102|ALT_INV_q\(5),
	dataf => \inst102|ALT_INV_q\(6),
	combout => \inst27|y~31_combout\);

-- Location: FF_X84_Y4_N8
\inst27|y.TAU\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst27|y~31_combout\,
	clrn => \Resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst27|y.TAU~q\);

-- Location: MLABCELL_X84_Y4_N24
\inst27|y~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst27|y~30_combout\ = ( \inst102|q\(6) & ( \inst102|q\(4) & ( \inst27|y.TAS~q\ ) ) ) # ( !\inst102|q\(6) & ( \inst102|q\(4) & ( (\inst27|y.TAS~q\ & \inst102|q\(5)) ) ) ) # ( \inst102|q\(6) & ( !\inst102|q\(4) & ( \inst27|y.TAS~q\ ) ) ) # ( 
-- !\inst102|q\(6) & ( !\inst102|q\(4) & ( (!\inst27|Selector1~0_combout\ & (\inst27|y.TAS~q\ & (\inst102|q\(5) & \inst102|q\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010001100110011001100000011000000110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst27|ALT_INV_Selector1~0_combout\,
	datab => \inst27|ALT_INV_y.TAS~q\,
	datac => \inst102|ALT_INV_q\(5),
	datad => \inst102|ALT_INV_q\(3),
	datae => \inst102|ALT_INV_q\(6),
	dataf => \inst102|ALT_INV_q\(4),
	combout => \inst27|y~30_combout\);

-- Location: FF_X84_Y4_N25
\inst27|y.TAT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst27|y~30_combout\,
	clrn => \Resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst27|y.TAT~q\);

-- Location: MLABCELL_X84_Y4_N9
\inst27|y~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst27|y~36_combout\ = ( \inst27|y.TAT~q\ ) # ( !\inst27|y.TAT~q\ & ( \inst27|y.TAU~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst27|ALT_INV_y.TAU~q\,
	dataf => \inst27|ALT_INV_y.TAT~q\,
	combout => \inst27|y~36_combout\);

-- Location: FF_X84_Y4_N10
\inst27|y.TAV\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst27|y~36_combout\,
	clrn => \Resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst27|y.TAV~q\);

-- Location: MLABCELL_X84_Y4_N0
\inst27|y~40\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst27|y~40_combout\ = ( \inst27|y.TAC~q\ ) # ( !\inst27|y.TAC~q\ & ( \inst27|y.TAV~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst27|ALT_INV_y.TAV~q\,
	dataf => \inst27|ALT_INV_y.TAC~q\,
	combout => \inst27|y~40_combout\);

-- Location: FF_X84_Y4_N2
\inst27|y.TAD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst27|y~40_combout\,
	clrn => \Resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst27|y.TAD~q\);

-- Location: MLABCELL_X84_Y4_N54
\inst27|EnH~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst27|EnH~0_combout\ = ( \inst27|y.TAC~q\ ) # ( !\inst27|y.TAC~q\ & ( \inst27|y.TAD~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst27|ALT_INV_y.TAD~q\,
	dataf => \inst27|ALT_INV_y.TAC~q\,
	combout => \inst27|EnH~0_combout\);

-- Location: FF_X84_Y4_N38
\inst19|temp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst19|temp~0_combout\,
	clrn => \Resetn~input_o\,
	ena => \inst27|EnH~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|temp\(4));

-- Location: MLABCELL_X84_Y4_N30
\inst19|temp~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst19|temp~4_combout\ = ( !\inst27|y.TAC~q\ & ( !\inst19|temp\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst19|ALT_INV_temp\(0),
	dataf => \inst27|ALT_INV_y.TAC~q\,
	combout => \inst19|temp~4_combout\);

-- Location: FF_X84_Y4_N32
\inst19|temp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst19|temp~4_combout\,
	clrn => \Resetn~input_o\,
	ena => \inst27|EnH~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|temp\(0));

-- Location: FF_X84_Y4_N34
\inst19|temp[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst19|temp~3_combout\,
	clrn => \Resetn~input_o\,
	ena => \inst27|EnH~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|temp[1]~DUPLICATE_q\);

-- Location: FF_X84_Y4_N31
\inst19|temp[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst19|temp~4_combout\,
	clrn => \Resetn~input_o\,
	ena => \inst27|EnH~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|temp[0]~DUPLICATE_q\);

-- Location: MLABCELL_X84_Y4_N15
\inst19|temp~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst19|temp~2_combout\ = ( \inst19|temp\(2) & ( !\inst27|y.TAC~q\ & ( (!\inst19|temp\(0)) # (!\inst19|temp\(1)) ) ) ) # ( !\inst19|temp\(2) & ( !\inst27|y.TAC~q\ & ( (\inst19|temp\(0) & \inst19|temp\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111111111111111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst19|ALT_INV_temp\(0),
	datad => \inst19|ALT_INV_temp\(1),
	datae => \inst19|ALT_INV_temp\(2),
	dataf => \inst27|ALT_INV_y.TAC~q\,
	combout => \inst19|temp~2_combout\);

-- Location: FF_X84_Y4_N17
\inst19|temp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst19|temp~2_combout\,
	clrn => \Resetn~input_o\,
	ena => \inst27|EnH~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|temp\(2));

-- Location: FF_X84_Y4_N22
\inst19|temp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst19|temp~1_combout\,
	clrn => \Resetn~input_o\,
	ena => \inst27|EnH~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|temp\(3));

-- Location: MLABCELL_X84_Y4_N21
\inst19|temp~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst19|temp~1_combout\ = ( \inst19|temp\(3) & ( !\inst27|y.TAC~q\ & ( (!\inst19|temp[0]~DUPLICATE_q\) # ((!\inst19|temp\(2)) # (!\inst19|temp\(1))) ) ) ) # ( !\inst19|temp\(3) & ( !\inst27|y.TAC~q\ & ( (\inst19|temp[0]~DUPLICATE_q\ & (\inst19|temp\(2) & 
-- \inst19|temp\(1))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101111111111111101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|ALT_INV_temp[0]~DUPLICATE_q\,
	datac => \inst19|ALT_INV_temp\(2),
	datad => \inst19|ALT_INV_temp\(1),
	datae => \inst19|ALT_INV_temp\(3),
	dataf => \inst27|ALT_INV_y.TAC~q\,
	combout => \inst19|temp~1_combout\);

-- Location: FF_X84_Y4_N23
\inst19|temp[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst19|temp~1_combout\,
	clrn => \Resetn~input_o\,
	ena => \inst27|EnH~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|temp[3]~DUPLICATE_q\);

-- Location: FF_X84_Y4_N16
\inst19|temp[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst19|temp~2_combout\,
	clrn => \Resetn~input_o\,
	ena => \inst27|EnH~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|temp[2]~DUPLICATE_q\);

-- Location: MLABCELL_X84_Y4_N42
\inst27|y~39\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst27|y~39_combout\ = ( \inst19|temp[3]~DUPLICATE_q\ & ( \inst19|temp[2]~DUPLICATE_q\ & ( (!\inst19|temp\(4) & \inst27|y.TAD~q\) ) ) ) # ( !\inst19|temp[3]~DUPLICATE_q\ & ( \inst19|temp[2]~DUPLICATE_q\ & ( \inst27|y.TAD~q\ ) ) ) # ( 
-- \inst19|temp[3]~DUPLICATE_q\ & ( !\inst19|temp[2]~DUPLICATE_q\ & ( (\inst27|y.TAD~q\ & ((!\inst19|temp\(4)) # ((!\inst19|temp\(0) & !\inst19|temp[1]~DUPLICATE_q\)))) ) ) ) # ( !\inst19|temp[3]~DUPLICATE_q\ & ( !\inst19|temp[2]~DUPLICATE_q\ & ( 
-- \inst27|y.TAD~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011100000101000001111000011110000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|ALT_INV_temp\(4),
	datab => \inst19|ALT_INV_temp\(0),
	datac => \inst27|ALT_INV_y.TAD~q\,
	datad => \inst19|ALT_INV_temp[1]~DUPLICATE_q\,
	datae => \inst19|ALT_INV_temp[3]~DUPLICATE_q\,
	dataf => \inst19|ALT_INV_temp[2]~DUPLICATE_q\,
	combout => \inst27|y~39_combout\);

-- Location: FF_X84_Y4_N44
\inst27|y.TAE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst27|y~39_combout\,
	clrn => \Resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst27|y.TAE~q\);

-- Location: FF_X85_Y4_N50
\inst102|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst24|mapped_value\(1),
	clrn => \Resetn~input_o\,
	sload => VCC,
	ena => \inst27|y.TAE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst102|q\(1));

-- Location: LABCELL_X85_Y4_N21
\inst27|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst27|Selector1~0_combout\ = ( !\inst102|q\(0) & ( (!\inst102|q\(1) & !\inst102|q\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000101010100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst102|ALT_INV_q\(1),
	datad => \inst102|ALT_INV_q\(2),
	dataf => \inst102|ALT_INV_q\(0),
	combout => \inst27|Selector1~0_combout\);

-- Location: LABCELL_X85_Y4_N45
\inst27|Selector1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst27|Selector1~3_combout\ = ( !\inst102|q\(6) & ( !\inst102|q\(4) & ( (\inst102|q\(5) & (\inst27|y.TAS~q\ & \inst102|q\(3))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst102|ALT_INV_q\(5),
	datac => \inst27|ALT_INV_y.TAS~q\,
	datad => \inst102|ALT_INV_q\(3),
	datae => \inst102|ALT_INV_q\(6),
	dataf => \inst102|ALT_INV_q\(4),
	combout => \inst27|Selector1~3_combout\);

-- Location: FF_X84_Y4_N1
\inst27|y.TAD~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst27|y~40_combout\,
	clrn => \Resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst27|y.TAD~DUPLICATE_q\);

-- Location: LABCELL_X85_Y4_N3
\inst27|Selector1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst27|Selector1~2_combout\ = ( \inst19|temp\(3) & ( \inst19|temp[2]~DUPLICATE_q\ & ( (\inst27|y.TAD~DUPLICATE_q\ & \inst19|temp[4]~DUPLICATE_q\) ) ) ) # ( \inst19|temp\(3) & ( !\inst19|temp[2]~DUPLICATE_q\ & ( (\inst27|y.TAD~DUPLICATE_q\ & 
-- (\inst19|temp[4]~DUPLICATE_q\ & ((\inst19|temp[1]~DUPLICATE_q\) # (\inst19|temp[0]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000011100000000000000000000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|ALT_INV_temp[0]~DUPLICATE_q\,
	datab => \inst19|ALT_INV_temp[1]~DUPLICATE_q\,
	datac => \inst27|ALT_INV_y.TAD~DUPLICATE_q\,
	datad => \inst19|ALT_INV_temp[4]~DUPLICATE_q\,
	datae => \inst19|ALT_INV_temp\(3),
	dataf => \inst19|ALT_INV_temp[2]~DUPLICATE_q\,
	combout => \inst27|Selector1~2_combout\);

-- Location: LABCELL_X85_Y4_N6
\inst27|y~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst27|y~29_combout\ = ( \inst27|mss_transiciones~0_combout\ & ( (\inst27|y.TAG~q\ & !\inst102|q\(6)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst27|ALT_INV_y.TAG~q\,
	datad => \inst102|ALT_INV_q\(6),
	dataf => \inst27|ALT_INV_mss_transiciones~0_combout\,
	combout => \inst27|y~29_combout\);

-- Location: FF_X85_Y4_N7
\inst27|y.TAH\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst27|y~29_combout\,
	clrn => \Resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst27|y.TAH~q\);

-- Location: LABCELL_X85_Y4_N18
\inst27|y~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst27|y~27_combout\ = ( \inst27|mss_transiciones~1_combout\ & ( (\inst27|y.TAG~q\ & ((!\inst27|mss_transiciones~0_combout\) # (\inst102|q\(6)))) ) ) # ( !\inst27|mss_transiciones~1_combout\ & ( (\inst27|y.TAG~q\ & \inst102|q\(6)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100110011000000110011001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst27|ALT_INV_y.TAG~q\,
	datac => \inst102|ALT_INV_q\(6),
	datad => \inst27|ALT_INV_mss_transiciones~0_combout\,
	dataf => \inst27|ALT_INV_mss_transiciones~1_combout\,
	combout => \inst27|y~27_combout\);

-- Location: FF_X85_Y4_N19
\inst27|y.TAI~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst27|y~27_combout\,
	clrn => \Resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst27|y.TAI~DUPLICATE_q\);

-- Location: MLABCELL_X82_Y4_N42
\inst27|Alarma\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst27|Alarma~combout\ = ( \inst27|y.TAI~DUPLICATE_q\ ) # ( !\inst27|y.TAI~DUPLICATE_q\ & ( \inst27|y.TAH~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst27|ALT_INV_y.TAH~q\,
	dataf => \inst27|ALT_INV_y.TAI~DUPLICATE_q\,
	combout => \inst27|Alarma~combout\);

-- Location: FF_X82_Y4_N29
\inst27|y.TAJ\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst27|Alarma~combout\,
	clrn => \Resetn~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst27|y.TAJ~q\);

-- Location: FF_X85_Y4_N47
\inst104|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst19|temp[2]~DUPLICATE_q\,
	clrn => \Resetn~input_o\,
	sload => VCC,
	ena => \inst27|y.TAJ~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst104|q\(2));

-- Location: FF_X85_Y4_N44
\inst104|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst19|temp[1]~DUPLICATE_q\,
	clrn => \Resetn~input_o\,
	sload => VCC,
	ena => \inst27|y.TAJ~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst104|q\(1));

-- Location: FF_X85_Y4_N26
\inst104|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst19|temp\(3),
	clrn => \Resetn~input_o\,
	sload => VCC,
	ena => \inst27|y.TAJ~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst104|q\(3));

-- Location: FF_X85_Y4_N28
\inst104|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst19|temp[4]~DUPLICATE_q\,
	clrn => \Resetn~input_o\,
	sload => VCC,
	ena => \inst27|y.TAJ~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst104|q\(4));

-- Location: LABCELL_X85_Y4_N24
\inst27|Selector1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst27|Selector1~1_combout\ = ( \inst104|q\(3) & ( \inst104|q\(4) & ( (!\FINALIZAR~input_o\ & \inst27|y.TAR~q\) ) ) ) # ( !\inst104|q\(3) & ( \inst104|q\(4) & ( (\inst27|y.TAR~q\ & ((!\FINALIZAR~input_o\) # ((!\inst104|q\(2)) # (!\inst104|q\(1))))) ) ) ) 
-- # ( \inst104|q\(3) & ( !\inst104|q\(4) & ( \inst27|y.TAR~q\ ) ) ) # ( !\inst104|q\(3) & ( !\inst104|q\(4) & ( \inst27|y.TAR~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_FINALIZAR~input_o\,
	datab => \inst27|ALT_INV_y.TAR~q\,
	datac => \inst104|ALT_INV_q\(2),
	datad => \inst104|ALT_INV_q\(1),
	datae => \inst104|ALT_INV_q\(3),
	dataf => \inst104|ALT_INV_q\(4),
	combout => \inst27|Selector1~1_combout\);

-- Location: LABCELL_X85_Y4_N12
\inst27|Selector1~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst27|Selector1~4_combout\ = ( \inst27|Selector1~2_combout\ & ( \inst27|Selector1~1_combout\ ) ) # ( !\inst27|Selector1~2_combout\ & ( \inst27|Selector1~1_combout\ ) ) # ( \inst27|Selector1~2_combout\ & ( !\inst27|Selector1~1_combout\ ) ) # ( 
-- !\inst27|Selector1~2_combout\ & ( !\inst27|Selector1~1_combout\ & ( (!\START~input_o\ & (((\inst27|Selector1~0_combout\ & \inst27|Selector1~3_combout\)) # (\inst27|y.TAB~q\))) # (\START~input_o\ & (((\inst27|Selector1~0_combout\ & 
-- \inst27|Selector1~3_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000101111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_START~input_o\,
	datab => \inst27|ALT_INV_y.TAB~q\,
	datac => \inst27|ALT_INV_Selector1~0_combout\,
	datad => \inst27|ALT_INV_Selector1~3_combout\,
	datae => \inst27|ALT_INV_Selector1~2_combout\,
	dataf => \inst27|ALT_INV_Selector1~1_combout\,
	combout => \inst27|Selector1~4_combout\);

-- Location: FF_X85_Y4_N14
\inst27|y.TAC\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst27|Selector1~4_combout\,
	clrn => \Resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst27|y.TAC~q\);

-- Location: MLABCELL_X84_Y4_N33
\inst19|temp~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst19|temp~3_combout\ = ( \inst19|temp[0]~DUPLICATE_q\ & ( (!\inst27|y.TAC~q\ & !\inst19|temp\(1)) ) ) # ( !\inst19|temp[0]~DUPLICATE_q\ & ( (!\inst27|y.TAC~q\ & \inst19|temp\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst27|ALT_INV_y.TAC~q\,
	datad => \inst19|ALT_INV_temp\(1),
	dataf => \inst19|ALT_INV_temp[0]~DUPLICATE_q\,
	combout => \inst19|temp~3_combout\);

-- Location: FF_X84_Y4_N35
\inst19|temp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst19|temp~3_combout\,
	clrn => \Resetn~input_o\,
	ena => \inst27|EnH~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|temp\(1));

-- Location: MLABCELL_X84_Y4_N36
\inst19|temp~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst19|temp~0_combout\ = ( \inst19|temp\(4) & ( !\inst27|y.TAC~q\ & ( (!\inst19|temp\(1)) # ((!\inst19|temp\(0)) # ((!\inst19|temp[3]~DUPLICATE_q\) # (!\inst19|temp\(2)))) ) ) ) # ( !\inst19|temp\(4) & ( !\inst27|y.TAC~q\ & ( (\inst19|temp\(1) & 
-- (\inst19|temp\(0) & (\inst19|temp[3]~DUPLICATE_q\ & \inst19|temp\(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001111111111111111000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|ALT_INV_temp\(1),
	datab => \inst19|ALT_INV_temp\(0),
	datac => \inst19|ALT_INV_temp[3]~DUPLICATE_q\,
	datad => \inst19|ALT_INV_temp\(2),
	datae => \inst19|ALT_INV_temp\(4),
	dataf => \inst27|ALT_INV_y.TAC~q\,
	combout => \inst19|temp~0_combout\);

-- Location: FF_X84_Y4_N37
\inst19|temp[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst19|temp~0_combout\,
	clrn => \Resetn~input_o\,
	ena => \inst27|EnH~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|temp[4]~DUPLICATE_q\);

-- Location: FF_X85_Y4_N29
\inst104|q[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst19|temp[4]~DUPLICATE_q\,
	clrn => \Resetn~input_o\,
	sload => VCC,
	ena => \inst27|y.TAJ~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst104|q[4]~DUPLICATE_q\);

-- Location: LABCELL_X85_Y4_N36
\inst27|y~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst27|y~32_combout\ = ( \inst104|q\(2) & ( \inst104|q\(3) & ( (\FINALIZAR~input_o\ & (\inst27|y.TAR~q\ & \inst104|q[4]~DUPLICATE_q\)) ) ) ) # ( !\inst104|q\(2) & ( \inst104|q\(3) & ( (\FINALIZAR~input_o\ & (\inst27|y.TAR~q\ & 
-- \inst104|q[4]~DUPLICATE_q\)) ) ) ) # ( \inst104|q\(2) & ( !\inst104|q\(3) & ( (\FINALIZAR~input_o\ & (\inst27|y.TAR~q\ & (\inst104|q[4]~DUPLICATE_q\ & \inst104|q\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_FINALIZAR~input_o\,
	datab => \inst27|ALT_INV_y.TAR~q\,
	datac => \inst104|ALT_INV_q[4]~DUPLICATE_q\,
	datad => \inst104|ALT_INV_q\(1),
	datae => \inst104|ALT_INV_q\(2),
	dataf => \inst104|ALT_INV_q\(3),
	combout => \inst27|y~32_combout\);

-- Location: FF_X85_Y4_N38
\inst27|y.TAW\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst27|y~32_combout\,
	clrn => \Resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst27|y.TAW~q\);

-- Location: LABCELL_X81_Y4_N33
\inst27|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst27|Selector0~0_combout\ = ( \inst27|y.TAA~q\ & ( !\inst27|y.TAW~q\ ) ) # ( !\inst27|y.TAA~q\ & ( !\inst27|y.TAW~q\ & ( \START~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_START~input_o\,
	datae => \inst27|ALT_INV_y.TAA~q\,
	dataf => \inst27|ALT_INV_y.TAW~q\,
	combout => \inst27|Selector0~0_combout\);

-- Location: FF_X81_Y4_N35
\inst27|y.TAA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst27|Selector0~0_combout\,
	clrn => \Resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst27|y.TAA~q\);

-- Location: FF_X81_Y4_N17
\inst23|temp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst23|temp~1_combout\,
	clrn => \Resetn~input_o\,
	ena => \inst27|WideOr11~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst23|temp\(2));

-- Location: LABCELL_X81_Y4_N15
\inst23|temp~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst23|temp~1_combout\ = ( \inst23|temp\(2) & ( \inst23|temp\(0) & ( (\inst27|y.TAA~q\ & (!\inst27|y.TAN~q\ & !\inst23|temp\(1))) ) ) ) # ( !\inst23|temp\(2) & ( \inst23|temp\(0) & ( (\inst27|y.TAA~q\ & (!\inst27|y.TAN~q\ & \inst23|temp\(1))) ) ) ) # ( 
-- \inst23|temp\(2) & ( !\inst23|temp\(0) & ( (\inst27|y.TAA~q\ & !\inst27|y.TAN~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010001000100010000000100000001000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst27|ALT_INV_y.TAA~q\,
	datab => \inst27|ALT_INV_y.TAN~q\,
	datac => \inst23|ALT_INV_temp\(1),
	datae => \inst23|ALT_INV_temp\(2),
	dataf => \inst23|ALT_INV_temp\(0),
	combout => \inst23|temp~1_combout\);

-- Location: FF_X81_Y4_N16
\inst23|temp[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst23|temp~1_combout\,
	clrn => \Resetn~input_o\,
	ena => \inst27|WideOr11~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst23|temp[2]~DUPLICATE_q\);

-- Location: FF_X82_Y4_N11
\inst27|y.TAO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst27|y~33_combout\,
	clrn => \Resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst27|y.TAO~q\);

-- Location: MLABCELL_X82_Y4_N15
\inst27|y~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst27|y~34_combout\ = ( \inst23|temp[3]~DUPLICATE_q\ & ( \inst23|temp[1]~DUPLICATE_q\ & ( (\Consultar~input_o\ & (\inst27|y.TAO~q\ & ((!\inst23|temp[2]~DUPLICATE_q\) # (!\inst23|temp\(0))))) ) ) ) # ( !\inst23|temp[3]~DUPLICATE_q\ & ( 
-- \inst23|temp[1]~DUPLICATE_q\ & ( (\Consultar~input_o\ & \inst27|y.TAO~q\) ) ) ) # ( \inst23|temp[3]~DUPLICATE_q\ & ( !\inst23|temp[1]~DUPLICATE_q\ & ( (\Consultar~input_o\ & \inst27|y.TAO~q\) ) ) ) # ( !\inst23|temp[3]~DUPLICATE_q\ & ( 
-- !\inst23|temp[1]~DUPLICATE_q\ & ( (\Consultar~input_o\ & \inst27|y.TAO~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101000001010000010100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Consultar~input_o\,
	datab => \inst23|ALT_INV_temp[2]~DUPLICATE_q\,
	datac => \inst27|ALT_INV_y.TAO~q\,
	datad => \inst23|ALT_INV_temp\(0),
	datae => \inst23|ALT_INV_temp[3]~DUPLICATE_q\,
	dataf => \inst23|ALT_INV_temp[1]~DUPLICATE_q\,
	combout => \inst27|y~34_combout\);

-- Location: FF_X82_Y4_N17
\inst27|y.TAQ\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst27|y~34_combout\,
	clrn => \Resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst27|y.TAQ~q\);

-- Location: MLABCELL_X82_Y4_N51
\inst26|AND_result\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst26|AND_result~combout\ = ( \inst23|temp[3]~DUPLICATE_q\ & ( \inst23|temp[2]~DUPLICATE_q\ & ( (\inst23|temp[0]~DUPLICATE_q\ & \inst23|temp[1]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst23|ALT_INV_temp[0]~DUPLICATE_q\,
	datac => \inst23|ALT_INV_temp[1]~DUPLICATE_q\,
	datae => \inst23|ALT_INV_temp[3]~DUPLICATE_q\,
	dataf => \inst23|ALT_INV_temp[2]~DUPLICATE_q\,
	combout => \inst26|AND_result~combout\);

-- Location: MLABCELL_X82_Y4_N39
\inst27|Selector4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst27|Selector4~0_combout\ = ( \inst26|AND_result~combout\ & ( \inst27|y.TAQ~q\ ) ) # ( !\inst26|AND_result~combout\ & ( ((!\Consultar~input_o\ & \inst27|y.TAO~DUPLICATE_q\)) # (\inst27|y.TAQ~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111001111000011111100111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Consultar~input_o\,
	datac => \inst27|ALT_INV_y.TAQ~q\,
	datad => \inst27|ALT_INV_y.TAO~DUPLICATE_q\,
	dataf => \inst26|ALT_INV_AND_result~combout\,
	combout => \inst27|Selector4~0_combout\);

-- Location: FF_X82_Y4_N41
\inst27|y.TAP\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst27|Selector4~0_combout\,
	clrn => \Resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst27|y.TAP~q\);

-- Location: FF_X81_Y4_N5
\inst27|y.TAM~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst27|y.TAL~q\,
	clrn => \Resetn~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst27|y.TAM~DUPLICATE_q\);

-- Location: LABCELL_X81_Y4_N36
\inst27|WideOr11\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst27|WideOr11~combout\ = ( \inst27|y.TAM~DUPLICATE_q\ & ( \inst27|y.TAA~q\ ) ) # ( !\inst27|y.TAM~DUPLICATE_q\ & ( \inst27|y.TAA~q\ & ( (\inst27|y.TAP~q\) # (\inst27|y.TAN~q\) ) ) ) # ( \inst27|y.TAM~DUPLICATE_q\ & ( !\inst27|y.TAA~q\ ) ) # ( 
-- !\inst27|y.TAM~DUPLICATE_q\ & ( !\inst27|y.TAA~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100111111001111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst27|ALT_INV_y.TAN~q\,
	datac => \inst27|ALT_INV_y.TAP~q\,
	datae => \inst27|ALT_INV_y.TAM~DUPLICATE_q\,
	dataf => \inst27|ALT_INV_y.TAA~q\,
	combout => \inst27|WideOr11~combout\);

-- Location: FF_X81_Y4_N11
\inst23|temp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst23|temp~2_combout\,
	clrn => \Resetn~input_o\,
	ena => \inst27|WideOr11~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst23|temp\(1));

-- Location: IOIBUF_X72_Y0_N1
\CargarRam~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CargarRam,
	o => \CargarRam~input_o\);

-- Location: MLABCELL_X82_Y4_N36
\inst27|Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst27|Selector3~0_combout\ = ( \inst26|AND_result~combout\ & ( \inst27|y.TAJ~q\ ) ) # ( !\inst26|AND_result~combout\ & ( ((!\CargarRam~input_o\ & \inst27|y.TAK~q\)) # (\inst27|y.TAJ~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111110101111000011111010111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_CargarRam~input_o\,
	datac => \inst27|ALT_INV_y.TAJ~q\,
	datad => \inst27|ALT_INV_y.TAK~q\,
	dataf => \inst26|ALT_INV_AND_result~combout\,
	combout => \inst27|Selector3~0_combout\);

-- Location: FF_X82_Y4_N38
\inst27|y.TAK\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst27|Selector3~0_combout\,
	clrn => \Resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst27|y.TAK~q\);

-- Location: LABCELL_X81_Y4_N42
\inst27|y~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst27|y~37_combout\ = ( \inst27|y.TAK~q\ & ( \inst23|temp[2]~DUPLICATE_q\ & ( (\inst23|temp\(1) & (\inst23|temp[0]~DUPLICATE_q\ & \inst23|temp\(3))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst23|ALT_INV_temp\(1),
	datac => \inst23|ALT_INV_temp[0]~DUPLICATE_q\,
	datad => \inst23|ALT_INV_temp\(3),
	datae => \inst27|ALT_INV_y.TAK~q\,
	dataf => \inst23|ALT_INV_temp[2]~DUPLICATE_q\,
	combout => \inst27|y~37_combout\);

-- Location: FF_X81_Y4_N44
\inst27|y.TAN\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst27|y~37_combout\,
	clrn => \Resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst27|y.TAN~q\);

-- Location: LABCELL_X81_Y4_N9
\inst23|temp~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst23|temp~2_combout\ = ( !\inst23|temp\(1) & ( \inst23|temp\(0) & ( (!\inst27|y.TAN~q\ & \inst27|y.TAA~q\) ) ) ) # ( \inst23|temp\(1) & ( !\inst23|temp\(0) & ( (!\inst27|y.TAN~q\ & \inst27|y.TAA~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000111100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst27|ALT_INV_y.TAN~q\,
	datad => \inst27|ALT_INV_y.TAA~q\,
	datae => \inst23|ALT_INV_temp\(1),
	dataf => \inst23|ALT_INV_temp\(0),
	combout => \inst23|temp~2_combout\);

-- Location: FF_X81_Y4_N10
\inst23|temp[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst23|temp~2_combout\,
	clrn => \Resetn~input_o\,
	ena => \inst27|WideOr11~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst23|temp[1]~DUPLICATE_q\);

-- Location: LABCELL_X81_Y4_N48
\inst27|y~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst27|y~38_combout\ = ( \inst27|y.TAK~q\ & ( \inst23|temp[3]~DUPLICATE_q\ & ( (\CargarRam~input_o\ & ((!\inst23|temp[1]~DUPLICATE_q\) # ((!\inst23|temp\(0)) # (!\inst23|temp\(2))))) ) ) ) # ( \inst27|y.TAK~q\ & ( !\inst23|temp[3]~DUPLICATE_q\ & ( 
-- \CargarRam~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000111100001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|ALT_INV_temp[1]~DUPLICATE_q\,
	datab => \inst23|ALT_INV_temp\(0),
	datac => \ALT_INV_CargarRam~input_o\,
	datad => \inst23|ALT_INV_temp\(2),
	datae => \inst27|ALT_INV_y.TAK~q\,
	dataf => \inst23|ALT_INV_temp[3]~DUPLICATE_q\,
	combout => \inst27|y~38_combout\);

-- Location: FF_X81_Y4_N50
\inst27|y.TAL\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst27|y~38_combout\,
	clrn => \Resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst27|y.TAL~q\);

-- Location: LABCELL_X83_Y4_N0
\inst104|q[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst104|q[0]~feeder_combout\ = ( \inst19|temp\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst19|ALT_INV_temp\(0),
	combout => \inst104|q[0]~feeder_combout\);

-- Location: FF_X83_Y4_N1
\inst104|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst104|q[0]~feeder_combout\,
	clrn => \Resetn~input_o\,
	ena => \inst27|y.TAJ~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst104|q\(0));

-- Location: FF_X85_Y4_N43
\inst104|q[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst19|temp[1]~DUPLICATE_q\,
	clrn => \Resetn~input_o\,
	sload => VCC,
	ena => \inst27|y.TAJ~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst104|q[1]~DUPLICATE_q\);

-- Location: M10K_X76_Y4_N0
\inst100|altsyncram_component|auto_generated|ram_block1a0\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "bloque_ram:inst100|altsyncram:altsyncram_component|altsyncram_io14:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 20,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 16,
	port_a_logical_ram_width => 5,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 4,
	port_b_data_width => 20,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \inst27|y.TAL~q\,
	portare => VCC,
	clk0 => \clk~inputCLKENA0_outclk\,
	portadatain => \inst100|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \inst100|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst100|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LABCELL_X70_Y4_N0
\inst34|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst34|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~17_sumout\ = SUM(( \inst100|altsyncram_component|auto_generated|q_a\(1) ) + ( !VCC ) + ( !VCC ))
-- \inst34|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~18\ = CARRY(( \inst100|altsyncram_component|auto_generated|q_a\(1) ) + ( !VCC ) + ( !VCC ))
-- \inst34|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~19\ = SHARE(VCC)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \inst100|altsyncram_component|auto_generated|ALT_INV_q_a\(1),
	cin => GND,
	sharein => GND,
	sumout => \inst34|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~17_sumout\,
	cout => \inst34|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~18\,
	shareout => \inst34|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~19\);

-- Location: LABCELL_X70_Y4_N3
\inst34|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst34|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~13_sumout\ = SUM(( \inst100|altsyncram_component|auto_generated|q_a\(2) ) + ( \inst34|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~19\ ) + ( 
-- \inst34|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~18\ ))
-- \inst34|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~14\ = CARRY(( \inst100|altsyncram_component|auto_generated|q_a\(2) ) + ( \inst34|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~19\ ) + ( 
-- \inst34|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~18\ ))
-- \inst34|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~15\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \inst100|altsyncram_component|auto_generated|ALT_INV_q_a\(2),
	cin => \inst34|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~18\,
	sharein => \inst34|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~19\,
	sumout => \inst34|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~13_sumout\,
	cout => \inst34|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~14\,
	shareout => \inst34|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~15\);

-- Location: LABCELL_X70_Y4_N6
\inst34|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst34|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~9_sumout\ = SUM(( !\inst100|altsyncram_component|auto_generated|q_a\(3) ) + ( \inst34|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~15\ ) + ( 
-- \inst34|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~14\ ))
-- \inst34|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~10\ = CARRY(( !\inst100|altsyncram_component|auto_generated|q_a\(3) ) + ( \inst34|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~15\ ) + ( 
-- \inst34|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~14\ ))
-- \inst34|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~11\ = SHARE(\inst100|altsyncram_component|auto_generated|q_a\(3))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000001100110011001100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \inst100|altsyncram_component|auto_generated|ALT_INV_q_a\(3),
	cin => \inst34|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~14\,
	sharein => \inst34|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~15\,
	sumout => \inst34|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~9_sumout\,
	cout => \inst34|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~10\,
	shareout => \inst34|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~11\);

-- Location: LABCELL_X70_Y4_N9
\inst34|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst34|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5_sumout\ = SUM(( \inst100|altsyncram_component|auto_generated|q_a\(4) ) + ( \inst34|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~11\ ) + ( 
-- \inst34|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~10\ ))
-- \inst34|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~6\ = CARRY(( \inst100|altsyncram_component|auto_generated|q_a\(4) ) + ( \inst34|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~11\ ) + ( 
-- \inst34|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~10\ ))
-- \inst34|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \inst100|altsyncram_component|auto_generated|ALT_INV_q_a\(4),
	cin => \inst34|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~10\,
	sharein => \inst34|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~11\,
	sumout => \inst34|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5_sumout\,
	cout => \inst34|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~6\,
	shareout => \inst34|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\);

-- Location: LABCELL_X70_Y4_N12
\inst34|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst34|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ = SUM(( VCC ) + ( \inst34|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\ ) + ( \inst34|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => \inst34|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~6\,
	sharein => \inst34|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\,
	sumout => \inst34|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\);

-- Location: LABCELL_X70_Y4_N24
\inst34|Div0|auto_generated|divider|divider|StageOut[18]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst34|Div0|auto_generated|divider|divider|StageOut[18]~0_combout\ = ( \inst34|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5_sumout\ & ( !\inst34|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst34|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	dataf => \inst34|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[3]~5_sumout\,
	combout => \inst34|Div0|auto_generated|divider|divider|StageOut[18]~0_combout\);

-- Location: LABCELL_X70_Y4_N27
\inst34|Div0|auto_generated|divider|divider|StageOut[18]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst34|Div0|auto_generated|divider|divider|StageOut[18]~1_combout\ = (\inst34|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & \inst100|altsyncram_component|auto_generated|q_a\(4))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst34|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	datac => \inst100|altsyncram_component|auto_generated|ALT_INV_q_a\(4),
	combout => \inst34|Div0|auto_generated|divider|divider|StageOut[18]~1_combout\);

-- Location: LABCELL_X70_Y4_N18
\inst34|Div0|auto_generated|divider|divider|StageOut[16]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst34|Div0|auto_generated|divider|divider|StageOut[16]~2_combout\ = (!\inst34|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & \inst34|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~13_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst34|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	datac => \inst34|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[1]~13_sumout\,
	combout => \inst34|Div0|auto_generated|divider|divider|StageOut[16]~2_combout\);

-- Location: LABCELL_X70_Y4_N21
\inst34|Div0|auto_generated|divider|divider|StageOut[16]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst34|Div0|auto_generated|divider|divider|StageOut[16]~3_combout\ = (\inst34|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & \inst100|altsyncram_component|auto_generated|q_a\(2))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst34|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	datad => \inst100|altsyncram_component|auto_generated|ALT_INV_q_a\(2),
	combout => \inst34|Div0|auto_generated|divider|divider|StageOut[16]~3_combout\);

-- Location: LABCELL_X70_Y4_N36
\inst34|Div0|auto_generated|divider|divider|op_5~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst34|Div0|auto_generated|divider|divider|op_5~26_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \inst34|Div0|auto_generated|divider|divider|op_5~26_cout\);

-- Location: LABCELL_X70_Y4_N39
\inst34|Div0|auto_generated|divider|divider|op_5~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst34|Div0|auto_generated|divider|divider|op_5~22_cout\ = CARRY(( \inst100|altsyncram_component|auto_generated|q_a\(0) ) + ( VCC ) + ( \inst34|Div0|auto_generated|divider|divider|op_5~26_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst100|altsyncram_component|auto_generated|ALT_INV_q_a\(0),
	cin => \inst34|Div0|auto_generated|divider|divider|op_5~26_cout\,
	cout => \inst34|Div0|auto_generated|divider|divider|op_5~22_cout\);

-- Location: LABCELL_X70_Y4_N42
\inst34|Div0|auto_generated|divider|divider|op_5~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst34|Div0|auto_generated|divider|divider|op_5~18_cout\ = CARRY(( (!\inst34|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ((\inst34|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~17_sumout\))) # 
-- (\inst34|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & (\inst100|altsyncram_component|auto_generated|q_a\(1))) ) + ( GND ) + ( \inst34|Div0|auto_generated|divider|divider|op_5~22_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst34|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	datac => \inst100|altsyncram_component|auto_generated|ALT_INV_q_a\(1),
	datad => \inst34|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[0]~17_sumout\,
	cin => \inst34|Div0|auto_generated|divider|divider|op_5~22_cout\,
	cout => \inst34|Div0|auto_generated|divider|divider|op_5~18_cout\);

-- Location: LABCELL_X70_Y4_N45
\inst34|Div0|auto_generated|divider|divider|op_5~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst34|Div0|auto_generated|divider|divider|op_5~14_cout\ = CARRY(( (\inst34|Div0|auto_generated|divider|divider|StageOut[16]~3_combout\) # (\inst34|Div0|auto_generated|divider|divider|StageOut[16]~2_combout\) ) + ( VCC ) + ( 
-- \inst34|Div0|auto_generated|divider|divider|op_5~18_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst34|Div0|auto_generated|divider|divider|ALT_INV_StageOut[16]~2_combout\,
	datad => \inst34|Div0|auto_generated|divider|divider|ALT_INV_StageOut[16]~3_combout\,
	cin => \inst34|Div0|auto_generated|divider|divider|op_5~18_cout\,
	cout => \inst34|Div0|auto_generated|divider|divider|op_5~14_cout\);

-- Location: LABCELL_X70_Y4_N48
\inst34|Div0|auto_generated|divider|divider|op_5~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst34|Div0|auto_generated|divider|divider|op_5~10_cout\ = CARRY(( GND ) + ( (!\inst34|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ((\inst34|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~9_sumout\))) # 
-- (\inst34|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & (\inst100|altsyncram_component|auto_generated|q_a\(3))) ) + ( \inst34|Div0|auto_generated|divider|divider|op_5~14_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000000110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst100|altsyncram_component|auto_generated|ALT_INV_q_a\(3),
	datac => \inst34|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	dataf => \inst34|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[2]~9_sumout\,
	cin => \inst34|Div0|auto_generated|divider|divider|op_5~14_cout\,
	cout => \inst34|Div0|auto_generated|divider|divider|op_5~10_cout\);

-- Location: LABCELL_X70_Y4_N51
\inst34|Div0|auto_generated|divider|divider|op_5~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst34|Div0|auto_generated|divider|divider|op_5~6_cout\ = CARRY(( (\inst34|Div0|auto_generated|divider|divider|StageOut[18]~1_combout\) # (\inst34|Div0|auto_generated|divider|divider|StageOut[18]~0_combout\) ) + ( VCC ) + ( 
-- \inst34|Div0|auto_generated|divider|divider|op_5~10_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst34|Div0|auto_generated|divider|divider|ALT_INV_StageOut[18]~0_combout\,
	datad => \inst34|Div0|auto_generated|divider|divider|ALT_INV_StageOut[18]~1_combout\,
	cin => \inst34|Div0|auto_generated|divider|divider|op_5~10_cout\,
	cout => \inst34|Div0|auto_generated|divider|divider|op_5~6_cout\);

-- Location: LABCELL_X70_Y4_N54
\inst34|Div0|auto_generated|divider|divider|op_5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst34|Div0|auto_generated|divider|divider|op_5~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \inst34|Div0|auto_generated|divider|divider|op_5~6_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \inst34|Div0|auto_generated|divider|divider|op_5~6_cout\,
	sumout => \inst34|Div0|auto_generated|divider|divider|op_5~1_sumout\);

-- Location: LABCELL_X70_Y4_N33
\inst30|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst30|Mux1~0_combout\ = (!\inst34|Div0|auto_generated|divider|divider|op_5~1_sumout\ & !\inst34|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst34|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datab => \inst34|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	combout => \inst30|Mux1~0_combout\);

-- Location: LABCELL_X70_Y4_N30
\inst30|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst30|Mux6~0_combout\ = !\inst34|Div0|auto_generated|divider|divider|op_5~1_sumout\ $ (\inst34|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100110011001100110011001100110011001100110011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst34|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datab => \inst34|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	combout => \inst30|Mux6~0_combout\);

-- Location: MLABCELL_X72_Y4_N30
\inst34|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst34|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~13_sumout\ = SUM(( \inst100|altsyncram_component|auto_generated|q_a\(1) ) + ( !VCC ) + ( !VCC ))
-- \inst34|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~14\ = CARRY(( \inst100|altsyncram_component|auto_generated|q_a\(1) ) + ( !VCC ) + ( !VCC ))
-- \inst34|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~15\ = SHARE(VCC)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \inst100|altsyncram_component|auto_generated|ALT_INV_q_a\(1),
	cin => GND,
	sharein => GND,
	sumout => \inst34|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~13_sumout\,
	cout => \inst34|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~14\,
	shareout => \inst34|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~15\);

-- Location: MLABCELL_X72_Y4_N33
\inst34|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst34|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~9_sumout\ = SUM(( \inst100|altsyncram_component|auto_generated|q_a\(2) ) + ( \inst34|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~15\ ) + ( 
-- \inst34|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~14\ ))
-- \inst34|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~10\ = CARRY(( \inst100|altsyncram_component|auto_generated|q_a\(2) ) + ( \inst34|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~15\ ) + ( 
-- \inst34|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~14\ ))
-- \inst34|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~11\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \inst100|altsyncram_component|auto_generated|ALT_INV_q_a\(2),
	cin => \inst34|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~14\,
	sharein => \inst34|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~15\,
	sumout => \inst34|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~9_sumout\,
	cout => \inst34|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~10\,
	shareout => \inst34|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~11\);

-- Location: MLABCELL_X72_Y4_N36
\inst34|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst34|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_sumout\ = SUM(( !\inst100|altsyncram_component|auto_generated|q_a\(3) ) + ( \inst34|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~11\ ) + ( 
-- \inst34|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~10\ ))
-- \inst34|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~6\ = CARRY(( !\inst100|altsyncram_component|auto_generated|q_a\(3) ) + ( \inst34|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~11\ ) + ( 
-- \inst34|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~10\ ))
-- \inst34|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~7\ = SHARE(\inst100|altsyncram_component|auto_generated|q_a\(3))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000001111000011110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \inst100|altsyncram_component|auto_generated|ALT_INV_q_a\(3),
	cin => \inst34|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~10\,
	sharein => \inst34|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~11\,
	sumout => \inst34|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_sumout\,
	cout => \inst34|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~6\,
	shareout => \inst34|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~7\);

-- Location: MLABCELL_X72_Y4_N39
\inst34|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst34|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~17_sumout\ = SUM(( \inst100|altsyncram_component|auto_generated|q_a\(4) ) + ( \inst34|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~7\ ) + ( 
-- \inst34|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~6\ ))
-- \inst34|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~18\ = CARRY(( \inst100|altsyncram_component|auto_generated|q_a\(4) ) + ( \inst34|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~7\ ) + ( 
-- \inst34|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~6\ ))
-- \inst34|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~19\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \inst100|altsyncram_component|auto_generated|ALT_INV_q_a\(4),
	cin => \inst34|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~6\,
	sharein => \inst34|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~7\,
	sumout => \inst34|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~17_sumout\,
	cout => \inst34|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~18\,
	shareout => \inst34|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~19\);

-- Location: MLABCELL_X72_Y4_N42
\inst34|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst34|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ = SUM(( VCC ) + ( \inst34|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~19\ ) + ( \inst34|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => \inst34|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~18\,
	sharein => \inst34|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~19\,
	sumout => \inst34|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\);

-- Location: LABCELL_X73_Y4_N15
\inst34|Mod0|auto_generated|divider|divider|StageOut[18]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst34|Mod0|auto_generated|divider|divider|StageOut[18]~6_combout\ = ( !\inst34|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ( \inst34|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~17_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \inst34|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	dataf => \inst34|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[3]~17_sumout\,
	combout => \inst34|Mod0|auto_generated|divider|divider|StageOut[18]~6_combout\);

-- Location: MLABCELL_X72_Y4_N57
\inst34|Mod0|auto_generated|divider|divider|StageOut[18]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst34|Mod0|auto_generated|divider|divider|StageOut[18]~7_combout\ = ( \inst34|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ( \inst100|altsyncram_component|auto_generated|q_a\(4) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst100|altsyncram_component|auto_generated|ALT_INV_q_a\(4),
	dataf => \inst34|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	combout => \inst34|Mod0|auto_generated|divider|divider|StageOut[18]~7_combout\);

-- Location: MLABCELL_X72_Y4_N51
\inst34|Mod0|auto_generated|divider|divider|StageOut[16]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst34|Mod0|auto_generated|divider|divider|StageOut[16]~1_combout\ = ( \inst34|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~9_sumout\ & ( !\inst34|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst34|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	dataf => \inst34|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[1]~9_sumout\,
	combout => \inst34|Mod0|auto_generated|divider|divider|StageOut[16]~1_combout\);

-- Location: MLABCELL_X72_Y4_N48
\inst34|Mod0|auto_generated|divider|divider|StageOut[16]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst34|Mod0|auto_generated|divider|divider|StageOut[16]~2_combout\ = ( \inst100|altsyncram_component|auto_generated|q_a\(2) & ( \inst34|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst34|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	dataf => \inst100|altsyncram_component|auto_generated|ALT_INV_q_a\(2),
	combout => \inst34|Mod0|auto_generated|divider|divider|StageOut[16]~2_combout\);

-- Location: MLABCELL_X72_Y4_N0
\inst34|Mod0|auto_generated|divider|divider|op_5~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst34|Mod0|auto_generated|divider|divider|op_5~26_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \inst34|Mod0|auto_generated|divider|divider|op_5~26_cout\);

-- Location: MLABCELL_X72_Y4_N3
\inst34|Mod0|auto_generated|divider|divider|op_5~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst34|Mod0|auto_generated|divider|divider|op_5~17_sumout\ = SUM(( \inst100|altsyncram_component|auto_generated|q_a\(0) ) + ( VCC ) + ( \inst34|Mod0|auto_generated|divider|divider|op_5~26_cout\ ))
-- \inst34|Mod0|auto_generated|divider|divider|op_5~18\ = CARRY(( \inst100|altsyncram_component|auto_generated|q_a\(0) ) + ( VCC ) + ( \inst34|Mod0|auto_generated|divider|divider|op_5~26_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst100|altsyncram_component|auto_generated|ALT_INV_q_a\(0),
	cin => \inst34|Mod0|auto_generated|divider|divider|op_5~26_cout\,
	sumout => \inst34|Mod0|auto_generated|divider|divider|op_5~17_sumout\,
	cout => \inst34|Mod0|auto_generated|divider|divider|op_5~18\);

-- Location: MLABCELL_X72_Y4_N6
\inst34|Mod0|auto_generated|divider|divider|op_5~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst34|Mod0|auto_generated|divider|divider|op_5~13_sumout\ = SUM(( GND ) + ( (!\inst34|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ((\inst34|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~13_sumout\))) # 
-- (\inst34|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & (\inst100|altsyncram_component|auto_generated|q_a\(1))) ) + ( \inst34|Mod0|auto_generated|divider|divider|op_5~18\ ))
-- \inst34|Mod0|auto_generated|divider|divider|op_5~14\ = CARRY(( GND ) + ( (!\inst34|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ((\inst34|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~13_sumout\))) # 
-- (\inst34|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & (\inst100|altsyncram_component|auto_generated|q_a\(1))) ) + ( \inst34|Mod0|auto_generated|divider|divider|op_5~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst34|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	datac => \inst100|altsyncram_component|auto_generated|ALT_INV_q_a\(1),
	dataf => \inst34|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[0]~13_sumout\,
	cin => \inst34|Mod0|auto_generated|divider|divider|op_5~18\,
	sumout => \inst34|Mod0|auto_generated|divider|divider|op_5~13_sumout\,
	cout => \inst34|Mod0|auto_generated|divider|divider|op_5~14\);

-- Location: MLABCELL_X72_Y4_N9
\inst34|Mod0|auto_generated|divider|divider|op_5~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst34|Mod0|auto_generated|divider|divider|op_5~9_sumout\ = SUM(( VCC ) + ( (\inst34|Mod0|auto_generated|divider|divider|StageOut[16]~2_combout\) # (\inst34|Mod0|auto_generated|divider|divider|StageOut[16]~1_combout\) ) + ( 
-- \inst34|Mod0|auto_generated|divider|divider|op_5~14\ ))
-- \inst34|Mod0|auto_generated|divider|divider|op_5~10\ = CARRY(( VCC ) + ( (\inst34|Mod0|auto_generated|divider|divider|StageOut[16]~2_combout\) # (\inst34|Mod0|auto_generated|divider|divider|StageOut[16]~1_combout\) ) + ( 
-- \inst34|Mod0|auto_generated|divider|divider|op_5~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010100000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst34|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[16]~1_combout\,
	dataf => \inst34|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[16]~2_combout\,
	cin => \inst34|Mod0|auto_generated|divider|divider|op_5~14\,
	sumout => \inst34|Mod0|auto_generated|divider|divider|op_5~9_sumout\,
	cout => \inst34|Mod0|auto_generated|divider|divider|op_5~10\);

-- Location: MLABCELL_X72_Y4_N12
\inst34|Mod0|auto_generated|divider|divider|op_5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst34|Mod0|auto_generated|divider|divider|op_5~1_sumout\ = SUM(( (!\inst34|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ((\inst34|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_sumout\))) # 
-- (\inst34|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & (\inst100|altsyncram_component|auto_generated|q_a\(3))) ) + ( GND ) + ( \inst34|Mod0|auto_generated|divider|divider|op_5~10\ ))
-- \inst34|Mod0|auto_generated|divider|divider|op_5~2\ = CARRY(( (!\inst34|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ((\inst34|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_sumout\))) # 
-- (\inst34|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & (\inst100|altsyncram_component|auto_generated|q_a\(3))) ) + ( GND ) + ( \inst34|Mod0|auto_generated|divider|divider|op_5~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst34|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	datac => \inst100|altsyncram_component|auto_generated|ALT_INV_q_a\(3),
	datad => \inst34|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[2]~5_sumout\,
	cin => \inst34|Mod0|auto_generated|divider|divider|op_5~10\,
	sumout => \inst34|Mod0|auto_generated|divider|divider|op_5~1_sumout\,
	cout => \inst34|Mod0|auto_generated|divider|divider|op_5~2\);

-- Location: MLABCELL_X72_Y4_N15
\inst34|Mod0|auto_generated|divider|divider|op_5~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst34|Mod0|auto_generated|divider|divider|op_5~22_cout\ = CARRY(( (\inst34|Mod0|auto_generated|divider|divider|StageOut[18]~7_combout\) # (\inst34|Mod0|auto_generated|divider|divider|StageOut[18]~6_combout\) ) + ( VCC ) + ( 
-- \inst34|Mod0|auto_generated|divider|divider|op_5~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst34|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[18]~6_combout\,
	datac => \inst34|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[18]~7_combout\,
	cin => \inst34|Mod0|auto_generated|divider|divider|op_5~2\,
	cout => \inst34|Mod0|auto_generated|divider|divider|op_5~22_cout\);

-- Location: MLABCELL_X72_Y4_N18
\inst34|Mod0|auto_generated|divider|divider|op_5~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst34|Mod0|auto_generated|divider|divider|op_5~5_sumout\ = SUM(( VCC ) + ( GND ) + ( \inst34|Mod0|auto_generated|divider|divider|op_5~22_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \inst34|Mod0|auto_generated|divider|divider|op_5~22_cout\,
	sumout => \inst34|Mod0|auto_generated|divider|divider|op_5~5_sumout\);

-- Location: MLABCELL_X72_Y4_N27
\inst34|Mod0|auto_generated|divider|divider|StageOut[23]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst34|Mod0|auto_generated|divider|divider|StageOut[23]~0_combout\ = ( \inst34|Mod0|auto_generated|divider|divider|op_5~1_sumout\ & ( (!\inst34|Mod0|auto_generated|divider|divider|op_5~5_sumout\) # 
-- ((!\inst34|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & (\inst34|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_sumout\)) # (\inst34|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & 
-- ((\inst100|altsyncram_component|auto_generated|q_a\(3))))) ) ) # ( !\inst34|Mod0|auto_generated|divider|divider|op_5~1_sumout\ & ( (\inst34|Mod0|auto_generated|divider|divider|op_5~5_sumout\ & 
-- ((!\inst34|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & (\inst34|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_sumout\)) # (\inst34|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & 
-- ((\inst100|altsyncram_component|auto_generated|q_a\(3)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101000001000001010110101110101111111010111010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst34|Mod0|auto_generated|divider|divider|ALT_INV_op_5~5_sumout\,
	datab => \inst34|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	datac => \inst34|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[2]~5_sumout\,
	datad => \inst100|altsyncram_component|auto_generated|ALT_INV_q_a\(3),
	dataf => \inst34|Mod0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	combout => \inst34|Mod0|auto_generated|divider|divider|StageOut[23]~0_combout\);

-- Location: MLABCELL_X72_Y4_N24
\inst34|Mod0|auto_generated|divider|divider|StageOut[21]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst34|Mod0|auto_generated|divider|divider|StageOut[21]~4_combout\ = ( \inst34|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~13_sumout\ & ( (!\inst34|Mod0|auto_generated|divider|divider|op_5~5_sumout\ & 
-- (((\inst34|Mod0|auto_generated|divider|divider|op_5~13_sumout\)))) # (\inst34|Mod0|auto_generated|divider|divider|op_5~5_sumout\ & ((!\inst34|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\) # 
-- ((\inst100|altsyncram_component|auto_generated|q_a\(1))))) ) ) # ( !\inst34|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~13_sumout\ & ( (!\inst34|Mod0|auto_generated|divider|divider|op_5~5_sumout\ & 
-- (((\inst34|Mod0|auto_generated|divider|divider|op_5~13_sumout\)))) # (\inst34|Mod0|auto_generated|divider|divider|op_5~5_sumout\ & (\inst34|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & 
-- (\inst100|altsyncram_component|auto_generated|q_a\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110101011000000011010101101000101111011110100010111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst34|Mod0|auto_generated|divider|divider|ALT_INV_op_5~5_sumout\,
	datab => \inst34|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	datac => \inst100|altsyncram_component|auto_generated|ALT_INV_q_a\(1),
	datad => \inst34|Mod0|auto_generated|divider|divider|ALT_INV_op_5~13_sumout\,
	dataf => \inst34|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[0]~13_sumout\,
	combout => \inst34|Mod0|auto_generated|divider|divider|StageOut[21]~4_combout\);

-- Location: LABCELL_X71_Y4_N24
\inst34|Mod0|auto_generated|divider|divider|StageOut[20]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst34|Mod0|auto_generated|divider|divider|StageOut[20]~5_combout\ = ( \inst34|Mod0|auto_generated|divider|divider|op_5~17_sumout\ & ( (!\inst34|Mod0|auto_generated|divider|divider|op_5~5_sumout\) # (\inst100|altsyncram_component|auto_generated|q_a\(0)) 
-- ) ) # ( !\inst34|Mod0|auto_generated|divider|divider|op_5~17_sumout\ & ( (\inst34|Mod0|auto_generated|divider|divider|op_5~5_sumout\ & \inst100|altsyncram_component|auto_generated|q_a\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011110011111100111100000011000000111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst34|Mod0|auto_generated|divider|divider|ALT_INV_op_5~5_sumout\,
	datac => \inst100|altsyncram_component|auto_generated|ALT_INV_q_a\(0),
	datae => \inst34|Mod0|auto_generated|divider|divider|ALT_INV_op_5~17_sumout\,
	combout => \inst34|Mod0|auto_generated|divider|divider|StageOut[20]~5_combout\);

-- Location: MLABCELL_X72_Y4_N54
\inst34|Mod0|auto_generated|divider|divider|StageOut[22]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst34|Mod0|auto_generated|divider|divider|StageOut[22]~3_combout\ = ( \inst34|Mod0|auto_generated|divider|divider|op_5~5_sumout\ & ( (!\inst34|Mod0|auto_generated|divider|divider|StageOut[16]~1_combout\ & 
-- !\inst34|Mod0|auto_generated|divider|divider|StageOut[16]~2_combout\) ) ) # ( !\inst34|Mod0|auto_generated|divider|divider|op_5~5_sumout\ & ( !\inst34|Mod0|auto_generated|divider|divider|op_5~9_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst34|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[16]~1_combout\,
	datab => \inst34|Mod0|auto_generated|divider|divider|ALT_INV_op_5~9_sumout\,
	datac => \inst34|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[16]~2_combout\,
	dataf => \inst34|Mod0|auto_generated|divider|divider|ALT_INV_op_5~5_sumout\,
	combout => \inst34|Mod0|auto_generated|divider|divider|StageOut[22]~3_combout\);

-- Location: LABCELL_X71_Y4_N18
\inst29|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst29|Mux0~0_combout\ = ( \inst34|Mod0|auto_generated|divider|divider|StageOut[22]~3_combout\ & ( !\inst34|Mod0|auto_generated|divider|divider|StageOut[21]~4_combout\ $ (((!\inst34|Mod0|auto_generated|divider|divider|StageOut[23]~0_combout\) # 
-- (\inst34|Mod0|auto_generated|divider|divider|StageOut[20]~5_combout\))) ) ) # ( !\inst34|Mod0|auto_generated|divider|divider|StageOut[22]~3_combout\ & ( ((!\inst34|Mod0|auto_generated|divider|divider|StageOut[23]~0_combout\ & 
-- \inst34|Mod0|auto_generated|divider|divider|StageOut[21]~4_combout\)) # (\inst34|Mod0|auto_generated|divider|divider|StageOut[20]~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010111100101111011000110110001100101111001011110110001101100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst34|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[23]~0_combout\,
	datab => \inst34|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[21]~4_combout\,
	datac => \inst34|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[20]~5_combout\,
	datae => \inst34|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[22]~3_combout\,
	combout => \inst29|Mux0~0_combout\);

-- Location: LABCELL_X71_Y4_N51
\inst29|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst29|Mux1~0_combout\ = ( \inst34|Mod0|auto_generated|divider|divider|StageOut[23]~0_combout\ & ( (!\inst34|Mod0|auto_generated|divider|divider|StageOut[22]~3_combout\ & (\inst34|Mod0|auto_generated|divider|divider|StageOut[20]~5_combout\)) # 
-- (\inst34|Mod0|auto_generated|divider|divider|StageOut[22]~3_combout\ & ((\inst34|Mod0|auto_generated|divider|divider|StageOut[21]~4_combout\))) ) ) # ( !\inst34|Mod0|auto_generated|divider|divider|StageOut[23]~0_combout\ & ( 
-- (!\inst34|Mod0|auto_generated|divider|divider|StageOut[20]~5_combout\ & (!\inst34|Mod0|auto_generated|divider|divider|StageOut[22]~3_combout\ & \inst34|Mod0|auto_generated|divider|divider|StageOut[21]~4_combout\)) # 
-- (\inst34|Mod0|auto_generated|divider|divider|StageOut[20]~5_combout\ & ((!\inst34|Mod0|auto_generated|divider|divider|StageOut[22]~3_combout\) # (\inst34|Mod0|auto_generated|divider|divider|StageOut[21]~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110101001101010001110100011101001101010011010100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst34|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[20]~5_combout\,
	datab => \inst34|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[22]~3_combout\,
	datac => \inst34|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[21]~4_combout\,
	datae => \inst34|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[23]~0_combout\,
	combout => \inst29|Mux1~0_combout\);

-- Location: LABCELL_X71_Y4_N6
\inst29|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst29|Mux2~0_combout\ = ( \inst34|Mod0|auto_generated|divider|divider|StageOut[22]~3_combout\ & ( (\inst34|Mod0|auto_generated|divider|divider|StageOut[21]~4_combout\ & \inst34|Mod0|auto_generated|divider|divider|StageOut[20]~5_combout\) ) ) # ( 
-- !\inst34|Mod0|auto_generated|divider|divider|StageOut[22]~3_combout\ & ( ((!\inst34|Mod0|auto_generated|divider|divider|StageOut[23]~0_combout\ & !\inst34|Mod0|auto_generated|divider|divider|StageOut[21]~4_combout\)) # 
-- (\inst34|Mod0|auto_generated|divider|divider|StageOut[20]~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000111110001111000000110000001110001111100011110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst34|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[23]~0_combout\,
	datab => \inst34|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[21]~4_combout\,
	datac => \inst34|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[20]~5_combout\,
	datae => \inst34|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[22]~3_combout\,
	combout => \inst29|Mux2~0_combout\);

-- Location: LABCELL_X71_Y4_N3
\inst29|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst29|Mux3~0_combout\ = ( \inst34|Mod0|auto_generated|divider|divider|StageOut[23]~0_combout\ & ( (!\inst34|Mod0|auto_generated|divider|divider|StageOut[20]~5_combout\ & (!\inst34|Mod0|auto_generated|divider|divider|StageOut[22]~3_combout\ $ 
-- (!\inst34|Mod0|auto_generated|divider|divider|StageOut[21]~4_combout\))) # (\inst34|Mod0|auto_generated|divider|divider|StageOut[20]~5_combout\ & ((!\inst34|Mod0|auto_generated|divider|divider|StageOut[22]~3_combout\) # 
-- (\inst34|Mod0|auto_generated|divider|divider|StageOut[21]~4_combout\))) ) ) # ( !\inst34|Mod0|auto_generated|divider|divider|StageOut[23]~0_combout\ & ( (!\inst34|Mod0|auto_generated|divider|divider|StageOut[22]~3_combout\ & 
-- (\inst34|Mod0|auto_generated|divider|divider|StageOut[20]~5_combout\)) # (\inst34|Mod0|auto_generated|divider|divider|StageOut[22]~3_combout\ & ((\inst34|Mod0|auto_generated|divider|divider|StageOut[21]~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111011011010110110101000111010001110110110101101101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst34|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[20]~5_combout\,
	datab => \inst34|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[22]~3_combout\,
	datac => \inst34|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[21]~4_combout\,
	datae => \inst34|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[23]~0_combout\,
	combout => \inst29|Mux3~0_combout\);

-- Location: LABCELL_X71_Y4_N30
\inst29|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst29|Mux4~0_combout\ = ( \inst34|Mod0|auto_generated|divider|divider|StageOut[22]~3_combout\ & ( (\inst34|Mod0|auto_generated|divider|divider|StageOut[21]~4_combout\) # (\inst34|Mod0|auto_generated|divider|divider|StageOut[23]~0_combout\) ) ) # ( 
-- !\inst34|Mod0|auto_generated|divider|divider|StageOut[22]~3_combout\ & ( (\inst34|Mod0|auto_generated|divider|divider|StageOut[20]~5_combout\) # (\inst34|Mod0|auto_generated|divider|divider|StageOut[23]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111011101110111011101011111010111110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst34|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[23]~0_combout\,
	datab => \inst34|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[21]~4_combout\,
	datac => \inst34|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[20]~5_combout\,
	datae => \inst34|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[22]~3_combout\,
	combout => \inst29|Mux4~0_combout\);

-- Location: LABCELL_X71_Y4_N15
\inst29|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst29|Mux5~0_combout\ = ( \inst34|Mod0|auto_generated|divider|divider|StageOut[23]~0_combout\ & ( (!\inst34|Mod0|auto_generated|divider|divider|StageOut[22]~3_combout\) # (!\inst34|Mod0|auto_generated|divider|divider|StageOut[20]~5_combout\ $ 
-- (\inst34|Mod0|auto_generated|divider|divider|StageOut[21]~4_combout\)) ) ) # ( !\inst34|Mod0|auto_generated|divider|divider|StageOut[23]~0_combout\ & ( (!\inst34|Mod0|auto_generated|divider|divider|StageOut[21]~4_combout\ & 
-- ((!\inst34|Mod0|auto_generated|divider|divider|StageOut[22]~3_combout\))) # (\inst34|Mod0|auto_generated|divider|divider|StageOut[21]~4_combout\ & (\inst34|Mod0|auto_generated|divider|divider|StageOut[20]~5_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100010111000101111011011110110111000101110001011110110111101101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst34|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[20]~5_combout\,
	datab => \inst34|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[22]~3_combout\,
	datac => \inst34|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[21]~4_combout\,
	datae => \inst34|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[23]~0_combout\,
	combout => \inst29|Mux5~0_combout\);

-- Location: LABCELL_X71_Y4_N54
\inst29|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst29|Mux6~0_combout\ = ( \inst34|Mod0|auto_generated|divider|divider|StageOut[22]~3_combout\ & ( (!\inst34|Mod0|auto_generated|divider|divider|StageOut[21]~4_combout\ & (!\inst34|Mod0|auto_generated|divider|divider|StageOut[23]~0_combout\ & 
-- !\inst34|Mod0|auto_generated|divider|divider|StageOut[20]~5_combout\)) # (\inst34|Mod0|auto_generated|divider|divider|StageOut[21]~4_combout\ & ((\inst34|Mod0|auto_generated|divider|divider|StageOut[20]~5_combout\))) ) ) # ( 
-- !\inst34|Mod0|auto_generated|divider|divider|StageOut[22]~3_combout\ & ( ((!\inst34|Mod0|auto_generated|divider|divider|StageOut[21]~4_combout\) # (\inst34|Mod0|auto_generated|divider|divider|StageOut[20]~5_combout\)) # 
-- (\inst34|Mod0|auto_generated|divider|divider|StageOut[23]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101111111011111100000111000001111011111110111111000001110000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst34|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[23]~0_combout\,
	datab => \inst34|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[21]~4_combout\,
	datac => \inst34|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[20]~5_combout\,
	datae => \inst34|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[22]~3_combout\,
	combout => \inst29|Mux6~0_combout\);

-- Location: FF_X85_Y6_N52
\inst27|y.TAF~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst27|y~28_combout\,
	clrn => \Resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst27|y.TAF~DUPLICATE_q\);

-- Location: FF_X85_Y4_N20
\inst27|y.TAI\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst27|y~27_combout\,
	clrn => \Resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst27|y.TAI~q\);

-- Location: MLABCELL_X82_Y4_N24
\inst27|WideOr12\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst27|WideOr12~combout\ = ((\inst27|y.TAI~q\) # (\inst27|y.TAF~DUPLICATE_q\)) # (\inst27|y.TAH~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111111111111010111111111111101011111111111110101111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst27|ALT_INV_y.TAH~q\,
	datac => \inst27|ALT_INV_y.TAF~DUPLICATE_q\,
	datad => \inst27|ALT_INV_y.TAI~q\,
	combout => \inst27|WideOr12~combout\);

-- Location: LABCELL_X83_Y4_N57
\inst27|WideOr6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst27|WideOr6~0_combout\ = ( !\inst27|y.TAT~q\ & ( (!\inst27|y.TAW~q\ & !\inst27|y.TAS~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst27|ALT_INV_y.TAW~q\,
	datad => \inst27|ALT_INV_y.TAS~q\,
	dataf => \inst27|ALT_INV_y.TAT~q\,
	combout => \inst27|WideOr6~0_combout\);

-- Location: LABCELL_X83_Y4_N54
\inst27|WideOr6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst27|WideOr6~combout\ = ( \inst27|y.TAR~q\ ) # ( !\inst27|y.TAR~q\ & ( (((!\inst27|WideOr6~0_combout\) # (\inst27|y.TAV~q\)) # (\inst27|y.TAQ~q\)) # (\inst27|y.TAU~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111101111111111111110111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst27|ALT_INV_y.TAU~q\,
	datab => \inst27|ALT_INV_y.TAQ~q\,
	datac => \inst27|ALT_INV_y.TAV~q\,
	datad => \inst27|ALT_INV_WideOr6~0_combout\,
	dataf => \inst27|ALT_INV_y.TAR~q\,
	combout => \inst27|WideOr6~combout\);

-- Location: MLABCELL_X82_Y4_N57
\inst27|WideOr7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst27|WideOr7~0_combout\ = ( !\inst27|y.TAK~q\ & ( !\inst27|y.TAO~q\ & ( (!\inst27|y.TAP~q\ & !\inst27|y.TAL~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst27|ALT_INV_y.TAP~q\,
	datad => \inst27|ALT_INV_y.TAL~q\,
	datae => \inst27|ALT_INV_y.TAK~q\,
	dataf => \inst27|ALT_INV_y.TAO~q\,
	combout => \inst27|WideOr7~0_combout\);

-- Location: MLABCELL_X82_Y4_N6
\inst27|WideOr7\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst27|WideOr7~combout\ = ( \inst27|y.TAI~DUPLICATE_q\ ) # ( !\inst27|y.TAI~DUPLICATE_q\ & ( (((!\inst27|WideOr7~0_combout\) # (\inst27|y.TAJ~q\)) # (\inst27|y.TAM~q\)) # (\inst27|y.TAN~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111101111111111111110111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst27|ALT_INV_y.TAN~DUPLICATE_q\,
	datab => \inst27|ALT_INV_y.TAM~q\,
	datac => \inst27|ALT_INV_y.TAJ~q\,
	datad => \inst27|ALT_INV_WideOr7~0_combout\,
	dataf => \inst27|ALT_INV_y.TAI~DUPLICATE_q\,
	combout => \inst27|WideOr7~combout\);

-- Location: MLABCELL_X82_Y4_N45
\inst27|WideOr8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst27|WideOr8~0_combout\ = ( !\inst27|y.TAN~DUPLICATE_q\ & ( (!\inst27|y.TAH~q\ & (!\inst27|y.TAV~q\ & (!\inst27|y.TAP~q\ & !\inst27|y.TAF~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst27|ALT_INV_y.TAH~q\,
	datab => \inst27|ALT_INV_y.TAV~q\,
	datac => \inst27|ALT_INV_y.TAP~q\,
	datad => \inst27|ALT_INV_y.TAF~DUPLICATE_q\,
	dataf => \inst27|ALT_INV_y.TAN~DUPLICATE_q\,
	combout => \inst27|WideOr8~0_combout\);

-- Location: LABCELL_X85_Y4_N48
\inst27|WideOr8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst27|WideOr8~1_combout\ = ( !\inst27|y.TAM~q\ & ( (!\inst27|y.TAO~q\ & (!\inst27|y.TAG~q\ & !\inst27|y.TAE~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000000000000000000010000000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst27|ALT_INV_y.TAO~q\,
	datab => \inst27|ALT_INV_y.TAG~q\,
	datac => \inst27|ALT_INV_y.TAE~q\,
	datae => \inst27|ALT_INV_y.TAM~q\,
	combout => \inst27|WideOr8~1_combout\);

-- Location: LABCELL_X83_Y4_N51
\inst27|WideOr8\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst27|WideOr8~combout\ = ( \inst27|y.TAU~q\ & ( \inst27|y.TAW~q\ ) ) # ( !\inst27|y.TAU~q\ & ( \inst27|y.TAW~q\ ) ) # ( \inst27|y.TAU~q\ & ( !\inst27|y.TAW~q\ ) ) # ( !\inst27|y.TAU~q\ & ( !\inst27|y.TAW~q\ & ( (!\inst27|WideOr8~0_combout\) # 
-- (!\inst27|WideOr8~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111110101010111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst27|ALT_INV_WideOr8~0_combout\,
	datad => \inst27|ALT_INV_WideOr8~1_combout\,
	datae => \inst27|ALT_INV_y.TAU~q\,
	dataf => \inst27|ALT_INV_y.TAW~q\,
	combout => \inst27|WideOr8~combout\);

-- Location: MLABCELL_X82_Y4_N27
\inst27|WideOr9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst27|WideOr9~combout\ = ( \inst27|y.TAG~q\ ) # ( !\inst27|y.TAG~q\ & ( ((!\inst27|WideOr7~0_combout\) # ((!\inst27|WideOr6~0_combout\) # (\inst27|EnH~0_combout\))) # (\inst27|y.TAH~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110111111111111111011111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst27|ALT_INV_y.TAH~q\,
	datab => \inst27|ALT_INV_WideOr7~0_combout\,
	datac => \inst27|ALT_INV_WideOr6~0_combout\,
	datad => \inst27|ALT_INV_EnH~0_combout\,
	dataf => \inst27|ALT_INV_y.TAG~q\,
	combout => \inst27|WideOr9~combout\);

-- Location: MLABCELL_X84_Y4_N3
\inst27|WideOr10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst27|WideOr10~0_combout\ = ( !\inst27|y.TAL~q\ & ( (!\inst27|y.TAD~q\ & (!\inst27|y.TAJ~q\ & !\inst27|y.TAB~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100000000000100010000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst27|ALT_INV_y.TAD~q\,
	datab => \inst27|ALT_INV_y.TAJ~q\,
	datad => \inst27|ALT_INV_y.TAB~q\,
	dataf => \inst27|ALT_INV_y.TAL~q\,
	combout => \inst27|WideOr10~0_combout\);

-- Location: LABCELL_X83_Y4_N30
\inst27|WideOr10\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst27|WideOr10~combout\ = ( \inst27|WideOr10~0_combout\ & ( \inst27|WideOr8~0_combout\ & ( (\inst27|y.TAR~q\) # (\inst27|y.TAT~q\) ) ) ) # ( !\inst27|WideOr10~0_combout\ & ( \inst27|WideOr8~0_combout\ ) ) # ( \inst27|WideOr10~0_combout\ & ( 
-- !\inst27|WideOr8~0_combout\ ) ) # ( !\inst27|WideOr10~0_combout\ & ( !\inst27|WideOr8~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst27|ALT_INV_y.TAT~q\,
	datad => \inst27|ALT_INV_y.TAR~q\,
	datae => \inst27|ALT_INV_WideOr10~0_combout\,
	dataf => \inst27|ALT_INV_WideOr8~0_combout\,
	combout => \inst27|WideOr10~combout\);

-- Location: LABCELL_X37_Y19_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


