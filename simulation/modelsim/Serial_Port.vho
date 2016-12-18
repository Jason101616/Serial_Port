-- Copyright (C) 1991-2011 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II"
-- VERSION "Version 11.0 Build 208 07/03/2011 Service Pack 1 SJ Web Edition"

-- DATE "12/18/2016 17:41:29"

-- 
-- Device: Altera EP1C3T144C8 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONE;
LIBRARY IEEE;
USE CYCLONE.CYCLONE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Top_Module IS
    PORT (
	Data_out : OUT std_logic;
	Data_in : IN std_logic;
	RST : IN std_logic;
	CLK : IN std_logic;
	Buttom1 : IN std_logic;
	Buttom2 : IN std_logic
	);
END Top_Module;

-- Design Ports Information
-- Data_out	=>  Location: PIN_1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RST	=>  Location: PIN_16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Buttom2	=>  Location: PIN_134,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Buttom1	=>  Location: PIN_82,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLK	=>  Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Data_in	=>  Location: PIN_36,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Top_Module IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Data_out : std_logic;
SIGNAL ww_Data_in : std_logic;
SIGNAL ww_RST : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_Buttom1 : std_logic;
SIGNAL ww_Buttom2 : std_logic;
SIGNAL \b2v_inst1|Transmit_Data:xbufs[6]~regout\ : std_logic;
SIGNAL \b2v_inst1|Transmit_Data:xbufs[5]~regout\ : std_logic;
SIGNAL \b2v_inst1|Transmit_Data:xbufs[1]~regout\ : std_logic;
SIGNAL \b2v_inst1|Transmit_Data:xbufs[2]~regout\ : std_logic;
SIGNAL \CLK~combout\ : std_logic;
SIGNAL \Buttom2~combout\ : std_logic;
SIGNAL \RST~combout\ : std_logic;
SIGNAL \b2v_inst2|cnt[0]~63\ : std_logic;
SIGNAL \b2v_inst2|cnt[1]~49\ : std_logic;
SIGNAL \b2v_inst2|cnt[1]~49COUT1_94\ : std_logic;
SIGNAL \b2v_inst2|cnt[2]~51\ : std_logic;
SIGNAL \b2v_inst2|cnt[2]~51COUT1_96\ : std_logic;
SIGNAL \b2v_inst2|cnt[3]~47\ : std_logic;
SIGNAL \b2v_inst2|cnt[3]~47COUT1_98\ : std_logic;
SIGNAL \b2v_inst2|cnt[4]~45\ : std_logic;
SIGNAL \b2v_inst2|cnt[4]~45COUT1_100\ : std_logic;
SIGNAL \b2v_inst2|cnt[5]~39\ : std_logic;
SIGNAL \b2v_inst2|cnt[6]~37\ : std_logic;
SIGNAL \b2v_inst2|cnt[6]~37COUT1_102\ : std_logic;
SIGNAL \b2v_inst2|cnt[7]~41\ : std_logic;
SIGNAL \b2v_inst2|cnt[7]~41COUT1_104\ : std_logic;
SIGNAL \b2v_inst2|cnt[8]~35\ : std_logic;
SIGNAL \b2v_inst2|cnt[8]~35COUT1_106\ : std_logic;
SIGNAL \b2v_inst2|cnt[9]~43\ : std_logic;
SIGNAL \b2v_inst2|cnt[9]~43COUT1_108\ : std_logic;
SIGNAL \b2v_inst2|LessThan3~1_combout\ : std_logic;
SIGNAL \b2v_inst2|LessThan3~0_combout\ : std_logic;
SIGNAL \b2v_inst2|LessThan3~2_combout\ : std_logic;
SIGNAL \b2v_inst2|cnt[10]~33\ : std_logic;
SIGNAL \Buttom1~combout\ : std_logic;
SIGNAL \b2v_inst2|LessThan2~1_combout\ : std_logic;
SIGNAL \b2v_inst2|LessThan0~5_combout\ : std_logic;
SIGNAL \b2v_inst2|LessThan2~0_combout\ : std_logic;
SIGNAL \b2v_inst2|LessThan2~2_combout\ : std_logic;
SIGNAL \b2v_inst2|cnt[17]~65_combout\ : std_logic;
SIGNAL \b2v_inst2|LessThan0~6_combout\ : std_logic;
SIGNAL \b2v_inst2|LessThan0~7_combout\ : std_logic;
SIGNAL \b2v_inst2|LessThan0~8_combout\ : std_logic;
SIGNAL \b2v_inst2|LessThan1~0_combout\ : std_logic;
SIGNAL \b2v_inst2|LessThan1~1_combout\ : std_logic;
SIGNAL \b2v_inst2|LessThan1~2_combout\ : std_logic;
SIGNAL \b2v_inst2|cnt[17]~64_combout\ : std_logic;
SIGNAL \b2v_inst2|cnt[17]~66_combout\ : std_logic;
SIGNAL \b2v_inst2|cnt[11]~61\ : std_logic;
SIGNAL \b2v_inst2|cnt[11]~61COUT1_110\ : std_logic;
SIGNAL \b2v_inst2|cnt[12]~1\ : std_logic;
SIGNAL \b2v_inst2|cnt[12]~1COUT1_112\ : std_logic;
SIGNAL \b2v_inst2|cnt[13]~3\ : std_logic;
SIGNAL \b2v_inst2|cnt[13]~3COUT1_114\ : std_logic;
SIGNAL \b2v_inst2|cnt[14]~5\ : std_logic;
SIGNAL \b2v_inst2|cnt[14]~5COUT1_116\ : std_logic;
SIGNAL \b2v_inst2|cnt[15]~7\ : std_logic;
SIGNAL \b2v_inst2|cnt[16]~9\ : std_logic;
SIGNAL \b2v_inst2|cnt[16]~9COUT1_118\ : std_logic;
SIGNAL \b2v_inst2|cnt[17]~11\ : std_logic;
SIGNAL \b2v_inst2|cnt[17]~11COUT1_120\ : std_logic;
SIGNAL \b2v_inst2|cnt[18]~13\ : std_logic;
SIGNAL \b2v_inst2|cnt[18]~13COUT1_122\ : std_logic;
SIGNAL \b2v_inst2|cnt[19]~15\ : std_logic;
SIGNAL \b2v_inst2|cnt[19]~15COUT1_124\ : std_logic;
SIGNAL \b2v_inst2|cnt[20]~17\ : std_logic;
SIGNAL \b2v_inst2|cnt[21]~19\ : std_logic;
SIGNAL \b2v_inst2|cnt[21]~19COUT1_126\ : std_logic;
SIGNAL \b2v_inst2|cnt[22]~21\ : std_logic;
SIGNAL \b2v_inst2|cnt[22]~21COUT1_128\ : std_logic;
SIGNAL \b2v_inst2|cnt[23]~23\ : std_logic;
SIGNAL \b2v_inst2|cnt[23]~23COUT1_130\ : std_logic;
SIGNAL \b2v_inst2|cnt[24]~25\ : std_logic;
SIGNAL \b2v_inst2|cnt[24]~25COUT1_132\ : std_logic;
SIGNAL \b2v_inst2|cnt[25]~27\ : std_logic;
SIGNAL \b2v_inst2|cnt[26]~29\ : std_logic;
SIGNAL \b2v_inst2|cnt[26]~29COUT1_134\ : std_logic;
SIGNAL \b2v_inst2|cnt[27]~31\ : std_logic;
SIGNAL \b2v_inst2|cnt[27]~31COUT1_136\ : std_logic;
SIGNAL \b2v_inst2|cnt[28]~55\ : std_logic;
SIGNAL \b2v_inst2|cnt[28]~55COUT1_138\ : std_logic;
SIGNAL \b2v_inst2|cnt[29]~57\ : std_logic;
SIGNAL \b2v_inst2|cnt[29]~57COUT1_140\ : std_logic;
SIGNAL \b2v_inst2|LessThan0~0_combout\ : std_logic;
SIGNAL \b2v_inst2|LessThan0~1_combout\ : std_logic;
SIGNAL \b2v_inst2|LessThan0~2_combout\ : std_logic;
SIGNAL \b2v_inst2|LessThan0~3_combout\ : std_logic;
SIGNAL \b2v_inst2|LessThan0~4_combout\ : std_logic;
SIGNAL \b2v_inst2|LessThan0~10_combout\ : std_logic;
SIGNAL \b2v_inst2|cnt[17]~67_combout\ : std_logic;
SIGNAL \b2v_inst2|cnt[30]~59\ : std_logic;
SIGNAL \b2v_inst2|LessThan0~9_combout\ : std_logic;
SIGNAL \b2v_inst2|bclk~0_combout\ : std_logic;
SIGNAL \b2v_inst2|bclk~1_combout\ : std_logic;
SIGNAL \b2v_inst2|bclk~2_combout\ : std_logic;
SIGNAL \b2v_inst2|LessThan2~3_combout\ : std_logic;
SIGNAL \b2v_inst2|LessThan2~4_combout\ : std_logic;
SIGNAL \b2v_inst2|LessThan3~3_combout\ : std_logic;
SIGNAL \b2v_inst2|bclk~regout\ : std_logic;
SIGNAL \b2v_inst1|Add1~0_combout\ : std_logic;
SIGNAL \b2v_inst1|Add1~2\ : std_logic;
SIGNAL \b2v_inst1|Add1~5_combout\ : std_logic;
SIGNAL \b2v_inst1|Transmit_Data:tbitcnt[1]~regout\ : std_logic;
SIGNAL \b2v_inst1|Add1~7\ : std_logic;
SIGNAL \b2v_inst1|Add1~7COUT1_186\ : std_logic;
SIGNAL \b2v_inst1|Add1~10_combout\ : std_logic;
SIGNAL \b2v_inst1|Transmit_Data:tbitcnt[2]~regout\ : std_logic;
SIGNAL \b2v_inst1|Add1~12\ : std_logic;
SIGNAL \b2v_inst1|Add1~12COUT1_188\ : std_logic;
SIGNAL \b2v_inst1|Add1~155_combout\ : std_logic;
SIGNAL \b2v_inst1|Add1~140_combout\ : std_logic;
SIGNAL \b2v_inst1|Transmit_Data:tbitcnt[6]~regout\ : std_logic;
SIGNAL \b2v_inst1|Add1~142\ : std_logic;
SIGNAL \b2v_inst1|Add1~142COUT1_194\ : std_logic;
SIGNAL \b2v_inst1|Add1~135_combout\ : std_logic;
SIGNAL \b2v_inst1|Transmit_Data:tbitcnt[7]~regout\ : std_logic;
SIGNAL \b2v_inst1|Add1~137\ : std_logic;
SIGNAL \b2v_inst1|Add1~137COUT1_196\ : std_logic;
SIGNAL \b2v_inst1|Add1~130_combout\ : std_logic;
SIGNAL \b2v_inst1|Transmit_Data:tbitcnt[8]~regout\ : std_logic;
SIGNAL \b2v_inst1|Add1~132\ : std_logic;
SIGNAL \b2v_inst1|Add1~132COUT1_198\ : std_logic;
SIGNAL \b2v_inst1|Add1~125_combout\ : std_logic;
SIGNAL \b2v_inst1|Transmit_Data:tbitcnt[9]~regout\ : std_logic;
SIGNAL \b2v_inst1|Add1~115_combout\ : std_logic;
SIGNAL \b2v_inst1|Transmit_Data:tbitcnt[11]~regout\ : std_logic;
SIGNAL \b2v_inst1|Add1~117\ : std_logic;
SIGNAL \b2v_inst1|Add1~117COUT1_202\ : std_logic;
SIGNAL \b2v_inst1|Add1~110_combout\ : std_logic;
SIGNAL \b2v_inst1|Transmit_Data:tbitcnt[12]~regout\ : std_logic;
SIGNAL \b2v_inst1|Add1~112\ : std_logic;
SIGNAL \b2v_inst1|Add1~112COUT1_204\ : std_logic;
SIGNAL \b2v_inst1|Add1~105_combout\ : std_logic;
SIGNAL \b2v_inst1|Transmit_Data:tbitcnt[13]~regout\ : std_logic;
SIGNAL \b2v_inst1|Add1~107\ : std_logic;
SIGNAL \b2v_inst1|Add1~107COUT1_206\ : std_logic;
SIGNAL \b2v_inst1|Add1~102\ : std_logic;
SIGNAL \b2v_inst1|Add1~102COUT1_208\ : std_logic;
SIGNAL \b2v_inst1|Add1~95_combout\ : std_logic;
SIGNAL \b2v_inst1|Equal1~5\ : std_logic;
SIGNAL \b2v_inst1|Equal1~6\ : std_logic;
SIGNAL \b2v_inst1|Equal1~7\ : std_logic;
SIGNAL \b2v_inst1|Equal1~8\ : std_logic;
SIGNAL \b2v_inst1|Equal1~9_combout\ : std_logic;
SIGNAL \b2v_inst1|Transmit_Data:tbitcnt[3]~regout\ : std_logic;
SIGNAL \b2v_inst1|Add1~157\ : std_logic;
SIGNAL \b2v_inst1|Add1~157COUT1_190\ : std_logic;
SIGNAL \b2v_inst1|Add1~150_combout\ : std_logic;
SIGNAL \b2v_inst1|Transmit_Data:tbitcnt[4]~regout\ : std_logic;
SIGNAL \b2v_inst1|Add1~152\ : std_logic;
SIGNAL \b2v_inst1|Add1~152COUT1_192\ : std_logic;
SIGNAL \b2v_inst1|Add1~145_combout\ : std_logic;
SIGNAL \b2v_inst1|Transmit_Data:tbitcnt[5]~regout\ : std_logic;
SIGNAL \b2v_inst1|Add1~147\ : std_logic;
SIGNAL \b2v_inst1|Add1~127\ : std_logic;
SIGNAL \b2v_inst1|Add1~127COUT1_200\ : std_logic;
SIGNAL \b2v_inst1|Add1~120_combout\ : std_logic;
SIGNAL \b2v_inst1|Transmit_Data:tbitcnt[10]~regout\ : std_logic;
SIGNAL \b2v_inst1|Add1~122\ : std_logic;
SIGNAL \b2v_inst1|Add1~100_combout\ : std_logic;
SIGNAL \b2v_inst1|Transmit_Data:tbitcnt[14]~regout\ : std_logic;
SIGNAL \b2v_inst1|Transmit_Data:tbitcnt[15]~regout\ : std_logic;
SIGNAL \b2v_inst1|Add1~97\ : std_logic;
SIGNAL \b2v_inst1|Add1~90_combout\ : std_logic;
SIGNAL \b2v_inst1|Transmit_Data:tbitcnt[16]~regout\ : std_logic;
SIGNAL \b2v_inst1|Add1~92\ : std_logic;
SIGNAL \b2v_inst1|Add1~92COUT1_210\ : std_logic;
SIGNAL \b2v_inst1|Add1~85_combout\ : std_logic;
SIGNAL \b2v_inst1|Transmit_Data:tbitcnt[17]~regout\ : std_logic;
SIGNAL \b2v_inst1|Add1~87\ : std_logic;
SIGNAL \b2v_inst1|Add1~87COUT1_212\ : std_logic;
SIGNAL \b2v_inst1|Add1~80_combout\ : std_logic;
SIGNAL \b2v_inst1|Transmit_Data:tbitcnt[18]~regout\ : std_logic;
SIGNAL \b2v_inst1|Add1~82\ : std_logic;
SIGNAL \b2v_inst1|Add1~82COUT1_214\ : std_logic;
SIGNAL \b2v_inst1|Add1~75_combout\ : std_logic;
SIGNAL \b2v_inst1|Transmit_Data:tbitcnt[19]~regout\ : std_logic;
SIGNAL \b2v_inst1|Add1~77\ : std_logic;
SIGNAL \b2v_inst1|Add1~77COUT1_216\ : std_logic;
SIGNAL \b2v_inst1|Add1~70_combout\ : std_logic;
SIGNAL \b2v_inst1|Transmit_Data:tbitcnt[20]~regout\ : std_logic;
SIGNAL \b2v_inst1|Add1~72\ : std_logic;
SIGNAL \b2v_inst1|Add1~65_combout\ : std_logic;
SIGNAL \b2v_inst1|Transmit_Data:tbitcnt[21]~regout\ : std_logic;
SIGNAL \b2v_inst1|Add1~67\ : std_logic;
SIGNAL \b2v_inst1|Add1~67COUT1_218\ : std_logic;
SIGNAL \b2v_inst1|Add1~60_combout\ : std_logic;
SIGNAL \b2v_inst1|Transmit_Data:tbitcnt[22]~regout\ : std_logic;
SIGNAL \b2v_inst1|Add1~62\ : std_logic;
SIGNAL \b2v_inst1|Add1~62COUT1_220\ : std_logic;
SIGNAL \b2v_inst1|Add1~55_combout\ : std_logic;
SIGNAL \b2v_inst1|Transmit_Data:tbitcnt[23]~regout\ : std_logic;
SIGNAL \b2v_inst1|Add1~57\ : std_logic;
SIGNAL \b2v_inst1|Add1~57COUT1_222\ : std_logic;
SIGNAL \b2v_inst1|Add1~50_combout\ : std_logic;
SIGNAL \b2v_inst1|Transmit_Data:tbitcnt[24]~regout\ : std_logic;
SIGNAL \b2v_inst1|Add1~52\ : std_logic;
SIGNAL \b2v_inst1|Add1~52COUT1_224\ : std_logic;
SIGNAL \b2v_inst1|Add1~45_combout\ : std_logic;
SIGNAL \b2v_inst1|Transmit_Data:tbitcnt[25]~regout\ : std_logic;
SIGNAL \b2v_inst1|Add1~47\ : std_logic;
SIGNAL \b2v_inst1|Add1~40_combout\ : std_logic;
SIGNAL \b2v_inst1|Transmit_Data:tbitcnt[26]~regout\ : std_logic;
SIGNAL \b2v_inst1|Add1~42\ : std_logic;
SIGNAL \b2v_inst1|Add1~42COUT1_226\ : std_logic;
SIGNAL \b2v_inst1|Add1~35_combout\ : std_logic;
SIGNAL \b2v_inst1|Transmit_Data:tbitcnt[27]~regout\ : std_logic;
SIGNAL \b2v_inst1|Add1~37\ : std_logic;
SIGNAL \b2v_inst1|Add1~37COUT1_228\ : std_logic;
SIGNAL \b2v_inst1|Add1~30_combout\ : std_logic;
SIGNAL \b2v_inst1|Transmit_Data:tbitcnt[28]~regout\ : std_logic;
SIGNAL \b2v_inst1|Add1~32\ : std_logic;
SIGNAL \b2v_inst1|Add1~32COUT1_230\ : std_logic;
SIGNAL \b2v_inst1|Add1~25_combout\ : std_logic;
SIGNAL \b2v_inst1|Transmit_Data:tbitcnt[29]~regout\ : std_logic;
SIGNAL \b2v_inst1|Add1~27\ : std_logic;
SIGNAL \b2v_inst1|Add1~27COUT1_232\ : std_logic;
SIGNAL \b2v_inst1|Add1~20_combout\ : std_logic;
SIGNAL \b2v_inst1|Transmit_Data:tbitcnt[30]~regout\ : std_logic;
SIGNAL \b2v_inst1|Transmit_Data:tbitcnt[31]~regout\ : std_logic;
SIGNAL \b2v_inst1|Add1~22\ : std_logic;
SIGNAL \b2v_inst1|Add1~15_combout\ : std_logic;
SIGNAL \b2v_inst1|Equal1~0\ : std_logic;
SIGNAL \b2v_inst1|Equal1~2\ : std_logic;
SIGNAL \b2v_inst1|Equal1~3\ : std_logic;
SIGNAL \b2v_inst1|Equal1~1\ : std_logic;
SIGNAL \b2v_inst1|Equal1~4_combout\ : std_logic;
SIGNAL \b2v_inst1|state.x_stop~regout\ : std_logic;
SIGNAL \b2v_inst|rbuf[7]~1_combout\ : std_logic;
SIGNAL \Data_in~combout\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:cnt5[31]~0_combout\ : std_logic;
SIGNAL \b2v_inst|suspicious_start~regout\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:cnt[30]~0_combout\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:cnt[28]~regout\ : std_logic;
SIGNAL \b2v_inst|Add1~5_combout\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:cnt[0]~regout\ : std_logic;
SIGNAL \b2v_inst|Add1~7\ : std_logic;
SIGNAL \b2v_inst|Add1~10_combout\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:cnt[1]~regout\ : std_logic;
SIGNAL \b2v_inst|Add1~12\ : std_logic;
SIGNAL \b2v_inst|Add1~12COUT1_186\ : std_logic;
SIGNAL \b2v_inst|Add1~15_combout\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:cnt[2]~regout\ : std_logic;
SIGNAL \b2v_inst|Add1~17\ : std_logic;
SIGNAL \b2v_inst|Add1~17COUT1_188\ : std_logic;
SIGNAL \b2v_inst|Add1~0_combout\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:cnt[3]~regout\ : std_logic;
SIGNAL \b2v_inst|Add1~2\ : std_logic;
SIGNAL \b2v_inst|Add1~2COUT1_190\ : std_logic;
SIGNAL \b2v_inst|Add1~20_combout\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:cnt[4]~regout\ : std_logic;
SIGNAL \b2v_inst|Add1~22\ : std_logic;
SIGNAL \b2v_inst|Add1~22COUT1_192\ : std_logic;
SIGNAL \b2v_inst|Add1~25_combout\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:cnt[5]~regout\ : std_logic;
SIGNAL \b2v_inst|Add1~27\ : std_logic;
SIGNAL \b2v_inst|Add1~30_combout\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:cnt[6]~regout\ : std_logic;
SIGNAL \b2v_inst|Add1~32\ : std_logic;
SIGNAL \b2v_inst|Add1~32COUT1_194\ : std_logic;
SIGNAL \b2v_inst|Add1~35_combout\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:cnt[7]~regout\ : std_logic;
SIGNAL \b2v_inst|Add1~37\ : std_logic;
SIGNAL \b2v_inst|Add1~37COUT1_196\ : std_logic;
SIGNAL \b2v_inst|Add1~40_combout\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:cnt[8]~regout\ : std_logic;
SIGNAL \b2v_inst|Add1~42\ : std_logic;
SIGNAL \b2v_inst|Add1~42COUT1_198\ : std_logic;
SIGNAL \b2v_inst|Add1~45_combout\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:cnt[9]~regout\ : std_logic;
SIGNAL \b2v_inst|Add1~47\ : std_logic;
SIGNAL \b2v_inst|Add1~47COUT1_200\ : std_logic;
SIGNAL \b2v_inst|Add1~50_combout\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:cnt[10]~regout\ : std_logic;
SIGNAL \b2v_inst|Add1~52\ : std_logic;
SIGNAL \b2v_inst|Add1~55_combout\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:cnt[11]~regout\ : std_logic;
SIGNAL \b2v_inst|Add1~57\ : std_logic;
SIGNAL \b2v_inst|Add1~57COUT1_202\ : std_logic;
SIGNAL \b2v_inst|Add1~60_combout\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:cnt[12]~regout\ : std_logic;
SIGNAL \b2v_inst|Add1~62\ : std_logic;
SIGNAL \b2v_inst|Add1~62COUT1_204\ : std_logic;
SIGNAL \b2v_inst|Add1~65_combout\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:cnt[13]~regout\ : std_logic;
SIGNAL \b2v_inst|Add1~67\ : std_logic;
SIGNAL \b2v_inst|Add1~67COUT1_206\ : std_logic;
SIGNAL \b2v_inst|Add1~70_combout\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:cnt[14]~regout\ : std_logic;
SIGNAL \b2v_inst|Add1~72\ : std_logic;
SIGNAL \b2v_inst|Add1~72COUT1_208\ : std_logic;
SIGNAL \b2v_inst|Add1~75_combout\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:cnt[15]~regout\ : std_logic;
SIGNAL \b2v_inst|Add1~77\ : std_logic;
SIGNAL \b2v_inst|Add1~80_combout\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:cnt[16]~regout\ : std_logic;
SIGNAL \b2v_inst|Add1~82\ : std_logic;
SIGNAL \b2v_inst|Add1~82COUT1_210\ : std_logic;
SIGNAL \b2v_inst|Add1~85_combout\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:cnt[17]~regout\ : std_logic;
SIGNAL \b2v_inst|Add1~87\ : std_logic;
SIGNAL \b2v_inst|Add1~87COUT1_212\ : std_logic;
SIGNAL \b2v_inst|Add1~90_combout\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:cnt[18]~regout\ : std_logic;
SIGNAL \b2v_inst|Add1~92\ : std_logic;
SIGNAL \b2v_inst|Add1~92COUT1_214\ : std_logic;
SIGNAL \b2v_inst|Add1~95_combout\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:cnt[19]~regout\ : std_logic;
SIGNAL \b2v_inst|Add1~97\ : std_logic;
SIGNAL \b2v_inst|Add1~97COUT1_216\ : std_logic;
SIGNAL \b2v_inst|Add1~100_combout\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:cnt[20]~regout\ : std_logic;
SIGNAL \b2v_inst|Add1~102\ : std_logic;
SIGNAL \b2v_inst|Add1~105_combout\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:cnt[21]~regout\ : std_logic;
SIGNAL \b2v_inst|Add1~107\ : std_logic;
SIGNAL \b2v_inst|Add1~107COUT1_218\ : std_logic;
SIGNAL \b2v_inst|Add1~110_combout\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:cnt[22]~regout\ : std_logic;
SIGNAL \b2v_inst|Add1~112\ : std_logic;
SIGNAL \b2v_inst|Add1~112COUT1_220\ : std_logic;
SIGNAL \b2v_inst|Add1~115_combout\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:cnt[23]~regout\ : std_logic;
SIGNAL \b2v_inst|Add1~117\ : std_logic;
SIGNAL \b2v_inst|Add1~117COUT1_222\ : std_logic;
SIGNAL \b2v_inst|Add1~120_combout\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:cnt[24]~regout\ : std_logic;
SIGNAL \b2v_inst|Add1~122\ : std_logic;
SIGNAL \b2v_inst|Add1~122COUT1_224\ : std_logic;
SIGNAL \b2v_inst|Add1~125_combout\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:cnt[25]~regout\ : std_logic;
SIGNAL \b2v_inst|Add1~127\ : std_logic;
SIGNAL \b2v_inst|Add1~130_combout\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:cnt[26]~regout\ : std_logic;
SIGNAL \b2v_inst|Add1~132\ : std_logic;
SIGNAL \b2v_inst|Add1~132COUT1_226\ : std_logic;
SIGNAL \b2v_inst|Add1~135_combout\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:cnt[27]~regout\ : std_logic;
SIGNAL \b2v_inst|Add1~137\ : std_logic;
SIGNAL \b2v_inst|Add1~137COUT1_228\ : std_logic;
SIGNAL \b2v_inst|Add1~140_combout\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:cnt[31]~regout\ : std_logic;
SIGNAL \b2v_inst|Add1~142\ : std_logic;
SIGNAL \b2v_inst|Add1~142COUT1_230\ : std_logic;
SIGNAL \b2v_inst|Add1~145_combout\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:cnt[29]~regout\ : std_logic;
SIGNAL \b2v_inst|Add1~147\ : std_logic;
SIGNAL \b2v_inst|Add1~147COUT1_232\ : std_logic;
SIGNAL \b2v_inst|Add1~150_combout\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:cnt[30]~regout\ : std_logic;
SIGNAL \b2v_inst|Add1~152\ : std_logic;
SIGNAL \b2v_inst|Add1~155_combout\ : std_logic;
SIGNAL \b2v_inst|Equal1~9_combout\ : std_logic;
SIGNAL \b2v_inst|Equal1~5_combout\ : std_logic;
SIGNAL \b2v_inst|Equal1~6_combout\ : std_logic;
SIGNAL \b2v_inst|Equal1~7_combout\ : std_logic;
SIGNAL \b2v_inst|Equal1~8_combout\ : std_logic;
SIGNAL \b2v_inst|Equal1~0_combout\ : std_logic;
SIGNAL \b2v_inst|Equal1~3_combout\ : std_logic;
SIGNAL \b2v_inst|Equal1~2_combout\ : std_logic;
SIGNAL \b2v_inst|Equal1~1_combout\ : std_logic;
SIGNAL \b2v_inst|Equal1~4_combout\ : std_logic;
SIGNAL \b2v_inst|Equal1~10_combout\ : std_logic;
SIGNAL \b2v_inst|Selector3~0_combout\ : std_logic;
SIGNAL \b2v_inst|Selector3~2_combout\ : std_logic;
SIGNAL \b2v_inst|state.r_sample~regout\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:rbitcnt[14]~regout\ : std_logic;
SIGNAL \b2v_inst|Add2~12\ : std_logic;
SIGNAL \b2v_inst|Add2~12COUT1_186\ : std_logic;
SIGNAL \b2v_inst|Add2~15_combout\ : std_logic;
SIGNAL \b2v_inst|Decoder0~0_combout\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:rbitcnt[2]~regout\ : std_logic;
SIGNAL \b2v_inst|Add2~10_combout\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:rbitcnt[1]~regout\ : std_logic;
SIGNAL \b2v_inst|Add2~5_combout\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:rbitcnt[0]~regout\ : std_logic;
SIGNAL \b2v_inst|Add2~7\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:rbitcnt[19]~regout\ : std_logic;
SIGNAL \b2v_inst|Add2~55_combout\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:rbitcnt[11]~regout\ : std_logic;
SIGNAL \b2v_inst|Add2~57\ : std_logic;
SIGNAL \b2v_inst|Add2~57COUT1_202\ : std_logic;
SIGNAL \b2v_inst|Add2~60_combout\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:rbitcnt[12]~regout\ : std_logic;
SIGNAL \b2v_inst|Add2~62\ : std_logic;
SIGNAL \b2v_inst|Add2~62COUT1_204\ : std_logic;
SIGNAL \b2v_inst|Add2~65_combout\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:rbitcnt[13]~regout\ : std_logic;
SIGNAL \b2v_inst|Add2~67\ : std_logic;
SIGNAL \b2v_inst|Add2~67COUT1_206\ : std_logic;
SIGNAL \b2v_inst|Add2~72\ : std_logic;
SIGNAL \b2v_inst|Add2~72COUT1_208\ : std_logic;
SIGNAL \b2v_inst|Add2~75_combout\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:rbitcnt[15]~regout\ : std_logic;
SIGNAL \b2v_inst|Add2~77\ : std_logic;
SIGNAL \b2v_inst|Add2~80_combout\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:rbitcnt[16]~regout\ : std_logic;
SIGNAL \b2v_inst|Add2~82\ : std_logic;
SIGNAL \b2v_inst|Add2~82COUT1_210\ : std_logic;
SIGNAL \b2v_inst|Add2~85_combout\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:rbitcnt[17]~regout\ : std_logic;
SIGNAL \b2v_inst|Add2~87\ : std_logic;
SIGNAL \b2v_inst|Add2~87COUT1_212\ : std_logic;
SIGNAL \b2v_inst|Add2~90_combout\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:rbitcnt[18]~regout\ : std_logic;
SIGNAL \b2v_inst|Add2~92\ : std_logic;
SIGNAL \b2v_inst|Add2~92COUT1_214\ : std_logic;
SIGNAL \b2v_inst|Add2~95_combout\ : std_logic;
SIGNAL \b2v_inst|Equal2~5_combout\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:rbitcnt[30]~regout\ : std_logic;
SIGNAL \b2v_inst|Add2~97\ : std_logic;
SIGNAL \b2v_inst|Add2~97COUT1_216\ : std_logic;
SIGNAL \b2v_inst|Add2~100_combout\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:rbitcnt[20]~regout\ : std_logic;
SIGNAL \b2v_inst|Add2~102\ : std_logic;
SIGNAL \b2v_inst|Add2~105_combout\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:rbitcnt[21]~regout\ : std_logic;
SIGNAL \b2v_inst|Add2~107\ : std_logic;
SIGNAL \b2v_inst|Add2~107COUT1_218\ : std_logic;
SIGNAL \b2v_inst|Add2~110_combout\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:rbitcnt[22]~regout\ : std_logic;
SIGNAL \b2v_inst|Add2~112\ : std_logic;
SIGNAL \b2v_inst|Add2~112COUT1_220\ : std_logic;
SIGNAL \b2v_inst|Add2~115_combout\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:rbitcnt[23]~regout\ : std_logic;
SIGNAL \b2v_inst|Add2~117\ : std_logic;
SIGNAL \b2v_inst|Add2~117COUT1_222\ : std_logic;
SIGNAL \b2v_inst|Add2~120_combout\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:rbitcnt[24]~regout\ : std_logic;
SIGNAL \b2v_inst|Add2~122\ : std_logic;
SIGNAL \b2v_inst|Add2~122COUT1_224\ : std_logic;
SIGNAL \b2v_inst|Add2~125_combout\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:rbitcnt[25]~regout\ : std_logic;
SIGNAL \b2v_inst|Add2~127\ : std_logic;
SIGNAL \b2v_inst|Add2~130_combout\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:rbitcnt[26]~regout\ : std_logic;
SIGNAL \b2v_inst|Add2~132\ : std_logic;
SIGNAL \b2v_inst|Add2~132COUT1_226\ : std_logic;
SIGNAL \b2v_inst|Add2~135_combout\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:rbitcnt[27]~regout\ : std_logic;
SIGNAL \b2v_inst|Add2~137\ : std_logic;
SIGNAL \b2v_inst|Add2~137COUT1_228\ : std_logic;
SIGNAL \b2v_inst|Add2~140_combout\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:rbitcnt[28]~regout\ : std_logic;
SIGNAL \b2v_inst|Add2~142\ : std_logic;
SIGNAL \b2v_inst|Add2~142COUT1_230\ : std_logic;
SIGNAL \b2v_inst|Add2~145_combout\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:rbitcnt[29]~regout\ : std_logic;
SIGNAL \b2v_inst|Add2~147\ : std_logic;
SIGNAL \b2v_inst|Add2~147COUT1_232\ : std_logic;
SIGNAL \b2v_inst|Add2~150_combout\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:rbitcnt[31]~regout\ : std_logic;
SIGNAL \b2v_inst|Add2~152\ : std_logic;
SIGNAL \b2v_inst|Add2~155_combout\ : std_logic;
SIGNAL \b2v_inst|Equal2~8_combout\ : std_logic;
SIGNAL \b2v_inst|Equal2~6_combout\ : std_logic;
SIGNAL \b2v_inst|Equal2~7_combout\ : std_logic;
SIGNAL \b2v_inst|Equal2~9_combout\ : std_logic;
SIGNAL \b2v_inst|Add2~17\ : std_logic;
SIGNAL \b2v_inst|Add2~17COUT1_188\ : std_logic;
SIGNAL \b2v_inst|Add2~0_combout\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:rbitcnt[3]~regout\ : std_logic;
SIGNAL \b2v_inst|Add2~2\ : std_logic;
SIGNAL \b2v_inst|Add2~2COUT1_190\ : std_logic;
SIGNAL \b2v_inst|Add2~20_combout\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:rbitcnt[4]~regout\ : std_logic;
SIGNAL \b2v_inst|Add2~22\ : std_logic;
SIGNAL \b2v_inst|Add2~22COUT1_192\ : std_logic;
SIGNAL \b2v_inst|Add2~25_combout\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:rbitcnt[5]~regout\ : std_logic;
SIGNAL \b2v_inst|Add2~27\ : std_logic;
SIGNAL \b2v_inst|Add2~30_combout\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:rbitcnt[6]~regout\ : std_logic;
SIGNAL \b2v_inst|Add2~32\ : std_logic;
SIGNAL \b2v_inst|Add2~32COUT1_194\ : std_logic;
SIGNAL \b2v_inst|Add2~35_combout\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:rbitcnt[7]~regout\ : std_logic;
SIGNAL \b2v_inst|Add2~37\ : std_logic;
SIGNAL \b2v_inst|Add2~37COUT1_196\ : std_logic;
SIGNAL \b2v_inst|Add2~40_combout\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:rbitcnt[8]~regout\ : std_logic;
SIGNAL \b2v_inst|Add2~42\ : std_logic;
SIGNAL \b2v_inst|Add2~42COUT1_198\ : std_logic;
SIGNAL \b2v_inst|Add2~45_combout\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:rbitcnt[9]~regout\ : std_logic;
SIGNAL \b2v_inst|Add2~47\ : std_logic;
SIGNAL \b2v_inst|Add2~47COUT1_200\ : std_logic;
SIGNAL \b2v_inst|Add2~50_combout\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:rbitcnt[10]~regout\ : std_logic;
SIGNAL \b2v_inst|Add2~52\ : std_logic;
SIGNAL \b2v_inst|Add2~70_combout\ : std_logic;
SIGNAL \b2v_inst|Equal2~3_combout\ : std_logic;
SIGNAL \b2v_inst|Equal2~2_combout\ : std_logic;
SIGNAL \b2v_inst|Equal2~0_combout\ : std_logic;
SIGNAL \b2v_inst|Equal2~1_combout\ : std_logic;
SIGNAL \b2v_inst|Equal2~4_combout\ : std_logic;
SIGNAL \b2v_inst|Selector3~1_combout\ : std_logic;
SIGNAL \b2v_inst|state.r_stop~regout\ : std_logic;
SIGNAL \b2v_inst|state.r_start~regout\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:cnt16[31]~2_combout\ : std_logic;
SIGNAL \b2v_inst|Selector1~1_combout\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:cnt16[0]~regout\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:cnt16[0]~1\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:cnt16[1]~regout\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:cnt16[1]~1\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:cnt16[1]~1COUT1_5\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:cnt16[2]~regout\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:cnt16[2]~1\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:cnt16[2]~1COUT1_5\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:cnt16[3]~regout\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:cnt16[3]~1\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:cnt16[3]~1COUT1_5\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:cnt16[4]~regout\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:cnt16[4]~1\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:cnt16[4]~1COUT1_5\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:cnt16[5]~regout\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:cnt16[5]~1\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:cnt16[6]~regout\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:cnt16[6]~1\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:cnt16[6]~1COUT1_5\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:cnt16[7]~regout\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:cnt16[7]~1\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:cnt16[7]~1COUT1_5\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:cnt16[8]~regout\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:cnt16[8]~1\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:cnt16[8]~1COUT1_5\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:cnt16[9]~regout\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:cnt16[9]~1\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:cnt16[9]~1COUT1_5\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:cnt16[10]~regout\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:cnt16[10]~1\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:cnt16[11]~regout\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:cnt16[11]~1\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:cnt16[11]~1COUT1_5\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:cnt16[12]~regout\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:cnt16[12]~1\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:cnt16[12]~1COUT1_5\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:cnt16[13]~regout\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:cnt16[13]~1\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:cnt16[13]~1COUT1_5\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:cnt16[14]~regout\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:cnt16[14]~1\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:cnt16[14]~1COUT1_5\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:cnt16[15]~regout\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:cnt16[15]~1\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:cnt16[16]~regout\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:cnt16[16]~1\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:cnt16[16]~1COUT1_5\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:cnt16[17]~regout\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:cnt16[17]~1\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:cnt16[17]~1COUT1_5\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:cnt16[18]~regout\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:cnt16[18]~1\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:cnt16[18]~1COUT1_5\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:cnt16[19]~regout\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:cnt16[19]~1\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:cnt16[19]~1COUT1_5\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:cnt16[20]~regout\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:cnt16[20]~1\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:cnt16[21]~regout\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:cnt16[21]~1\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:cnt16[21]~1COUT1_5\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:cnt16[22]~regout\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:cnt16[22]~1\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:cnt16[22]~1COUT1_5\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:cnt16[23]~regout\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:cnt16[23]~1\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:cnt16[23]~1COUT1_5\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:cnt16[24]~regout\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:cnt16[24]~1\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:cnt16[24]~1COUT1_5\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:cnt16[25]~regout\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:cnt16[25]~1\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:cnt16[26]~regout\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:cnt16[26]~1\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:cnt16[26]~1COUT1_5\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:cnt16[27]~regout\ : std_logic;
SIGNAL \b2v_inst|Equal3~8_combout\ : std_logic;
SIGNAL \b2v_inst|Equal3~5_combout\ : std_logic;
SIGNAL \b2v_inst|Equal3~6_combout\ : std_logic;
SIGNAL \b2v_inst|Equal3~7_combout\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:cnt16[27]~1\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:cnt16[27]~1COUT1_5\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:cnt16[28]~regout\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:cnt16[28]~1\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:cnt16[28]~1COUT1_5\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:cnt16[29]~regout\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:cnt16[29]~1\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:cnt16[29]~1COUT1_5\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:cnt16[30]~regout\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:cnt16[30]~1\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:cnt16[31]~regout\ : std_logic;
SIGNAL \b2v_inst|Equal3~9_combout\ : std_logic;
SIGNAL \b2v_inst|Equal3~0_combout\ : std_logic;
SIGNAL \b2v_inst|Equal3~1_combout\ : std_logic;
SIGNAL \b2v_inst|Equal3~3_combout\ : std_logic;
SIGNAL \b2v_inst|Equal3~2_combout\ : std_logic;
SIGNAL \b2v_inst|Equal3~4_combout\ : std_logic;
SIGNAL \b2v_inst|Equal3~10_combout\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:cnt5[31]~1_combout\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:cnt5[28]~regout\ : std_logic;
SIGNAL \b2v_inst|Add0~0_combout\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:cnt5[0]~regout\ : std_logic;
SIGNAL \b2v_inst|Add0~2\ : std_logic;
SIGNAL \b2v_inst|Add0~10_combout\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:cnt5[1]~regout\ : std_logic;
SIGNAL \b2v_inst|Add0~12\ : std_logic;
SIGNAL \b2v_inst|Add0~12COUT1_186\ : std_logic;
SIGNAL \b2v_inst|Add0~5_combout\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:cnt5[2]~regout\ : std_logic;
SIGNAL \b2v_inst|Add0~7\ : std_logic;
SIGNAL \b2v_inst|Add0~7COUT1_188\ : std_logic;
SIGNAL \b2v_inst|Add0~15_combout\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:cnt5[3]~regout\ : std_logic;
SIGNAL \b2v_inst|Add0~17\ : std_logic;
SIGNAL \b2v_inst|Add0~17COUT1_190\ : std_logic;
SIGNAL \b2v_inst|Add0~20_combout\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:cnt5[4]~regout\ : std_logic;
SIGNAL \b2v_inst|Add0~22\ : std_logic;
SIGNAL \b2v_inst|Add0~22COUT1_192\ : std_logic;
SIGNAL \b2v_inst|Add0~25_combout\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:cnt5[5]~regout\ : std_logic;
SIGNAL \b2v_inst|Add0~27\ : std_logic;
SIGNAL \b2v_inst|Add0~30_combout\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:cnt5[6]~regout\ : std_logic;
SIGNAL \b2v_inst|Add0~32\ : std_logic;
SIGNAL \b2v_inst|Add0~32COUT1_194\ : std_logic;
SIGNAL \b2v_inst|Add0~35_combout\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:cnt5[7]~regout\ : std_logic;
SIGNAL \b2v_inst|Add0~37\ : std_logic;
SIGNAL \b2v_inst|Add0~37COUT1_196\ : std_logic;
SIGNAL \b2v_inst|Add0~40_combout\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:cnt5[8]~regout\ : std_logic;
SIGNAL \b2v_inst|Add0~42\ : std_logic;
SIGNAL \b2v_inst|Add0~42COUT1_198\ : std_logic;
SIGNAL \b2v_inst|Add0~45_combout\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:cnt5[9]~regout\ : std_logic;
SIGNAL \b2v_inst|Add0~47\ : std_logic;
SIGNAL \b2v_inst|Add0~47COUT1_200\ : std_logic;
SIGNAL \b2v_inst|Add0~50_combout\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:cnt5[10]~regout\ : std_logic;
SIGNAL \b2v_inst|Add0~52\ : std_logic;
SIGNAL \b2v_inst|Add0~55_combout\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:cnt5[11]~regout\ : std_logic;
SIGNAL \b2v_inst|Add0~57\ : std_logic;
SIGNAL \b2v_inst|Add0~57COUT1_202\ : std_logic;
SIGNAL \b2v_inst|Add0~60_combout\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:cnt5[12]~regout\ : std_logic;
SIGNAL \b2v_inst|Add0~62\ : std_logic;
SIGNAL \b2v_inst|Add0~62COUT1_204\ : std_logic;
SIGNAL \b2v_inst|Add0~65_combout\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:cnt5[13]~regout\ : std_logic;
SIGNAL \b2v_inst|Add0~67\ : std_logic;
SIGNAL \b2v_inst|Add0~67COUT1_206\ : std_logic;
SIGNAL \b2v_inst|Add0~70_combout\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:cnt5[14]~regout\ : std_logic;
SIGNAL \b2v_inst|Add0~72\ : std_logic;
SIGNAL \b2v_inst|Add0~72COUT1_208\ : std_logic;
SIGNAL \b2v_inst|Add0~75_combout\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:cnt5[15]~regout\ : std_logic;
SIGNAL \b2v_inst|Add0~77\ : std_logic;
SIGNAL \b2v_inst|Add0~80_combout\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:cnt5[16]~regout\ : std_logic;
SIGNAL \b2v_inst|Add0~82\ : std_logic;
SIGNAL \b2v_inst|Add0~82COUT1_210\ : std_logic;
SIGNAL \b2v_inst|Add0~85_combout\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:cnt5[17]~regout\ : std_logic;
SIGNAL \b2v_inst|Add0~87\ : std_logic;
SIGNAL \b2v_inst|Add0~87COUT1_212\ : std_logic;
SIGNAL \b2v_inst|Add0~90_combout\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:cnt5[18]~regout\ : std_logic;
SIGNAL \b2v_inst|Add0~92\ : std_logic;
SIGNAL \b2v_inst|Add0~92COUT1_214\ : std_logic;
SIGNAL \b2v_inst|Add0~95_combout\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:cnt5[19]~regout\ : std_logic;
SIGNAL \b2v_inst|Add0~97\ : std_logic;
SIGNAL \b2v_inst|Add0~97COUT1_216\ : std_logic;
SIGNAL \b2v_inst|Add0~100_combout\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:cnt5[20]~regout\ : std_logic;
SIGNAL \b2v_inst|Add0~102\ : std_logic;
SIGNAL \b2v_inst|Add0~105_combout\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:cnt5[21]~regout\ : std_logic;
SIGNAL \b2v_inst|Add0~107\ : std_logic;
SIGNAL \b2v_inst|Add0~107COUT1_218\ : std_logic;
SIGNAL \b2v_inst|Add0~110_combout\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:cnt5[22]~regout\ : std_logic;
SIGNAL \b2v_inst|Add0~112\ : std_logic;
SIGNAL \b2v_inst|Add0~112COUT1_220\ : std_logic;
SIGNAL \b2v_inst|Add0~115_combout\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:cnt5[23]~regout\ : std_logic;
SIGNAL \b2v_inst|Add0~117\ : std_logic;
SIGNAL \b2v_inst|Add0~117COUT1_222\ : std_logic;
SIGNAL \b2v_inst|Add0~120_combout\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:cnt5[24]~regout\ : std_logic;
SIGNAL \b2v_inst|Add0~122\ : std_logic;
SIGNAL \b2v_inst|Add0~122COUT1_224\ : std_logic;
SIGNAL \b2v_inst|Add0~125_combout\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:cnt5[25]~regout\ : std_logic;
SIGNAL \b2v_inst|Add0~127\ : std_logic;
SIGNAL \b2v_inst|Add0~130_combout\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:cnt5[26]~regout\ : std_logic;
SIGNAL \b2v_inst|Add0~132\ : std_logic;
SIGNAL \b2v_inst|Add0~132COUT1_226\ : std_logic;
SIGNAL \b2v_inst|Add0~135_combout\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:cnt5[27]~regout\ : std_logic;
SIGNAL \b2v_inst|Add0~137\ : std_logic;
SIGNAL \b2v_inst|Add0~137COUT1_228\ : std_logic;
SIGNAL \b2v_inst|Add0~140_combout\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:cnt5[31]~regout\ : std_logic;
SIGNAL \b2v_inst|Add0~142\ : std_logic;
SIGNAL \b2v_inst|Add0~142COUT1_230\ : std_logic;
SIGNAL \b2v_inst|Add0~145_combout\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:cnt5[29]~regout\ : std_logic;
SIGNAL \b2v_inst|Add0~147\ : std_logic;
SIGNAL \b2v_inst|Add0~147COUT1_232\ : std_logic;
SIGNAL \b2v_inst|Add0~150_combout\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:cnt5[30]~regout\ : std_logic;
SIGNAL \b2v_inst|Add0~152\ : std_logic;
SIGNAL \b2v_inst|Add0~155_combout\ : std_logic;
SIGNAL \b2v_inst|Equal0~9_combout\ : std_logic;
SIGNAL \b2v_inst|Equal0~0_combout\ : std_logic;
SIGNAL \b2v_inst|Equal0~2_combout\ : std_logic;
SIGNAL \b2v_inst|Equal0~3_combout\ : std_logic;
SIGNAL \b2v_inst|Equal0~1_combout\ : std_logic;
SIGNAL \b2v_inst|Equal0~4_combout\ : std_logic;
SIGNAL \b2v_inst|Equal0~8_combout\ : std_logic;
SIGNAL \b2v_inst|Equal0~5_combout\ : std_logic;
SIGNAL \b2v_inst|Equal0~6_combout\ : std_logic;
SIGNAL \b2v_inst|Equal0~7_combout\ : std_logic;
SIGNAL \b2v_inst|Equal0~10_combout\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:have_Told~regout\ : std_logic;
SIGNAL \b2v_inst|rfinish~0_combout\ : std_logic;
SIGNAL \b2v_inst|rfinish~regout\ : std_logic;
SIGNAL \b2v_inst1|state.x_idle~regout\ : std_logic;
SIGNAL \b2v_inst1|Transmit_Data:cnt16[28]~regout\ : std_logic;
SIGNAL \b2v_inst1|Add0~0_combout\ : std_logic;
SIGNAL \b2v_inst1|Transmit_Data:cnt16[0]~regout\ : std_logic;
SIGNAL \b2v_inst1|Add0~2\ : std_logic;
SIGNAL \b2v_inst1|Transmit_Data:cnt16[27]~regout\ : std_logic;
SIGNAL \b2v_inst1|Add0~130_combout\ : std_logic;
SIGNAL \b2v_inst1|Transmit_Data:cnt16[26]~regout\ : std_logic;
SIGNAL \b2v_inst1|Add0~132\ : std_logic;
SIGNAL \b2v_inst1|Add0~132COUT1_226\ : std_logic;
SIGNAL \b2v_inst1|Add0~135_combout\ : std_logic;
SIGNAL \b2v_inst1|Transmit_Data:cnt16[24]~regout\ : std_logic;
SIGNAL \b2v_inst1|Add0~105_combout\ : std_logic;
SIGNAL \b2v_inst1|Transmit_Data:cnt16[21]~regout\ : std_logic;
SIGNAL \b2v_inst1|Add0~107\ : std_logic;
SIGNAL \b2v_inst1|Add0~107COUT1_218\ : std_logic;
SIGNAL \b2v_inst1|Add0~110_combout\ : std_logic;
SIGNAL \b2v_inst1|Transmit_Data:cnt16[22]~regout\ : std_logic;
SIGNAL \b2v_inst1|Add0~112\ : std_logic;
SIGNAL \b2v_inst1|Add0~112COUT1_220\ : std_logic;
SIGNAL \b2v_inst1|Add0~115_combout\ : std_logic;
SIGNAL \b2v_inst1|Transmit_Data:cnt16[23]~regout\ : std_logic;
SIGNAL \b2v_inst1|Add0~117\ : std_logic;
SIGNAL \b2v_inst1|Add0~117COUT1_222\ : std_logic;
SIGNAL \b2v_inst1|Add0~120_combout\ : std_logic;
SIGNAL \b2v_inst1|Equal0~8_combout\ : std_logic;
SIGNAL \b2v_inst1|Equal0~11_combout\ : std_logic;
SIGNAL \b2v_inst1|Add0~5_combout\ : std_logic;
SIGNAL \b2v_inst1|Transmit_Data:cnt16[1]~regout\ : std_logic;
SIGNAL \b2v_inst1|Add0~7\ : std_logic;
SIGNAL \b2v_inst1|Add0~7COUT1_186\ : std_logic;
SIGNAL \b2v_inst1|Add0~10_combout\ : std_logic;
SIGNAL \b2v_inst1|Transmit_Data:cnt16[2]~regout\ : std_logic;
SIGNAL \b2v_inst1|Add0~12\ : std_logic;
SIGNAL \b2v_inst1|Add0~12COUT1_188\ : std_logic;
SIGNAL \b2v_inst1|Add0~15_combout\ : std_logic;
SIGNAL \b2v_inst1|Transmit_Data:cnt16[3]~regout\ : std_logic;
SIGNAL \b2v_inst1|Add0~17\ : std_logic;
SIGNAL \b2v_inst1|Add0~17COUT1_190\ : std_logic;
SIGNAL \b2v_inst1|Add0~20_combout\ : std_logic;
SIGNAL \b2v_inst1|Transmit_Data:cnt16[19]~regout\ : std_logic;
SIGNAL \b2v_inst1|Add0~80_combout\ : std_logic;
SIGNAL \b2v_inst1|Transmit_Data:cnt16[16]~regout\ : std_logic;
SIGNAL \b2v_inst1|Add0~82\ : std_logic;
SIGNAL \b2v_inst1|Add0~82COUT1_210\ : std_logic;
SIGNAL \b2v_inst1|Add0~85_combout\ : std_logic;
SIGNAL \b2v_inst1|Transmit_Data:cnt16[17]~regout\ : std_logic;
SIGNAL \b2v_inst1|Add0~87\ : std_logic;
SIGNAL \b2v_inst1|Add0~87COUT1_212\ : std_logic;
SIGNAL \b2v_inst1|Add0~90_combout\ : std_logic;
SIGNAL \b2v_inst1|Transmit_Data:cnt16[18]~regout\ : std_logic;
SIGNAL \b2v_inst1|Add0~92\ : std_logic;
SIGNAL \b2v_inst1|Add0~92COUT1_214\ : std_logic;
SIGNAL \b2v_inst1|Add0~95_combout\ : std_logic;
SIGNAL \b2v_inst1|Equal0~5_combout\ : std_logic;
SIGNAL \b2v_inst1|Equal0~6_combout\ : std_logic;
SIGNAL \b2v_inst1|Equal0~7_combout\ : std_logic;
SIGNAL \b2v_inst1|Equal0~0_combout\ : std_logic;
SIGNAL \b2v_inst1|Transmit_Data:cnt16[14]~regout\ : std_logic;
SIGNAL \b2v_inst1|Add0~55_combout\ : std_logic;
SIGNAL \b2v_inst1|Transmit_Data:cnt16[11]~regout\ : std_logic;
SIGNAL \b2v_inst1|Add0~57\ : std_logic;
SIGNAL \b2v_inst1|Add0~57COUT1_202\ : std_logic;
SIGNAL \b2v_inst1|Add0~60_combout\ : std_logic;
SIGNAL \b2v_inst1|Transmit_Data:cnt16[12]~regout\ : std_logic;
SIGNAL \b2v_inst1|Add0~62\ : std_logic;
SIGNAL \b2v_inst1|Add0~62COUT1_204\ : std_logic;
SIGNAL \b2v_inst1|Add0~65_combout\ : std_logic;
SIGNAL \b2v_inst1|Transmit_Data:cnt16[13]~regout\ : std_logic;
SIGNAL \b2v_inst1|Add0~67\ : std_logic;
SIGNAL \b2v_inst1|Add0~67COUT1_206\ : std_logic;
SIGNAL \b2v_inst1|Add0~70_combout\ : std_logic;
SIGNAL \b2v_inst1|Equal0~3_combout\ : std_logic;
SIGNAL \b2v_inst1|Transmit_Data:cnt16[8]~regout\ : std_logic;
SIGNAL \b2v_inst1|Add0~30_combout\ : std_logic;
SIGNAL \b2v_inst1|Transmit_Data:cnt16[6]~regout\ : std_logic;
SIGNAL \b2v_inst1|Add0~32\ : std_logic;
SIGNAL \b2v_inst1|Add0~32COUT1_194\ : std_logic;
SIGNAL \b2v_inst1|Add0~35_combout\ : std_logic;
SIGNAL \b2v_inst1|Transmit_Data:cnt16[7]~regout\ : std_logic;
SIGNAL \b2v_inst1|Add0~37\ : std_logic;
SIGNAL \b2v_inst1|Add0~37COUT1_196\ : std_logic;
SIGNAL \b2v_inst1|Add0~40_combout\ : std_logic;
SIGNAL \b2v_inst1|Transmit_Data:cnt16[9]~regout\ : std_logic;
SIGNAL \b2v_inst1|Add0~42\ : std_logic;
SIGNAL \b2v_inst1|Add0~42COUT1_198\ : std_logic;
SIGNAL \b2v_inst1|Add0~45_combout\ : std_logic;
SIGNAL \b2v_inst1|Equal0~2_combout\ : std_logic;
SIGNAL \b2v_inst1|Equal0~1_combout\ : std_logic;
SIGNAL \b2v_inst1|Equal0~4_combout\ : std_logic;
SIGNAL \b2v_inst1|Transmit_Data:cnt16[4]~regout\ : std_logic;
SIGNAL \b2v_inst1|Add0~22\ : std_logic;
SIGNAL \b2v_inst1|Add0~22COUT1_192\ : std_logic;
SIGNAL \b2v_inst1|Add0~25_combout\ : std_logic;
SIGNAL \b2v_inst1|Transmit_Data:cnt16[5]~regout\ : std_logic;
SIGNAL \b2v_inst1|Add0~27\ : std_logic;
SIGNAL \b2v_inst1|Add0~47\ : std_logic;
SIGNAL \b2v_inst1|Add0~47COUT1_200\ : std_logic;
SIGNAL \b2v_inst1|Add0~50_combout\ : std_logic;
SIGNAL \b2v_inst1|Transmit_Data:cnt16[10]~regout\ : std_logic;
SIGNAL \b2v_inst1|Add0~52\ : std_logic;
SIGNAL \b2v_inst1|Add0~72\ : std_logic;
SIGNAL \b2v_inst1|Add0~72COUT1_208\ : std_logic;
SIGNAL \b2v_inst1|Add0~75_combout\ : std_logic;
SIGNAL \b2v_inst1|Transmit_Data:cnt16[15]~regout\ : std_logic;
SIGNAL \b2v_inst1|Add0~77\ : std_logic;
SIGNAL \b2v_inst1|Add0~97\ : std_logic;
SIGNAL \b2v_inst1|Add0~97COUT1_216\ : std_logic;
SIGNAL \b2v_inst1|Add0~100_combout\ : std_logic;
SIGNAL \b2v_inst1|Transmit_Data:cnt16[20]~regout\ : std_logic;
SIGNAL \b2v_inst1|Add0~102\ : std_logic;
SIGNAL \b2v_inst1|Add0~122\ : std_logic;
SIGNAL \b2v_inst1|Add0~122COUT1_224\ : std_logic;
SIGNAL \b2v_inst1|Add0~125_combout\ : std_logic;
SIGNAL \b2v_inst1|Transmit_Data:cnt16[25]~regout\ : std_logic;
SIGNAL \b2v_inst1|Add0~127\ : std_logic;
SIGNAL \b2v_inst1|Add0~137\ : std_logic;
SIGNAL \b2v_inst1|Add0~137COUT1_228\ : std_logic;
SIGNAL \b2v_inst1|Add0~140_combout\ : std_logic;
SIGNAL \b2v_inst1|Transmit_Data:cnt16[29]~regout\ : std_logic;
SIGNAL \b2v_inst1|Add0~142\ : std_logic;
SIGNAL \b2v_inst1|Add0~142COUT1_230\ : std_logic;
SIGNAL \b2v_inst1|Add0~145_combout\ : std_logic;
SIGNAL \b2v_inst1|Transmit_Data:cnt16[30]~regout\ : std_logic;
SIGNAL \b2v_inst1|Add0~147\ : std_logic;
SIGNAL \b2v_inst1|Add0~147COUT1_232\ : std_logic;
SIGNAL \b2v_inst1|Add0~150_combout\ : std_logic;
SIGNAL \b2v_inst1|Transmit_Data:cnt16[31]~regout\ : std_logic;
SIGNAL \b2v_inst1|Add0~152\ : std_logic;
SIGNAL \b2v_inst1|Add0~155_combout\ : std_logic;
SIGNAL \b2v_inst1|Equal0~9_combout\ : std_logic;
SIGNAL \b2v_inst1|Equal0~10_combout\ : std_logic;
SIGNAL \b2v_inst1|Selector1~0_combout\ : std_logic;
SIGNAL \b2v_inst1|Transmit_Data:xbufs[7]~1_combout\ : std_logic;
SIGNAL \b2v_inst1|state.x_start~regout\ : std_logic;
SIGNAL \b2v_inst1|Selector3~0_combout\ : std_logic;
SIGNAL \b2v_inst1|state.x_shift~regout\ : std_logic;
SIGNAL \b2v_inst1|Selector1~1_combout\ : std_logic;
SIGNAL \b2v_inst1|Transmit_Data:tbitcnt[0]~regout\ : std_logic;
SIGNAL \b2v_inst|Decoder0~2\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:rbufs[6]~regout\ : std_logic;
SIGNAL \b2v_inst|rbuf[7]~0_combout\ : std_logic;
SIGNAL \b2v_inst|Decoder0~3\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:rbufs[4]~regout\ : std_logic;
SIGNAL \b2v_inst1|Transmit_Data:xbufs[7]~0_combout\ : std_logic;
SIGNAL \b2v_inst1|Transmit_Data:xbufs[4]~regout\ : std_logic;
SIGNAL \b2v_inst1|Mux0~0\ : std_logic;
SIGNAL \b2v_inst|Decoder0~1\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:rbufs[5]~regout\ : std_logic;
SIGNAL \b2v_inst|Decoder0~4_combout\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:rbufs[7]~regout\ : std_logic;
SIGNAL \b2v_inst1|Transmit_Data:xbufs[7]~regout\ : std_logic;
SIGNAL \b2v_inst1|Mux0~1\ : std_logic;
SIGNAL \b2v_inst|Decoder0~8_combout\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:rbufs[3]~regout\ : std_logic;
SIGNAL \b2v_inst1|Transmit_Data:xbufs[3]~regout\ : std_logic;
SIGNAL \b2v_inst|Decoder0~5_combout\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:rbufs[2]~regout\ : std_logic;
SIGNAL \b2v_inst|Decoder0~7_combout\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:rbufs[0]~regout\ : std_logic;
SIGNAL \b2v_inst1|Transmit_Data:xbufs[0]~regout\ : std_logic;
SIGNAL \b2v_inst|Decoder0~6_combout\ : std_logic;
SIGNAL \b2v_inst|ReceiveData:rbufs[1]~regout\ : std_logic;
SIGNAL \b2v_inst1|Mux0~2\ : std_logic;
SIGNAL \b2v_inst1|Mux0~3\ : std_logic;
SIGNAL \b2v_inst1|Selector0~0_combout\ : std_logic;
SIGNAL \b2v_inst1|Selector0~1_combout\ : std_logic;
SIGNAL \b2v_inst1|xout~regout\ : std_logic;
SIGNAL \b2v_inst2|cnt\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \b2v_inst|rbuf\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_RST~combout\ : std_logic;

BEGIN

Data_out <= ww_Data_out;
ww_Data_in <= Data_in;
ww_RST <= RST;
ww_CLK <= CLK;
ww_Buttom1 <= Buttom1;
ww_Buttom2 <= Buttom2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_RST~combout\ <= NOT \RST~combout\;

-- Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CLK~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_CLK,
	combout => \CLK~combout\);

-- Location: PIN_134,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Buttom2~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Buttom2,
	combout => \Buttom2~combout\);

-- Location: PIN_16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RST~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_RST,
	combout => \RST~combout\);

-- Location: LC_X10_Y6_N4
\b2v_inst2|cnt[0]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst2|cnt\(0) = DFFEAS(((!\b2v_inst2|cnt\(0))), GLOBAL(\CLK~combout\), !GLOBAL(\RST~combout\), , , , , \b2v_inst2|cnt[17]~67_combout\, )
-- \b2v_inst2|cnt[0]~63\ = CARRY(((\b2v_inst2|cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datab => \b2v_inst2|cnt\(0),
	aclr => \RST~combout\,
	sclr => \b2v_inst2|cnt[17]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst2|cnt\(0),
	cout => \b2v_inst2|cnt[0]~63\);

-- Location: LC_X10_Y6_N5
\b2v_inst2|cnt[1]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst2|cnt\(1) = DFFEAS((\b2v_inst2|cnt\(1) $ ((\b2v_inst2|cnt[0]~63\))), GLOBAL(\CLK~combout\), !GLOBAL(\RST~combout\), , , , , \b2v_inst2|cnt[17]~67_combout\, )
-- \b2v_inst2|cnt[1]~49\ = CARRY(((!\b2v_inst2|cnt[0]~63\) # (!\b2v_inst2|cnt\(1))))
-- \b2v_inst2|cnt[1]~49COUT1_94\ = CARRY(((!\b2v_inst2|cnt[0]~63\) # (!\b2v_inst2|cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datab => \b2v_inst2|cnt\(1),
	aclr => \RST~combout\,
	sclr => \b2v_inst2|cnt[17]~67_combout\,
	cin => \b2v_inst2|cnt[0]~63\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst2|cnt\(1),
	cout0 => \b2v_inst2|cnt[1]~49\,
	cout1 => \b2v_inst2|cnt[1]~49COUT1_94\);

-- Location: LC_X10_Y6_N6
\b2v_inst2|cnt[2]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst2|cnt\(2) = DFFEAS(\b2v_inst2|cnt\(2) $ ((((!(!\b2v_inst2|cnt[0]~63\ & \b2v_inst2|cnt[1]~49\) # (\b2v_inst2|cnt[0]~63\ & \b2v_inst2|cnt[1]~49COUT1_94\))))), GLOBAL(\CLK~combout\), !GLOBAL(\RST~combout\), , , , , \b2v_inst2|cnt[17]~67_combout\, )
-- \b2v_inst2|cnt[2]~51\ = CARRY((\b2v_inst2|cnt\(2) & ((!\b2v_inst2|cnt[1]~49\))))
-- \b2v_inst2|cnt[2]~51COUT1_96\ = CARRY((\b2v_inst2|cnt\(2) & ((!\b2v_inst2|cnt[1]~49COUT1_94\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \b2v_inst2|cnt\(2),
	aclr => \RST~combout\,
	sclr => \b2v_inst2|cnt[17]~67_combout\,
	cin => \b2v_inst2|cnt[0]~63\,
	cin0 => \b2v_inst2|cnt[1]~49\,
	cin1 => \b2v_inst2|cnt[1]~49COUT1_94\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst2|cnt\(2),
	cout0 => \b2v_inst2|cnt[2]~51\,
	cout1 => \b2v_inst2|cnt[2]~51COUT1_96\);

-- Location: LC_X10_Y6_N7
\b2v_inst2|cnt[3]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst2|cnt\(3) = DFFEAS(\b2v_inst2|cnt\(3) $ (((((!\b2v_inst2|cnt[0]~63\ & \b2v_inst2|cnt[2]~51\) # (\b2v_inst2|cnt[0]~63\ & \b2v_inst2|cnt[2]~51COUT1_96\))))), GLOBAL(\CLK~combout\), !GLOBAL(\RST~combout\), , , , , \b2v_inst2|cnt[17]~67_combout\, )
-- \b2v_inst2|cnt[3]~47\ = CARRY(((!\b2v_inst2|cnt[2]~51\)) # (!\b2v_inst2|cnt\(3)))
-- \b2v_inst2|cnt[3]~47COUT1_98\ = CARRY(((!\b2v_inst2|cnt[2]~51COUT1_96\)) # (!\b2v_inst2|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \b2v_inst2|cnt\(3),
	aclr => \RST~combout\,
	sclr => \b2v_inst2|cnt[17]~67_combout\,
	cin => \b2v_inst2|cnt[0]~63\,
	cin0 => \b2v_inst2|cnt[2]~51\,
	cin1 => \b2v_inst2|cnt[2]~51COUT1_96\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst2|cnt\(3),
	cout0 => \b2v_inst2|cnt[3]~47\,
	cout1 => \b2v_inst2|cnt[3]~47COUT1_98\);

-- Location: LC_X10_Y6_N8
\b2v_inst2|cnt[4]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst2|cnt\(4) = DFFEAS((\b2v_inst2|cnt\(4) $ ((!(!\b2v_inst2|cnt[0]~63\ & \b2v_inst2|cnt[3]~47\) # (\b2v_inst2|cnt[0]~63\ & \b2v_inst2|cnt[3]~47COUT1_98\)))), GLOBAL(\CLK~combout\), !GLOBAL(\RST~combout\), , , , , \b2v_inst2|cnt[17]~67_combout\, )
-- \b2v_inst2|cnt[4]~45\ = CARRY(((\b2v_inst2|cnt\(4) & !\b2v_inst2|cnt[3]~47\)))
-- \b2v_inst2|cnt[4]~45COUT1_100\ = CARRY(((\b2v_inst2|cnt\(4) & !\b2v_inst2|cnt[3]~47COUT1_98\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datab => \b2v_inst2|cnt\(4),
	aclr => \RST~combout\,
	sclr => \b2v_inst2|cnt[17]~67_combout\,
	cin => \b2v_inst2|cnt[0]~63\,
	cin0 => \b2v_inst2|cnt[3]~47\,
	cin1 => \b2v_inst2|cnt[3]~47COUT1_98\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst2|cnt\(4),
	cout0 => \b2v_inst2|cnt[4]~45\,
	cout1 => \b2v_inst2|cnt[4]~45COUT1_100\);

-- Location: LC_X10_Y6_N9
\b2v_inst2|cnt[5]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst2|cnt\(5) = DFFEAS(\b2v_inst2|cnt\(5) $ (((((!\b2v_inst2|cnt[0]~63\ & \b2v_inst2|cnt[4]~45\) # (\b2v_inst2|cnt[0]~63\ & \b2v_inst2|cnt[4]~45COUT1_100\))))), GLOBAL(\CLK~combout\), !GLOBAL(\RST~combout\), , , , , \b2v_inst2|cnt[17]~67_combout\, )
-- \b2v_inst2|cnt[5]~39\ = CARRY(((!\b2v_inst2|cnt[4]~45COUT1_100\)) # (!\b2v_inst2|cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \b2v_inst2|cnt\(5),
	aclr => \RST~combout\,
	sclr => \b2v_inst2|cnt[17]~67_combout\,
	cin => \b2v_inst2|cnt[0]~63\,
	cin0 => \b2v_inst2|cnt[4]~45\,
	cin1 => \b2v_inst2|cnt[4]~45COUT1_100\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst2|cnt\(5),
	cout => \b2v_inst2|cnt[5]~39\);

-- Location: LC_X10_Y5_N0
\b2v_inst2|cnt[6]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst2|cnt\(6) = DFFEAS((\b2v_inst2|cnt\(6) $ ((!\b2v_inst2|cnt[5]~39\))), GLOBAL(\CLK~combout\), !GLOBAL(\RST~combout\), , , , , \b2v_inst2|cnt[17]~67_combout\, )
-- \b2v_inst2|cnt[6]~37\ = CARRY(((\b2v_inst2|cnt\(6) & !\b2v_inst2|cnt[5]~39\)))
-- \b2v_inst2|cnt[6]~37COUT1_102\ = CARRY(((\b2v_inst2|cnt\(6) & !\b2v_inst2|cnt[5]~39\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datab => \b2v_inst2|cnt\(6),
	aclr => \RST~combout\,
	sclr => \b2v_inst2|cnt[17]~67_combout\,
	cin => \b2v_inst2|cnt[5]~39\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst2|cnt\(6),
	cout0 => \b2v_inst2|cnt[6]~37\,
	cout1 => \b2v_inst2|cnt[6]~37COUT1_102\);

-- Location: LC_X10_Y5_N1
\b2v_inst2|cnt[7]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst2|cnt\(7) = DFFEAS(\b2v_inst2|cnt\(7) $ (((((!\b2v_inst2|cnt[5]~39\ & \b2v_inst2|cnt[6]~37\) # (\b2v_inst2|cnt[5]~39\ & \b2v_inst2|cnt[6]~37COUT1_102\))))), GLOBAL(\CLK~combout\), !GLOBAL(\RST~combout\), , , , , \b2v_inst2|cnt[17]~67_combout\, )
-- \b2v_inst2|cnt[7]~41\ = CARRY(((!\b2v_inst2|cnt[6]~37\)) # (!\b2v_inst2|cnt\(7)))
-- \b2v_inst2|cnt[7]~41COUT1_104\ = CARRY(((!\b2v_inst2|cnt[6]~37COUT1_102\)) # (!\b2v_inst2|cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \b2v_inst2|cnt\(7),
	aclr => \RST~combout\,
	sclr => \b2v_inst2|cnt[17]~67_combout\,
	cin => \b2v_inst2|cnt[5]~39\,
	cin0 => \b2v_inst2|cnt[6]~37\,
	cin1 => \b2v_inst2|cnt[6]~37COUT1_102\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst2|cnt\(7),
	cout0 => \b2v_inst2|cnt[7]~41\,
	cout1 => \b2v_inst2|cnt[7]~41COUT1_104\);

-- Location: LC_X10_Y5_N2
\b2v_inst2|cnt[8]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst2|cnt\(8) = DFFEAS(\b2v_inst2|cnt\(8) $ ((((!(!\b2v_inst2|cnt[5]~39\ & \b2v_inst2|cnt[7]~41\) # (\b2v_inst2|cnt[5]~39\ & \b2v_inst2|cnt[7]~41COUT1_104\))))), GLOBAL(\CLK~combout\), !GLOBAL(\RST~combout\), , , , , \b2v_inst2|cnt[17]~67_combout\, )
-- \b2v_inst2|cnt[8]~35\ = CARRY((\b2v_inst2|cnt\(8) & ((!\b2v_inst2|cnt[7]~41\))))
-- \b2v_inst2|cnt[8]~35COUT1_106\ = CARRY((\b2v_inst2|cnt\(8) & ((!\b2v_inst2|cnt[7]~41COUT1_104\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \b2v_inst2|cnt\(8),
	aclr => \RST~combout\,
	sclr => \b2v_inst2|cnt[17]~67_combout\,
	cin => \b2v_inst2|cnt[5]~39\,
	cin0 => \b2v_inst2|cnt[7]~41\,
	cin1 => \b2v_inst2|cnt[7]~41COUT1_104\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst2|cnt\(8),
	cout0 => \b2v_inst2|cnt[8]~35\,
	cout1 => \b2v_inst2|cnt[8]~35COUT1_106\);

-- Location: LC_X10_Y5_N3
\b2v_inst2|cnt[9]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst2|cnt\(9) = DFFEAS((\b2v_inst2|cnt\(9) $ (((!\b2v_inst2|cnt[5]~39\ & \b2v_inst2|cnt[8]~35\) # (\b2v_inst2|cnt[5]~39\ & \b2v_inst2|cnt[8]~35COUT1_106\)))), GLOBAL(\CLK~combout\), !GLOBAL(\RST~combout\), , , , , \b2v_inst2|cnt[17]~67_combout\, )
-- \b2v_inst2|cnt[9]~43\ = CARRY(((!\b2v_inst2|cnt[8]~35\) # (!\b2v_inst2|cnt\(9))))
-- \b2v_inst2|cnt[9]~43COUT1_108\ = CARRY(((!\b2v_inst2|cnt[8]~35COUT1_106\) # (!\b2v_inst2|cnt\(9))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datab => \b2v_inst2|cnt\(9),
	aclr => \RST~combout\,
	sclr => \b2v_inst2|cnt[17]~67_combout\,
	cin => \b2v_inst2|cnt[5]~39\,
	cin0 => \b2v_inst2|cnt[8]~35\,
	cin1 => \b2v_inst2|cnt[8]~35COUT1_106\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst2|cnt\(9),
	cout0 => \b2v_inst2|cnt[9]~43\,
	cout1 => \b2v_inst2|cnt[9]~43COUT1_108\);

-- Location: LC_X10_Y5_N4
\b2v_inst2|cnt[10]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst2|cnt\(10) = DFFEAS((\b2v_inst2|cnt\(10) $ ((!(!\b2v_inst2|cnt[5]~39\ & \b2v_inst2|cnt[9]~43\) # (\b2v_inst2|cnt[5]~39\ & \b2v_inst2|cnt[9]~43COUT1_108\)))), GLOBAL(\CLK~combout\), !GLOBAL(\RST~combout\), , , , , \b2v_inst2|cnt[17]~67_combout\, )
-- \b2v_inst2|cnt[10]~33\ = CARRY(((\b2v_inst2|cnt\(10) & !\b2v_inst2|cnt[9]~43COUT1_108\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datab => \b2v_inst2|cnt\(10),
	aclr => \RST~combout\,
	sclr => \b2v_inst2|cnt[17]~67_combout\,
	cin => \b2v_inst2|cnt[5]~39\,
	cin0 => \b2v_inst2|cnt[9]~43\,
	cin1 => \b2v_inst2|cnt[9]~43COUT1_108\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst2|cnt\(10),
	cout => \b2v_inst2|cnt[10]~33\);

-- Location: LC_X10_Y6_N0
\b2v_inst2|LessThan3~1\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst2|LessThan3~1_combout\ = (\b2v_inst2|cnt\(5) & ((\b2v_inst2|cnt\(4)) # ((\b2v_inst2|cnt\(3) & \b2v_inst2|cnt\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e0c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|cnt\(3),
	datab => \b2v_inst2|cnt\(4),
	datac => \b2v_inst2|cnt\(5),
	datad => \b2v_inst2|cnt\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst2|LessThan3~1_combout\);

-- Location: LC_X9_Y6_N9
\b2v_inst2|LessThan3~0\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst2|LessThan3~0_combout\ = (\b2v_inst2|cnt\(9) & ((\b2v_inst2|cnt\(6)) # ((\b2v_inst2|cnt\(8)) # (\b2v_inst2|cnt\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0e0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|cnt\(6),
	datab => \b2v_inst2|cnt\(8),
	datac => \b2v_inst2|cnt\(9),
	datad => \b2v_inst2|cnt\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst2|LessThan3~0_combout\);

-- Location: LC_X9_Y6_N2
\b2v_inst2|LessThan3~2\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst2|LessThan3~2_combout\ = (\b2v_inst2|cnt\(10)) # ((\b2v_inst2|LessThan3~0_combout\) # ((\b2v_inst2|LessThan3~1_combout\ & \b2v_inst2|cnt\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fefa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|cnt\(10),
	datab => \b2v_inst2|LessThan3~1_combout\,
	datac => \b2v_inst2|LessThan3~0_combout\,
	datad => \b2v_inst2|cnt\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst2|LessThan3~2_combout\);

-- Location: LC_X10_Y5_N5
\b2v_inst2|cnt[11]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst2|cnt\(11) = DFFEAS((\b2v_inst2|cnt\(11) $ ((\b2v_inst2|cnt[10]~33\))), GLOBAL(\CLK~combout\), !GLOBAL(\RST~combout\), , , , , \b2v_inst2|cnt[17]~67_combout\, )
-- \b2v_inst2|cnt[11]~61\ = CARRY(((!\b2v_inst2|cnt[10]~33\) # (!\b2v_inst2|cnt\(11))))
-- \b2v_inst2|cnt[11]~61COUT1_110\ = CARRY(((!\b2v_inst2|cnt[10]~33\) # (!\b2v_inst2|cnt\(11))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datab => \b2v_inst2|cnt\(11),
	aclr => \RST~combout\,
	sclr => \b2v_inst2|cnt[17]~67_combout\,
	cin => \b2v_inst2|cnt[10]~33\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst2|cnt\(11),
	cout0 => \b2v_inst2|cnt[11]~61\,
	cout1 => \b2v_inst2|cnt[11]~61COUT1_110\);

-- Location: PIN_82,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Buttom1~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Buttom1,
	combout => \Buttom1~combout\);

-- Location: LC_X10_Y6_N1
\b2v_inst2|LessThan2~1\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst2|LessThan2~1_combout\ = (\b2v_inst2|cnt\(4) & ((\b2v_inst2|cnt\(3)) # ((\b2v_inst2|cnt\(1) & \b2v_inst2|cnt\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e0a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|cnt\(3),
	datab => \b2v_inst2|cnt\(1),
	datac => \b2v_inst2|cnt\(4),
	datad => \b2v_inst2|cnt\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst2|LessThan2~1_combout\);

-- Location: LC_X9_Y6_N1
\b2v_inst2|LessThan0~5\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst2|LessThan0~5_combout\ = ((!\b2v_inst2|cnt\(9) & ((!\b2v_inst2|cnt\(7)) # (!\b2v_inst2|cnt\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "030f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|cnt\(8),
	datac => \b2v_inst2|cnt\(9),
	datad => \b2v_inst2|cnt\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst2|LessThan0~5_combout\);

-- Location: LC_X9_Y6_N0
\b2v_inst2|LessThan2~0\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst2|LessThan2~0_combout\ = ((\b2v_inst2|cnt\(8) & ((\b2v_inst2|cnt\(5)) # (\b2v_inst2|cnt\(6))))) # (!\b2v_inst2|LessThan0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c8ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|cnt\(5),
	datab => \b2v_inst2|cnt\(8),
	datac => \b2v_inst2|cnt\(6),
	datad => \b2v_inst2|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst2|LessThan2~0_combout\);

-- Location: LC_X9_Y6_N3
\b2v_inst2|LessThan2~2\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst2|LessThan2~2_combout\ = (\b2v_inst2|cnt\(10) & ((\b2v_inst2|LessThan2~0_combout\) # ((\b2v_inst2|LessThan2~1_combout\ & \b2v_inst2|cnt\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f080",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|LessThan2~1_combout\,
	datab => \b2v_inst2|cnt\(8),
	datac => \b2v_inst2|cnt\(10),
	datad => \b2v_inst2|LessThan2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst2|LessThan2~2_combout\);

-- Location: LC_X8_Y6_N3
\b2v_inst2|cnt[17]~65\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst2|cnt[17]~65_combout\ = (\b2v_inst2|cnt\(11) & (!\b2v_inst2|LessThan3~2_combout\ & (\Buttom1~combout\))) # (!\b2v_inst2|cnt\(11) & (((!\Buttom1~combout\ & \b2v_inst2|LessThan2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4340",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|LessThan3~2_combout\,
	datab => \b2v_inst2|cnt\(11),
	datac => \Buttom1~combout\,
	datad => \b2v_inst2|LessThan2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst2|cnt[17]~65_combout\);

-- Location: LC_X10_Y6_N2
\b2v_inst2|LessThan0~6\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst2|LessThan0~6_combout\ = (\b2v_inst2|cnt\(2) & (((\b2v_inst2|cnt\(0)) # (\b2v_inst2|cnt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|cnt\(2),
	datac => \b2v_inst2|cnt\(0),
	datad => \b2v_inst2|cnt\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst2|LessThan0~6_combout\);

-- Location: LC_X9_Y6_N7
\b2v_inst2|LessThan0~7\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst2|LessThan0~7_combout\ = (\b2v_inst2|cnt\(5)) # ((\b2v_inst2|cnt\(3)) # ((\b2v_inst2|LessThan0~6_combout\) # (\b2v_inst2|cnt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|cnt\(5),
	datab => \b2v_inst2|cnt\(3),
	datac => \b2v_inst2|LessThan0~6_combout\,
	datad => \b2v_inst2|cnt\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst2|LessThan0~7_combout\);

-- Location: LC_X9_Y6_N5
\b2v_inst2|LessThan0~8\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst2|LessThan0~8_combout\ = ((\b2v_inst2|cnt\(6) & (\b2v_inst2|cnt\(8) & \b2v_inst2|LessThan0~7_combout\))) # (!\b2v_inst2|LessThan0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "80ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|cnt\(6),
	datab => \b2v_inst2|cnt\(8),
	datac => \b2v_inst2|LessThan0~7_combout\,
	datad => \b2v_inst2|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst2|LessThan0~8_combout\);

-- Location: LC_X10_Y6_N3
\b2v_inst2|LessThan1~0\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst2|LessThan1~0_combout\ = (\b2v_inst2|cnt\(3) & ((\b2v_inst2|cnt\(2)) # ((\b2v_inst2|cnt\(0) & \b2v_inst2|cnt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e0a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|cnt\(2),
	datab => \b2v_inst2|cnt\(0),
	datac => \b2v_inst2|cnt\(3),
	datad => \b2v_inst2|cnt\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst2|LessThan1~0_combout\);

-- Location: LC_X9_Y6_N4
\b2v_inst2|LessThan1~1\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst2|LessThan1~1_combout\ = (\b2v_inst2|cnt\(5)) # ((\b2v_inst2|LessThan1~0_combout\) # ((\b2v_inst2|cnt\(6)) # (\b2v_inst2|cnt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|cnt\(5),
	datab => \b2v_inst2|LessThan1~0_combout\,
	datac => \b2v_inst2|cnt\(6),
	datad => \b2v_inst2|cnt\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst2|LessThan1~1_combout\);

-- Location: LC_X9_Y6_N6
\b2v_inst2|LessThan1~2\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst2|LessThan1~2_combout\ = (\b2v_inst2|cnt\(9) & ((\b2v_inst2|cnt\(8)) # ((\b2v_inst2|LessThan1~1_combout\ & \b2v_inst2|cnt\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a888",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|cnt\(9),
	datab => \b2v_inst2|cnt\(8),
	datac => \b2v_inst2|LessThan1~1_combout\,
	datad => \b2v_inst2|cnt\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst2|LessThan1~2_combout\);

-- Location: LC_X8_Y6_N7
\b2v_inst2|cnt[17]~64\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst2|cnt[17]~64_combout\ = (\b2v_inst2|cnt\(10)) # ((\Buttom1~combout\ & ((\b2v_inst2|LessThan1~2_combout\))) # (!\Buttom1~combout\ & (\b2v_inst2|LessThan0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "feae",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|cnt\(10),
	datab => \b2v_inst2|LessThan0~8_combout\,
	datac => \Buttom1~combout\,
	datad => \b2v_inst2|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst2|cnt[17]~64_combout\);

-- Location: LC_X8_Y6_N8
\b2v_inst2|cnt[17]~66\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst2|cnt[17]~66_combout\ = (\Buttom2~combout\ & (\b2v_inst2|cnt[17]~65_combout\ $ ((\b2v_inst2|cnt\(11))))) # (!\Buttom2~combout\ & (((\b2v_inst2|cnt\(11)) # (\b2v_inst2|cnt[17]~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7d78",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Buttom2~combout\,
	datab => \b2v_inst2|cnt[17]~65_combout\,
	datac => \b2v_inst2|cnt\(11),
	datad => \b2v_inst2|cnt[17]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst2|cnt[17]~66_combout\);

-- Location: LC_X10_Y5_N6
\b2v_inst2|cnt[12]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst2|cnt\(12) = DFFEAS(\b2v_inst2|cnt\(12) $ ((((!(!\b2v_inst2|cnt[10]~33\ & \b2v_inst2|cnt[11]~61\) # (\b2v_inst2|cnt[10]~33\ & \b2v_inst2|cnt[11]~61COUT1_110\))))), GLOBAL(\CLK~combout\), !GLOBAL(\RST~combout\), , , , , 
-- \b2v_inst2|cnt[17]~67_combout\, )
-- \b2v_inst2|cnt[12]~1\ = CARRY((\b2v_inst2|cnt\(12) & ((!\b2v_inst2|cnt[11]~61\))))
-- \b2v_inst2|cnt[12]~1COUT1_112\ = CARRY((\b2v_inst2|cnt\(12) & ((!\b2v_inst2|cnt[11]~61COUT1_110\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \b2v_inst2|cnt\(12),
	aclr => \RST~combout\,
	sclr => \b2v_inst2|cnt[17]~67_combout\,
	cin => \b2v_inst2|cnt[10]~33\,
	cin0 => \b2v_inst2|cnt[11]~61\,
	cin1 => \b2v_inst2|cnt[11]~61COUT1_110\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst2|cnt\(12),
	cout0 => \b2v_inst2|cnt[12]~1\,
	cout1 => \b2v_inst2|cnt[12]~1COUT1_112\);

-- Location: LC_X10_Y5_N7
\b2v_inst2|cnt[13]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst2|cnt\(13) = DFFEAS(\b2v_inst2|cnt\(13) $ (((((!\b2v_inst2|cnt[10]~33\ & \b2v_inst2|cnt[12]~1\) # (\b2v_inst2|cnt[10]~33\ & \b2v_inst2|cnt[12]~1COUT1_112\))))), GLOBAL(\CLK~combout\), !GLOBAL(\RST~combout\), , , , , 
-- \b2v_inst2|cnt[17]~67_combout\, )
-- \b2v_inst2|cnt[13]~3\ = CARRY(((!\b2v_inst2|cnt[12]~1\)) # (!\b2v_inst2|cnt\(13)))
-- \b2v_inst2|cnt[13]~3COUT1_114\ = CARRY(((!\b2v_inst2|cnt[12]~1COUT1_112\)) # (!\b2v_inst2|cnt\(13)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \b2v_inst2|cnt\(13),
	aclr => \RST~combout\,
	sclr => \b2v_inst2|cnt[17]~67_combout\,
	cin => \b2v_inst2|cnt[10]~33\,
	cin0 => \b2v_inst2|cnt[12]~1\,
	cin1 => \b2v_inst2|cnt[12]~1COUT1_112\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst2|cnt\(13),
	cout0 => \b2v_inst2|cnt[13]~3\,
	cout1 => \b2v_inst2|cnt[13]~3COUT1_114\);

-- Location: LC_X10_Y5_N8
\b2v_inst2|cnt[14]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst2|cnt\(14) = DFFEAS((\b2v_inst2|cnt\(14) $ ((!(!\b2v_inst2|cnt[10]~33\ & \b2v_inst2|cnt[13]~3\) # (\b2v_inst2|cnt[10]~33\ & \b2v_inst2|cnt[13]~3COUT1_114\)))), GLOBAL(\CLK~combout\), !GLOBAL(\RST~combout\), , , , , \b2v_inst2|cnt[17]~67_combout\, 
-- )
-- \b2v_inst2|cnt[14]~5\ = CARRY(((\b2v_inst2|cnt\(14) & !\b2v_inst2|cnt[13]~3\)))
-- \b2v_inst2|cnt[14]~5COUT1_116\ = CARRY(((\b2v_inst2|cnt\(14) & !\b2v_inst2|cnt[13]~3COUT1_114\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datab => \b2v_inst2|cnt\(14),
	aclr => \RST~combout\,
	sclr => \b2v_inst2|cnt[17]~67_combout\,
	cin => \b2v_inst2|cnt[10]~33\,
	cin0 => \b2v_inst2|cnt[13]~3\,
	cin1 => \b2v_inst2|cnt[13]~3COUT1_114\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst2|cnt\(14),
	cout0 => \b2v_inst2|cnt[14]~5\,
	cout1 => \b2v_inst2|cnt[14]~5COUT1_116\);

-- Location: LC_X10_Y5_N9
\b2v_inst2|cnt[15]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst2|cnt\(15) = DFFEAS(\b2v_inst2|cnt\(15) $ (((((!\b2v_inst2|cnt[10]~33\ & \b2v_inst2|cnt[14]~5\) # (\b2v_inst2|cnt[10]~33\ & \b2v_inst2|cnt[14]~5COUT1_116\))))), GLOBAL(\CLK~combout\), !GLOBAL(\RST~combout\), , , , , 
-- \b2v_inst2|cnt[17]~67_combout\, )
-- \b2v_inst2|cnt[15]~7\ = CARRY(((!\b2v_inst2|cnt[14]~5COUT1_116\)) # (!\b2v_inst2|cnt\(15)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \b2v_inst2|cnt\(15),
	aclr => \RST~combout\,
	sclr => \b2v_inst2|cnt[17]~67_combout\,
	cin => \b2v_inst2|cnt[10]~33\,
	cin0 => \b2v_inst2|cnt[14]~5\,
	cin1 => \b2v_inst2|cnt[14]~5COUT1_116\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst2|cnt\(15),
	cout => \b2v_inst2|cnt[15]~7\);

-- Location: LC_X10_Y4_N0
\b2v_inst2|cnt[16]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst2|cnt\(16) = DFFEAS((\b2v_inst2|cnt\(16) $ ((!\b2v_inst2|cnt[15]~7\))), GLOBAL(\CLK~combout\), !GLOBAL(\RST~combout\), , , , , \b2v_inst2|cnt[17]~67_combout\, )
-- \b2v_inst2|cnt[16]~9\ = CARRY(((\b2v_inst2|cnt\(16) & !\b2v_inst2|cnt[15]~7\)))
-- \b2v_inst2|cnt[16]~9COUT1_118\ = CARRY(((\b2v_inst2|cnt\(16) & !\b2v_inst2|cnt[15]~7\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datab => \b2v_inst2|cnt\(16),
	aclr => \RST~combout\,
	sclr => \b2v_inst2|cnt[17]~67_combout\,
	cin => \b2v_inst2|cnt[15]~7\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst2|cnt\(16),
	cout0 => \b2v_inst2|cnt[16]~9\,
	cout1 => \b2v_inst2|cnt[16]~9COUT1_118\);

-- Location: LC_X10_Y4_N1
\b2v_inst2|cnt[17]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst2|cnt\(17) = DFFEAS(\b2v_inst2|cnt\(17) $ (((((!\b2v_inst2|cnt[15]~7\ & \b2v_inst2|cnt[16]~9\) # (\b2v_inst2|cnt[15]~7\ & \b2v_inst2|cnt[16]~9COUT1_118\))))), GLOBAL(\CLK~combout\), !GLOBAL(\RST~combout\), , , , , \b2v_inst2|cnt[17]~67_combout\, 
-- )
-- \b2v_inst2|cnt[17]~11\ = CARRY(((!\b2v_inst2|cnt[16]~9\)) # (!\b2v_inst2|cnt\(17)))
-- \b2v_inst2|cnt[17]~11COUT1_120\ = CARRY(((!\b2v_inst2|cnt[16]~9COUT1_118\)) # (!\b2v_inst2|cnt\(17)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \b2v_inst2|cnt\(17),
	aclr => \RST~combout\,
	sclr => \b2v_inst2|cnt[17]~67_combout\,
	cin => \b2v_inst2|cnt[15]~7\,
	cin0 => \b2v_inst2|cnt[16]~9\,
	cin1 => \b2v_inst2|cnt[16]~9COUT1_118\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst2|cnt\(17),
	cout0 => \b2v_inst2|cnt[17]~11\,
	cout1 => \b2v_inst2|cnt[17]~11COUT1_120\);

-- Location: LC_X10_Y4_N2
\b2v_inst2|cnt[18]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst2|cnt\(18) = DFFEAS(\b2v_inst2|cnt\(18) $ ((((!(!\b2v_inst2|cnt[15]~7\ & \b2v_inst2|cnt[17]~11\) # (\b2v_inst2|cnt[15]~7\ & \b2v_inst2|cnt[17]~11COUT1_120\))))), GLOBAL(\CLK~combout\), !GLOBAL(\RST~combout\), , , , , 
-- \b2v_inst2|cnt[17]~67_combout\, )
-- \b2v_inst2|cnt[18]~13\ = CARRY((\b2v_inst2|cnt\(18) & ((!\b2v_inst2|cnt[17]~11\))))
-- \b2v_inst2|cnt[18]~13COUT1_122\ = CARRY((\b2v_inst2|cnt\(18) & ((!\b2v_inst2|cnt[17]~11COUT1_120\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \b2v_inst2|cnt\(18),
	aclr => \RST~combout\,
	sclr => \b2v_inst2|cnt[17]~67_combout\,
	cin => \b2v_inst2|cnt[15]~7\,
	cin0 => \b2v_inst2|cnt[17]~11\,
	cin1 => \b2v_inst2|cnt[17]~11COUT1_120\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst2|cnt\(18),
	cout0 => \b2v_inst2|cnt[18]~13\,
	cout1 => \b2v_inst2|cnt[18]~13COUT1_122\);

-- Location: LC_X10_Y4_N3
\b2v_inst2|cnt[19]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst2|cnt\(19) = DFFEAS((\b2v_inst2|cnt\(19) $ (((!\b2v_inst2|cnt[15]~7\ & \b2v_inst2|cnt[18]~13\) # (\b2v_inst2|cnt[15]~7\ & \b2v_inst2|cnt[18]~13COUT1_122\)))), GLOBAL(\CLK~combout\), !GLOBAL(\RST~combout\), , , , , \b2v_inst2|cnt[17]~67_combout\, 
-- )
-- \b2v_inst2|cnt[19]~15\ = CARRY(((!\b2v_inst2|cnt[18]~13\) # (!\b2v_inst2|cnt\(19))))
-- \b2v_inst2|cnt[19]~15COUT1_124\ = CARRY(((!\b2v_inst2|cnt[18]~13COUT1_122\) # (!\b2v_inst2|cnt\(19))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datab => \b2v_inst2|cnt\(19),
	aclr => \RST~combout\,
	sclr => \b2v_inst2|cnt[17]~67_combout\,
	cin => \b2v_inst2|cnt[15]~7\,
	cin0 => \b2v_inst2|cnt[18]~13\,
	cin1 => \b2v_inst2|cnt[18]~13COUT1_122\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst2|cnt\(19),
	cout0 => \b2v_inst2|cnt[19]~15\,
	cout1 => \b2v_inst2|cnt[19]~15COUT1_124\);

-- Location: LC_X10_Y4_N4
\b2v_inst2|cnt[20]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst2|cnt\(20) = DFFEAS((\b2v_inst2|cnt\(20) $ ((!(!\b2v_inst2|cnt[15]~7\ & \b2v_inst2|cnt[19]~15\) # (\b2v_inst2|cnt[15]~7\ & \b2v_inst2|cnt[19]~15COUT1_124\)))), GLOBAL(\CLK~combout\), !GLOBAL(\RST~combout\), , , , , \b2v_inst2|cnt[17]~67_combout\, 
-- )
-- \b2v_inst2|cnt[20]~17\ = CARRY(((\b2v_inst2|cnt\(20) & !\b2v_inst2|cnt[19]~15COUT1_124\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datab => \b2v_inst2|cnt\(20),
	aclr => \RST~combout\,
	sclr => \b2v_inst2|cnt[17]~67_combout\,
	cin => \b2v_inst2|cnt[15]~7\,
	cin0 => \b2v_inst2|cnt[19]~15\,
	cin1 => \b2v_inst2|cnt[19]~15COUT1_124\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst2|cnt\(20),
	cout => \b2v_inst2|cnt[20]~17\);

-- Location: LC_X10_Y4_N5
\b2v_inst2|cnt[21]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst2|cnt\(21) = DFFEAS((\b2v_inst2|cnt\(21) $ ((\b2v_inst2|cnt[20]~17\))), GLOBAL(\CLK~combout\), !GLOBAL(\RST~combout\), , , , , \b2v_inst2|cnt[17]~67_combout\, )
-- \b2v_inst2|cnt[21]~19\ = CARRY(((!\b2v_inst2|cnt[20]~17\) # (!\b2v_inst2|cnt\(21))))
-- \b2v_inst2|cnt[21]~19COUT1_126\ = CARRY(((!\b2v_inst2|cnt[20]~17\) # (!\b2v_inst2|cnt\(21))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datab => \b2v_inst2|cnt\(21),
	aclr => \RST~combout\,
	sclr => \b2v_inst2|cnt[17]~67_combout\,
	cin => \b2v_inst2|cnt[20]~17\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst2|cnt\(21),
	cout0 => \b2v_inst2|cnt[21]~19\,
	cout1 => \b2v_inst2|cnt[21]~19COUT1_126\);

-- Location: LC_X10_Y4_N6
\b2v_inst2|cnt[22]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst2|cnt\(22) = DFFEAS(\b2v_inst2|cnt\(22) $ ((((!(!\b2v_inst2|cnt[20]~17\ & \b2v_inst2|cnt[21]~19\) # (\b2v_inst2|cnt[20]~17\ & \b2v_inst2|cnt[21]~19COUT1_126\))))), GLOBAL(\CLK~combout\), !GLOBAL(\RST~combout\), , , , , 
-- \b2v_inst2|cnt[17]~67_combout\, )
-- \b2v_inst2|cnt[22]~21\ = CARRY((\b2v_inst2|cnt\(22) & ((!\b2v_inst2|cnt[21]~19\))))
-- \b2v_inst2|cnt[22]~21COUT1_128\ = CARRY((\b2v_inst2|cnt\(22) & ((!\b2v_inst2|cnt[21]~19COUT1_126\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \b2v_inst2|cnt\(22),
	aclr => \RST~combout\,
	sclr => \b2v_inst2|cnt[17]~67_combout\,
	cin => \b2v_inst2|cnt[20]~17\,
	cin0 => \b2v_inst2|cnt[21]~19\,
	cin1 => \b2v_inst2|cnt[21]~19COUT1_126\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst2|cnt\(22),
	cout0 => \b2v_inst2|cnt[22]~21\,
	cout1 => \b2v_inst2|cnt[22]~21COUT1_128\);

-- Location: LC_X10_Y4_N7
\b2v_inst2|cnt[23]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst2|cnt\(23) = DFFEAS(\b2v_inst2|cnt\(23) $ (((((!\b2v_inst2|cnt[20]~17\ & \b2v_inst2|cnt[22]~21\) # (\b2v_inst2|cnt[20]~17\ & \b2v_inst2|cnt[22]~21COUT1_128\))))), GLOBAL(\CLK~combout\), !GLOBAL(\RST~combout\), , , , , 
-- \b2v_inst2|cnt[17]~67_combout\, )
-- \b2v_inst2|cnt[23]~23\ = CARRY(((!\b2v_inst2|cnt[22]~21\)) # (!\b2v_inst2|cnt\(23)))
-- \b2v_inst2|cnt[23]~23COUT1_130\ = CARRY(((!\b2v_inst2|cnt[22]~21COUT1_128\)) # (!\b2v_inst2|cnt\(23)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \b2v_inst2|cnt\(23),
	aclr => \RST~combout\,
	sclr => \b2v_inst2|cnt[17]~67_combout\,
	cin => \b2v_inst2|cnt[20]~17\,
	cin0 => \b2v_inst2|cnt[22]~21\,
	cin1 => \b2v_inst2|cnt[22]~21COUT1_128\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst2|cnt\(23),
	cout0 => \b2v_inst2|cnt[23]~23\,
	cout1 => \b2v_inst2|cnt[23]~23COUT1_130\);

-- Location: LC_X10_Y4_N8
\b2v_inst2|cnt[24]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst2|cnt\(24) = DFFEAS((\b2v_inst2|cnt\(24) $ ((!(!\b2v_inst2|cnt[20]~17\ & \b2v_inst2|cnt[23]~23\) # (\b2v_inst2|cnt[20]~17\ & \b2v_inst2|cnt[23]~23COUT1_130\)))), GLOBAL(\CLK~combout\), !GLOBAL(\RST~combout\), , , , , 
-- \b2v_inst2|cnt[17]~67_combout\, )
-- \b2v_inst2|cnt[24]~25\ = CARRY(((\b2v_inst2|cnt\(24) & !\b2v_inst2|cnt[23]~23\)))
-- \b2v_inst2|cnt[24]~25COUT1_132\ = CARRY(((\b2v_inst2|cnt\(24) & !\b2v_inst2|cnt[23]~23COUT1_130\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datab => \b2v_inst2|cnt\(24),
	aclr => \RST~combout\,
	sclr => \b2v_inst2|cnt[17]~67_combout\,
	cin => \b2v_inst2|cnt[20]~17\,
	cin0 => \b2v_inst2|cnt[23]~23\,
	cin1 => \b2v_inst2|cnt[23]~23COUT1_130\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst2|cnt\(24),
	cout0 => \b2v_inst2|cnt[24]~25\,
	cout1 => \b2v_inst2|cnt[24]~25COUT1_132\);

-- Location: LC_X10_Y4_N9
\b2v_inst2|cnt[25]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst2|cnt\(25) = DFFEAS(\b2v_inst2|cnt\(25) $ (((((!\b2v_inst2|cnt[20]~17\ & \b2v_inst2|cnt[24]~25\) # (\b2v_inst2|cnt[20]~17\ & \b2v_inst2|cnt[24]~25COUT1_132\))))), GLOBAL(\CLK~combout\), !GLOBAL(\RST~combout\), , , , , 
-- \b2v_inst2|cnt[17]~67_combout\, )
-- \b2v_inst2|cnt[25]~27\ = CARRY(((!\b2v_inst2|cnt[24]~25COUT1_132\)) # (!\b2v_inst2|cnt\(25)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \b2v_inst2|cnt\(25),
	aclr => \RST~combout\,
	sclr => \b2v_inst2|cnt[17]~67_combout\,
	cin => \b2v_inst2|cnt[20]~17\,
	cin0 => \b2v_inst2|cnt[24]~25\,
	cin1 => \b2v_inst2|cnt[24]~25COUT1_132\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst2|cnt\(25),
	cout => \b2v_inst2|cnt[25]~27\);

-- Location: LC_X10_Y3_N0
\b2v_inst2|cnt[26]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst2|cnt\(26) = DFFEAS((\b2v_inst2|cnt\(26) $ ((!\b2v_inst2|cnt[25]~27\))), GLOBAL(\CLK~combout\), !GLOBAL(\RST~combout\), , , , , \b2v_inst2|cnt[17]~67_combout\, )
-- \b2v_inst2|cnt[26]~29\ = CARRY(((\b2v_inst2|cnt\(26) & !\b2v_inst2|cnt[25]~27\)))
-- \b2v_inst2|cnt[26]~29COUT1_134\ = CARRY(((\b2v_inst2|cnt\(26) & !\b2v_inst2|cnt[25]~27\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datab => \b2v_inst2|cnt\(26),
	aclr => \RST~combout\,
	sclr => \b2v_inst2|cnt[17]~67_combout\,
	cin => \b2v_inst2|cnt[25]~27\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst2|cnt\(26),
	cout0 => \b2v_inst2|cnt[26]~29\,
	cout1 => \b2v_inst2|cnt[26]~29COUT1_134\);

-- Location: LC_X10_Y3_N1
\b2v_inst2|cnt[27]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst2|cnt\(27) = DFFEAS(\b2v_inst2|cnt\(27) $ (((((!\b2v_inst2|cnt[25]~27\ & \b2v_inst2|cnt[26]~29\) # (\b2v_inst2|cnt[25]~27\ & \b2v_inst2|cnt[26]~29COUT1_134\))))), GLOBAL(\CLK~combout\), !GLOBAL(\RST~combout\), , , , , 
-- \b2v_inst2|cnt[17]~67_combout\, )
-- \b2v_inst2|cnt[27]~31\ = CARRY(((!\b2v_inst2|cnt[26]~29\)) # (!\b2v_inst2|cnt\(27)))
-- \b2v_inst2|cnt[27]~31COUT1_136\ = CARRY(((!\b2v_inst2|cnt[26]~29COUT1_134\)) # (!\b2v_inst2|cnt\(27)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \b2v_inst2|cnt\(27),
	aclr => \RST~combout\,
	sclr => \b2v_inst2|cnt[17]~67_combout\,
	cin => \b2v_inst2|cnt[25]~27\,
	cin0 => \b2v_inst2|cnt[26]~29\,
	cin1 => \b2v_inst2|cnt[26]~29COUT1_134\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst2|cnt\(27),
	cout0 => \b2v_inst2|cnt[27]~31\,
	cout1 => \b2v_inst2|cnt[27]~31COUT1_136\);

-- Location: LC_X10_Y3_N2
\b2v_inst2|cnt[28]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst2|cnt\(28) = DFFEAS(\b2v_inst2|cnt\(28) $ ((((!(!\b2v_inst2|cnt[25]~27\ & \b2v_inst2|cnt[27]~31\) # (\b2v_inst2|cnt[25]~27\ & \b2v_inst2|cnt[27]~31COUT1_136\))))), GLOBAL(\CLK~combout\), !GLOBAL(\RST~combout\), , , , , 
-- \b2v_inst2|cnt[17]~67_combout\, )
-- \b2v_inst2|cnt[28]~55\ = CARRY((\b2v_inst2|cnt\(28) & ((!\b2v_inst2|cnt[27]~31\))))
-- \b2v_inst2|cnt[28]~55COUT1_138\ = CARRY((\b2v_inst2|cnt\(28) & ((!\b2v_inst2|cnt[27]~31COUT1_136\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \b2v_inst2|cnt\(28),
	aclr => \RST~combout\,
	sclr => \b2v_inst2|cnt[17]~67_combout\,
	cin => \b2v_inst2|cnt[25]~27\,
	cin0 => \b2v_inst2|cnt[27]~31\,
	cin1 => \b2v_inst2|cnt[27]~31COUT1_136\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst2|cnt\(28),
	cout0 => \b2v_inst2|cnt[28]~55\,
	cout1 => \b2v_inst2|cnt[28]~55COUT1_138\);

-- Location: LC_X10_Y3_N3
\b2v_inst2|cnt[29]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst2|cnt\(29) = DFFEAS((\b2v_inst2|cnt\(29) $ (((!\b2v_inst2|cnt[25]~27\ & \b2v_inst2|cnt[28]~55\) # (\b2v_inst2|cnt[25]~27\ & \b2v_inst2|cnt[28]~55COUT1_138\)))), GLOBAL(\CLK~combout\), !GLOBAL(\RST~combout\), , , , , 
-- \b2v_inst2|cnt[17]~67_combout\, )
-- \b2v_inst2|cnt[29]~57\ = CARRY(((!\b2v_inst2|cnt[28]~55\) # (!\b2v_inst2|cnt\(29))))
-- \b2v_inst2|cnt[29]~57COUT1_140\ = CARRY(((!\b2v_inst2|cnt[28]~55COUT1_138\) # (!\b2v_inst2|cnt\(29))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datab => \b2v_inst2|cnt\(29),
	aclr => \RST~combout\,
	sclr => \b2v_inst2|cnt[17]~67_combout\,
	cin => \b2v_inst2|cnt[25]~27\,
	cin0 => \b2v_inst2|cnt[28]~55\,
	cin1 => \b2v_inst2|cnt[28]~55COUT1_138\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst2|cnt\(29),
	cout0 => \b2v_inst2|cnt[29]~57\,
	cout1 => \b2v_inst2|cnt[29]~57COUT1_140\);

-- Location: LC_X10_Y3_N4
\b2v_inst2|cnt[30]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst2|cnt\(30) = DFFEAS((\b2v_inst2|cnt\(30) $ ((!(!\b2v_inst2|cnt[25]~27\ & \b2v_inst2|cnt[29]~57\) # (\b2v_inst2|cnt[25]~27\ & \b2v_inst2|cnt[29]~57COUT1_140\)))), GLOBAL(\CLK~combout\), !GLOBAL(\RST~combout\), , , , , 
-- \b2v_inst2|cnt[17]~67_combout\, )
-- \b2v_inst2|cnt[30]~59\ = CARRY(((\b2v_inst2|cnt\(30) & !\b2v_inst2|cnt[29]~57COUT1_140\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datab => \b2v_inst2|cnt\(30),
	aclr => \RST~combout\,
	sclr => \b2v_inst2|cnt[17]~67_combout\,
	cin => \b2v_inst2|cnt[25]~27\,
	cin0 => \b2v_inst2|cnt[29]~57\,
	cin1 => \b2v_inst2|cnt[29]~57COUT1_140\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst2|cnt\(30),
	cout => \b2v_inst2|cnt[30]~59\);

-- Location: LC_X11_Y5_N2
\b2v_inst2|LessThan0~0\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst2|LessThan0~0_combout\ = (!\b2v_inst2|cnt\(12) & (!\b2v_inst2|cnt\(15) & (!\b2v_inst2|cnt\(14) & !\b2v_inst2|cnt\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|cnt\(12),
	datab => \b2v_inst2|cnt\(15),
	datac => \b2v_inst2|cnt\(14),
	datad => \b2v_inst2|cnt\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst2|LessThan0~0_combout\);

-- Location: LC_X9_Y4_N9
\b2v_inst2|LessThan0~1\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst2|LessThan0~1_combout\ = (!\b2v_inst2|cnt\(19) & (!\b2v_inst2|cnt\(16) & (!\b2v_inst2|cnt\(18) & !\b2v_inst2|cnt\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|cnt\(19),
	datab => \b2v_inst2|cnt\(16),
	datac => \b2v_inst2|cnt\(18),
	datad => \b2v_inst2|cnt\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst2|LessThan0~1_combout\);

-- Location: LC_X11_Y4_N2
\b2v_inst2|LessThan0~2\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst2|LessThan0~2_combout\ = (!\b2v_inst2|cnt\(22) & (!\b2v_inst2|cnt\(23) & (!\b2v_inst2|cnt\(21) & !\b2v_inst2|cnt\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|cnt\(22),
	datab => \b2v_inst2|cnt\(23),
	datac => \b2v_inst2|cnt\(21),
	datad => \b2v_inst2|cnt\(20),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst2|LessThan0~2_combout\);

-- Location: LC_X10_Y3_N6
\b2v_inst2|LessThan0~3\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst2|LessThan0~3_combout\ = (!\b2v_inst2|cnt\(27) & (!\b2v_inst2|cnt\(26) & (!\b2v_inst2|cnt\(24) & !\b2v_inst2|cnt\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|cnt\(27),
	datab => \b2v_inst2|cnt\(26),
	datac => \b2v_inst2|cnt\(24),
	datad => \b2v_inst2|cnt\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst2|LessThan0~3_combout\);

-- Location: LC_X8_Y6_N9
\b2v_inst2|LessThan0~4\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst2|LessThan0~4_combout\ = (\b2v_inst2|LessThan0~0_combout\ & (\b2v_inst2|LessThan0~1_combout\ & (\b2v_inst2|LessThan0~2_combout\ & \b2v_inst2|LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|LessThan0~0_combout\,
	datab => \b2v_inst2|LessThan0~1_combout\,
	datac => \b2v_inst2|LessThan0~2_combout\,
	datad => \b2v_inst2|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst2|LessThan0~4_combout\);

-- Location: LC_X10_Y3_N9
\b2v_inst2|LessThan0~10\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst2|LessThan0~10_combout\ = (!\b2v_inst2|cnt\(28) & (!\b2v_inst2|cnt\(30) & (\b2v_inst2|LessThan0~4_combout\ & !\b2v_inst2|cnt\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|cnt\(28),
	datab => \b2v_inst2|cnt\(30),
	datac => \b2v_inst2|LessThan0~4_combout\,
	datad => \b2v_inst2|cnt\(29),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst2|LessThan0~10_combout\);

-- Location: LC_X8_Y6_N1
\b2v_inst2|cnt[17]~67\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst2|cnt[17]~67_combout\ = ((!\b2v_inst2|cnt\(31) & ((\b2v_inst2|cnt[17]~66_combout\) # (!\b2v_inst2|LessThan0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3033",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|cnt\(31),
	datac => \b2v_inst2|cnt[17]~66_combout\,
	datad => \b2v_inst2|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst2|cnt[17]~67_combout\);

-- Location: LC_X10_Y3_N5
\b2v_inst2|cnt[31]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst2|cnt\(31) = DFFEAS(((\b2v_inst2|cnt[30]~59\ $ (\b2v_inst2|cnt\(31)))), GLOBAL(\CLK~combout\), !GLOBAL(\RST~combout\), , , , , \b2v_inst2|cnt[17]~67_combout\, )

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datad => \b2v_inst2|cnt\(31),
	aclr => \RST~combout\,
	sclr => \b2v_inst2|cnt[17]~67_combout\,
	cin => \b2v_inst2|cnt[30]~59\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst2|cnt\(31));

-- Location: LC_X10_Y3_N8
\b2v_inst2|LessThan0~9\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst2|LessThan0~9_combout\ = ((!\b2v_inst2|cnt\(30) & (!\b2v_inst2|cnt\(28) & !\b2v_inst2|cnt\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0003",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|cnt\(30),
	datac => \b2v_inst2|cnt\(28),
	datad => \b2v_inst2|cnt\(29),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst2|LessThan0~9_combout\);

-- Location: LC_X9_Y6_N8
\b2v_inst2|bclk~0\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst2|bclk~0_combout\ = (!\b2v_inst2|cnt\(10) & (\b2v_inst2|LessThan0~9_combout\ & (!\b2v_inst2|cnt\(11) & \b2v_inst2|LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0400",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|cnt\(10),
	datab => \b2v_inst2|LessThan0~9_combout\,
	datac => \b2v_inst2|cnt\(11),
	datad => \b2v_inst2|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst2|bclk~0_combout\);

-- Location: LC_X8_Y6_N0
\b2v_inst2|bclk~1\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst2|bclk~1_combout\ = (\b2v_inst2|bclk~0_combout\ & ((\Buttom1~combout\ & (!\b2v_inst2|LessThan1~2_combout\)) # (!\Buttom1~combout\ & ((!\b2v_inst2|LessThan0~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5300",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|LessThan1~2_combout\,
	datab => \b2v_inst2|LessThan0~8_combout\,
	datac => \Buttom1~combout\,
	datad => \b2v_inst2|bclk~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst2|bclk~1_combout\);

-- Location: LC_X8_Y6_N4
\b2v_inst2|bclk~2\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst2|bclk~2_combout\ = (\Buttom2~combout\ & (((\Buttom1~combout\)))) # (!\Buttom2~combout\ & (!\b2v_inst2|cnt\(31) & ((!\b2v_inst2|bclk~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0b1",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Buttom2~combout\,
	datab => \b2v_inst2|cnt\(31),
	datac => \Buttom1~combout\,
	datad => \b2v_inst2|bclk~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst2|bclk~2_combout\);

-- Location: LC_X10_Y3_N7
\b2v_inst2|LessThan2~3\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst2|LessThan2~3_combout\ = (\b2v_inst2|cnt\(11)) # ((\b2v_inst2|cnt\(30)) # ((\b2v_inst2|cnt\(28)) # (\b2v_inst2|cnt\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|cnt\(11),
	datab => \b2v_inst2|cnt\(30),
	datac => \b2v_inst2|cnt\(28),
	datad => \b2v_inst2|cnt\(29),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst2|LessThan2~3_combout\);

-- Location: LC_X8_Y6_N2
\b2v_inst2|LessThan2~4\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst2|LessThan2~4_combout\ = (!\b2v_inst2|cnt\(31) & ((\b2v_inst2|LessThan2~2_combout\) # ((\b2v_inst2|LessThan2~3_combout\) # (!\b2v_inst2|LessThan0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ef",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|LessThan2~2_combout\,
	datab => \b2v_inst2|LessThan2~3_combout\,
	datac => \b2v_inst2|LessThan0~4_combout\,
	datad => \b2v_inst2|cnt\(31),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst2|LessThan2~4_combout\);

-- Location: LC_X8_Y6_N5
\b2v_inst2|LessThan3~3\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst2|LessThan3~3_combout\ = (!\b2v_inst2|cnt\(31) & (((\b2v_inst2|LessThan3~2_combout\ & \b2v_inst2|cnt\(11))) # (!\b2v_inst2|LessThan0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2033",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|LessThan3~2_combout\,
	datab => \b2v_inst2|cnt\(31),
	datac => \b2v_inst2|cnt\(11),
	datad => \b2v_inst2|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst2|LessThan3~3_combout\);

-- Location: LC_X8_Y6_N6
\b2v_inst2|bclk\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst2|bclk~regout\ = DFFEAS((\Buttom2~combout\ & ((\b2v_inst2|bclk~2_combout\ & ((\b2v_inst2|LessThan3~3_combout\))) # (!\b2v_inst2|bclk~2_combout\ & (\b2v_inst2|LessThan2~4_combout\)))) # (!\Buttom2~combout\ & (\b2v_inst2|bclk~2_combout\)), 
-- GLOBAL(\CLK~combout\), !GLOBAL(\RST~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ec64",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Buttom2~combout\,
	datab => \b2v_inst2|bclk~2_combout\,
	datac => \b2v_inst2|LessThan2~4_combout\,
	datad => \b2v_inst2|LessThan3~3_combout\,
	aclr => \RST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst2|bclk~regout\);

-- Location: LC_X18_Y9_N4
\b2v_inst1|Add1~0\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst1|Add1~0_combout\ = (!\b2v_inst1|Transmit_Data:tbitcnt[0]~regout\)
-- \b2v_inst1|Add1~2\ = CARRY((\b2v_inst1|Transmit_Data:tbitcnt[0]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "55aa",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|Transmit_Data:tbitcnt[0]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst1|Add1~0_combout\,
	cout => \b2v_inst1|Add1~2\);

-- Location: LC_X18_Y9_N5
\b2v_inst1|Add1~5\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst1|Add1~5_combout\ = \b2v_inst1|Transmit_Data:tbitcnt[1]~regout\ $ ((((\b2v_inst1|Add1~2\))))
-- \b2v_inst1|Add1~7\ = CARRY(((!\b2v_inst1|Add1~2\)) # (!\b2v_inst1|Transmit_Data:tbitcnt[1]~regout\))
-- \b2v_inst1|Add1~7COUT1_186\ = CARRY(((!\b2v_inst1|Add1~2\)) # (!\b2v_inst1|Transmit_Data:tbitcnt[1]~regout\))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|Transmit_Data:tbitcnt[1]~regout\,
	cin => \b2v_inst1|Add1~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst1|Add1~5_combout\,
	cout0 => \b2v_inst1|Add1~7\,
	cout1 => \b2v_inst1|Add1~7COUT1_186\);

-- Location: LC_X17_Y9_N8
\b2v_inst1|Transmit_Data:tbitcnt[1]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst1|Transmit_Data:tbitcnt[1]~regout\ = DFFEAS(GND, GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , \b2v_inst1|Selector1~1_combout\, \b2v_inst1|Add1~5_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	datac => \b2v_inst1|Add1~5_combout\,
	aclr => \RST~combout\,
	sload => VCC,
	ena => \b2v_inst1|Selector1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst1|Transmit_Data:tbitcnt[1]~regout\);

-- Location: LC_X18_Y9_N6
\b2v_inst1|Add1~10\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst1|Add1~10_combout\ = \b2v_inst1|Transmit_Data:tbitcnt[2]~regout\ $ ((((!(!\b2v_inst1|Add1~2\ & \b2v_inst1|Add1~7\) # (\b2v_inst1|Add1~2\ & \b2v_inst1|Add1~7COUT1_186\)))))
-- \b2v_inst1|Add1~12\ = CARRY((\b2v_inst1|Transmit_Data:tbitcnt[2]~regout\ & ((!\b2v_inst1|Add1~7\))))
-- \b2v_inst1|Add1~12COUT1_188\ = CARRY((\b2v_inst1|Transmit_Data:tbitcnt[2]~regout\ & ((!\b2v_inst1|Add1~7COUT1_186\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|Transmit_Data:tbitcnt[2]~regout\,
	cin => \b2v_inst1|Add1~2\,
	cin0 => \b2v_inst1|Add1~7\,
	cin1 => \b2v_inst1|Add1~7COUT1_186\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst1|Add1~10_combout\,
	cout0 => \b2v_inst1|Add1~12\,
	cout1 => \b2v_inst1|Add1~12COUT1_188\);

-- Location: LC_X19_Y9_N1
\b2v_inst1|Transmit_Data:tbitcnt[2]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst1|Equal1~8\ = (\b2v_inst1|Transmit_Data:tbitcnt[0]~regout\ & (\b2v_inst1|Transmit_Data:tbitcnt[1]~regout\ & (D1_\Transmit_Data:tbitcnt[2] & !\b2v_inst1|Transmit_Data:tbitcnt[3]~regout\)))
-- \b2v_inst1|Transmit_Data:tbitcnt[2]~regout\ = DFFEAS(\b2v_inst1|Equal1~8\, GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , \b2v_inst1|Selector1~1_combout\, \b2v_inst1|Add1~10_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0080",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	dataa => \b2v_inst1|Transmit_Data:tbitcnt[0]~regout\,
	datab => \b2v_inst1|Transmit_Data:tbitcnt[1]~regout\,
	datac => \b2v_inst1|Add1~10_combout\,
	datad => \b2v_inst1|Transmit_Data:tbitcnt[3]~regout\,
	aclr => \RST~combout\,
	sload => VCC,
	ena => \b2v_inst1|Selector1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst1|Equal1~8\,
	regout => \b2v_inst1|Transmit_Data:tbitcnt[2]~regout\);

-- Location: LC_X18_Y9_N7
\b2v_inst1|Add1~155\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst1|Add1~155_combout\ = (\b2v_inst1|Transmit_Data:tbitcnt[3]~regout\ $ (((!\b2v_inst1|Add1~2\ & \b2v_inst1|Add1~12\) # (\b2v_inst1|Add1~2\ & \b2v_inst1|Add1~12COUT1_188\))))
-- \b2v_inst1|Add1~157\ = CARRY(((!\b2v_inst1|Add1~12\) # (!\b2v_inst1|Transmit_Data:tbitcnt[3]~regout\)))
-- \b2v_inst1|Add1~157COUT1_190\ = CARRY(((!\b2v_inst1|Add1~12COUT1_188\) # (!\b2v_inst1|Transmit_Data:tbitcnt[3]~regout\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|Transmit_Data:tbitcnt[3]~regout\,
	cin => \b2v_inst1|Add1~2\,
	cin0 => \b2v_inst1|Add1~12\,
	cin1 => \b2v_inst1|Add1~12COUT1_188\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst1|Add1~155_combout\,
	cout0 => \b2v_inst1|Add1~157\,
	cout1 => \b2v_inst1|Add1~157COUT1_190\);

-- Location: LC_X18_Y8_N0
\b2v_inst1|Add1~140\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst1|Add1~140_combout\ = (\b2v_inst1|Transmit_Data:tbitcnt[6]~regout\ $ ((!\b2v_inst1|Add1~147\)))
-- \b2v_inst1|Add1~142\ = CARRY(((\b2v_inst1|Transmit_Data:tbitcnt[6]~regout\ & !\b2v_inst1|Add1~147\)))
-- \b2v_inst1|Add1~142COUT1_194\ = CARRY(((\b2v_inst1|Transmit_Data:tbitcnt[6]~regout\ & !\b2v_inst1|Add1~147\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|Transmit_Data:tbitcnt[6]~regout\,
	cin => \b2v_inst1|Add1~147\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst1|Add1~140_combout\,
	cout0 => \b2v_inst1|Add1~142\,
	cout1 => \b2v_inst1|Add1~142COUT1_194\);

-- Location: LC_X20_Y7_N7
\b2v_inst1|Transmit_Data:tbitcnt[6]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst1|Transmit_Data:tbitcnt[6]~regout\ = DFFEAS((((\b2v_inst1|Add1~140_combout\))), GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , \b2v_inst1|Selector1~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	datad => \b2v_inst1|Add1~140_combout\,
	aclr => \RST~combout\,
	ena => \b2v_inst1|Selector1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst1|Transmit_Data:tbitcnt[6]~regout\);

-- Location: LC_X18_Y8_N1
\b2v_inst1|Add1~135\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst1|Add1~135_combout\ = \b2v_inst1|Transmit_Data:tbitcnt[7]~regout\ $ (((((!\b2v_inst1|Add1~147\ & \b2v_inst1|Add1~142\) # (\b2v_inst1|Add1~147\ & \b2v_inst1|Add1~142COUT1_194\)))))
-- \b2v_inst1|Add1~137\ = CARRY(((!\b2v_inst1|Add1~142\)) # (!\b2v_inst1|Transmit_Data:tbitcnt[7]~regout\))
-- \b2v_inst1|Add1~137COUT1_196\ = CARRY(((!\b2v_inst1|Add1~142COUT1_194\)) # (!\b2v_inst1|Transmit_Data:tbitcnt[7]~regout\))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|Transmit_Data:tbitcnt[7]~regout\,
	cin => \b2v_inst1|Add1~147\,
	cin0 => \b2v_inst1|Add1~142\,
	cin1 => \b2v_inst1|Add1~142COUT1_194\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst1|Add1~135_combout\,
	cout0 => \b2v_inst1|Add1~137\,
	cout1 => \b2v_inst1|Add1~137COUT1_196\);

-- Location: LC_X19_Y9_N7
\b2v_inst1|Transmit_Data:tbitcnt[7]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst1|Equal1~7\ = (!\b2v_inst1|Transmit_Data:tbitcnt[4]~regout\ & (!\b2v_inst1|Transmit_Data:tbitcnt[5]~regout\ & (!D1_\Transmit_Data:tbitcnt[7] & !\b2v_inst1|Transmit_Data:tbitcnt[6]~regout\)))
-- \b2v_inst1|Transmit_Data:tbitcnt[7]~regout\ = DFFEAS(\b2v_inst1|Equal1~7\, GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , \b2v_inst1|Selector1~1_combout\, \b2v_inst1|Add1~135_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	dataa => \b2v_inst1|Transmit_Data:tbitcnt[4]~regout\,
	datab => \b2v_inst1|Transmit_Data:tbitcnt[5]~regout\,
	datac => \b2v_inst1|Add1~135_combout\,
	datad => \b2v_inst1|Transmit_Data:tbitcnt[6]~regout\,
	aclr => \RST~combout\,
	sload => VCC,
	ena => \b2v_inst1|Selector1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst1|Equal1~7\,
	regout => \b2v_inst1|Transmit_Data:tbitcnt[7]~regout\);

-- Location: LC_X18_Y8_N2
\b2v_inst1|Add1~130\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst1|Add1~130_combout\ = \b2v_inst1|Transmit_Data:tbitcnt[8]~regout\ $ ((((!(!\b2v_inst1|Add1~147\ & \b2v_inst1|Add1~137\) # (\b2v_inst1|Add1~147\ & \b2v_inst1|Add1~137COUT1_196\)))))
-- \b2v_inst1|Add1~132\ = CARRY((\b2v_inst1|Transmit_Data:tbitcnt[8]~regout\ & ((!\b2v_inst1|Add1~137\))))
-- \b2v_inst1|Add1~132COUT1_198\ = CARRY((\b2v_inst1|Transmit_Data:tbitcnt[8]~regout\ & ((!\b2v_inst1|Add1~137COUT1_196\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|Transmit_Data:tbitcnt[8]~regout\,
	cin => \b2v_inst1|Add1~147\,
	cin0 => \b2v_inst1|Add1~137\,
	cin1 => \b2v_inst1|Add1~137COUT1_196\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst1|Add1~130_combout\,
	cout0 => \b2v_inst1|Add1~132\,
	cout1 => \b2v_inst1|Add1~132COUT1_198\);

-- Location: LC_X20_Y7_N3
\b2v_inst1|Transmit_Data:tbitcnt[8]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst1|Transmit_Data:tbitcnt[8]~regout\ = DFFEAS(GND, GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , \b2v_inst1|Selector1~1_combout\, \b2v_inst1|Add1~130_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	datac => \b2v_inst1|Add1~130_combout\,
	aclr => \RST~combout\,
	sload => VCC,
	ena => \b2v_inst1|Selector1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst1|Transmit_Data:tbitcnt[8]~regout\);

-- Location: LC_X18_Y8_N3
\b2v_inst1|Add1~125\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst1|Add1~125_combout\ = (\b2v_inst1|Transmit_Data:tbitcnt[9]~regout\ $ (((!\b2v_inst1|Add1~147\ & \b2v_inst1|Add1~132\) # (\b2v_inst1|Add1~147\ & \b2v_inst1|Add1~132COUT1_198\))))
-- \b2v_inst1|Add1~127\ = CARRY(((!\b2v_inst1|Add1~132\) # (!\b2v_inst1|Transmit_Data:tbitcnt[9]~regout\)))
-- \b2v_inst1|Add1~127COUT1_200\ = CARRY(((!\b2v_inst1|Add1~132COUT1_198\) # (!\b2v_inst1|Transmit_Data:tbitcnt[9]~regout\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|Transmit_Data:tbitcnt[9]~regout\,
	cin => \b2v_inst1|Add1~147\,
	cin0 => \b2v_inst1|Add1~132\,
	cin1 => \b2v_inst1|Add1~132COUT1_198\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst1|Add1~125_combout\,
	cout0 => \b2v_inst1|Add1~127\,
	cout1 => \b2v_inst1|Add1~127COUT1_200\);

-- Location: LC_X20_Y7_N4
\b2v_inst1|Transmit_Data:tbitcnt[9]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst1|Transmit_Data:tbitcnt[9]~regout\ = DFFEAS(GND, GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , \b2v_inst1|Selector1~1_combout\, \b2v_inst1|Add1~125_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	datac => \b2v_inst1|Add1~125_combout\,
	aclr => \RST~combout\,
	sload => VCC,
	ena => \b2v_inst1|Selector1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst1|Transmit_Data:tbitcnt[9]~regout\);

-- Location: LC_X18_Y8_N5
\b2v_inst1|Add1~115\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst1|Add1~115_combout\ = (\b2v_inst1|Transmit_Data:tbitcnt[11]~regout\ $ ((\b2v_inst1|Add1~122\)))
-- \b2v_inst1|Add1~117\ = CARRY(((!\b2v_inst1|Add1~122\) # (!\b2v_inst1|Transmit_Data:tbitcnt[11]~regout\)))
-- \b2v_inst1|Add1~117COUT1_202\ = CARRY(((!\b2v_inst1|Add1~122\) # (!\b2v_inst1|Transmit_Data:tbitcnt[11]~regout\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|Transmit_Data:tbitcnt[11]~regout\,
	cin => \b2v_inst1|Add1~122\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst1|Add1~115_combout\,
	cout0 => \b2v_inst1|Add1~117\,
	cout1 => \b2v_inst1|Add1~117COUT1_202\);

-- Location: LC_X19_Y9_N5
\b2v_inst1|Transmit_Data:tbitcnt[11]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst1|Equal1~6\ = (!\b2v_inst1|Transmit_Data:tbitcnt[9]~regout\ & (!\b2v_inst1|Transmit_Data:tbitcnt[10]~regout\ & (!D1_\Transmit_Data:tbitcnt[11] & !\b2v_inst1|Transmit_Data:tbitcnt[8]~regout\)))
-- \b2v_inst1|Transmit_Data:tbitcnt[11]~regout\ = DFFEAS(\b2v_inst1|Equal1~6\, GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , \b2v_inst1|Selector1~1_combout\, \b2v_inst1|Add1~115_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	dataa => \b2v_inst1|Transmit_Data:tbitcnt[9]~regout\,
	datab => \b2v_inst1|Transmit_Data:tbitcnt[10]~regout\,
	datac => \b2v_inst1|Add1~115_combout\,
	datad => \b2v_inst1|Transmit_Data:tbitcnt[8]~regout\,
	aclr => \RST~combout\,
	sload => VCC,
	ena => \b2v_inst1|Selector1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst1|Equal1~6\,
	regout => \b2v_inst1|Transmit_Data:tbitcnt[11]~regout\);

-- Location: LC_X18_Y8_N6
\b2v_inst1|Add1~110\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst1|Add1~110_combout\ = \b2v_inst1|Transmit_Data:tbitcnt[12]~regout\ $ ((((!(!\b2v_inst1|Add1~122\ & \b2v_inst1|Add1~117\) # (\b2v_inst1|Add1~122\ & \b2v_inst1|Add1~117COUT1_202\)))))
-- \b2v_inst1|Add1~112\ = CARRY((\b2v_inst1|Transmit_Data:tbitcnt[12]~regout\ & ((!\b2v_inst1|Add1~117\))))
-- \b2v_inst1|Add1~112COUT1_204\ = CARRY((\b2v_inst1|Transmit_Data:tbitcnt[12]~regout\ & ((!\b2v_inst1|Add1~117COUT1_202\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|Transmit_Data:tbitcnt[12]~regout\,
	cin => \b2v_inst1|Add1~122\,
	cin0 => \b2v_inst1|Add1~117\,
	cin1 => \b2v_inst1|Add1~117COUT1_202\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst1|Add1~110_combout\,
	cout0 => \b2v_inst1|Add1~112\,
	cout1 => \b2v_inst1|Add1~112COUT1_204\);

-- Location: LC_X19_Y9_N3
\b2v_inst1|Transmit_Data:tbitcnt[12]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst1|Transmit_Data:tbitcnt[12]~regout\ = DFFEAS((((\b2v_inst1|Add1~110_combout\))), GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , \b2v_inst1|Selector1~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	datad => \b2v_inst1|Add1~110_combout\,
	aclr => \RST~combout\,
	ena => \b2v_inst1|Selector1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst1|Transmit_Data:tbitcnt[12]~regout\);

-- Location: LC_X18_Y8_N7
\b2v_inst1|Add1~105\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst1|Add1~105_combout\ = \b2v_inst1|Transmit_Data:tbitcnt[13]~regout\ $ (((((!\b2v_inst1|Add1~122\ & \b2v_inst1|Add1~112\) # (\b2v_inst1|Add1~122\ & \b2v_inst1|Add1~112COUT1_204\)))))
-- \b2v_inst1|Add1~107\ = CARRY(((!\b2v_inst1|Add1~112\)) # (!\b2v_inst1|Transmit_Data:tbitcnt[13]~regout\))
-- \b2v_inst1|Add1~107COUT1_206\ = CARRY(((!\b2v_inst1|Add1~112COUT1_204\)) # (!\b2v_inst1|Transmit_Data:tbitcnt[13]~regout\))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|Transmit_Data:tbitcnt[13]~regout\,
	cin => \b2v_inst1|Add1~122\,
	cin0 => \b2v_inst1|Add1~112\,
	cin1 => \b2v_inst1|Add1~112COUT1_204\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst1|Add1~105_combout\,
	cout0 => \b2v_inst1|Add1~107\,
	cout1 => \b2v_inst1|Add1~107COUT1_206\);

-- Location: LC_X19_Y9_N8
\b2v_inst1|Transmit_Data:tbitcnt[13]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst1|Transmit_Data:tbitcnt[13]~regout\ = DFFEAS(GND, GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , \b2v_inst1|Selector1~1_combout\, \b2v_inst1|Add1~105_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	datac => \b2v_inst1|Add1~105_combout\,
	aclr => \RST~combout\,
	sload => VCC,
	ena => \b2v_inst1|Selector1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst1|Transmit_Data:tbitcnt[13]~regout\);

-- Location: LC_X18_Y8_N8
\b2v_inst1|Add1~100\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst1|Add1~100_combout\ = \b2v_inst1|Transmit_Data:tbitcnt[14]~regout\ $ ((((!(!\b2v_inst1|Add1~122\ & \b2v_inst1|Add1~107\) # (\b2v_inst1|Add1~122\ & \b2v_inst1|Add1~107COUT1_206\)))))
-- \b2v_inst1|Add1~102\ = CARRY((\b2v_inst1|Transmit_Data:tbitcnt[14]~regout\ & ((!\b2v_inst1|Add1~107\))))
-- \b2v_inst1|Add1~102COUT1_208\ = CARRY((\b2v_inst1|Transmit_Data:tbitcnt[14]~regout\ & ((!\b2v_inst1|Add1~107COUT1_206\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|Transmit_Data:tbitcnt[14]~regout\,
	cin => \b2v_inst1|Add1~122\,
	cin0 => \b2v_inst1|Add1~107\,
	cin1 => \b2v_inst1|Add1~107COUT1_206\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst1|Add1~100_combout\,
	cout0 => \b2v_inst1|Add1~102\,
	cout1 => \b2v_inst1|Add1~102COUT1_208\);

-- Location: LC_X18_Y8_N9
\b2v_inst1|Add1~95\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst1|Add1~95_combout\ = (\b2v_inst1|Transmit_Data:tbitcnt[15]~regout\ $ (((!\b2v_inst1|Add1~122\ & \b2v_inst1|Add1~102\) # (\b2v_inst1|Add1~122\ & \b2v_inst1|Add1~102COUT1_208\))))
-- \b2v_inst1|Add1~97\ = CARRY(((!\b2v_inst1|Add1~102COUT1_208\) # (!\b2v_inst1|Transmit_Data:tbitcnt[15]~regout\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|Transmit_Data:tbitcnt[15]~regout\,
	cin => \b2v_inst1|Add1~122\,
	cin0 => \b2v_inst1|Add1~102\,
	cin1 => \b2v_inst1|Add1~102COUT1_208\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst1|Add1~95_combout\,
	cout => \b2v_inst1|Add1~97\);

-- Location: LC_X19_Y9_N6
\b2v_inst1|Transmit_Data:tbitcnt[15]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst1|Equal1~5\ = (!\b2v_inst1|Transmit_Data:tbitcnt[14]~regout\ & (!\b2v_inst1|Transmit_Data:tbitcnt[13]~regout\ & (!D1_\Transmit_Data:tbitcnt[15] & !\b2v_inst1|Transmit_Data:tbitcnt[12]~regout\)))
-- \b2v_inst1|Transmit_Data:tbitcnt[15]~regout\ = DFFEAS(\b2v_inst1|Equal1~5\, GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , \b2v_inst1|Selector1~1_combout\, \b2v_inst1|Add1~95_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	dataa => \b2v_inst1|Transmit_Data:tbitcnt[14]~regout\,
	datab => \b2v_inst1|Transmit_Data:tbitcnt[13]~regout\,
	datac => \b2v_inst1|Add1~95_combout\,
	datad => \b2v_inst1|Transmit_Data:tbitcnt[12]~regout\,
	aclr => \RST~combout\,
	sload => VCC,
	ena => \b2v_inst1|Selector1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst1|Equal1~5\,
	regout => \b2v_inst1|Transmit_Data:tbitcnt[15]~regout\);

-- Location: LC_X19_Y9_N4
\b2v_inst1|Equal1~9\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst1|Equal1~9_combout\ = (\b2v_inst1|Equal1~5\ & (\b2v_inst1|Equal1~6\ & (\b2v_inst1|Equal1~7\ & \b2v_inst1|Equal1~8\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|Equal1~5\,
	datab => \b2v_inst1|Equal1~6\,
	datac => \b2v_inst1|Equal1~7\,
	datad => \b2v_inst1|Equal1~8\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst1|Equal1~9_combout\);

-- Location: LC_X17_Y10_N4
\b2v_inst1|Transmit_Data:tbitcnt[3]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst1|Transmit_Data:tbitcnt[3]~regout\ = DFFEAS((\b2v_inst1|Add1~155_combout\ & (((!\b2v_inst1|Equal1~9_combout\)) # (!\b2v_inst1|Equal1~4_combout\))), GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , \b2v_inst1|Selector1~1_combout\, , , , 
-- )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4c4c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	dataa => \b2v_inst1|Equal1~4_combout\,
	datab => \b2v_inst1|Add1~155_combout\,
	datac => \b2v_inst1|Equal1~9_combout\,
	aclr => \RST~combout\,
	ena => \b2v_inst1|Selector1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst1|Transmit_Data:tbitcnt[3]~regout\);

-- Location: LC_X18_Y9_N8
\b2v_inst1|Add1~150\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst1|Add1~150_combout\ = (\b2v_inst1|Transmit_Data:tbitcnt[4]~regout\ $ ((!(!\b2v_inst1|Add1~2\ & \b2v_inst1|Add1~157\) # (\b2v_inst1|Add1~2\ & \b2v_inst1|Add1~157COUT1_190\))))
-- \b2v_inst1|Add1~152\ = CARRY(((\b2v_inst1|Transmit_Data:tbitcnt[4]~regout\ & !\b2v_inst1|Add1~157\)))
-- \b2v_inst1|Add1~152COUT1_192\ = CARRY(((\b2v_inst1|Transmit_Data:tbitcnt[4]~regout\ & !\b2v_inst1|Add1~157COUT1_190\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|Transmit_Data:tbitcnt[4]~regout\,
	cin => \b2v_inst1|Add1~2\,
	cin0 => \b2v_inst1|Add1~157\,
	cin1 => \b2v_inst1|Add1~157COUT1_190\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst1|Add1~150_combout\,
	cout0 => \b2v_inst1|Add1~152\,
	cout1 => \b2v_inst1|Add1~152COUT1_192\);

-- Location: LC_X20_Y7_N2
\b2v_inst1|Transmit_Data:tbitcnt[4]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst1|Transmit_Data:tbitcnt[4]~regout\ = DFFEAS(GND, GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , \b2v_inst1|Selector1~1_combout\, \b2v_inst1|Add1~150_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	datac => \b2v_inst1|Add1~150_combout\,
	aclr => \RST~combout\,
	sload => VCC,
	ena => \b2v_inst1|Selector1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst1|Transmit_Data:tbitcnt[4]~regout\);

-- Location: LC_X18_Y9_N9
\b2v_inst1|Add1~145\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst1|Add1~145_combout\ = \b2v_inst1|Transmit_Data:tbitcnt[5]~regout\ $ (((((!\b2v_inst1|Add1~2\ & \b2v_inst1|Add1~152\) # (\b2v_inst1|Add1~2\ & \b2v_inst1|Add1~152COUT1_192\)))))
-- \b2v_inst1|Add1~147\ = CARRY(((!\b2v_inst1|Add1~152COUT1_192\)) # (!\b2v_inst1|Transmit_Data:tbitcnt[5]~regout\))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|Transmit_Data:tbitcnt[5]~regout\,
	cin => \b2v_inst1|Add1~2\,
	cin0 => \b2v_inst1|Add1~152\,
	cin1 => \b2v_inst1|Add1~152COUT1_192\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst1|Add1~145_combout\,
	cout => \b2v_inst1|Add1~147\);

-- Location: LC_X20_Y7_N9
\b2v_inst1|Transmit_Data:tbitcnt[5]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst1|Transmit_Data:tbitcnt[5]~regout\ = DFFEAS((((\b2v_inst1|Add1~145_combout\))), GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , \b2v_inst1|Selector1~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	datad => \b2v_inst1|Add1~145_combout\,
	aclr => \RST~combout\,
	ena => \b2v_inst1|Selector1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst1|Transmit_Data:tbitcnt[5]~regout\);

-- Location: LC_X18_Y8_N4
\b2v_inst1|Add1~120\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst1|Add1~120_combout\ = \b2v_inst1|Transmit_Data:tbitcnt[10]~regout\ $ ((((!(!\b2v_inst1|Add1~147\ & \b2v_inst1|Add1~127\) # (\b2v_inst1|Add1~147\ & \b2v_inst1|Add1~127COUT1_200\)))))
-- \b2v_inst1|Add1~122\ = CARRY((\b2v_inst1|Transmit_Data:tbitcnt[10]~regout\ & ((!\b2v_inst1|Add1~127COUT1_200\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|Transmit_Data:tbitcnt[10]~regout\,
	cin => \b2v_inst1|Add1~147\,
	cin0 => \b2v_inst1|Add1~127\,
	cin1 => \b2v_inst1|Add1~127COUT1_200\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst1|Add1~120_combout\,
	cout => \b2v_inst1|Add1~122\);

-- Location: LC_X20_Y7_N5
\b2v_inst1|Transmit_Data:tbitcnt[10]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst1|Transmit_Data:tbitcnt[10]~regout\ = DFFEAS(GND, GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , \b2v_inst1|Selector1~1_combout\, \b2v_inst1|Add1~120_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	datac => \b2v_inst1|Add1~120_combout\,
	aclr => \RST~combout\,
	sload => VCC,
	ena => \b2v_inst1|Selector1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst1|Transmit_Data:tbitcnt[10]~regout\);

-- Location: LC_X19_Y9_N9
\b2v_inst1|Transmit_Data:tbitcnt[14]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst1|Transmit_Data:tbitcnt[14]~regout\ = DFFEAS((((\b2v_inst1|Add1~100_combout\))), GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , \b2v_inst1|Selector1~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	datad => \b2v_inst1|Add1~100_combout\,
	aclr => \RST~combout\,
	ena => \b2v_inst1|Selector1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst1|Transmit_Data:tbitcnt[14]~regout\);

-- Location: LC_X18_Y7_N0
\b2v_inst1|Add1~90\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst1|Add1~90_combout\ = \b2v_inst1|Transmit_Data:tbitcnt[16]~regout\ $ ((((!\b2v_inst1|Add1~97\))))
-- \b2v_inst1|Add1~92\ = CARRY((\b2v_inst1|Transmit_Data:tbitcnt[16]~regout\ & ((!\b2v_inst1|Add1~97\))))
-- \b2v_inst1|Add1~92COUT1_210\ = CARRY((\b2v_inst1|Transmit_Data:tbitcnt[16]~regout\ & ((!\b2v_inst1|Add1~97\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|Transmit_Data:tbitcnt[16]~regout\,
	cin => \b2v_inst1|Add1~97\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst1|Add1~90_combout\,
	cout0 => \b2v_inst1|Add1~92\,
	cout1 => \b2v_inst1|Add1~92COUT1_210\);

-- Location: LC_X17_Y9_N3
\b2v_inst1|Transmit_Data:tbitcnt[16]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst1|Transmit_Data:tbitcnt[16]~regout\ = DFFEAS((((\b2v_inst1|Add1~90_combout\))), GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , \b2v_inst1|Selector1~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	datad => \b2v_inst1|Add1~90_combout\,
	aclr => \RST~combout\,
	ena => \b2v_inst1|Selector1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst1|Transmit_Data:tbitcnt[16]~regout\);

-- Location: LC_X18_Y7_N1
\b2v_inst1|Add1~85\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst1|Add1~85_combout\ = (\b2v_inst1|Transmit_Data:tbitcnt[17]~regout\ $ (((!\b2v_inst1|Add1~97\ & \b2v_inst1|Add1~92\) # (\b2v_inst1|Add1~97\ & \b2v_inst1|Add1~92COUT1_210\))))
-- \b2v_inst1|Add1~87\ = CARRY(((!\b2v_inst1|Add1~92\) # (!\b2v_inst1|Transmit_Data:tbitcnt[17]~regout\)))
-- \b2v_inst1|Add1~87COUT1_212\ = CARRY(((!\b2v_inst1|Add1~92COUT1_210\) # (!\b2v_inst1|Transmit_Data:tbitcnt[17]~regout\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|Transmit_Data:tbitcnt[17]~regout\,
	cin => \b2v_inst1|Add1~97\,
	cin0 => \b2v_inst1|Add1~92\,
	cin1 => \b2v_inst1|Add1~92COUT1_210\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst1|Add1~85_combout\,
	cout0 => \b2v_inst1|Add1~87\,
	cout1 => \b2v_inst1|Add1~87COUT1_212\);

-- Location: LC_X17_Y9_N6
\b2v_inst1|Transmit_Data:tbitcnt[17]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst1|Transmit_Data:tbitcnt[17]~regout\ = DFFEAS((((\b2v_inst1|Add1~85_combout\))), GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , \b2v_inst1|Selector1~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	datad => \b2v_inst1|Add1~85_combout\,
	aclr => \RST~combout\,
	ena => \b2v_inst1|Selector1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst1|Transmit_Data:tbitcnt[17]~regout\);

-- Location: LC_X18_Y7_N2
\b2v_inst1|Add1~80\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst1|Add1~80_combout\ = \b2v_inst1|Transmit_Data:tbitcnt[18]~regout\ $ ((((!(!\b2v_inst1|Add1~97\ & \b2v_inst1|Add1~87\) # (\b2v_inst1|Add1~97\ & \b2v_inst1|Add1~87COUT1_212\)))))
-- \b2v_inst1|Add1~82\ = CARRY((\b2v_inst1|Transmit_Data:tbitcnt[18]~regout\ & ((!\b2v_inst1|Add1~87\))))
-- \b2v_inst1|Add1~82COUT1_214\ = CARRY((\b2v_inst1|Transmit_Data:tbitcnt[18]~regout\ & ((!\b2v_inst1|Add1~87COUT1_212\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|Transmit_Data:tbitcnt[18]~regout\,
	cin => \b2v_inst1|Add1~97\,
	cin0 => \b2v_inst1|Add1~87\,
	cin1 => \b2v_inst1|Add1~87COUT1_212\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst1|Add1~80_combout\,
	cout0 => \b2v_inst1|Add1~82\,
	cout1 => \b2v_inst1|Add1~82COUT1_214\);

-- Location: LC_X17_Y9_N1
\b2v_inst1|Transmit_Data:tbitcnt[18]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst1|Transmit_Data:tbitcnt[18]~regout\ = DFFEAS(GND, GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , \b2v_inst1|Selector1~1_combout\, \b2v_inst1|Add1~80_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	datac => \b2v_inst1|Add1~80_combout\,
	aclr => \RST~combout\,
	sload => VCC,
	ena => \b2v_inst1|Selector1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst1|Transmit_Data:tbitcnt[18]~regout\);

-- Location: LC_X18_Y7_N3
\b2v_inst1|Add1~75\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst1|Add1~75_combout\ = (\b2v_inst1|Transmit_Data:tbitcnt[19]~regout\ $ (((!\b2v_inst1|Add1~97\ & \b2v_inst1|Add1~82\) # (\b2v_inst1|Add1~97\ & \b2v_inst1|Add1~82COUT1_214\))))
-- \b2v_inst1|Add1~77\ = CARRY(((!\b2v_inst1|Add1~82\) # (!\b2v_inst1|Transmit_Data:tbitcnt[19]~regout\)))
-- \b2v_inst1|Add1~77COUT1_216\ = CARRY(((!\b2v_inst1|Add1~82COUT1_214\) # (!\b2v_inst1|Transmit_Data:tbitcnt[19]~regout\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|Transmit_Data:tbitcnt[19]~regout\,
	cin => \b2v_inst1|Add1~97\,
	cin0 => \b2v_inst1|Add1~82\,
	cin1 => \b2v_inst1|Add1~82COUT1_214\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst1|Add1~75_combout\,
	cout0 => \b2v_inst1|Add1~77\,
	cout1 => \b2v_inst1|Add1~77COUT1_216\);

-- Location: LC_X17_Y9_N4
\b2v_inst1|Transmit_Data:tbitcnt[19]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst1|Equal1~3\ = (!\b2v_inst1|Transmit_Data:tbitcnt[18]~regout\ & (!\b2v_inst1|Transmit_Data:tbitcnt[16]~regout\ & (!D1_\Transmit_Data:tbitcnt[19] & !\b2v_inst1|Transmit_Data:tbitcnt[17]~regout\)))
-- \b2v_inst1|Transmit_Data:tbitcnt[19]~regout\ = DFFEAS(\b2v_inst1|Equal1~3\, GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , \b2v_inst1|Selector1~1_combout\, \b2v_inst1|Add1~75_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	dataa => \b2v_inst1|Transmit_Data:tbitcnt[18]~regout\,
	datab => \b2v_inst1|Transmit_Data:tbitcnt[16]~regout\,
	datac => \b2v_inst1|Add1~75_combout\,
	datad => \b2v_inst1|Transmit_Data:tbitcnt[17]~regout\,
	aclr => \RST~combout\,
	sload => VCC,
	ena => \b2v_inst1|Selector1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst1|Equal1~3\,
	regout => \b2v_inst1|Transmit_Data:tbitcnt[19]~regout\);

-- Location: LC_X18_Y7_N4
\b2v_inst1|Add1~70\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst1|Add1~70_combout\ = (\b2v_inst1|Transmit_Data:tbitcnt[20]~regout\ $ ((!(!\b2v_inst1|Add1~97\ & \b2v_inst1|Add1~77\) # (\b2v_inst1|Add1~97\ & \b2v_inst1|Add1~77COUT1_216\))))
-- \b2v_inst1|Add1~72\ = CARRY(((\b2v_inst1|Transmit_Data:tbitcnt[20]~regout\ & !\b2v_inst1|Add1~77COUT1_216\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|Transmit_Data:tbitcnt[20]~regout\,
	cin => \b2v_inst1|Add1~97\,
	cin0 => \b2v_inst1|Add1~77\,
	cin1 => \b2v_inst1|Add1~77COUT1_216\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst1|Add1~70_combout\,
	cout => \b2v_inst1|Add1~72\);

-- Location: LC_X17_Y9_N5
\b2v_inst1|Transmit_Data:tbitcnt[20]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst1|Transmit_Data:tbitcnt[20]~regout\ = DFFEAS((((\b2v_inst1|Add1~70_combout\))), GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , \b2v_inst1|Selector1~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	datad => \b2v_inst1|Add1~70_combout\,
	aclr => \RST~combout\,
	ena => \b2v_inst1|Selector1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst1|Transmit_Data:tbitcnt[20]~regout\);

-- Location: LC_X18_Y7_N5
\b2v_inst1|Add1~65\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst1|Add1~65_combout\ = (\b2v_inst1|Transmit_Data:tbitcnt[21]~regout\ $ ((\b2v_inst1|Add1~72\)))
-- \b2v_inst1|Add1~67\ = CARRY(((!\b2v_inst1|Add1~72\) # (!\b2v_inst1|Transmit_Data:tbitcnt[21]~regout\)))
-- \b2v_inst1|Add1~67COUT1_218\ = CARRY(((!\b2v_inst1|Add1~72\) # (!\b2v_inst1|Transmit_Data:tbitcnt[21]~regout\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|Transmit_Data:tbitcnt[21]~regout\,
	cin => \b2v_inst1|Add1~72\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst1|Add1~65_combout\,
	cout0 => \b2v_inst1|Add1~67\,
	cout1 => \b2v_inst1|Add1~67COUT1_218\);

-- Location: LC_X17_Y9_N9
\b2v_inst1|Transmit_Data:tbitcnt[21]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst1|Transmit_Data:tbitcnt[21]~regout\ = DFFEAS(GND, GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , \b2v_inst1|Selector1~1_combout\, \b2v_inst1|Add1~65_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	datac => \b2v_inst1|Add1~65_combout\,
	aclr => \RST~combout\,
	sload => VCC,
	ena => \b2v_inst1|Selector1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst1|Transmit_Data:tbitcnt[21]~regout\);

-- Location: LC_X18_Y7_N6
\b2v_inst1|Add1~60\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst1|Add1~60_combout\ = \b2v_inst1|Transmit_Data:tbitcnt[22]~regout\ $ ((((!(!\b2v_inst1|Add1~72\ & \b2v_inst1|Add1~67\) # (\b2v_inst1|Add1~72\ & \b2v_inst1|Add1~67COUT1_218\)))))
-- \b2v_inst1|Add1~62\ = CARRY((\b2v_inst1|Transmit_Data:tbitcnt[22]~regout\ & ((!\b2v_inst1|Add1~67\))))
-- \b2v_inst1|Add1~62COUT1_220\ = CARRY((\b2v_inst1|Transmit_Data:tbitcnt[22]~regout\ & ((!\b2v_inst1|Add1~67COUT1_218\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|Transmit_Data:tbitcnt[22]~regout\,
	cin => \b2v_inst1|Add1~72\,
	cin0 => \b2v_inst1|Add1~67\,
	cin1 => \b2v_inst1|Add1~67COUT1_218\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst1|Add1~60_combout\,
	cout0 => \b2v_inst1|Add1~62\,
	cout1 => \b2v_inst1|Add1~62COUT1_220\);

-- Location: LC_X17_Y9_N0
\b2v_inst1|Transmit_Data:tbitcnt[22]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst1|Transmit_Data:tbitcnt[22]~regout\ = DFFEAS((((\b2v_inst1|Add1~60_combout\))), GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , \b2v_inst1|Selector1~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	datad => \b2v_inst1|Add1~60_combout\,
	aclr => \RST~combout\,
	ena => \b2v_inst1|Selector1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst1|Transmit_Data:tbitcnt[22]~regout\);

-- Location: LC_X18_Y7_N7
\b2v_inst1|Add1~55\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst1|Add1~55_combout\ = (\b2v_inst1|Transmit_Data:tbitcnt[23]~regout\ $ (((!\b2v_inst1|Add1~72\ & \b2v_inst1|Add1~62\) # (\b2v_inst1|Add1~72\ & \b2v_inst1|Add1~62COUT1_220\))))
-- \b2v_inst1|Add1~57\ = CARRY(((!\b2v_inst1|Add1~62\) # (!\b2v_inst1|Transmit_Data:tbitcnt[23]~regout\)))
-- \b2v_inst1|Add1~57COUT1_222\ = CARRY(((!\b2v_inst1|Add1~62COUT1_220\) # (!\b2v_inst1|Transmit_Data:tbitcnt[23]~regout\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|Transmit_Data:tbitcnt[23]~regout\,
	cin => \b2v_inst1|Add1~72\,
	cin0 => \b2v_inst1|Add1~62\,
	cin1 => \b2v_inst1|Add1~62COUT1_220\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst1|Add1~55_combout\,
	cout0 => \b2v_inst1|Add1~57\,
	cout1 => \b2v_inst1|Add1~57COUT1_222\);

-- Location: LC_X17_Y9_N7
\b2v_inst1|Transmit_Data:tbitcnt[23]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst1|Equal1~2\ = (!\b2v_inst1|Transmit_Data:tbitcnt[21]~regout\ & (!\b2v_inst1|Transmit_Data:tbitcnt[22]~regout\ & (!D1_\Transmit_Data:tbitcnt[23] & !\b2v_inst1|Transmit_Data:tbitcnt[20]~regout\)))
-- \b2v_inst1|Transmit_Data:tbitcnt[23]~regout\ = DFFEAS(\b2v_inst1|Equal1~2\, GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , \b2v_inst1|Selector1~1_combout\, \b2v_inst1|Add1~55_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	dataa => \b2v_inst1|Transmit_Data:tbitcnt[21]~regout\,
	datab => \b2v_inst1|Transmit_Data:tbitcnt[22]~regout\,
	datac => \b2v_inst1|Add1~55_combout\,
	datad => \b2v_inst1|Transmit_Data:tbitcnt[20]~regout\,
	aclr => \RST~combout\,
	sload => VCC,
	ena => \b2v_inst1|Selector1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst1|Equal1~2\,
	regout => \b2v_inst1|Transmit_Data:tbitcnt[23]~regout\);

-- Location: LC_X18_Y7_N8
\b2v_inst1|Add1~50\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst1|Add1~50_combout\ = \b2v_inst1|Transmit_Data:tbitcnt[24]~regout\ $ ((((!(!\b2v_inst1|Add1~72\ & \b2v_inst1|Add1~57\) # (\b2v_inst1|Add1~72\ & \b2v_inst1|Add1~57COUT1_222\)))))
-- \b2v_inst1|Add1~52\ = CARRY((\b2v_inst1|Transmit_Data:tbitcnt[24]~regout\ & ((!\b2v_inst1|Add1~57\))))
-- \b2v_inst1|Add1~52COUT1_224\ = CARRY((\b2v_inst1|Transmit_Data:tbitcnt[24]~regout\ & ((!\b2v_inst1|Add1~57COUT1_222\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|Transmit_Data:tbitcnt[24]~regout\,
	cin => \b2v_inst1|Add1~72\,
	cin0 => \b2v_inst1|Add1~57\,
	cin1 => \b2v_inst1|Add1~57COUT1_222\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst1|Add1~50_combout\,
	cout0 => \b2v_inst1|Add1~52\,
	cout1 => \b2v_inst1|Add1~52COUT1_224\);

-- Location: LC_X18_Y9_N2
\b2v_inst1|Transmit_Data:tbitcnt[24]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst1|Transmit_Data:tbitcnt[24]~regout\ = DFFEAS(GND, GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , \b2v_inst1|Selector1~1_combout\, \b2v_inst1|Add1~50_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	datac => \b2v_inst1|Add1~50_combout\,
	aclr => \RST~combout\,
	sload => VCC,
	ena => \b2v_inst1|Selector1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst1|Transmit_Data:tbitcnt[24]~regout\);

-- Location: LC_X18_Y7_N9
\b2v_inst1|Add1~45\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst1|Add1~45_combout\ = \b2v_inst1|Transmit_Data:tbitcnt[25]~regout\ $ (((((!\b2v_inst1|Add1~72\ & \b2v_inst1|Add1~52\) # (\b2v_inst1|Add1~72\ & \b2v_inst1|Add1~52COUT1_224\)))))
-- \b2v_inst1|Add1~47\ = CARRY(((!\b2v_inst1|Add1~52COUT1_224\)) # (!\b2v_inst1|Transmit_Data:tbitcnt[25]~regout\))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|Transmit_Data:tbitcnt[25]~regout\,
	cin => \b2v_inst1|Add1~72\,
	cin0 => \b2v_inst1|Add1~52\,
	cin1 => \b2v_inst1|Add1~52COUT1_224\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst1|Add1~45_combout\,
	cout => \b2v_inst1|Add1~47\);

-- Location: LC_X18_Y9_N0
\b2v_inst1|Transmit_Data:tbitcnt[25]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst1|Transmit_Data:tbitcnt[25]~regout\ = DFFEAS(GND, GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , \b2v_inst1|Selector1~1_combout\, \b2v_inst1|Add1~45_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	datac => \b2v_inst1|Add1~45_combout\,
	aclr => \RST~combout\,
	sload => VCC,
	ena => \b2v_inst1|Selector1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst1|Transmit_Data:tbitcnt[25]~regout\);

-- Location: LC_X18_Y6_N0
\b2v_inst1|Add1~40\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst1|Add1~40_combout\ = \b2v_inst1|Transmit_Data:tbitcnt[26]~regout\ $ ((((!\b2v_inst1|Add1~47\))))
-- \b2v_inst1|Add1~42\ = CARRY((\b2v_inst1|Transmit_Data:tbitcnt[26]~regout\ & ((!\b2v_inst1|Add1~47\))))
-- \b2v_inst1|Add1~42COUT1_226\ = CARRY((\b2v_inst1|Transmit_Data:tbitcnt[26]~regout\ & ((!\b2v_inst1|Add1~47\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|Transmit_Data:tbitcnt[26]~regout\,
	cin => \b2v_inst1|Add1~47\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst1|Add1~40_combout\,
	cout0 => \b2v_inst1|Add1~42\,
	cout1 => \b2v_inst1|Add1~42COUT1_226\);

-- Location: LC_X18_Y9_N3
\b2v_inst1|Transmit_Data:tbitcnt[26]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst1|Transmit_Data:tbitcnt[26]~regout\ = DFFEAS((((\b2v_inst1|Add1~40_combout\))), GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , \b2v_inst1|Selector1~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	datad => \b2v_inst1|Add1~40_combout\,
	aclr => \RST~combout\,
	ena => \b2v_inst1|Selector1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst1|Transmit_Data:tbitcnt[26]~regout\);

-- Location: LC_X18_Y6_N1
\b2v_inst1|Add1~35\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst1|Add1~35_combout\ = \b2v_inst1|Transmit_Data:tbitcnt[27]~regout\ $ (((((!\b2v_inst1|Add1~47\ & \b2v_inst1|Add1~42\) # (\b2v_inst1|Add1~47\ & \b2v_inst1|Add1~42COUT1_226\)))))
-- \b2v_inst1|Add1~37\ = CARRY(((!\b2v_inst1|Add1~42\)) # (!\b2v_inst1|Transmit_Data:tbitcnt[27]~regout\))
-- \b2v_inst1|Add1~37COUT1_228\ = CARRY(((!\b2v_inst1|Add1~42COUT1_226\)) # (!\b2v_inst1|Transmit_Data:tbitcnt[27]~regout\))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|Transmit_Data:tbitcnt[27]~regout\,
	cin => \b2v_inst1|Add1~47\,
	cin0 => \b2v_inst1|Add1~42\,
	cin1 => \b2v_inst1|Add1~42COUT1_226\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst1|Add1~35_combout\,
	cout0 => \b2v_inst1|Add1~37\,
	cout1 => \b2v_inst1|Add1~37COUT1_228\);

-- Location: LC_X18_Y6_N7
\b2v_inst1|Transmit_Data:tbitcnt[27]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst1|Equal1~1\ = (!\b2v_inst1|Transmit_Data:tbitcnt[24]~regout\ & (!\b2v_inst1|Transmit_Data:tbitcnt[25]~regout\ & (!D1_\Transmit_Data:tbitcnt[27] & !\b2v_inst1|Transmit_Data:tbitcnt[26]~regout\)))
-- \b2v_inst1|Transmit_Data:tbitcnt[27]~regout\ = DFFEAS(\b2v_inst1|Equal1~1\, GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , \b2v_inst1|Selector1~1_combout\, \b2v_inst1|Add1~35_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	dataa => \b2v_inst1|Transmit_Data:tbitcnt[24]~regout\,
	datab => \b2v_inst1|Transmit_Data:tbitcnt[25]~regout\,
	datac => \b2v_inst1|Add1~35_combout\,
	datad => \b2v_inst1|Transmit_Data:tbitcnt[26]~regout\,
	aclr => \RST~combout\,
	sload => VCC,
	ena => \b2v_inst1|Selector1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst1|Equal1~1\,
	regout => \b2v_inst1|Transmit_Data:tbitcnt[27]~regout\);

-- Location: LC_X18_Y6_N2
\b2v_inst1|Add1~30\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst1|Add1~30_combout\ = \b2v_inst1|Transmit_Data:tbitcnt[28]~regout\ $ ((((!(!\b2v_inst1|Add1~47\ & \b2v_inst1|Add1~37\) # (\b2v_inst1|Add1~47\ & \b2v_inst1|Add1~37COUT1_228\)))))
-- \b2v_inst1|Add1~32\ = CARRY((\b2v_inst1|Transmit_Data:tbitcnt[28]~regout\ & ((!\b2v_inst1|Add1~37\))))
-- \b2v_inst1|Add1~32COUT1_230\ = CARRY((\b2v_inst1|Transmit_Data:tbitcnt[28]~regout\ & ((!\b2v_inst1|Add1~37COUT1_228\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|Transmit_Data:tbitcnt[28]~regout\,
	cin => \b2v_inst1|Add1~47\,
	cin0 => \b2v_inst1|Add1~37\,
	cin1 => \b2v_inst1|Add1~37COUT1_228\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst1|Add1~30_combout\,
	cout0 => \b2v_inst1|Add1~32\,
	cout1 => \b2v_inst1|Add1~32COUT1_230\);

-- Location: LC_X18_Y6_N9
\b2v_inst1|Transmit_Data:tbitcnt[28]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst1|Transmit_Data:tbitcnt[28]~regout\ = DFFEAS(GND, GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , \b2v_inst1|Selector1~1_combout\, \b2v_inst1|Add1~30_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	datac => \b2v_inst1|Add1~30_combout\,
	aclr => \RST~combout\,
	sload => VCC,
	ena => \b2v_inst1|Selector1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst1|Transmit_Data:tbitcnt[28]~regout\);

-- Location: LC_X18_Y6_N3
\b2v_inst1|Add1~25\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst1|Add1~25_combout\ = \b2v_inst1|Transmit_Data:tbitcnt[29]~regout\ $ (((((!\b2v_inst1|Add1~47\ & \b2v_inst1|Add1~32\) # (\b2v_inst1|Add1~47\ & \b2v_inst1|Add1~32COUT1_230\)))))
-- \b2v_inst1|Add1~27\ = CARRY(((!\b2v_inst1|Add1~32\)) # (!\b2v_inst1|Transmit_Data:tbitcnt[29]~regout\))
-- \b2v_inst1|Add1~27COUT1_232\ = CARRY(((!\b2v_inst1|Add1~32COUT1_230\)) # (!\b2v_inst1|Transmit_Data:tbitcnt[29]~regout\))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|Transmit_Data:tbitcnt[29]~regout\,
	cin => \b2v_inst1|Add1~47\,
	cin0 => \b2v_inst1|Add1~32\,
	cin1 => \b2v_inst1|Add1~32COUT1_230\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst1|Add1~25_combout\,
	cout0 => \b2v_inst1|Add1~27\,
	cout1 => \b2v_inst1|Add1~27COUT1_232\);

-- Location: LC_X20_Y7_N6
\b2v_inst1|Transmit_Data:tbitcnt[29]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst1|Transmit_Data:tbitcnt[29]~regout\ = DFFEAS((((\b2v_inst1|Add1~25_combout\))), GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , \b2v_inst1|Selector1~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	datad => \b2v_inst1|Add1~25_combout\,
	aclr => \RST~combout\,
	ena => \b2v_inst1|Selector1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst1|Transmit_Data:tbitcnt[29]~regout\);

-- Location: LC_X18_Y6_N4
\b2v_inst1|Add1~20\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst1|Add1~20_combout\ = (\b2v_inst1|Transmit_Data:tbitcnt[30]~regout\ $ ((!(!\b2v_inst1|Add1~47\ & \b2v_inst1|Add1~27\) # (\b2v_inst1|Add1~47\ & \b2v_inst1|Add1~27COUT1_232\))))
-- \b2v_inst1|Add1~22\ = CARRY(((\b2v_inst1|Transmit_Data:tbitcnt[30]~regout\ & !\b2v_inst1|Add1~27COUT1_232\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|Transmit_Data:tbitcnt[30]~regout\,
	cin => \b2v_inst1|Add1~47\,
	cin0 => \b2v_inst1|Add1~27\,
	cin1 => \b2v_inst1|Add1~27COUT1_232\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst1|Add1~20_combout\,
	cout => \b2v_inst1|Add1~22\);

-- Location: LC_X20_Y7_N8
\b2v_inst1|Transmit_Data:tbitcnt[30]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst1|Transmit_Data:tbitcnt[30]~regout\ = DFFEAS(GND, GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , \b2v_inst1|Selector1~1_combout\, \b2v_inst1|Add1~20_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	datac => \b2v_inst1|Add1~20_combout\,
	aclr => \RST~combout\,
	sload => VCC,
	ena => \b2v_inst1|Selector1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst1|Transmit_Data:tbitcnt[30]~regout\);

-- Location: LC_X18_Y6_N6
\b2v_inst1|Transmit_Data:tbitcnt[31]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst1|Equal1~0\ = (!\b2v_inst1|Transmit_Data:tbitcnt[28]~regout\ & (!\b2v_inst1|Transmit_Data:tbitcnt[30]~regout\ & (!D1_\Transmit_Data:tbitcnt[31] & !\b2v_inst1|Transmit_Data:tbitcnt[29]~regout\)))
-- \b2v_inst1|Transmit_Data:tbitcnt[31]~regout\ = DFFEAS(\b2v_inst1|Equal1~0\, GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , \b2v_inst1|Selector1~1_combout\, \b2v_inst1|Add1~15_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	dataa => \b2v_inst1|Transmit_Data:tbitcnt[28]~regout\,
	datab => \b2v_inst1|Transmit_Data:tbitcnt[30]~regout\,
	datac => \b2v_inst1|Add1~15_combout\,
	datad => \b2v_inst1|Transmit_Data:tbitcnt[29]~regout\,
	aclr => \RST~combout\,
	sload => VCC,
	ena => \b2v_inst1|Selector1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst1|Equal1~0\,
	regout => \b2v_inst1|Transmit_Data:tbitcnt[31]~regout\);

-- Location: LC_X18_Y6_N5
\b2v_inst1|Add1~15\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst1|Add1~15_combout\ = (\b2v_inst1|Transmit_Data:tbitcnt[31]~regout\ $ ((\b2v_inst1|Add1~22\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|Transmit_Data:tbitcnt[31]~regout\,
	cin => \b2v_inst1|Add1~22\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst1|Add1~15_combout\);

-- Location: LC_X18_Y6_N8
\b2v_inst1|Equal1~4\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst1|Equal1~4_combout\ = (\b2v_inst1|Equal1~0\ & (\b2v_inst1|Equal1~2\ & (\b2v_inst1|Equal1~3\ & \b2v_inst1|Equal1~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|Equal1~0\,
	datab => \b2v_inst1|Equal1~2\,
	datac => \b2v_inst1|Equal1~3\,
	datad => \b2v_inst1|Equal1~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst1|Equal1~4_combout\);

-- Location: LC_X17_Y10_N8
\b2v_inst1|state.x_stop\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst1|state.x_stop~regout\ = DFFEAS((\b2v_inst1|Selector1~0_combout\) # ((\b2v_inst1|state.x_stop~regout\ & ((!\b2v_inst1|Equal0~10_combout\)))), GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaee",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	dataa => \b2v_inst1|Selector1~0_combout\,
	datab => \b2v_inst1|state.x_stop~regout\,
	datad => \b2v_inst1|Equal0~10_combout\,
	aclr => \RST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst1|state.x_stop~regout\);

-- Location: LC_X19_Y7_N9
\b2v_inst|rbuf[7]~1\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|rbuf[7]~1_combout\ = ((\b2v_inst|state.r_stop~regout\ & (!\b2v_inst|Equal3~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|state.r_stop~regout\,
	datac => \b2v_inst|Equal3~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst|rbuf[7]~1_combout\);

-- Location: PIN_36,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Data_in~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Data_in,
	combout => \Data_in~combout\);

-- Location: LC_X22_Y8_N2
\b2v_inst|ReceiveData:cnt5[31]~0\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|ReceiveData:cnt5[31]~0_combout\ = (!\RST~combout\ & (((!\b2v_inst|state.r_start~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0505",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RST~combout\,
	datac => \b2v_inst|state.r_start~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst|ReceiveData:cnt5[31]~0_combout\);

-- Location: LC_X22_Y8_N9
\b2v_inst|suspicious_start\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|suspicious_start~regout\ = DFFEAS(((!\Data_in~combout\ & ((\b2v_inst|Equal1~10_combout\) # (!\b2v_inst|suspicious_start~regout\)))), GLOBAL(\b2v_inst2|bclk~regout\), VCC, , \b2v_inst|ReceiveData:cnt5[31]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f05",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	dataa => \b2v_inst|suspicious_start~regout\,
	datac => \Data_in~combout\,
	datad => \b2v_inst|Equal1~10_combout\,
	aclr => GND,
	ena => \b2v_inst|ReceiveData:cnt5[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|suspicious_start~regout\);

-- Location: LC_X22_Y8_N8
\b2v_inst|ReceiveData:cnt[30]~0\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|ReceiveData:cnt[30]~0_combout\ = ((!\b2v_inst|state.r_start~regout\ & ((\Data_in~combout\) # (\b2v_inst|suspicious_start~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00fc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Data_in~combout\,
	datac => \b2v_inst|suspicious_start~regout\,
	datad => \b2v_inst|state.r_start~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst|ReceiveData:cnt[30]~0_combout\);

-- Location: LC_X22_Y8_N3
\b2v_inst|ReceiveData:cnt[28]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|ReceiveData:cnt[28]~regout\ = DFFEAS((\b2v_inst|suspicious_start~regout\ & (!\Data_in~combout\ & (\b2v_inst|Add1~140_combout\ & \b2v_inst|Equal1~10_combout\))), GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , 
-- \b2v_inst|ReceiveData:cnt[30]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	dataa => \b2v_inst|suspicious_start~regout\,
	datab => \Data_in~combout\,
	datac => \b2v_inst|Add1~140_combout\,
	datad => \b2v_inst|Equal1~10_combout\,
	aclr => \RST~combout\,
	ena => \b2v_inst|ReceiveData:cnt[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|ReceiveData:cnt[28]~regout\);

-- Location: LC_X23_Y7_N4
\b2v_inst|Add1~5\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|Add1~5_combout\ = ((!\b2v_inst|ReceiveData:cnt[0]~regout\))
-- \b2v_inst|Add1~7\ = CARRY(((\b2v_inst|ReceiveData:cnt[0]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|ReceiveData:cnt[0]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst|Add1~5_combout\,
	cout => \b2v_inst|Add1~7\);

-- Location: LC_X23_Y7_N3
\b2v_inst|ReceiveData:cnt[0]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|ReceiveData:cnt[0]~regout\ = DFFEAS((!\Data_in~combout\ & (\b2v_inst|Equal1~10_combout\ & (\b2v_inst|Add1~5_combout\ & \b2v_inst|suspicious_start~regout\))), GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , 
-- \b2v_inst|ReceiveData:cnt[30]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	dataa => \Data_in~combout\,
	datab => \b2v_inst|Equal1~10_combout\,
	datac => \b2v_inst|Add1~5_combout\,
	datad => \b2v_inst|suspicious_start~regout\,
	aclr => \RST~combout\,
	ena => \b2v_inst|ReceiveData:cnt[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|ReceiveData:cnt[0]~regout\);

-- Location: LC_X23_Y7_N5
\b2v_inst|Add1~10\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|Add1~10_combout\ = \b2v_inst|ReceiveData:cnt[1]~regout\ $ ((((\b2v_inst|Add1~7\))))
-- \b2v_inst|Add1~12\ = CARRY(((!\b2v_inst|Add1~7\)) # (!\b2v_inst|ReceiveData:cnt[1]~regout\))
-- \b2v_inst|Add1~12COUT1_186\ = CARRY(((!\b2v_inst|Add1~7\)) # (!\b2v_inst|ReceiveData:cnt[1]~regout\))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|ReceiveData:cnt[1]~regout\,
	cin => \b2v_inst|Add1~7\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst|Add1~10_combout\,
	cout0 => \b2v_inst|Add1~12\,
	cout1 => \b2v_inst|Add1~12COUT1_186\);

-- Location: LC_X23_Y7_N2
\b2v_inst|ReceiveData:cnt[1]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|ReceiveData:cnt[1]~regout\ = DFFEAS((!\Data_in~combout\ & (\b2v_inst|suspicious_start~regout\ & (\b2v_inst|Equal1~10_combout\ & \b2v_inst|Add1~10_combout\))), GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , 
-- \b2v_inst|ReceiveData:cnt[30]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	dataa => \Data_in~combout\,
	datab => \b2v_inst|suspicious_start~regout\,
	datac => \b2v_inst|Equal1~10_combout\,
	datad => \b2v_inst|Add1~10_combout\,
	aclr => \RST~combout\,
	ena => \b2v_inst|ReceiveData:cnt[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|ReceiveData:cnt[1]~regout\);

-- Location: LC_X23_Y7_N6
\b2v_inst|Add1~15\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|Add1~15_combout\ = (\b2v_inst|ReceiveData:cnt[2]~regout\ $ ((!(!\b2v_inst|Add1~7\ & \b2v_inst|Add1~12\) # (\b2v_inst|Add1~7\ & \b2v_inst|Add1~12COUT1_186\))))
-- \b2v_inst|Add1~17\ = CARRY(((\b2v_inst|ReceiveData:cnt[2]~regout\ & !\b2v_inst|Add1~12\)))
-- \b2v_inst|Add1~17COUT1_188\ = CARRY(((\b2v_inst|ReceiveData:cnt[2]~regout\ & !\b2v_inst|Add1~12COUT1_186\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|ReceiveData:cnt[2]~regout\,
	cin => \b2v_inst|Add1~7\,
	cin0 => \b2v_inst|Add1~12\,
	cin1 => \b2v_inst|Add1~12COUT1_186\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst|Add1~15_combout\,
	cout0 => \b2v_inst|Add1~17\,
	cout1 => \b2v_inst|Add1~17COUT1_188\);

-- Location: LC_X23_Y7_N0
\b2v_inst|ReceiveData:cnt[2]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|ReceiveData:cnt[2]~regout\ = DFFEAS((!\Data_in~combout\ & (\b2v_inst|suspicious_start~regout\ & (\b2v_inst|Equal1~10_combout\ & \b2v_inst|Add1~15_combout\))), GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , 
-- \b2v_inst|ReceiveData:cnt[30]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	dataa => \Data_in~combout\,
	datab => \b2v_inst|suspicious_start~regout\,
	datac => \b2v_inst|Equal1~10_combout\,
	datad => \b2v_inst|Add1~15_combout\,
	aclr => \RST~combout\,
	ena => \b2v_inst|ReceiveData:cnt[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|ReceiveData:cnt[2]~regout\);

-- Location: LC_X23_Y7_N7
\b2v_inst|Add1~0\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|Add1~0_combout\ = (\b2v_inst|ReceiveData:cnt[3]~regout\ $ (((!\b2v_inst|Add1~7\ & \b2v_inst|Add1~17\) # (\b2v_inst|Add1~7\ & \b2v_inst|Add1~17COUT1_188\))))
-- \b2v_inst|Add1~2\ = CARRY(((!\b2v_inst|Add1~17\) # (!\b2v_inst|ReceiveData:cnt[3]~regout\)))
-- \b2v_inst|Add1~2COUT1_190\ = CARRY(((!\b2v_inst|Add1~17COUT1_188\) # (!\b2v_inst|ReceiveData:cnt[3]~regout\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|ReceiveData:cnt[3]~regout\,
	cin => \b2v_inst|Add1~7\,
	cin0 => \b2v_inst|Add1~17\,
	cin1 => \b2v_inst|Add1~17COUT1_188\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst|Add1~0_combout\,
	cout0 => \b2v_inst|Add1~2\,
	cout1 => \b2v_inst|Add1~2COUT1_190\);

-- Location: LC_X22_Y5_N3
\b2v_inst|ReceiveData:cnt[3]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|ReceiveData:cnt[3]~regout\ = DFFEAS((\b2v_inst|suspicious_start~regout\ & (!\Data_in~combout\ & (\b2v_inst|Equal1~10_combout\ & \b2v_inst|Add1~0_combout\))), GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , 
-- \b2v_inst|ReceiveData:cnt[30]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	dataa => \b2v_inst|suspicious_start~regout\,
	datab => \Data_in~combout\,
	datac => \b2v_inst|Equal1~10_combout\,
	datad => \b2v_inst|Add1~0_combout\,
	aclr => \RST~combout\,
	ena => \b2v_inst|ReceiveData:cnt[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|ReceiveData:cnt[3]~regout\);

-- Location: LC_X23_Y7_N8
\b2v_inst|Add1~20\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|Add1~20_combout\ = (\b2v_inst|ReceiveData:cnt[4]~regout\ $ ((!(!\b2v_inst|Add1~7\ & \b2v_inst|Add1~2\) # (\b2v_inst|Add1~7\ & \b2v_inst|Add1~2COUT1_190\))))
-- \b2v_inst|Add1~22\ = CARRY(((\b2v_inst|ReceiveData:cnt[4]~regout\ & !\b2v_inst|Add1~2\)))
-- \b2v_inst|Add1~22COUT1_192\ = CARRY(((\b2v_inst|ReceiveData:cnt[4]~regout\ & !\b2v_inst|Add1~2COUT1_190\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|ReceiveData:cnt[4]~regout\,
	cin => \b2v_inst|Add1~7\,
	cin0 => \b2v_inst|Add1~2\,
	cin1 => \b2v_inst|Add1~2COUT1_190\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst|Add1~20_combout\,
	cout0 => \b2v_inst|Add1~22\,
	cout1 => \b2v_inst|Add1~22COUT1_192\);

-- Location: LC_X22_Y5_N9
\b2v_inst|ReceiveData:cnt[4]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|ReceiveData:cnt[4]~regout\ = DFFEAS((\b2v_inst|suspicious_start~regout\ & (!\Data_in~combout\ & (\b2v_inst|Add1~20_combout\ & \b2v_inst|Equal1~10_combout\))), GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , 
-- \b2v_inst|ReceiveData:cnt[30]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	dataa => \b2v_inst|suspicious_start~regout\,
	datab => \Data_in~combout\,
	datac => \b2v_inst|Add1~20_combout\,
	datad => \b2v_inst|Equal1~10_combout\,
	aclr => \RST~combout\,
	ena => \b2v_inst|ReceiveData:cnt[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|ReceiveData:cnt[4]~regout\);

-- Location: LC_X23_Y7_N9
\b2v_inst|Add1~25\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|Add1~25_combout\ = (\b2v_inst|ReceiveData:cnt[5]~regout\ $ (((!\b2v_inst|Add1~7\ & \b2v_inst|Add1~22\) # (\b2v_inst|Add1~7\ & \b2v_inst|Add1~22COUT1_192\))))
-- \b2v_inst|Add1~27\ = CARRY(((!\b2v_inst|Add1~22COUT1_192\) # (!\b2v_inst|ReceiveData:cnt[5]~regout\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|ReceiveData:cnt[5]~regout\,
	cin => \b2v_inst|Add1~7\,
	cin0 => \b2v_inst|Add1~22\,
	cin1 => \b2v_inst|Add1~22COUT1_192\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst|Add1~25_combout\,
	cout => \b2v_inst|Add1~27\);

-- Location: LC_X22_Y5_N8
\b2v_inst|ReceiveData:cnt[5]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|ReceiveData:cnt[5]~regout\ = DFFEAS((\b2v_inst|suspicious_start~regout\ & (!\Data_in~combout\ & (\b2v_inst|Add1~25_combout\ & \b2v_inst|Equal1~10_combout\))), GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , 
-- \b2v_inst|ReceiveData:cnt[30]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	dataa => \b2v_inst|suspicious_start~regout\,
	datab => \Data_in~combout\,
	datac => \b2v_inst|Add1~25_combout\,
	datad => \b2v_inst|Equal1~10_combout\,
	aclr => \RST~combout\,
	ena => \b2v_inst|ReceiveData:cnt[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|ReceiveData:cnt[5]~regout\);

-- Location: LC_X23_Y6_N0
\b2v_inst|Add1~30\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|Add1~30_combout\ = \b2v_inst|ReceiveData:cnt[6]~regout\ $ ((((!\b2v_inst|Add1~27\))))
-- \b2v_inst|Add1~32\ = CARRY((\b2v_inst|ReceiveData:cnt[6]~regout\ & ((!\b2v_inst|Add1~27\))))
-- \b2v_inst|Add1~32COUT1_194\ = CARRY((\b2v_inst|ReceiveData:cnt[6]~regout\ & ((!\b2v_inst|Add1~27\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|ReceiveData:cnt[6]~regout\,
	cin => \b2v_inst|Add1~27\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst|Add1~30_combout\,
	cout0 => \b2v_inst|Add1~32\,
	cout1 => \b2v_inst|Add1~32COUT1_194\);

-- Location: LC_X22_Y5_N2
\b2v_inst|ReceiveData:cnt[6]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|ReceiveData:cnt[6]~regout\ = DFFEAS((\b2v_inst|suspicious_start~regout\ & (!\Data_in~combout\ & (\b2v_inst|Equal1~10_combout\ & \b2v_inst|Add1~30_combout\))), GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , 
-- \b2v_inst|ReceiveData:cnt[30]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	dataa => \b2v_inst|suspicious_start~regout\,
	datab => \Data_in~combout\,
	datac => \b2v_inst|Equal1~10_combout\,
	datad => \b2v_inst|Add1~30_combout\,
	aclr => \RST~combout\,
	ena => \b2v_inst|ReceiveData:cnt[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|ReceiveData:cnt[6]~regout\);

-- Location: LC_X23_Y6_N1
\b2v_inst|Add1~35\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|Add1~35_combout\ = (\b2v_inst|ReceiveData:cnt[7]~regout\ $ (((!\b2v_inst|Add1~27\ & \b2v_inst|Add1~32\) # (\b2v_inst|Add1~27\ & \b2v_inst|Add1~32COUT1_194\))))
-- \b2v_inst|Add1~37\ = CARRY(((!\b2v_inst|Add1~32\) # (!\b2v_inst|ReceiveData:cnt[7]~regout\)))
-- \b2v_inst|Add1~37COUT1_196\ = CARRY(((!\b2v_inst|Add1~32COUT1_194\) # (!\b2v_inst|ReceiveData:cnt[7]~regout\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|ReceiveData:cnt[7]~regout\,
	cin => \b2v_inst|Add1~27\,
	cin0 => \b2v_inst|Add1~32\,
	cin1 => \b2v_inst|Add1~32COUT1_194\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst|Add1~35_combout\,
	cout0 => \b2v_inst|Add1~37\,
	cout1 => \b2v_inst|Add1~37COUT1_196\);

-- Location: LC_X22_Y5_N7
\b2v_inst|ReceiveData:cnt[7]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|ReceiveData:cnt[7]~regout\ = DFFEAS((\b2v_inst|suspicious_start~regout\ & (\b2v_inst|Equal1~10_combout\ & (\b2v_inst|Add1~35_combout\ & !\Data_in~combout\))), GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , 
-- \b2v_inst|ReceiveData:cnt[30]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0080",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	dataa => \b2v_inst|suspicious_start~regout\,
	datab => \b2v_inst|Equal1~10_combout\,
	datac => \b2v_inst|Add1~35_combout\,
	datad => \Data_in~combout\,
	aclr => \RST~combout\,
	ena => \b2v_inst|ReceiveData:cnt[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|ReceiveData:cnt[7]~regout\);

-- Location: LC_X23_Y6_N2
\b2v_inst|Add1~40\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|Add1~40_combout\ = (\b2v_inst|ReceiveData:cnt[8]~regout\ $ ((!(!\b2v_inst|Add1~27\ & \b2v_inst|Add1~37\) # (\b2v_inst|Add1~27\ & \b2v_inst|Add1~37COUT1_196\))))
-- \b2v_inst|Add1~42\ = CARRY(((\b2v_inst|ReceiveData:cnt[8]~regout\ & !\b2v_inst|Add1~37\)))
-- \b2v_inst|Add1~42COUT1_198\ = CARRY(((\b2v_inst|ReceiveData:cnt[8]~regout\ & !\b2v_inst|Add1~37COUT1_196\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|ReceiveData:cnt[8]~regout\,
	cin => \b2v_inst|Add1~27\,
	cin0 => \b2v_inst|Add1~37\,
	cin1 => \b2v_inst|Add1~37COUT1_196\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst|Add1~40_combout\,
	cout0 => \b2v_inst|Add1~42\,
	cout1 => \b2v_inst|Add1~42COUT1_198\);

-- Location: LC_X22_Y7_N4
\b2v_inst|ReceiveData:cnt[8]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|ReceiveData:cnt[8]~regout\ = DFFEAS((!\Data_in~combout\ & (\b2v_inst|suspicious_start~regout\ & (\b2v_inst|Equal1~10_combout\ & \b2v_inst|Add1~40_combout\))), GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , 
-- \b2v_inst|ReceiveData:cnt[30]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	dataa => \Data_in~combout\,
	datab => \b2v_inst|suspicious_start~regout\,
	datac => \b2v_inst|Equal1~10_combout\,
	datad => \b2v_inst|Add1~40_combout\,
	aclr => \RST~combout\,
	ena => \b2v_inst|ReceiveData:cnt[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|ReceiveData:cnt[8]~regout\);

-- Location: LC_X23_Y6_N3
\b2v_inst|Add1~45\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|Add1~45_combout\ = (\b2v_inst|ReceiveData:cnt[9]~regout\ $ (((!\b2v_inst|Add1~27\ & \b2v_inst|Add1~42\) # (\b2v_inst|Add1~27\ & \b2v_inst|Add1~42COUT1_198\))))
-- \b2v_inst|Add1~47\ = CARRY(((!\b2v_inst|Add1~42\) # (!\b2v_inst|ReceiveData:cnt[9]~regout\)))
-- \b2v_inst|Add1~47COUT1_200\ = CARRY(((!\b2v_inst|Add1~42COUT1_198\) # (!\b2v_inst|ReceiveData:cnt[9]~regout\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|ReceiveData:cnt[9]~regout\,
	cin => \b2v_inst|Add1~27\,
	cin0 => \b2v_inst|Add1~42\,
	cin1 => \b2v_inst|Add1~42COUT1_198\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst|Add1~45_combout\,
	cout0 => \b2v_inst|Add1~47\,
	cout1 => \b2v_inst|Add1~47COUT1_200\);

-- Location: LC_X22_Y5_N1
\b2v_inst|ReceiveData:cnt[9]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|ReceiveData:cnt[9]~regout\ = DFFEAS((\b2v_inst|suspicious_start~regout\ & (!\Data_in~combout\ & (\b2v_inst|Add1~45_combout\ & \b2v_inst|Equal1~10_combout\))), GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , 
-- \b2v_inst|ReceiveData:cnt[30]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	dataa => \b2v_inst|suspicious_start~regout\,
	datab => \Data_in~combout\,
	datac => \b2v_inst|Add1~45_combout\,
	datad => \b2v_inst|Equal1~10_combout\,
	aclr => \RST~combout\,
	ena => \b2v_inst|ReceiveData:cnt[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|ReceiveData:cnt[9]~regout\);

-- Location: LC_X23_Y6_N4
\b2v_inst|Add1~50\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|Add1~50_combout\ = (\b2v_inst|ReceiveData:cnt[10]~regout\ $ ((!(!\b2v_inst|Add1~27\ & \b2v_inst|Add1~47\) # (\b2v_inst|Add1~27\ & \b2v_inst|Add1~47COUT1_200\))))
-- \b2v_inst|Add1~52\ = CARRY(((\b2v_inst|ReceiveData:cnt[10]~regout\ & !\b2v_inst|Add1~47COUT1_200\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|ReceiveData:cnt[10]~regout\,
	cin => \b2v_inst|Add1~27\,
	cin0 => \b2v_inst|Add1~47\,
	cin1 => \b2v_inst|Add1~47COUT1_200\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst|Add1~50_combout\,
	cout => \b2v_inst|Add1~52\);

-- Location: LC_X22_Y5_N5
\b2v_inst|ReceiveData:cnt[10]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|ReceiveData:cnt[10]~regout\ = DFFEAS((\b2v_inst|suspicious_start~regout\ & (!\Data_in~combout\ & (\b2v_inst|Add1~50_combout\ & \b2v_inst|Equal1~10_combout\))), GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , 
-- \b2v_inst|ReceiveData:cnt[30]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	dataa => \b2v_inst|suspicious_start~regout\,
	datab => \Data_in~combout\,
	datac => \b2v_inst|Add1~50_combout\,
	datad => \b2v_inst|Equal1~10_combout\,
	aclr => \RST~combout\,
	ena => \b2v_inst|ReceiveData:cnt[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|ReceiveData:cnt[10]~regout\);

-- Location: LC_X23_Y6_N5
\b2v_inst|Add1~55\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|Add1~55_combout\ = (\b2v_inst|ReceiveData:cnt[11]~regout\ $ ((\b2v_inst|Add1~52\)))
-- \b2v_inst|Add1~57\ = CARRY(((!\b2v_inst|Add1~52\) # (!\b2v_inst|ReceiveData:cnt[11]~regout\)))
-- \b2v_inst|Add1~57COUT1_202\ = CARRY(((!\b2v_inst|Add1~52\) # (!\b2v_inst|ReceiveData:cnt[11]~regout\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|ReceiveData:cnt[11]~regout\,
	cin => \b2v_inst|Add1~52\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst|Add1~55_combout\,
	cout0 => \b2v_inst|Add1~57\,
	cout1 => \b2v_inst|Add1~57COUT1_202\);

-- Location: LC_X22_Y7_N3
\b2v_inst|ReceiveData:cnt[11]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|ReceiveData:cnt[11]~regout\ = DFFEAS((!\Data_in~combout\ & (\b2v_inst|suspicious_start~regout\ & (\b2v_inst|Equal1~10_combout\ & \b2v_inst|Add1~55_combout\))), GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , 
-- \b2v_inst|ReceiveData:cnt[30]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	dataa => \Data_in~combout\,
	datab => \b2v_inst|suspicious_start~regout\,
	datac => \b2v_inst|Equal1~10_combout\,
	datad => \b2v_inst|Add1~55_combout\,
	aclr => \RST~combout\,
	ena => \b2v_inst|ReceiveData:cnt[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|ReceiveData:cnt[11]~regout\);

-- Location: LC_X23_Y6_N6
\b2v_inst|Add1~60\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|Add1~60_combout\ = (\b2v_inst|ReceiveData:cnt[12]~regout\ $ ((!(!\b2v_inst|Add1~52\ & \b2v_inst|Add1~57\) # (\b2v_inst|Add1~52\ & \b2v_inst|Add1~57COUT1_202\))))
-- \b2v_inst|Add1~62\ = CARRY(((\b2v_inst|ReceiveData:cnt[12]~regout\ & !\b2v_inst|Add1~57\)))
-- \b2v_inst|Add1~62COUT1_204\ = CARRY(((\b2v_inst|ReceiveData:cnt[12]~regout\ & !\b2v_inst|Add1~57COUT1_202\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|ReceiveData:cnt[12]~regout\,
	cin => \b2v_inst|Add1~52\,
	cin0 => \b2v_inst|Add1~57\,
	cin1 => \b2v_inst|Add1~57COUT1_202\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst|Add1~60_combout\,
	cout0 => \b2v_inst|Add1~62\,
	cout1 => \b2v_inst|Add1~62COUT1_204\);

-- Location: LC_X22_Y7_N0
\b2v_inst|ReceiveData:cnt[12]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|ReceiveData:cnt[12]~regout\ = DFFEAS((!\Data_in~combout\ & (\b2v_inst|Add1~60_combout\ & (\b2v_inst|Equal1~10_combout\ & \b2v_inst|suspicious_start~regout\))), GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , 
-- \b2v_inst|ReceiveData:cnt[30]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	dataa => \Data_in~combout\,
	datab => \b2v_inst|Add1~60_combout\,
	datac => \b2v_inst|Equal1~10_combout\,
	datad => \b2v_inst|suspicious_start~regout\,
	aclr => \RST~combout\,
	ena => \b2v_inst|ReceiveData:cnt[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|ReceiveData:cnt[12]~regout\);

-- Location: LC_X23_Y6_N7
\b2v_inst|Add1~65\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|Add1~65_combout\ = \b2v_inst|ReceiveData:cnt[13]~regout\ $ (((((!\b2v_inst|Add1~52\ & \b2v_inst|Add1~62\) # (\b2v_inst|Add1~52\ & \b2v_inst|Add1~62COUT1_204\)))))
-- \b2v_inst|Add1~67\ = CARRY(((!\b2v_inst|Add1~62\)) # (!\b2v_inst|ReceiveData:cnt[13]~regout\))
-- \b2v_inst|Add1~67COUT1_206\ = CARRY(((!\b2v_inst|Add1~62COUT1_204\)) # (!\b2v_inst|ReceiveData:cnt[13]~regout\))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|ReceiveData:cnt[13]~regout\,
	cin => \b2v_inst|Add1~52\,
	cin0 => \b2v_inst|Add1~62\,
	cin1 => \b2v_inst|Add1~62COUT1_204\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst|Add1~65_combout\,
	cout0 => \b2v_inst|Add1~67\,
	cout1 => \b2v_inst|Add1~67COUT1_206\);

-- Location: LC_X22_Y7_N6
\b2v_inst|ReceiveData:cnt[13]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|ReceiveData:cnt[13]~regout\ = DFFEAS((!\Data_in~combout\ & (\b2v_inst|suspicious_start~regout\ & (\b2v_inst|Equal1~10_combout\ & \b2v_inst|Add1~65_combout\))), GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , 
-- \b2v_inst|ReceiveData:cnt[30]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	dataa => \Data_in~combout\,
	datab => \b2v_inst|suspicious_start~regout\,
	datac => \b2v_inst|Equal1~10_combout\,
	datad => \b2v_inst|Add1~65_combout\,
	aclr => \RST~combout\,
	ena => \b2v_inst|ReceiveData:cnt[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|ReceiveData:cnt[13]~regout\);

-- Location: LC_X23_Y6_N8
\b2v_inst|Add1~70\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|Add1~70_combout\ = (\b2v_inst|ReceiveData:cnt[14]~regout\ $ ((!(!\b2v_inst|Add1~52\ & \b2v_inst|Add1~67\) # (\b2v_inst|Add1~52\ & \b2v_inst|Add1~67COUT1_206\))))
-- \b2v_inst|Add1~72\ = CARRY(((\b2v_inst|ReceiveData:cnt[14]~regout\ & !\b2v_inst|Add1~67\)))
-- \b2v_inst|Add1~72COUT1_208\ = CARRY(((\b2v_inst|ReceiveData:cnt[14]~regout\ & !\b2v_inst|Add1~67COUT1_206\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|ReceiveData:cnt[14]~regout\,
	cin => \b2v_inst|Add1~52\,
	cin0 => \b2v_inst|Add1~67\,
	cin1 => \b2v_inst|Add1~67COUT1_206\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst|Add1~70_combout\,
	cout0 => \b2v_inst|Add1~72\,
	cout1 => \b2v_inst|Add1~72COUT1_208\);

-- Location: LC_X22_Y7_N7
\b2v_inst|ReceiveData:cnt[14]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|ReceiveData:cnt[14]~regout\ = DFFEAS((\b2v_inst|Add1~70_combout\ & (!\Data_in~combout\ & (\b2v_inst|Equal1~10_combout\ & \b2v_inst|suspicious_start~regout\))), GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , 
-- \b2v_inst|ReceiveData:cnt[30]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	dataa => \b2v_inst|Add1~70_combout\,
	datab => \Data_in~combout\,
	datac => \b2v_inst|Equal1~10_combout\,
	datad => \b2v_inst|suspicious_start~regout\,
	aclr => \RST~combout\,
	ena => \b2v_inst|ReceiveData:cnt[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|ReceiveData:cnt[14]~regout\);

-- Location: LC_X23_Y6_N9
\b2v_inst|Add1~75\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|Add1~75_combout\ = (\b2v_inst|ReceiveData:cnt[15]~regout\ $ (((!\b2v_inst|Add1~52\ & \b2v_inst|Add1~72\) # (\b2v_inst|Add1~52\ & \b2v_inst|Add1~72COUT1_208\))))
-- \b2v_inst|Add1~77\ = CARRY(((!\b2v_inst|Add1~72COUT1_208\) # (!\b2v_inst|ReceiveData:cnt[15]~regout\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|ReceiveData:cnt[15]~regout\,
	cin => \b2v_inst|Add1~52\,
	cin0 => \b2v_inst|Add1~72\,
	cin1 => \b2v_inst|Add1~72COUT1_208\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst|Add1~75_combout\,
	cout => \b2v_inst|Add1~77\);

-- Location: LC_X22_Y7_N8
\b2v_inst|ReceiveData:cnt[15]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|ReceiveData:cnt[15]~regout\ = DFFEAS((!\Data_in~combout\ & (\b2v_inst|suspicious_start~regout\ & (\b2v_inst|Equal1~10_combout\ & \b2v_inst|Add1~75_combout\))), GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , 
-- \b2v_inst|ReceiveData:cnt[30]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	dataa => \Data_in~combout\,
	datab => \b2v_inst|suspicious_start~regout\,
	datac => \b2v_inst|Equal1~10_combout\,
	datad => \b2v_inst|Add1~75_combout\,
	aclr => \RST~combout\,
	ena => \b2v_inst|ReceiveData:cnt[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|ReceiveData:cnt[15]~regout\);

-- Location: LC_X23_Y5_N0
\b2v_inst|Add1~80\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|Add1~80_combout\ = (\b2v_inst|ReceiveData:cnt[16]~regout\ $ ((!\b2v_inst|Add1~77\)))
-- \b2v_inst|Add1~82\ = CARRY(((\b2v_inst|ReceiveData:cnt[16]~regout\ & !\b2v_inst|Add1~77\)))
-- \b2v_inst|Add1~82COUT1_210\ = CARRY(((\b2v_inst|ReceiveData:cnt[16]~regout\ & !\b2v_inst|Add1~77\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|ReceiveData:cnt[16]~regout\,
	cin => \b2v_inst|Add1~77\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst|Add1~80_combout\,
	cout0 => \b2v_inst|Add1~82\,
	cout1 => \b2v_inst|Add1~82COUT1_210\);

-- Location: LC_X22_Y4_N3
\b2v_inst|ReceiveData:cnt[16]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|ReceiveData:cnt[16]~regout\ = DFFEAS((\b2v_inst|suspicious_start~regout\ & (\b2v_inst|Equal1~10_combout\ & (!\Data_in~combout\ & \b2v_inst|Add1~80_combout\))), GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , 
-- \b2v_inst|ReceiveData:cnt[30]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0800",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	dataa => \b2v_inst|suspicious_start~regout\,
	datab => \b2v_inst|Equal1~10_combout\,
	datac => \Data_in~combout\,
	datad => \b2v_inst|Add1~80_combout\,
	aclr => \RST~combout\,
	ena => \b2v_inst|ReceiveData:cnt[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|ReceiveData:cnt[16]~regout\);

-- Location: LC_X23_Y5_N1
\b2v_inst|Add1~85\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|Add1~85_combout\ = \b2v_inst|ReceiveData:cnt[17]~regout\ $ (((((!\b2v_inst|Add1~77\ & \b2v_inst|Add1~82\) # (\b2v_inst|Add1~77\ & \b2v_inst|Add1~82COUT1_210\)))))
-- \b2v_inst|Add1~87\ = CARRY(((!\b2v_inst|Add1~82\)) # (!\b2v_inst|ReceiveData:cnt[17]~regout\))
-- \b2v_inst|Add1~87COUT1_212\ = CARRY(((!\b2v_inst|Add1~82COUT1_210\)) # (!\b2v_inst|ReceiveData:cnt[17]~regout\))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|ReceiveData:cnt[17]~regout\,
	cin => \b2v_inst|Add1~77\,
	cin0 => \b2v_inst|Add1~82\,
	cin1 => \b2v_inst|Add1~82COUT1_210\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst|Add1~85_combout\,
	cout0 => \b2v_inst|Add1~87\,
	cout1 => \b2v_inst|Add1~87COUT1_212\);

-- Location: LC_X22_Y4_N4
\b2v_inst|ReceiveData:cnt[17]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|ReceiveData:cnt[17]~regout\ = DFFEAS((\b2v_inst|suspicious_start~regout\ & (!\Data_in~combout\ & (\b2v_inst|Add1~85_combout\ & \b2v_inst|Equal1~10_combout\))), GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , 
-- \b2v_inst|ReceiveData:cnt[30]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	dataa => \b2v_inst|suspicious_start~regout\,
	datab => \Data_in~combout\,
	datac => \b2v_inst|Add1~85_combout\,
	datad => \b2v_inst|Equal1~10_combout\,
	aclr => \RST~combout\,
	ena => \b2v_inst|ReceiveData:cnt[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|ReceiveData:cnt[17]~regout\);

-- Location: LC_X23_Y5_N2
\b2v_inst|Add1~90\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|Add1~90_combout\ = \b2v_inst|ReceiveData:cnt[18]~regout\ $ ((((!(!\b2v_inst|Add1~77\ & \b2v_inst|Add1~87\) # (\b2v_inst|Add1~77\ & \b2v_inst|Add1~87COUT1_212\)))))
-- \b2v_inst|Add1~92\ = CARRY((\b2v_inst|ReceiveData:cnt[18]~regout\ & ((!\b2v_inst|Add1~87\))))
-- \b2v_inst|Add1~92COUT1_214\ = CARRY((\b2v_inst|ReceiveData:cnt[18]~regout\ & ((!\b2v_inst|Add1~87COUT1_212\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|ReceiveData:cnt[18]~regout\,
	cin => \b2v_inst|Add1~77\,
	cin0 => \b2v_inst|Add1~87\,
	cin1 => \b2v_inst|Add1~87COUT1_212\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst|Add1~90_combout\,
	cout0 => \b2v_inst|Add1~92\,
	cout1 => \b2v_inst|Add1~92COUT1_214\);

-- Location: LC_X22_Y4_N6
\b2v_inst|ReceiveData:cnt[18]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|ReceiveData:cnt[18]~regout\ = DFFEAS((\b2v_inst|suspicious_start~regout\ & (\b2v_inst|Add1~90_combout\ & (!\Data_in~combout\ & \b2v_inst|Equal1~10_combout\))), GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , 
-- \b2v_inst|ReceiveData:cnt[30]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0800",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	dataa => \b2v_inst|suspicious_start~regout\,
	datab => \b2v_inst|Add1~90_combout\,
	datac => \Data_in~combout\,
	datad => \b2v_inst|Equal1~10_combout\,
	aclr => \RST~combout\,
	ena => \b2v_inst|ReceiveData:cnt[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|ReceiveData:cnt[18]~regout\);

-- Location: LC_X23_Y5_N3
\b2v_inst|Add1~95\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|Add1~95_combout\ = (\b2v_inst|ReceiveData:cnt[19]~regout\ $ (((!\b2v_inst|Add1~77\ & \b2v_inst|Add1~92\) # (\b2v_inst|Add1~77\ & \b2v_inst|Add1~92COUT1_214\))))
-- \b2v_inst|Add1~97\ = CARRY(((!\b2v_inst|Add1~92\) # (!\b2v_inst|ReceiveData:cnt[19]~regout\)))
-- \b2v_inst|Add1~97COUT1_216\ = CARRY(((!\b2v_inst|Add1~92COUT1_214\) # (!\b2v_inst|ReceiveData:cnt[19]~regout\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|ReceiveData:cnt[19]~regout\,
	cin => \b2v_inst|Add1~77\,
	cin0 => \b2v_inst|Add1~92\,
	cin1 => \b2v_inst|Add1~92COUT1_214\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst|Add1~95_combout\,
	cout0 => \b2v_inst|Add1~97\,
	cout1 => \b2v_inst|Add1~97COUT1_216\);

-- Location: LC_X22_Y4_N9
\b2v_inst|ReceiveData:cnt[19]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|ReceiveData:cnt[19]~regout\ = DFFEAS((\b2v_inst|suspicious_start~regout\ & (\b2v_inst|Equal1~10_combout\ & (!\Data_in~combout\ & \b2v_inst|Add1~95_combout\))), GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , 
-- \b2v_inst|ReceiveData:cnt[30]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0800",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	dataa => \b2v_inst|suspicious_start~regout\,
	datab => \b2v_inst|Equal1~10_combout\,
	datac => \Data_in~combout\,
	datad => \b2v_inst|Add1~95_combout\,
	aclr => \RST~combout\,
	ena => \b2v_inst|ReceiveData:cnt[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|ReceiveData:cnt[19]~regout\);

-- Location: LC_X23_Y5_N4
\b2v_inst|Add1~100\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|Add1~100_combout\ = (\b2v_inst|ReceiveData:cnt[20]~regout\ $ ((!(!\b2v_inst|Add1~77\ & \b2v_inst|Add1~97\) # (\b2v_inst|Add1~77\ & \b2v_inst|Add1~97COUT1_216\))))
-- \b2v_inst|Add1~102\ = CARRY(((\b2v_inst|ReceiveData:cnt[20]~regout\ & !\b2v_inst|Add1~97COUT1_216\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|ReceiveData:cnt[20]~regout\,
	cin => \b2v_inst|Add1~77\,
	cin0 => \b2v_inst|Add1~97\,
	cin1 => \b2v_inst|Add1~97COUT1_216\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst|Add1~100_combout\,
	cout => \b2v_inst|Add1~102\);

-- Location: LC_X22_Y5_N4
\b2v_inst|ReceiveData:cnt[20]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|ReceiveData:cnt[20]~regout\ = DFFEAS((\b2v_inst|suspicious_start~regout\ & (!\Data_in~combout\ & (\b2v_inst|Equal1~10_combout\ & \b2v_inst|Add1~100_combout\))), GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , 
-- \b2v_inst|ReceiveData:cnt[30]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	dataa => \b2v_inst|suspicious_start~regout\,
	datab => \Data_in~combout\,
	datac => \b2v_inst|Equal1~10_combout\,
	datad => \b2v_inst|Add1~100_combout\,
	aclr => \RST~combout\,
	ena => \b2v_inst|ReceiveData:cnt[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|ReceiveData:cnt[20]~regout\);

-- Location: LC_X23_Y5_N5
\b2v_inst|Add1~105\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|Add1~105_combout\ = (\b2v_inst|ReceiveData:cnt[21]~regout\ $ ((\b2v_inst|Add1~102\)))
-- \b2v_inst|Add1~107\ = CARRY(((!\b2v_inst|Add1~102\) # (!\b2v_inst|ReceiveData:cnt[21]~regout\)))
-- \b2v_inst|Add1~107COUT1_218\ = CARRY(((!\b2v_inst|Add1~102\) # (!\b2v_inst|ReceiveData:cnt[21]~regout\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|ReceiveData:cnt[21]~regout\,
	cin => \b2v_inst|Add1~102\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst|Add1~105_combout\,
	cout0 => \b2v_inst|Add1~107\,
	cout1 => \b2v_inst|Add1~107COUT1_218\);

-- Location: LC_X22_Y4_N8
\b2v_inst|ReceiveData:cnt[21]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|ReceiveData:cnt[21]~regout\ = DFFEAS((\b2v_inst|suspicious_start~regout\ & (\b2v_inst|Equal1~10_combout\ & (!\Data_in~combout\ & \b2v_inst|Add1~105_combout\))), GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , 
-- \b2v_inst|ReceiveData:cnt[30]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0800",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	dataa => \b2v_inst|suspicious_start~regout\,
	datab => \b2v_inst|Equal1~10_combout\,
	datac => \Data_in~combout\,
	datad => \b2v_inst|Add1~105_combout\,
	aclr => \RST~combout\,
	ena => \b2v_inst|ReceiveData:cnt[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|ReceiveData:cnt[21]~regout\);

-- Location: LC_X23_Y5_N6
\b2v_inst|Add1~110\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|Add1~110_combout\ = \b2v_inst|ReceiveData:cnt[22]~regout\ $ ((((!(!\b2v_inst|Add1~102\ & \b2v_inst|Add1~107\) # (\b2v_inst|Add1~102\ & \b2v_inst|Add1~107COUT1_218\)))))
-- \b2v_inst|Add1~112\ = CARRY((\b2v_inst|ReceiveData:cnt[22]~regout\ & ((!\b2v_inst|Add1~107\))))
-- \b2v_inst|Add1~112COUT1_220\ = CARRY((\b2v_inst|ReceiveData:cnt[22]~regout\ & ((!\b2v_inst|Add1~107COUT1_218\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|ReceiveData:cnt[22]~regout\,
	cin => \b2v_inst|Add1~102\,
	cin0 => \b2v_inst|Add1~107\,
	cin1 => \b2v_inst|Add1~107COUT1_218\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst|Add1~110_combout\,
	cout0 => \b2v_inst|Add1~112\,
	cout1 => \b2v_inst|Add1~112COUT1_220\);

-- Location: LC_X22_Y4_N0
\b2v_inst|ReceiveData:cnt[22]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|ReceiveData:cnt[22]~regout\ = DFFEAS((\b2v_inst|suspicious_start~regout\ & (\b2v_inst|Add1~110_combout\ & (!\Data_in~combout\ & \b2v_inst|Equal1~10_combout\))), GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , 
-- \b2v_inst|ReceiveData:cnt[30]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0800",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	dataa => \b2v_inst|suspicious_start~regout\,
	datab => \b2v_inst|Add1~110_combout\,
	datac => \Data_in~combout\,
	datad => \b2v_inst|Equal1~10_combout\,
	aclr => \RST~combout\,
	ena => \b2v_inst|ReceiveData:cnt[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|ReceiveData:cnt[22]~regout\);

-- Location: LC_X23_Y5_N7
\b2v_inst|Add1~115\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|Add1~115_combout\ = \b2v_inst|ReceiveData:cnt[23]~regout\ $ (((((!\b2v_inst|Add1~102\ & \b2v_inst|Add1~112\) # (\b2v_inst|Add1~102\ & \b2v_inst|Add1~112COUT1_220\)))))
-- \b2v_inst|Add1~117\ = CARRY(((!\b2v_inst|Add1~112\)) # (!\b2v_inst|ReceiveData:cnt[23]~regout\))
-- \b2v_inst|Add1~117COUT1_222\ = CARRY(((!\b2v_inst|Add1~112COUT1_220\)) # (!\b2v_inst|ReceiveData:cnt[23]~regout\))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|ReceiveData:cnt[23]~regout\,
	cin => \b2v_inst|Add1~102\,
	cin0 => \b2v_inst|Add1~112\,
	cin1 => \b2v_inst|Add1~112COUT1_220\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst|Add1~115_combout\,
	cout0 => \b2v_inst|Add1~117\,
	cout1 => \b2v_inst|Add1~117COUT1_222\);

-- Location: LC_X22_Y4_N5
\b2v_inst|ReceiveData:cnt[23]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|ReceiveData:cnt[23]~regout\ = DFFEAS((\b2v_inst|suspicious_start~regout\ & (\b2v_inst|Equal1~10_combout\ & (!\Data_in~combout\ & \b2v_inst|Add1~115_combout\))), GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , 
-- \b2v_inst|ReceiveData:cnt[30]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0800",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	dataa => \b2v_inst|suspicious_start~regout\,
	datab => \b2v_inst|Equal1~10_combout\,
	datac => \Data_in~combout\,
	datad => \b2v_inst|Add1~115_combout\,
	aclr => \RST~combout\,
	ena => \b2v_inst|ReceiveData:cnt[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|ReceiveData:cnt[23]~regout\);

-- Location: LC_X23_Y5_N8
\b2v_inst|Add1~120\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|Add1~120_combout\ = \b2v_inst|ReceiveData:cnt[24]~regout\ $ ((((!(!\b2v_inst|Add1~102\ & \b2v_inst|Add1~117\) # (\b2v_inst|Add1~102\ & \b2v_inst|Add1~117COUT1_222\)))))
-- \b2v_inst|Add1~122\ = CARRY((\b2v_inst|ReceiveData:cnt[24]~regout\ & ((!\b2v_inst|Add1~117\))))
-- \b2v_inst|Add1~122COUT1_224\ = CARRY((\b2v_inst|ReceiveData:cnt[24]~regout\ & ((!\b2v_inst|Add1~117COUT1_222\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|ReceiveData:cnt[24]~regout\,
	cin => \b2v_inst|Add1~102\,
	cin0 => \b2v_inst|Add1~117\,
	cin1 => \b2v_inst|Add1~117COUT1_222\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst|Add1~120_combout\,
	cout0 => \b2v_inst|Add1~122\,
	cout1 => \b2v_inst|Add1~122COUT1_224\);

-- Location: LC_X22_Y5_N6
\b2v_inst|ReceiveData:cnt[24]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|ReceiveData:cnt[24]~regout\ = DFFEAS((\b2v_inst|suspicious_start~regout\ & (!\Data_in~combout\ & (\b2v_inst|Equal1~10_combout\ & \b2v_inst|Add1~120_combout\))), GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , 
-- \b2v_inst|ReceiveData:cnt[30]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	dataa => \b2v_inst|suspicious_start~regout\,
	datab => \Data_in~combout\,
	datac => \b2v_inst|Equal1~10_combout\,
	datad => \b2v_inst|Add1~120_combout\,
	aclr => \RST~combout\,
	ena => \b2v_inst|ReceiveData:cnt[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|ReceiveData:cnt[24]~regout\);

-- Location: LC_X23_Y5_N9
\b2v_inst|Add1~125\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|Add1~125_combout\ = (\b2v_inst|ReceiveData:cnt[25]~regout\ $ (((!\b2v_inst|Add1~102\ & \b2v_inst|Add1~122\) # (\b2v_inst|Add1~102\ & \b2v_inst|Add1~122COUT1_224\))))
-- \b2v_inst|Add1~127\ = CARRY(((!\b2v_inst|Add1~122COUT1_224\) # (!\b2v_inst|ReceiveData:cnt[25]~regout\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|ReceiveData:cnt[25]~regout\,
	cin => \b2v_inst|Add1~102\,
	cin0 => \b2v_inst|Add1~122\,
	cin1 => \b2v_inst|Add1~122COUT1_224\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst|Add1~125_combout\,
	cout => \b2v_inst|Add1~127\);

-- Location: LC_X22_Y5_N0
\b2v_inst|ReceiveData:cnt[25]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|ReceiveData:cnt[25]~regout\ = DFFEAS((\b2v_inst|suspicious_start~regout\ & (!\Data_in~combout\ & (\b2v_inst|Equal1~10_combout\ & \b2v_inst|Add1~125_combout\))), GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , 
-- \b2v_inst|ReceiveData:cnt[30]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	dataa => \b2v_inst|suspicious_start~regout\,
	datab => \Data_in~combout\,
	datac => \b2v_inst|Equal1~10_combout\,
	datad => \b2v_inst|Add1~125_combout\,
	aclr => \RST~combout\,
	ena => \b2v_inst|ReceiveData:cnt[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|ReceiveData:cnt[25]~regout\);

-- Location: LC_X23_Y4_N0
\b2v_inst|Add1~130\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|Add1~130_combout\ = (\b2v_inst|ReceiveData:cnt[26]~regout\ $ ((!\b2v_inst|Add1~127\)))
-- \b2v_inst|Add1~132\ = CARRY(((\b2v_inst|ReceiveData:cnt[26]~regout\ & !\b2v_inst|Add1~127\)))
-- \b2v_inst|Add1~132COUT1_226\ = CARRY(((\b2v_inst|ReceiveData:cnt[26]~regout\ & !\b2v_inst|Add1~127\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|ReceiveData:cnt[26]~regout\,
	cin => \b2v_inst|Add1~127\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst|Add1~130_combout\,
	cout0 => \b2v_inst|Add1~132\,
	cout1 => \b2v_inst|Add1~132COUT1_226\);

-- Location: LC_X22_Y8_N4
\b2v_inst|ReceiveData:cnt[26]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|ReceiveData:cnt[26]~regout\ = DFFEAS((\b2v_inst|suspicious_start~regout\ & (!\Data_in~combout\ & (\b2v_inst|Add1~130_combout\ & \b2v_inst|Equal1~10_combout\))), GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , 
-- \b2v_inst|ReceiveData:cnt[30]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	dataa => \b2v_inst|suspicious_start~regout\,
	datab => \Data_in~combout\,
	datac => \b2v_inst|Add1~130_combout\,
	datad => \b2v_inst|Equal1~10_combout\,
	aclr => \RST~combout\,
	ena => \b2v_inst|ReceiveData:cnt[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|ReceiveData:cnt[26]~regout\);

-- Location: LC_X23_Y4_N1
\b2v_inst|Add1~135\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|Add1~135_combout\ = (\b2v_inst|ReceiveData:cnt[27]~regout\ $ (((!\b2v_inst|Add1~127\ & \b2v_inst|Add1~132\) # (\b2v_inst|Add1~127\ & \b2v_inst|Add1~132COUT1_226\))))
-- \b2v_inst|Add1~137\ = CARRY(((!\b2v_inst|Add1~132\) # (!\b2v_inst|ReceiveData:cnt[27]~regout\)))
-- \b2v_inst|Add1~137COUT1_228\ = CARRY(((!\b2v_inst|Add1~132COUT1_226\) # (!\b2v_inst|ReceiveData:cnt[27]~regout\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|ReceiveData:cnt[27]~regout\,
	cin => \b2v_inst|Add1~127\,
	cin0 => \b2v_inst|Add1~132\,
	cin1 => \b2v_inst|Add1~132COUT1_226\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst|Add1~135_combout\,
	cout0 => \b2v_inst|Add1~137\,
	cout1 => \b2v_inst|Add1~137COUT1_228\);

-- Location: LC_X22_Y8_N0
\b2v_inst|ReceiveData:cnt[27]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|ReceiveData:cnt[27]~regout\ = DFFEAS((\b2v_inst|Add1~135_combout\ & (!\Data_in~combout\ & (\b2v_inst|suspicious_start~regout\ & \b2v_inst|Equal1~10_combout\))), GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , 
-- \b2v_inst|ReceiveData:cnt[30]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	dataa => \b2v_inst|Add1~135_combout\,
	datab => \Data_in~combout\,
	datac => \b2v_inst|suspicious_start~regout\,
	datad => \b2v_inst|Equal1~10_combout\,
	aclr => \RST~combout\,
	ena => \b2v_inst|ReceiveData:cnt[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|ReceiveData:cnt[27]~regout\);

-- Location: LC_X23_Y4_N2
\b2v_inst|Add1~140\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|Add1~140_combout\ = \b2v_inst|ReceiveData:cnt[28]~regout\ $ ((((!(!\b2v_inst|Add1~127\ & \b2v_inst|Add1~137\) # (\b2v_inst|Add1~127\ & \b2v_inst|Add1~137COUT1_228\)))))
-- \b2v_inst|Add1~142\ = CARRY((\b2v_inst|ReceiveData:cnt[28]~regout\ & ((!\b2v_inst|Add1~137\))))
-- \b2v_inst|Add1~142COUT1_230\ = CARRY((\b2v_inst|ReceiveData:cnt[28]~regout\ & ((!\b2v_inst|Add1~137COUT1_228\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|ReceiveData:cnt[28]~regout\,
	cin => \b2v_inst|Add1~127\,
	cin0 => \b2v_inst|Add1~137\,
	cin1 => \b2v_inst|Add1~137COUT1_228\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst|Add1~140_combout\,
	cout0 => \b2v_inst|Add1~142\,
	cout1 => \b2v_inst|Add1~142COUT1_230\);

-- Location: LC_X23_Y4_N8
\b2v_inst|ReceiveData:cnt[31]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|ReceiveData:cnt[31]~regout\ = DFFEAS((!\Data_in~combout\ & (\b2v_inst|Add1~155_combout\ & (\b2v_inst|Equal1~10_combout\ & \b2v_inst|suspicious_start~regout\))), GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , 
-- \b2v_inst|ReceiveData:cnt[30]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	dataa => \Data_in~combout\,
	datab => \b2v_inst|Add1~155_combout\,
	datac => \b2v_inst|Equal1~10_combout\,
	datad => \b2v_inst|suspicious_start~regout\,
	aclr => \RST~combout\,
	ena => \b2v_inst|ReceiveData:cnt[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|ReceiveData:cnt[31]~regout\);

-- Location: LC_X23_Y4_N3
\b2v_inst|Add1~145\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|Add1~145_combout\ = (\b2v_inst|ReceiveData:cnt[29]~regout\ $ (((!\b2v_inst|Add1~127\ & \b2v_inst|Add1~142\) # (\b2v_inst|Add1~127\ & \b2v_inst|Add1~142COUT1_230\))))
-- \b2v_inst|Add1~147\ = CARRY(((!\b2v_inst|Add1~142\) # (!\b2v_inst|ReceiveData:cnt[29]~regout\)))
-- \b2v_inst|Add1~147COUT1_232\ = CARRY(((!\b2v_inst|Add1~142COUT1_230\) # (!\b2v_inst|ReceiveData:cnt[29]~regout\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|ReceiveData:cnt[29]~regout\,
	cin => \b2v_inst|Add1~127\,
	cin0 => \b2v_inst|Add1~142\,
	cin1 => \b2v_inst|Add1~142COUT1_230\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst|Add1~145_combout\,
	cout0 => \b2v_inst|Add1~147\,
	cout1 => \b2v_inst|Add1~147COUT1_232\);

-- Location: LC_X22_Y8_N7
\b2v_inst|ReceiveData:cnt[29]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|ReceiveData:cnt[29]~regout\ = DFFEAS((\b2v_inst|suspicious_start~regout\ & (\b2v_inst|Equal1~10_combout\ & (!\Data_in~combout\ & \b2v_inst|Add1~145_combout\))), GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , 
-- \b2v_inst|ReceiveData:cnt[30]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0800",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	dataa => \b2v_inst|suspicious_start~regout\,
	datab => \b2v_inst|Equal1~10_combout\,
	datac => \Data_in~combout\,
	datad => \b2v_inst|Add1~145_combout\,
	aclr => \RST~combout\,
	ena => \b2v_inst|ReceiveData:cnt[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|ReceiveData:cnt[29]~regout\);

-- Location: LC_X23_Y4_N4
\b2v_inst|Add1~150\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|Add1~150_combout\ = \b2v_inst|ReceiveData:cnt[30]~regout\ $ ((((!(!\b2v_inst|Add1~127\ & \b2v_inst|Add1~147\) # (\b2v_inst|Add1~127\ & \b2v_inst|Add1~147COUT1_232\)))))
-- \b2v_inst|Add1~152\ = CARRY((\b2v_inst|ReceiveData:cnt[30]~regout\ & ((!\b2v_inst|Add1~147COUT1_232\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|ReceiveData:cnt[30]~regout\,
	cin => \b2v_inst|Add1~127\,
	cin0 => \b2v_inst|Add1~147\,
	cin1 => \b2v_inst|Add1~147COUT1_232\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst|Add1~150_combout\,
	cout => \b2v_inst|Add1~152\);

-- Location: LC_X23_Y4_N7
\b2v_inst|ReceiveData:cnt[30]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|ReceiveData:cnt[30]~regout\ = DFFEAS((!\Data_in~combout\ & (\b2v_inst|Add1~150_combout\ & (\b2v_inst|Equal1~10_combout\ & \b2v_inst|suspicious_start~regout\))), GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , 
-- \b2v_inst|ReceiveData:cnt[30]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	dataa => \Data_in~combout\,
	datab => \b2v_inst|Add1~150_combout\,
	datac => \b2v_inst|Equal1~10_combout\,
	datad => \b2v_inst|suspicious_start~regout\,
	aclr => \RST~combout\,
	ena => \b2v_inst|ReceiveData:cnt[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|ReceiveData:cnt[30]~regout\);

-- Location: LC_X23_Y4_N5
\b2v_inst|Add1~155\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|Add1~155_combout\ = (\b2v_inst|ReceiveData:cnt[31]~regout\ $ ((\b2v_inst|Add1~152\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|ReceiveData:cnt[31]~regout\,
	cin => \b2v_inst|Add1~152\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst|Add1~155_combout\);

-- Location: LC_X23_Y4_N6
\b2v_inst|Equal1~9\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|Equal1~9_combout\ = (\b2v_inst|Add1~140_combout\) # ((\b2v_inst|Add1~155_combout\) # ((\b2v_inst|Add1~150_combout\) # (\b2v_inst|Add1~145_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add1~140_combout\,
	datab => \b2v_inst|Add1~155_combout\,
	datac => \b2v_inst|Add1~150_combout\,
	datad => \b2v_inst|Add1~145_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst|Equal1~9_combout\);

-- Location: LC_X22_Y4_N7
\b2v_inst|Equal1~5\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|Equal1~5_combout\ = (\b2v_inst|Add1~95_combout\) # ((\b2v_inst|Add1~90_combout\) # ((\b2v_inst|Add1~85_combout\) # (\b2v_inst|Add1~80_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add1~95_combout\,
	datab => \b2v_inst|Add1~90_combout\,
	datac => \b2v_inst|Add1~85_combout\,
	datad => \b2v_inst|Add1~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst|Equal1~5_combout\);

-- Location: LC_X22_Y4_N1
\b2v_inst|Equal1~6\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|Equal1~6_combout\ = (((\b2v_inst|Add1~100_combout\) # (\b2v_inst|Add1~105_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|Add1~100_combout\,
	datad => \b2v_inst|Add1~105_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst|Equal1~6_combout\);

-- Location: LC_X22_Y4_N2
\b2v_inst|Equal1~7\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|Equal1~7_combout\ = (\b2v_inst|Add1~115_combout\) # ((\b2v_inst|Add1~110_combout\) # ((\b2v_inst|Equal1~5_combout\) # (\b2v_inst|Equal1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add1~115_combout\,
	datab => \b2v_inst|Add1~110_combout\,
	datac => \b2v_inst|Equal1~5_combout\,
	datad => \b2v_inst|Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst|Equal1~7_combout\);

-- Location: LC_X23_Y4_N9
\b2v_inst|Equal1~8\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|Equal1~8_combout\ = (\b2v_inst|Add1~135_combout\) # ((\b2v_inst|Add1~130_combout\) # ((\b2v_inst|Add1~120_combout\) # (\b2v_inst|Add1~125_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add1~135_combout\,
	datab => \b2v_inst|Add1~130_combout\,
	datac => \b2v_inst|Add1~120_combout\,
	datad => \b2v_inst|Add1~125_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst|Equal1~8_combout\);

-- Location: LC_X23_Y7_N1
\b2v_inst|Equal1~0\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|Equal1~0_combout\ = (\b2v_inst|Add1~0_combout\) # (((!\b2v_inst|Add1~15_combout\) # (!\b2v_inst|Add1~5_combout\)) # (!\b2v_inst|Add1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bfff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add1~0_combout\,
	datab => \b2v_inst|Add1~10_combout\,
	datac => \b2v_inst|Add1~5_combout\,
	datad => \b2v_inst|Add1~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst|Equal1~0_combout\);

-- Location: LC_X22_Y7_N5
\b2v_inst|Equal1~3\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|Equal1~3_combout\ = (\b2v_inst|Add1~65_combout\) # ((\b2v_inst|Add1~60_combout\) # ((\b2v_inst|Add1~70_combout\) # (\b2v_inst|Add1~75_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add1~65_combout\,
	datab => \b2v_inst|Add1~60_combout\,
	datac => \b2v_inst|Add1~70_combout\,
	datad => \b2v_inst|Add1~75_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst|Equal1~3_combout\);

-- Location: LC_X22_Y7_N9
\b2v_inst|Equal1~2\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|Equal1~2_combout\ = (\b2v_inst|Add1~50_combout\) # ((\b2v_inst|Add1~55_combout\) # ((\b2v_inst|Add1~45_combout\) # (\b2v_inst|Add1~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add1~50_combout\,
	datab => \b2v_inst|Add1~55_combout\,
	datac => \b2v_inst|Add1~45_combout\,
	datad => \b2v_inst|Add1~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst|Equal1~2_combout\);

-- Location: LC_X22_Y7_N1
\b2v_inst|Equal1~1\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|Equal1~1_combout\ = (\b2v_inst|Add1~20_combout\) # ((\b2v_inst|Add1~30_combout\) # ((\b2v_inst|Add1~35_combout\) # (\b2v_inst|Add1~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add1~20_combout\,
	datab => \b2v_inst|Add1~30_combout\,
	datac => \b2v_inst|Add1~35_combout\,
	datad => \b2v_inst|Add1~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst|Equal1~1_combout\);

-- Location: LC_X22_Y7_N2
\b2v_inst|Equal1~4\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|Equal1~4_combout\ = (\b2v_inst|Equal1~0_combout\) # ((\b2v_inst|Equal1~3_combout\) # ((\b2v_inst|Equal1~2_combout\) # (\b2v_inst|Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Equal1~0_combout\,
	datab => \b2v_inst|Equal1~3_combout\,
	datac => \b2v_inst|Equal1~2_combout\,
	datad => \b2v_inst|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst|Equal1~4_combout\);

-- Location: LC_X15_Y4_N9
\b2v_inst|Equal1~10\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|Equal1~10_combout\ = (\b2v_inst|Equal1~9_combout\) # ((\b2v_inst|Equal1~7_combout\) # ((\b2v_inst|Equal1~8_combout\) # (\b2v_inst|Equal1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Equal1~9_combout\,
	datab => \b2v_inst|Equal1~7_combout\,
	datac => \b2v_inst|Equal1~8_combout\,
	datad => \b2v_inst|Equal1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst|Equal1~10_combout\);

-- Location: LC_X19_Y7_N1
\b2v_inst|Selector3~0\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|Selector3~0_combout\ = ((!\Data_in~combout\ & (!\b2v_inst|Equal1~10_combout\ & \b2v_inst|suspicious_start~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0300",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Data_in~combout\,
	datac => \b2v_inst|Equal1~10_combout\,
	datad => \b2v_inst|suspicious_start~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst|Selector3~0_combout\);

-- Location: LC_X19_Y7_N5
\b2v_inst|Selector3~2\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|Selector3~2_combout\ = ((!\b2v_inst|Selector3~1_combout\ & ((\b2v_inst|state.r_start~regout\) # (!\b2v_inst|Selector3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a0f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|state.r_start~regout\,
	datac => \b2v_inst|Selector3~1_combout\,
	datad => \b2v_inst|Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst|Selector3~2_combout\);

-- Location: LC_X19_Y7_N3
\b2v_inst|state.r_sample\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|state.r_sample~regout\ = DFFEAS((!\b2v_inst|rbuf[7]~1_combout\ & ((\b2v_inst|Selector3~2_combout\ & (\b2v_inst|state.r_sample~regout\)) # (!\b2v_inst|Selector3~2_combout\ & ((!\b2v_inst|Selector3~1_combout\))))), GLOBAL(\b2v_inst2|bclk~regout\), 
-- !GLOBAL(\RST~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4405",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	dataa => \b2v_inst|rbuf[7]~1_combout\,
	datab => \b2v_inst|state.r_sample~regout\,
	datac => \b2v_inst|Selector3~1_combout\,
	datad => \b2v_inst|Selector3~2_combout\,
	aclr => \RST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|state.r_sample~regout\);

-- Location: LC_X17_Y6_N6
\b2v_inst|ReceiveData:rbitcnt[14]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|ReceiveData:rbitcnt[14]~regout\ = DFFEAS((((\b2v_inst|Add2~70_combout\))), GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , \b2v_inst|state.r_sample~regout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	datad => \b2v_inst|Add2~70_combout\,
	aclr => \RST~combout\,
	ena => \b2v_inst|state.r_sample~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|ReceiveData:rbitcnt[14]~regout\);

-- Location: LC_X16_Y7_N5
\b2v_inst|Add2~10\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|Add2~10_combout\ = (\b2v_inst|ReceiveData:rbitcnt[1]~regout\ $ ((\b2v_inst|Add2~7\)))
-- \b2v_inst|Add2~12\ = CARRY(((!\b2v_inst|Add2~7\) # (!\b2v_inst|ReceiveData:rbitcnt[1]~regout\)))
-- \b2v_inst|Add2~12COUT1_186\ = CARRY(((!\b2v_inst|Add2~7\) # (!\b2v_inst|ReceiveData:rbitcnt[1]~regout\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|ReceiveData:rbitcnt[1]~regout\,
	cin => \b2v_inst|Add2~7\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst|Add2~10_combout\,
	cout0 => \b2v_inst|Add2~12\,
	cout1 => \b2v_inst|Add2~12COUT1_186\);

-- Location: LC_X16_Y7_N6
\b2v_inst|Add2~15\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|Add2~15_combout\ = \b2v_inst|ReceiveData:rbitcnt[2]~regout\ $ ((((!(!\b2v_inst|Add2~7\ & \b2v_inst|Add2~12\) # (\b2v_inst|Add2~7\ & \b2v_inst|Add2~12COUT1_186\)))))
-- \b2v_inst|Add2~17\ = CARRY((\b2v_inst|ReceiveData:rbitcnt[2]~regout\ & ((!\b2v_inst|Add2~12\))))
-- \b2v_inst|Add2~17COUT1_188\ = CARRY((\b2v_inst|ReceiveData:rbitcnt[2]~regout\ & ((!\b2v_inst|Add2~12COUT1_186\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|ReceiveData:rbitcnt[2]~regout\,
	cin => \b2v_inst|Add2~7\,
	cin0 => \b2v_inst|Add2~12\,
	cin1 => \b2v_inst|Add2~12COUT1_186\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst|Add2~15_combout\,
	cout0 => \b2v_inst|Add2~17\,
	cout1 => \b2v_inst|Add2~17COUT1_188\);

-- Location: LC_X18_Y1_N1
\b2v_inst|Decoder0~0\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|Decoder0~0_combout\ = ((!\b2v_inst|Equal3~10_combout\ & (\b2v_inst|state.r_sample~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3030",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|Equal3~10_combout\,
	datac => \b2v_inst|state.r_sample~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst|Decoder0~0_combout\);

-- Location: LC_X18_Y1_N8
\b2v_inst|ReceiveData:rbitcnt[2]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|Decoder0~3\ = (!\b2v_inst|ReceiveData:rbitcnt[1]~regout\ & (!\b2v_inst|ReceiveData:rbitcnt[0]~regout\ & (C1_\ReceiveData:rbitcnt[2] & \b2v_inst|Decoder0~0_combout\)))
-- \b2v_inst|ReceiveData:rbitcnt[2]~regout\ = DFFEAS(\b2v_inst|Decoder0~3\, GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , \b2v_inst|state.r_sample~regout\, \b2v_inst|Add2~15_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	dataa => \b2v_inst|ReceiveData:rbitcnt[1]~regout\,
	datab => \b2v_inst|ReceiveData:rbitcnt[0]~regout\,
	datac => \b2v_inst|Add2~15_combout\,
	datad => \b2v_inst|Decoder0~0_combout\,
	aclr => \RST~combout\,
	sload => VCC,
	ena => \b2v_inst|state.r_sample~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst|Decoder0~3\,
	regout => \b2v_inst|ReceiveData:rbitcnt[2]~regout\);

-- Location: LC_X18_Y1_N6
\b2v_inst|ReceiveData:rbitcnt[1]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|Decoder0~2\ = (\b2v_inst|ReceiveData:rbitcnt[2]~regout\ & (!\b2v_inst|ReceiveData:rbitcnt[0]~regout\ & (C1_\ReceiveData:rbitcnt[1] & \b2v_inst|Decoder0~0_combout\)))
-- \b2v_inst|ReceiveData:rbitcnt[1]~regout\ = DFFEAS(\b2v_inst|Decoder0~2\, GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , \b2v_inst|state.r_sample~regout\, \b2v_inst|Add2~10_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	dataa => \b2v_inst|ReceiveData:rbitcnt[2]~regout\,
	datab => \b2v_inst|ReceiveData:rbitcnt[0]~regout\,
	datac => \b2v_inst|Add2~10_combout\,
	datad => \b2v_inst|Decoder0~0_combout\,
	aclr => \RST~combout\,
	sload => VCC,
	ena => \b2v_inst|state.r_sample~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst|Decoder0~2\,
	regout => \b2v_inst|ReceiveData:rbitcnt[1]~regout\);

-- Location: LC_X16_Y7_N4
\b2v_inst|Add2~5\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|Add2~5_combout\ = \b2v_inst|ReceiveData:rbitcnt[0]~regout\ $ ((!\b2v_inst|Equal3~10_combout\))
-- \b2v_inst|Add2~7\ = CARRY((\b2v_inst|ReceiveData:rbitcnt[0]~regout\ & (!\b2v_inst|Equal3~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9922",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|ReceiveData:rbitcnt[0]~regout\,
	datab => \b2v_inst|Equal3~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst|Add2~5_combout\,
	cout => \b2v_inst|Add2~7\);

-- Location: LC_X18_Y1_N9
\b2v_inst|ReceiveData:rbitcnt[0]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|Decoder0~1\ = (!\b2v_inst|ReceiveData:rbitcnt[1]~regout\ & (\b2v_inst|ReceiveData:rbitcnt[2]~regout\ & (C1_\ReceiveData:rbitcnt[0] & \b2v_inst|Decoder0~0_combout\)))
-- \b2v_inst|ReceiveData:rbitcnt[0]~regout\ = DFFEAS(\b2v_inst|Decoder0~1\, GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , \b2v_inst|state.r_sample~regout\, \b2v_inst|Add2~5_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	dataa => \b2v_inst|ReceiveData:rbitcnt[1]~regout\,
	datab => \b2v_inst|ReceiveData:rbitcnt[2]~regout\,
	datac => \b2v_inst|Add2~5_combout\,
	datad => \b2v_inst|Decoder0~0_combout\,
	aclr => \RST~combout\,
	sload => VCC,
	ena => \b2v_inst|state.r_sample~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst|Decoder0~1\,
	regout => \b2v_inst|ReceiveData:rbitcnt[0]~regout\);

-- Location: LC_X17_Y5_N6
\b2v_inst|ReceiveData:rbitcnt[19]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|ReceiveData:rbitcnt[19]~regout\ = DFFEAS(GND, GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , \b2v_inst|state.r_sample~regout\, \b2v_inst|Add2~95_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	datac => \b2v_inst|Add2~95_combout\,
	aclr => \RST~combout\,
	sload => VCC,
	ena => \b2v_inst|state.r_sample~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|ReceiveData:rbitcnt[19]~regout\);

-- Location: LC_X16_Y6_N5
\b2v_inst|Add2~55\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|Add2~55_combout\ = (\b2v_inst|ReceiveData:rbitcnt[11]~regout\ $ ((\b2v_inst|Add2~52\)))
-- \b2v_inst|Add2~57\ = CARRY(((!\b2v_inst|Add2~52\) # (!\b2v_inst|ReceiveData:rbitcnt[11]~regout\)))
-- \b2v_inst|Add2~57COUT1_202\ = CARRY(((!\b2v_inst|Add2~52\) # (!\b2v_inst|ReceiveData:rbitcnt[11]~regout\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|ReceiveData:rbitcnt[11]~regout\,
	cin => \b2v_inst|Add2~52\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst|Add2~55_combout\,
	cout0 => \b2v_inst|Add2~57\,
	cout1 => \b2v_inst|Add2~57COUT1_202\);

-- Location: LC_X17_Y7_N3
\b2v_inst|ReceiveData:rbitcnt[11]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|ReceiveData:rbitcnt[11]~regout\ = DFFEAS(GND, GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , \b2v_inst|state.r_sample~regout\, \b2v_inst|Add2~55_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	datac => \b2v_inst|Add2~55_combout\,
	aclr => \RST~combout\,
	sload => VCC,
	ena => \b2v_inst|state.r_sample~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|ReceiveData:rbitcnt[11]~regout\);

-- Location: LC_X16_Y6_N6
\b2v_inst|Add2~60\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|Add2~60_combout\ = \b2v_inst|ReceiveData:rbitcnt[12]~regout\ $ ((((!(!\b2v_inst|Add2~52\ & \b2v_inst|Add2~57\) # (\b2v_inst|Add2~52\ & \b2v_inst|Add2~57COUT1_202\)))))
-- \b2v_inst|Add2~62\ = CARRY((\b2v_inst|ReceiveData:rbitcnt[12]~regout\ & ((!\b2v_inst|Add2~57\))))
-- \b2v_inst|Add2~62COUT1_204\ = CARRY((\b2v_inst|ReceiveData:rbitcnt[12]~regout\ & ((!\b2v_inst|Add2~57COUT1_202\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|ReceiveData:rbitcnt[12]~regout\,
	cin => \b2v_inst|Add2~52\,
	cin0 => \b2v_inst|Add2~57\,
	cin1 => \b2v_inst|Add2~57COUT1_202\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst|Add2~60_combout\,
	cout0 => \b2v_inst|Add2~62\,
	cout1 => \b2v_inst|Add2~62COUT1_204\);

-- Location: LC_X17_Y6_N1
\b2v_inst|ReceiveData:rbitcnt[12]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|ReceiveData:rbitcnt[12]~regout\ = DFFEAS(GND, GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , \b2v_inst|state.r_sample~regout\, \b2v_inst|Add2~60_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	datac => \b2v_inst|Add2~60_combout\,
	aclr => \RST~combout\,
	sload => VCC,
	ena => \b2v_inst|state.r_sample~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|ReceiveData:rbitcnt[12]~regout\);

-- Location: LC_X16_Y6_N7
\b2v_inst|Add2~65\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|Add2~65_combout\ = \b2v_inst|ReceiveData:rbitcnt[13]~regout\ $ (((((!\b2v_inst|Add2~52\ & \b2v_inst|Add2~62\) # (\b2v_inst|Add2~52\ & \b2v_inst|Add2~62COUT1_204\)))))
-- \b2v_inst|Add2~67\ = CARRY(((!\b2v_inst|Add2~62\)) # (!\b2v_inst|ReceiveData:rbitcnt[13]~regout\))
-- \b2v_inst|Add2~67COUT1_206\ = CARRY(((!\b2v_inst|Add2~62COUT1_204\)) # (!\b2v_inst|ReceiveData:rbitcnt[13]~regout\))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|ReceiveData:rbitcnt[13]~regout\,
	cin => \b2v_inst|Add2~52\,
	cin0 => \b2v_inst|Add2~62\,
	cin1 => \b2v_inst|Add2~62COUT1_204\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst|Add2~65_combout\,
	cout0 => \b2v_inst|Add2~67\,
	cout1 => \b2v_inst|Add2~67COUT1_206\);

-- Location: LC_X17_Y6_N8
\b2v_inst|ReceiveData:rbitcnt[13]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|ReceiveData:rbitcnt[13]~regout\ = DFFEAS((((\b2v_inst|Add2~65_combout\))), GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , \b2v_inst|state.r_sample~regout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	datad => \b2v_inst|Add2~65_combout\,
	aclr => \RST~combout\,
	ena => \b2v_inst|state.r_sample~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|ReceiveData:rbitcnt[13]~regout\);

-- Location: LC_X16_Y6_N8
\b2v_inst|Add2~70\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|Add2~70_combout\ = \b2v_inst|ReceiveData:rbitcnt[14]~regout\ $ ((((!(!\b2v_inst|Add2~52\ & \b2v_inst|Add2~67\) # (\b2v_inst|Add2~52\ & \b2v_inst|Add2~67COUT1_206\)))))
-- \b2v_inst|Add2~72\ = CARRY((\b2v_inst|ReceiveData:rbitcnt[14]~regout\ & ((!\b2v_inst|Add2~67\))))
-- \b2v_inst|Add2~72COUT1_208\ = CARRY((\b2v_inst|ReceiveData:rbitcnt[14]~regout\ & ((!\b2v_inst|Add2~67COUT1_206\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|ReceiveData:rbitcnt[14]~regout\,
	cin => \b2v_inst|Add2~52\,
	cin0 => \b2v_inst|Add2~67\,
	cin1 => \b2v_inst|Add2~67COUT1_206\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst|Add2~70_combout\,
	cout0 => \b2v_inst|Add2~72\,
	cout1 => \b2v_inst|Add2~72COUT1_208\);

-- Location: LC_X16_Y6_N9
\b2v_inst|Add2~75\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|Add2~75_combout\ = (\b2v_inst|ReceiveData:rbitcnt[15]~regout\ $ (((!\b2v_inst|Add2~52\ & \b2v_inst|Add2~72\) # (\b2v_inst|Add2~52\ & \b2v_inst|Add2~72COUT1_208\))))
-- \b2v_inst|Add2~77\ = CARRY(((!\b2v_inst|Add2~72COUT1_208\) # (!\b2v_inst|ReceiveData:rbitcnt[15]~regout\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|ReceiveData:rbitcnt[15]~regout\,
	cin => \b2v_inst|Add2~52\,
	cin0 => \b2v_inst|Add2~72\,
	cin1 => \b2v_inst|Add2~72COUT1_208\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst|Add2~75_combout\,
	cout => \b2v_inst|Add2~77\);

-- Location: LC_X17_Y6_N0
\b2v_inst|ReceiveData:rbitcnt[15]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|ReceiveData:rbitcnt[15]~regout\ = DFFEAS((((\b2v_inst|Add2~75_combout\))), GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , \b2v_inst|state.r_sample~regout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	datad => \b2v_inst|Add2~75_combout\,
	aclr => \RST~combout\,
	ena => \b2v_inst|state.r_sample~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|ReceiveData:rbitcnt[15]~regout\);

-- Location: LC_X16_Y5_N0
\b2v_inst|Add2~80\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|Add2~80_combout\ = (\b2v_inst|ReceiveData:rbitcnt[16]~regout\ $ ((!\b2v_inst|Add2~77\)))
-- \b2v_inst|Add2~82\ = CARRY(((\b2v_inst|ReceiveData:rbitcnt[16]~regout\ & !\b2v_inst|Add2~77\)))
-- \b2v_inst|Add2~82COUT1_210\ = CARRY(((\b2v_inst|ReceiveData:rbitcnt[16]~regout\ & !\b2v_inst|Add2~77\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|ReceiveData:rbitcnt[16]~regout\,
	cin => \b2v_inst|Add2~77\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst|Add2~80_combout\,
	cout0 => \b2v_inst|Add2~82\,
	cout1 => \b2v_inst|Add2~82COUT1_210\);

-- Location: LC_X17_Y7_N2
\b2v_inst|ReceiveData:rbitcnt[16]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|ReceiveData:rbitcnt[16]~regout\ = DFFEAS(GND, GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , \b2v_inst|state.r_sample~regout\, \b2v_inst|Add2~80_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	datac => \b2v_inst|Add2~80_combout\,
	aclr => \RST~combout\,
	sload => VCC,
	ena => \b2v_inst|state.r_sample~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|ReceiveData:rbitcnt[16]~regout\);

-- Location: LC_X16_Y5_N1
\b2v_inst|Add2~85\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|Add2~85_combout\ = \b2v_inst|ReceiveData:rbitcnt[17]~regout\ $ (((((!\b2v_inst|Add2~77\ & \b2v_inst|Add2~82\) # (\b2v_inst|Add2~77\ & \b2v_inst|Add2~82COUT1_210\)))))
-- \b2v_inst|Add2~87\ = CARRY(((!\b2v_inst|Add2~82\)) # (!\b2v_inst|ReceiveData:rbitcnt[17]~regout\))
-- \b2v_inst|Add2~87COUT1_212\ = CARRY(((!\b2v_inst|Add2~82COUT1_210\)) # (!\b2v_inst|ReceiveData:rbitcnt[17]~regout\))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|ReceiveData:rbitcnt[17]~regout\,
	cin => \b2v_inst|Add2~77\,
	cin0 => \b2v_inst|Add2~82\,
	cin1 => \b2v_inst|Add2~82COUT1_210\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst|Add2~85_combout\,
	cout0 => \b2v_inst|Add2~87\,
	cout1 => \b2v_inst|Add2~87COUT1_212\);

-- Location: LC_X17_Y5_N3
\b2v_inst|ReceiveData:rbitcnt[17]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|ReceiveData:rbitcnt[17]~regout\ = DFFEAS((((\b2v_inst|Add2~85_combout\))), GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , \b2v_inst|state.r_sample~regout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	datad => \b2v_inst|Add2~85_combout\,
	aclr => \RST~combout\,
	ena => \b2v_inst|state.r_sample~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|ReceiveData:rbitcnt[17]~regout\);

-- Location: LC_X16_Y5_N2
\b2v_inst|Add2~90\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|Add2~90_combout\ = \b2v_inst|ReceiveData:rbitcnt[18]~regout\ $ ((((!(!\b2v_inst|Add2~77\ & \b2v_inst|Add2~87\) # (\b2v_inst|Add2~77\ & \b2v_inst|Add2~87COUT1_212\)))))
-- \b2v_inst|Add2~92\ = CARRY((\b2v_inst|ReceiveData:rbitcnt[18]~regout\ & ((!\b2v_inst|Add2~87\))))
-- \b2v_inst|Add2~92COUT1_214\ = CARRY((\b2v_inst|ReceiveData:rbitcnt[18]~regout\ & ((!\b2v_inst|Add2~87COUT1_212\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|ReceiveData:rbitcnt[18]~regout\,
	cin => \b2v_inst|Add2~77\,
	cin0 => \b2v_inst|Add2~87\,
	cin1 => \b2v_inst|Add2~87COUT1_212\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst|Add2~90_combout\,
	cout0 => \b2v_inst|Add2~92\,
	cout1 => \b2v_inst|Add2~92COUT1_214\);

-- Location: LC_X17_Y5_N1
\b2v_inst|ReceiveData:rbitcnt[18]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|ReceiveData:rbitcnt[18]~regout\ = DFFEAS(GND, GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , \b2v_inst|state.r_sample~regout\, \b2v_inst|Add2~90_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	datac => \b2v_inst|Add2~90_combout\,
	aclr => \RST~combout\,
	sload => VCC,
	ena => \b2v_inst|state.r_sample~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|ReceiveData:rbitcnt[18]~regout\);

-- Location: LC_X16_Y5_N3
\b2v_inst|Add2~95\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|Add2~95_combout\ = \b2v_inst|ReceiveData:rbitcnt[19]~regout\ $ (((((!\b2v_inst|Add2~77\ & \b2v_inst|Add2~92\) # (\b2v_inst|Add2~77\ & \b2v_inst|Add2~92COUT1_214\)))))
-- \b2v_inst|Add2~97\ = CARRY(((!\b2v_inst|Add2~92\)) # (!\b2v_inst|ReceiveData:rbitcnt[19]~regout\))
-- \b2v_inst|Add2~97COUT1_216\ = CARRY(((!\b2v_inst|Add2~92COUT1_214\)) # (!\b2v_inst|ReceiveData:rbitcnt[19]~regout\))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|ReceiveData:rbitcnt[19]~regout\,
	cin => \b2v_inst|Add2~77\,
	cin0 => \b2v_inst|Add2~92\,
	cin1 => \b2v_inst|Add2~92COUT1_214\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst|Add2~95_combout\,
	cout0 => \b2v_inst|Add2~97\,
	cout1 => \b2v_inst|Add2~97COUT1_216\);

-- Location: LC_X17_Y5_N4
\b2v_inst|Equal2~5\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|Equal2~5_combout\ = (!\b2v_inst|Add2~95_combout\ & (!\b2v_inst|Add2~90_combout\ & (!\b2v_inst|Add2~80_combout\ & !\b2v_inst|Add2~85_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add2~95_combout\,
	datab => \b2v_inst|Add2~90_combout\,
	datac => \b2v_inst|Add2~80_combout\,
	datad => \b2v_inst|Add2~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst|Equal2~5_combout\);

-- Location: LC_X18_Y1_N0
\b2v_inst|ReceiveData:rbitcnt[30]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|ReceiveData:rbitcnt[30]~regout\ = DFFEAS((((\b2v_inst|Add2~150_combout\))), GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , \b2v_inst|state.r_sample~regout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	datad => \b2v_inst|Add2~150_combout\,
	aclr => \RST~combout\,
	ena => \b2v_inst|state.r_sample~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|ReceiveData:rbitcnt[30]~regout\);

-- Location: LC_X16_Y5_N4
\b2v_inst|Add2~100\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|Add2~100_combout\ = \b2v_inst|ReceiveData:rbitcnt[20]~regout\ $ ((((!(!\b2v_inst|Add2~77\ & \b2v_inst|Add2~97\) # (\b2v_inst|Add2~77\ & \b2v_inst|Add2~97COUT1_216\)))))
-- \b2v_inst|Add2~102\ = CARRY((\b2v_inst|ReceiveData:rbitcnt[20]~regout\ & ((!\b2v_inst|Add2~97COUT1_216\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|ReceiveData:rbitcnt[20]~regout\,
	cin => \b2v_inst|Add2~77\,
	cin0 => \b2v_inst|Add2~97\,
	cin1 => \b2v_inst|Add2~97COUT1_216\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst|Add2~100_combout\,
	cout => \b2v_inst|Add2~102\);

-- Location: LC_X17_Y5_N2
\b2v_inst|ReceiveData:rbitcnt[20]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|ReceiveData:rbitcnt[20]~regout\ = DFFEAS(GND, GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , \b2v_inst|state.r_sample~regout\, \b2v_inst|Add2~100_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	datac => \b2v_inst|Add2~100_combout\,
	aclr => \RST~combout\,
	sload => VCC,
	ena => \b2v_inst|state.r_sample~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|ReceiveData:rbitcnt[20]~regout\);

-- Location: LC_X16_Y5_N5
\b2v_inst|Add2~105\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|Add2~105_combout\ = \b2v_inst|ReceiveData:rbitcnt[21]~regout\ $ ((((\b2v_inst|Add2~102\))))
-- \b2v_inst|Add2~107\ = CARRY(((!\b2v_inst|Add2~102\)) # (!\b2v_inst|ReceiveData:rbitcnt[21]~regout\))
-- \b2v_inst|Add2~107COUT1_218\ = CARRY(((!\b2v_inst|Add2~102\)) # (!\b2v_inst|ReceiveData:rbitcnt[21]~regout\))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|ReceiveData:rbitcnt[21]~regout\,
	cin => \b2v_inst|Add2~102\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst|Add2~105_combout\,
	cout0 => \b2v_inst|Add2~107\,
	cout1 => \b2v_inst|Add2~107COUT1_218\);

-- Location: LC_X17_Y5_N8
\b2v_inst|ReceiveData:rbitcnt[21]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|ReceiveData:rbitcnt[21]~regout\ = DFFEAS(GND, GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , \b2v_inst|state.r_sample~regout\, \b2v_inst|Add2~105_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	datac => \b2v_inst|Add2~105_combout\,
	aclr => \RST~combout\,
	sload => VCC,
	ena => \b2v_inst|state.r_sample~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|ReceiveData:rbitcnt[21]~regout\);

-- Location: LC_X16_Y5_N6
\b2v_inst|Add2~110\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|Add2~110_combout\ = (\b2v_inst|ReceiveData:rbitcnt[22]~regout\ $ ((!(!\b2v_inst|Add2~102\ & \b2v_inst|Add2~107\) # (\b2v_inst|Add2~102\ & \b2v_inst|Add2~107COUT1_218\))))
-- \b2v_inst|Add2~112\ = CARRY(((\b2v_inst|ReceiveData:rbitcnt[22]~regout\ & !\b2v_inst|Add2~107\)))
-- \b2v_inst|Add2~112COUT1_220\ = CARRY(((\b2v_inst|ReceiveData:rbitcnt[22]~regout\ & !\b2v_inst|Add2~107COUT1_218\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|ReceiveData:rbitcnt[22]~regout\,
	cin => \b2v_inst|Add2~102\,
	cin0 => \b2v_inst|Add2~107\,
	cin1 => \b2v_inst|Add2~107COUT1_218\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst|Add2~110_combout\,
	cout0 => \b2v_inst|Add2~112\,
	cout1 => \b2v_inst|Add2~112COUT1_220\);

-- Location: LC_X17_Y5_N0
\b2v_inst|ReceiveData:rbitcnt[22]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|ReceiveData:rbitcnt[22]~regout\ = DFFEAS((((\b2v_inst|Add2~110_combout\))), GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , \b2v_inst|state.r_sample~regout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	datad => \b2v_inst|Add2~110_combout\,
	aclr => \RST~combout\,
	ena => \b2v_inst|state.r_sample~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|ReceiveData:rbitcnt[22]~regout\);

-- Location: LC_X16_Y5_N7
\b2v_inst|Add2~115\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|Add2~115_combout\ = (\b2v_inst|ReceiveData:rbitcnt[23]~regout\ $ (((!\b2v_inst|Add2~102\ & \b2v_inst|Add2~112\) # (\b2v_inst|Add2~102\ & \b2v_inst|Add2~112COUT1_220\))))
-- \b2v_inst|Add2~117\ = CARRY(((!\b2v_inst|Add2~112\) # (!\b2v_inst|ReceiveData:rbitcnt[23]~regout\)))
-- \b2v_inst|Add2~117COUT1_222\ = CARRY(((!\b2v_inst|Add2~112COUT1_220\) # (!\b2v_inst|ReceiveData:rbitcnt[23]~regout\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|ReceiveData:rbitcnt[23]~regout\,
	cin => \b2v_inst|Add2~102\,
	cin0 => \b2v_inst|Add2~112\,
	cin1 => \b2v_inst|Add2~112COUT1_220\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst|Add2~115_combout\,
	cout0 => \b2v_inst|Add2~117\,
	cout1 => \b2v_inst|Add2~117COUT1_222\);

-- Location: LC_X17_Y5_N9
\b2v_inst|ReceiveData:rbitcnt[23]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|ReceiveData:rbitcnt[23]~regout\ = DFFEAS(GND, GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , \b2v_inst|state.r_sample~regout\, \b2v_inst|Add2~115_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	datac => \b2v_inst|Add2~115_combout\,
	aclr => \RST~combout\,
	sload => VCC,
	ena => \b2v_inst|state.r_sample~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|ReceiveData:rbitcnt[23]~regout\);

-- Location: LC_X16_Y5_N8
\b2v_inst|Add2~120\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|Add2~120_combout\ = (\b2v_inst|ReceiveData:rbitcnt[24]~regout\ $ ((!(!\b2v_inst|Add2~102\ & \b2v_inst|Add2~117\) # (\b2v_inst|Add2~102\ & \b2v_inst|Add2~117COUT1_222\))))
-- \b2v_inst|Add2~122\ = CARRY(((\b2v_inst|ReceiveData:rbitcnt[24]~regout\ & !\b2v_inst|Add2~117\)))
-- \b2v_inst|Add2~122COUT1_224\ = CARRY(((\b2v_inst|ReceiveData:rbitcnt[24]~regout\ & !\b2v_inst|Add2~117COUT1_222\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|ReceiveData:rbitcnt[24]~regout\,
	cin => \b2v_inst|Add2~102\,
	cin0 => \b2v_inst|Add2~117\,
	cin1 => \b2v_inst|Add2~117COUT1_222\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst|Add2~120_combout\,
	cout0 => \b2v_inst|Add2~122\,
	cout1 => \b2v_inst|Add2~122COUT1_224\);

-- Location: LC_X17_Y5_N5
\b2v_inst|ReceiveData:rbitcnt[24]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|ReceiveData:rbitcnt[24]~regout\ = DFFEAS(GND, GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , \b2v_inst|state.r_sample~regout\, \b2v_inst|Add2~120_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	datac => \b2v_inst|Add2~120_combout\,
	aclr => \RST~combout\,
	sload => VCC,
	ena => \b2v_inst|state.r_sample~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|ReceiveData:rbitcnt[24]~regout\);

-- Location: LC_X16_Y5_N9
\b2v_inst|Add2~125\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|Add2~125_combout\ = (\b2v_inst|ReceiveData:rbitcnt[25]~regout\ $ (((!\b2v_inst|Add2~102\ & \b2v_inst|Add2~122\) # (\b2v_inst|Add2~102\ & \b2v_inst|Add2~122COUT1_224\))))
-- \b2v_inst|Add2~127\ = CARRY(((!\b2v_inst|Add2~122COUT1_224\) # (!\b2v_inst|ReceiveData:rbitcnt[25]~regout\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|ReceiveData:rbitcnt[25]~regout\,
	cin => \b2v_inst|Add2~102\,
	cin0 => \b2v_inst|Add2~122\,
	cin1 => \b2v_inst|Add2~122COUT1_224\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst|Add2~125_combout\,
	cout => \b2v_inst|Add2~127\);

-- Location: LC_X16_Y2_N4
\b2v_inst|ReceiveData:rbitcnt[25]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|ReceiveData:rbitcnt[25]~regout\ = DFFEAS(GND, GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , \b2v_inst|state.r_sample~regout\, \b2v_inst|Add2~125_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	datac => \b2v_inst|Add2~125_combout\,
	aclr => \RST~combout\,
	sload => VCC,
	ena => \b2v_inst|state.r_sample~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|ReceiveData:rbitcnt[25]~regout\);

-- Location: LC_X16_Y4_N0
\b2v_inst|Add2~130\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|Add2~130_combout\ = \b2v_inst|ReceiveData:rbitcnt[26]~regout\ $ ((((!\b2v_inst|Add2~127\))))
-- \b2v_inst|Add2~132\ = CARRY((\b2v_inst|ReceiveData:rbitcnt[26]~regout\ & ((!\b2v_inst|Add2~127\))))
-- \b2v_inst|Add2~132COUT1_226\ = CARRY((\b2v_inst|ReceiveData:rbitcnt[26]~regout\ & ((!\b2v_inst|Add2~127\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|ReceiveData:rbitcnt[26]~regout\,
	cin => \b2v_inst|Add2~127\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst|Add2~130_combout\,
	cout0 => \b2v_inst|Add2~132\,
	cout1 => \b2v_inst|Add2~132COUT1_226\);

-- Location: LC_X16_Y4_N7
\b2v_inst|ReceiveData:rbitcnt[26]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|ReceiveData:rbitcnt[26]~regout\ = DFFEAS((((\b2v_inst|Add2~130_combout\))), GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , \b2v_inst|state.r_sample~regout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	datad => \b2v_inst|Add2~130_combout\,
	aclr => \RST~combout\,
	ena => \b2v_inst|state.r_sample~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|ReceiveData:rbitcnt[26]~regout\);

-- Location: LC_X16_Y4_N1
\b2v_inst|Add2~135\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|Add2~135_combout\ = (\b2v_inst|ReceiveData:rbitcnt[27]~regout\ $ (((!\b2v_inst|Add2~127\ & \b2v_inst|Add2~132\) # (\b2v_inst|Add2~127\ & \b2v_inst|Add2~132COUT1_226\))))
-- \b2v_inst|Add2~137\ = CARRY(((!\b2v_inst|Add2~132\) # (!\b2v_inst|ReceiveData:rbitcnt[27]~regout\)))
-- \b2v_inst|Add2~137COUT1_228\ = CARRY(((!\b2v_inst|Add2~132COUT1_226\) # (!\b2v_inst|ReceiveData:rbitcnt[27]~regout\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|ReceiveData:rbitcnt[27]~regout\,
	cin => \b2v_inst|Add2~127\,
	cin0 => \b2v_inst|Add2~132\,
	cin1 => \b2v_inst|Add2~132COUT1_226\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst|Add2~135_combout\,
	cout0 => \b2v_inst|Add2~137\,
	cout1 => \b2v_inst|Add2~137COUT1_228\);

-- Location: LC_X16_Y4_N8
\b2v_inst|ReceiveData:rbitcnt[27]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|ReceiveData:rbitcnt[27]~regout\ = DFFEAS((((\b2v_inst|Add2~135_combout\))), GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , \b2v_inst|state.r_sample~regout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	datad => \b2v_inst|Add2~135_combout\,
	aclr => \RST~combout\,
	ena => \b2v_inst|state.r_sample~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|ReceiveData:rbitcnt[27]~regout\);

-- Location: LC_X16_Y4_N2
\b2v_inst|Add2~140\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|Add2~140_combout\ = \b2v_inst|ReceiveData:rbitcnt[28]~regout\ $ ((((!(!\b2v_inst|Add2~127\ & \b2v_inst|Add2~137\) # (\b2v_inst|Add2~127\ & \b2v_inst|Add2~137COUT1_228\)))))
-- \b2v_inst|Add2~142\ = CARRY((\b2v_inst|ReceiveData:rbitcnt[28]~regout\ & ((!\b2v_inst|Add2~137\))))
-- \b2v_inst|Add2~142COUT1_230\ = CARRY((\b2v_inst|ReceiveData:rbitcnt[28]~regout\ & ((!\b2v_inst|Add2~137COUT1_228\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|ReceiveData:rbitcnt[28]~regout\,
	cin => \b2v_inst|Add2~127\,
	cin0 => \b2v_inst|Add2~137\,
	cin1 => \b2v_inst|Add2~137COUT1_228\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst|Add2~140_combout\,
	cout0 => \b2v_inst|Add2~142\,
	cout1 => \b2v_inst|Add2~142COUT1_230\);

-- Location: LC_X16_Y2_N2
\b2v_inst|ReceiveData:rbitcnt[28]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|ReceiveData:rbitcnt[28]~regout\ = DFFEAS(GND, GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , \b2v_inst|state.r_sample~regout\, \b2v_inst|Add2~140_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	datac => \b2v_inst|Add2~140_combout\,
	aclr => \RST~combout\,
	sload => VCC,
	ena => \b2v_inst|state.r_sample~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|ReceiveData:rbitcnt[28]~regout\);

-- Location: LC_X16_Y4_N3
\b2v_inst|Add2~145\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|Add2~145_combout\ = (\b2v_inst|ReceiveData:rbitcnt[29]~regout\ $ (((!\b2v_inst|Add2~127\ & \b2v_inst|Add2~142\) # (\b2v_inst|Add2~127\ & \b2v_inst|Add2~142COUT1_230\))))
-- \b2v_inst|Add2~147\ = CARRY(((!\b2v_inst|Add2~142\) # (!\b2v_inst|ReceiveData:rbitcnt[29]~regout\)))
-- \b2v_inst|Add2~147COUT1_232\ = CARRY(((!\b2v_inst|Add2~142COUT1_230\) # (!\b2v_inst|ReceiveData:rbitcnt[29]~regout\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|ReceiveData:rbitcnt[29]~regout\,
	cin => \b2v_inst|Add2~127\,
	cin0 => \b2v_inst|Add2~142\,
	cin1 => \b2v_inst|Add2~142COUT1_230\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst|Add2~145_combout\,
	cout0 => \b2v_inst|Add2~147\,
	cout1 => \b2v_inst|Add2~147COUT1_232\);

-- Location: LC_X17_Y7_N9
\b2v_inst|ReceiveData:rbitcnt[29]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|ReceiveData:rbitcnt[29]~regout\ = DFFEAS((((\b2v_inst|Add2~145_combout\))), GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , \b2v_inst|state.r_sample~regout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	datad => \b2v_inst|Add2~145_combout\,
	aclr => \RST~combout\,
	ena => \b2v_inst|state.r_sample~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|ReceiveData:rbitcnt[29]~regout\);

-- Location: LC_X16_Y4_N4
\b2v_inst|Add2~150\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|Add2~150_combout\ = (\b2v_inst|ReceiveData:rbitcnt[30]~regout\ $ ((!(!\b2v_inst|Add2~127\ & \b2v_inst|Add2~147\) # (\b2v_inst|Add2~127\ & \b2v_inst|Add2~147COUT1_232\))))
-- \b2v_inst|Add2~152\ = CARRY(((\b2v_inst|ReceiveData:rbitcnt[30]~regout\ & !\b2v_inst|Add2~147COUT1_232\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|ReceiveData:rbitcnt[30]~regout\,
	cin => \b2v_inst|Add2~127\,
	cin0 => \b2v_inst|Add2~147\,
	cin1 => \b2v_inst|Add2~147COUT1_232\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst|Add2~150_combout\,
	cout => \b2v_inst|Add2~152\);

-- Location: LC_X16_Y4_N6
\b2v_inst|ReceiveData:rbitcnt[31]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|ReceiveData:rbitcnt[31]~regout\ = DFFEAS((((\b2v_inst|Add2~155_combout\))), GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , \b2v_inst|state.r_sample~regout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	datad => \b2v_inst|Add2~155_combout\,
	aclr => \RST~combout\,
	ena => \b2v_inst|state.r_sample~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|ReceiveData:rbitcnt[31]~regout\);

-- Location: LC_X16_Y4_N5
\b2v_inst|Add2~155\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|Add2~155_combout\ = ((\b2v_inst|Add2~152\ $ (\b2v_inst|ReceiveData:rbitcnt[31]~regout\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|ReceiveData:rbitcnt[31]~regout\,
	cin => \b2v_inst|Add2~152\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst|Add2~155_combout\);

-- Location: LC_X15_Y7_N0
\b2v_inst|Equal2~8\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|Equal2~8_combout\ = (!\b2v_inst|Add2~150_combout\ & (!\b2v_inst|Add2~140_combout\ & (!\b2v_inst|Add2~155_combout\ & !\b2v_inst|Add2~145_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add2~150_combout\,
	datab => \b2v_inst|Add2~140_combout\,
	datac => \b2v_inst|Add2~155_combout\,
	datad => \b2v_inst|Add2~145_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst|Equal2~8_combout\);

-- Location: LC_X17_Y5_N7
\b2v_inst|Equal2~6\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|Equal2~6_combout\ = (!\b2v_inst|Add2~100_combout\ & (!\b2v_inst|Add2~115_combout\ & (!\b2v_inst|Add2~105_combout\ & !\b2v_inst|Add2~110_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add2~100_combout\,
	datab => \b2v_inst|Add2~115_combout\,
	datac => \b2v_inst|Add2~105_combout\,
	datad => \b2v_inst|Add2~110_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst|Equal2~6_combout\);

-- Location: LC_X16_Y4_N9
\b2v_inst|Equal2~7\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|Equal2~7_combout\ = (!\b2v_inst|Add2~135_combout\ & (!\b2v_inst|Add2~130_combout\ & (!\b2v_inst|Add2~120_combout\ & !\b2v_inst|Add2~125_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add2~135_combout\,
	datab => \b2v_inst|Add2~130_combout\,
	datac => \b2v_inst|Add2~120_combout\,
	datad => \b2v_inst|Add2~125_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst|Equal2~7_combout\);

-- Location: LC_X15_Y7_N1
\b2v_inst|Equal2~9\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|Equal2~9_combout\ = (\b2v_inst|Equal2~5_combout\ & (\b2v_inst|Equal2~8_combout\ & (\b2v_inst|Equal2~6_combout\ & \b2v_inst|Equal2~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Equal2~5_combout\,
	datab => \b2v_inst|Equal2~8_combout\,
	datac => \b2v_inst|Equal2~6_combout\,
	datad => \b2v_inst|Equal2~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst|Equal2~9_combout\);

-- Location: LC_X16_Y7_N7
\b2v_inst|Add2~0\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|Add2~0_combout\ = (\b2v_inst|ReceiveData:rbitcnt[3]~regout\ $ (((!\b2v_inst|Add2~7\ & \b2v_inst|Add2~17\) # (\b2v_inst|Add2~7\ & \b2v_inst|Add2~17COUT1_188\))))
-- \b2v_inst|Add2~2\ = CARRY(((!\b2v_inst|Add2~17\) # (!\b2v_inst|ReceiveData:rbitcnt[3]~regout\)))
-- \b2v_inst|Add2~2COUT1_190\ = CARRY(((!\b2v_inst|Add2~17COUT1_188\) # (!\b2v_inst|ReceiveData:rbitcnt[3]~regout\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|ReceiveData:rbitcnt[3]~regout\,
	cin => \b2v_inst|Add2~7\,
	cin0 => \b2v_inst|Add2~17\,
	cin1 => \b2v_inst|Add2~17COUT1_188\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst|Add2~0_combout\,
	cout0 => \b2v_inst|Add2~2\,
	cout1 => \b2v_inst|Add2~2COUT1_190\);

-- Location: LC_X17_Y6_N7
\b2v_inst|ReceiveData:rbitcnt[3]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|ReceiveData:rbitcnt[3]~regout\ = DFFEAS(((\b2v_inst|Add2~0_combout\ & ((!\b2v_inst|Equal2~9_combout\) # (!\b2v_inst|Equal2~4_combout\)))), GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , \b2v_inst|state.r_sample~regout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	datab => \b2v_inst|Equal2~4_combout\,
	datac => \b2v_inst|Equal2~9_combout\,
	datad => \b2v_inst|Add2~0_combout\,
	aclr => \RST~combout\,
	ena => \b2v_inst|state.r_sample~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|ReceiveData:rbitcnt[3]~regout\);

-- Location: LC_X16_Y7_N8
\b2v_inst|Add2~20\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|Add2~20_combout\ = (\b2v_inst|ReceiveData:rbitcnt[4]~regout\ $ ((!(!\b2v_inst|Add2~7\ & \b2v_inst|Add2~2\) # (\b2v_inst|Add2~7\ & \b2v_inst|Add2~2COUT1_190\))))
-- \b2v_inst|Add2~22\ = CARRY(((\b2v_inst|ReceiveData:rbitcnt[4]~regout\ & !\b2v_inst|Add2~2\)))
-- \b2v_inst|Add2~22COUT1_192\ = CARRY(((\b2v_inst|ReceiveData:rbitcnt[4]~regout\ & !\b2v_inst|Add2~2COUT1_190\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|ReceiveData:rbitcnt[4]~regout\,
	cin => \b2v_inst|Add2~7\,
	cin0 => \b2v_inst|Add2~2\,
	cin1 => \b2v_inst|Add2~2COUT1_190\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst|Add2~20_combout\,
	cout0 => \b2v_inst|Add2~22\,
	cout1 => \b2v_inst|Add2~22COUT1_192\);

-- Location: LC_X17_Y7_N5
\b2v_inst|ReceiveData:rbitcnt[4]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|ReceiveData:rbitcnt[4]~regout\ = DFFEAS(GND, GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , \b2v_inst|state.r_sample~regout\, \b2v_inst|Add2~20_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	datac => \b2v_inst|Add2~20_combout\,
	aclr => \RST~combout\,
	sload => VCC,
	ena => \b2v_inst|state.r_sample~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|ReceiveData:rbitcnt[4]~regout\);

-- Location: LC_X16_Y7_N9
\b2v_inst|Add2~25\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|Add2~25_combout\ = (\b2v_inst|ReceiveData:rbitcnt[5]~regout\ $ (((!\b2v_inst|Add2~7\ & \b2v_inst|Add2~22\) # (\b2v_inst|Add2~7\ & \b2v_inst|Add2~22COUT1_192\))))
-- \b2v_inst|Add2~27\ = CARRY(((!\b2v_inst|Add2~22COUT1_192\) # (!\b2v_inst|ReceiveData:rbitcnt[5]~regout\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|ReceiveData:rbitcnt[5]~regout\,
	cin => \b2v_inst|Add2~7\,
	cin0 => \b2v_inst|Add2~22\,
	cin1 => \b2v_inst|Add2~22COUT1_192\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst|Add2~25_combout\,
	cout => \b2v_inst|Add2~27\);

-- Location: LC_X17_Y7_N0
\b2v_inst|ReceiveData:rbitcnt[5]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|ReceiveData:rbitcnt[5]~regout\ = DFFEAS(GND, GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , \b2v_inst|state.r_sample~regout\, \b2v_inst|Add2~25_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	datac => \b2v_inst|Add2~25_combout\,
	aclr => \RST~combout\,
	sload => VCC,
	ena => \b2v_inst|state.r_sample~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|ReceiveData:rbitcnt[5]~regout\);

-- Location: LC_X16_Y6_N0
\b2v_inst|Add2~30\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|Add2~30_combout\ = \b2v_inst|ReceiveData:rbitcnt[6]~regout\ $ ((((!\b2v_inst|Add2~27\))))
-- \b2v_inst|Add2~32\ = CARRY((\b2v_inst|ReceiveData:rbitcnt[6]~regout\ & ((!\b2v_inst|Add2~27\))))
-- \b2v_inst|Add2~32COUT1_194\ = CARRY((\b2v_inst|ReceiveData:rbitcnt[6]~regout\ & ((!\b2v_inst|Add2~27\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|ReceiveData:rbitcnt[6]~regout\,
	cin => \b2v_inst|Add2~27\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst|Add2~30_combout\,
	cout0 => \b2v_inst|Add2~32\,
	cout1 => \b2v_inst|Add2~32COUT1_194\);

-- Location: LC_X17_Y7_N6
\b2v_inst|ReceiveData:rbitcnt[6]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|ReceiveData:rbitcnt[6]~regout\ = DFFEAS((((\b2v_inst|Add2~30_combout\))), GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , \b2v_inst|state.r_sample~regout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	datad => \b2v_inst|Add2~30_combout\,
	aclr => \RST~combout\,
	ena => \b2v_inst|state.r_sample~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|ReceiveData:rbitcnt[6]~regout\);

-- Location: LC_X16_Y6_N1
\b2v_inst|Add2~35\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|Add2~35_combout\ = (\b2v_inst|ReceiveData:rbitcnt[7]~regout\ $ (((!\b2v_inst|Add2~27\ & \b2v_inst|Add2~32\) # (\b2v_inst|Add2~27\ & \b2v_inst|Add2~32COUT1_194\))))
-- \b2v_inst|Add2~37\ = CARRY(((!\b2v_inst|Add2~32\) # (!\b2v_inst|ReceiveData:rbitcnt[7]~regout\)))
-- \b2v_inst|Add2~37COUT1_196\ = CARRY(((!\b2v_inst|Add2~32COUT1_194\) # (!\b2v_inst|ReceiveData:rbitcnt[7]~regout\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|ReceiveData:rbitcnt[7]~regout\,
	cin => \b2v_inst|Add2~27\,
	cin0 => \b2v_inst|Add2~32\,
	cin1 => \b2v_inst|Add2~32COUT1_194\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst|Add2~35_combout\,
	cout0 => \b2v_inst|Add2~37\,
	cout1 => \b2v_inst|Add2~37COUT1_196\);

-- Location: LC_X17_Y7_N7
\b2v_inst|ReceiveData:rbitcnt[7]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|ReceiveData:rbitcnt[7]~regout\ = DFFEAS((((\b2v_inst|Add2~35_combout\))), GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , \b2v_inst|state.r_sample~regout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	datad => \b2v_inst|Add2~35_combout\,
	aclr => \RST~combout\,
	ena => \b2v_inst|state.r_sample~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|ReceiveData:rbitcnt[7]~regout\);

-- Location: LC_X16_Y6_N2
\b2v_inst|Add2~40\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|Add2~40_combout\ = (\b2v_inst|ReceiveData:rbitcnt[8]~regout\ $ ((!(!\b2v_inst|Add2~27\ & \b2v_inst|Add2~37\) # (\b2v_inst|Add2~27\ & \b2v_inst|Add2~37COUT1_196\))))
-- \b2v_inst|Add2~42\ = CARRY(((\b2v_inst|ReceiveData:rbitcnt[8]~regout\ & !\b2v_inst|Add2~37\)))
-- \b2v_inst|Add2~42COUT1_198\ = CARRY(((\b2v_inst|ReceiveData:rbitcnt[8]~regout\ & !\b2v_inst|Add2~37COUT1_196\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|ReceiveData:rbitcnt[8]~regout\,
	cin => \b2v_inst|Add2~27\,
	cin0 => \b2v_inst|Add2~37\,
	cin1 => \b2v_inst|Add2~37COUT1_196\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst|Add2~40_combout\,
	cout0 => \b2v_inst|Add2~42\,
	cout1 => \b2v_inst|Add2~42COUT1_198\);

-- Location: LC_X17_Y7_N8
\b2v_inst|ReceiveData:rbitcnt[8]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|ReceiveData:rbitcnt[8]~regout\ = DFFEAS(GND, GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , \b2v_inst|state.r_sample~regout\, \b2v_inst|Add2~40_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	datac => \b2v_inst|Add2~40_combout\,
	aclr => \RST~combout\,
	sload => VCC,
	ena => \b2v_inst|state.r_sample~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|ReceiveData:rbitcnt[8]~regout\);

-- Location: LC_X16_Y6_N3
\b2v_inst|Add2~45\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|Add2~45_combout\ = (\b2v_inst|ReceiveData:rbitcnt[9]~regout\ $ (((!\b2v_inst|Add2~27\ & \b2v_inst|Add2~42\) # (\b2v_inst|Add2~27\ & \b2v_inst|Add2~42COUT1_198\))))
-- \b2v_inst|Add2~47\ = CARRY(((!\b2v_inst|Add2~42\) # (!\b2v_inst|ReceiveData:rbitcnt[9]~regout\)))
-- \b2v_inst|Add2~47COUT1_200\ = CARRY(((!\b2v_inst|Add2~42COUT1_198\) # (!\b2v_inst|ReceiveData:rbitcnt[9]~regout\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|ReceiveData:rbitcnt[9]~regout\,
	cin => \b2v_inst|Add2~27\,
	cin0 => \b2v_inst|Add2~42\,
	cin1 => \b2v_inst|Add2~42COUT1_198\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst|Add2~45_combout\,
	cout0 => \b2v_inst|Add2~47\,
	cout1 => \b2v_inst|Add2~47COUT1_200\);

-- Location: LC_X17_Y7_N1
\b2v_inst|ReceiveData:rbitcnt[9]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|ReceiveData:rbitcnt[9]~regout\ = DFFEAS((((\b2v_inst|Add2~45_combout\))), GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , \b2v_inst|state.r_sample~regout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	datad => \b2v_inst|Add2~45_combout\,
	aclr => \RST~combout\,
	ena => \b2v_inst|state.r_sample~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|ReceiveData:rbitcnt[9]~regout\);

-- Location: LC_X16_Y6_N4
\b2v_inst|Add2~50\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|Add2~50_combout\ = \b2v_inst|ReceiveData:rbitcnt[10]~regout\ $ ((((!(!\b2v_inst|Add2~27\ & \b2v_inst|Add2~47\) # (\b2v_inst|Add2~27\ & \b2v_inst|Add2~47COUT1_200\)))))
-- \b2v_inst|Add2~52\ = CARRY((\b2v_inst|ReceiveData:rbitcnt[10]~regout\ & ((!\b2v_inst|Add2~47COUT1_200\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|ReceiveData:rbitcnt[10]~regout\,
	cin => \b2v_inst|Add2~27\,
	cin0 => \b2v_inst|Add2~47\,
	cin1 => \b2v_inst|Add2~47COUT1_200\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst|Add2~50_combout\,
	cout => \b2v_inst|Add2~52\);

-- Location: LC_X17_Y7_N4
\b2v_inst|ReceiveData:rbitcnt[10]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|ReceiveData:rbitcnt[10]~regout\ = DFFEAS(GND, GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , \b2v_inst|state.r_sample~regout\, \b2v_inst|Add2~50_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	datac => \b2v_inst|Add2~50_combout\,
	aclr => \RST~combout\,
	sload => VCC,
	ena => \b2v_inst|state.r_sample~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|ReceiveData:rbitcnt[10]~regout\);

-- Location: LC_X17_Y6_N2
\b2v_inst|Equal2~3\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|Equal2~3_combout\ = (!\b2v_inst|Add2~70_combout\ & (!\b2v_inst|Add2~75_combout\ & (!\b2v_inst|Add2~65_combout\ & !\b2v_inst|Add2~60_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add2~70_combout\,
	datab => \b2v_inst|Add2~75_combout\,
	datac => \b2v_inst|Add2~65_combout\,
	datad => \b2v_inst|Add2~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst|Equal2~3_combout\);

-- Location: LC_X17_Y6_N5
\b2v_inst|Equal2~2\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|Equal2~2_combout\ = (!\b2v_inst|Add2~45_combout\ & (!\b2v_inst|Add2~40_combout\ & (!\b2v_inst|Add2~55_combout\ & !\b2v_inst|Add2~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add2~45_combout\,
	datab => \b2v_inst|Add2~40_combout\,
	datac => \b2v_inst|Add2~55_combout\,
	datad => \b2v_inst|Add2~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst|Equal2~2_combout\);

-- Location: LC_X17_Y6_N9
\b2v_inst|Equal2~0\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|Equal2~0_combout\ = (!\b2v_inst|Add2~5_combout\ & (\b2v_inst|Add2~0_combout\ & (!\b2v_inst|Add2~10_combout\ & !\b2v_inst|Add2~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0004",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add2~5_combout\,
	datab => \b2v_inst|Add2~0_combout\,
	datac => \b2v_inst|Add2~10_combout\,
	datad => \b2v_inst|Add2~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst|Equal2~0_combout\);

-- Location: LC_X17_Y6_N3
\b2v_inst|Equal2~1\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|Equal2~1_combout\ = (!\b2v_inst|Add2~35_combout\ & (!\b2v_inst|Add2~20_combout\ & (!\b2v_inst|Add2~25_combout\ & !\b2v_inst|Add2~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add2~35_combout\,
	datab => \b2v_inst|Add2~20_combout\,
	datac => \b2v_inst|Add2~25_combout\,
	datad => \b2v_inst|Add2~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst|Equal2~1_combout\);

-- Location: LC_X17_Y6_N4
\b2v_inst|Equal2~4\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|Equal2~4_combout\ = (\b2v_inst|Equal2~3_combout\ & (\b2v_inst|Equal2~2_combout\ & (\b2v_inst|Equal2~0_combout\ & \b2v_inst|Equal2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Equal2~3_combout\,
	datab => \b2v_inst|Equal2~2_combout\,
	datac => \b2v_inst|Equal2~0_combout\,
	datad => \b2v_inst|Equal2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst|Equal2~4_combout\);

-- Location: LC_X15_Y7_N2
\b2v_inst|Selector3~1\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|Selector3~1_combout\ = ((\b2v_inst|state.r_sample~regout\ & (\b2v_inst|Equal2~4_combout\ & \b2v_inst|Equal2~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|state.r_sample~regout\,
	datac => \b2v_inst|Equal2~4_combout\,
	datad => \b2v_inst|Equal2~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst|Selector3~1_combout\);

-- Location: LC_X19_Y7_N6
\b2v_inst|state.r_stop\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|state.r_stop~regout\ = DFFEAS((\b2v_inst|state.r_stop~regout\ & (\b2v_inst|Equal3~10_combout\ & ((\b2v_inst|Selector3~1_combout\) # (\b2v_inst|Selector3~2_combout\)))) # (!\b2v_inst|state.r_stop~regout\ & (((\b2v_inst|Selector3~1_combout\ & 
-- !\b2v_inst|Selector3~2_combout\)))), GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "88d0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	dataa => \b2v_inst|state.r_stop~regout\,
	datab => \b2v_inst|Equal3~10_combout\,
	datac => \b2v_inst|Selector3~1_combout\,
	datad => \b2v_inst|Selector3~2_combout\,
	aclr => \RST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|state.r_stop~regout\);

-- Location: LC_X19_Y7_N4
\b2v_inst|state.r_start\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|state.r_start~regout\ = DFFEAS((\b2v_inst|state.r_stop~regout\ & (\b2v_inst|Equal3~10_combout\ & ((\b2v_inst|Selector3~0_combout\) # (\b2v_inst|state.r_start~regout\)))) # (!\b2v_inst|state.r_stop~regout\ & (((\b2v_inst|Selector3~0_combout\) # 
-- (\b2v_inst|state.r_start~regout\)))), GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ddd0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	dataa => \b2v_inst|state.r_stop~regout\,
	datab => \b2v_inst|Equal3~10_combout\,
	datac => \b2v_inst|Selector3~0_combout\,
	datad => \b2v_inst|state.r_start~regout\,
	aclr => \RST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|state.r_start~regout\);

-- Location: LC_X15_Y7_N3
\b2v_inst|ReceiveData:cnt16[31]~2\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|ReceiveData:cnt16[31]~2_combout\ = (((\b2v_inst|Selector3~1_combout\) # (!\b2v_inst|state.r_start~regout\))) # (!\b2v_inst|Equal3~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff5f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Equal3~10_combout\,
	datac => \b2v_inst|state.r_start~regout\,
	datad => \b2v_inst|Selector3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst|ReceiveData:cnt16[31]~2_combout\);

-- Location: LC_X15_Y4_N7
\b2v_inst|Selector1~1\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|Selector1~1_combout\ = (\b2v_inst|state.r_start~regout\) # ((!\Data_in~combout\ & (!\b2v_inst|Equal1~10_combout\ & \b2v_inst|suspicious_start~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cdcc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Data_in~combout\,
	datab => \b2v_inst|state.r_start~regout\,
	datac => \b2v_inst|Equal1~10_combout\,
	datad => \b2v_inst|suspicious_start~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst|Selector1~1_combout\);

-- Location: LC_X15_Y7_N4
\b2v_inst|ReceiveData:cnt16[0]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|ReceiveData:cnt16[0]~regout\ = DFFEAS(((!\b2v_inst|ReceiveData:cnt16[0]~regout\)), GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , \b2v_inst|Selector1~1_combout\, , , \b2v_inst|ReceiveData:cnt16[31]~2_combout\, )
-- \b2v_inst|ReceiveData:cnt16[0]~1\ = CARRY(((\b2v_inst|ReceiveData:cnt16[0]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	datab => \b2v_inst|ReceiveData:cnt16[0]~regout\,
	aclr => \RST~combout\,
	sclr => \b2v_inst|ReceiveData:cnt16[31]~2_combout\,
	ena => \b2v_inst|Selector1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|ReceiveData:cnt16[0]~regout\,
	cout => \b2v_inst|ReceiveData:cnt16[0]~1\);

-- Location: LC_X15_Y7_N5
\b2v_inst|ReceiveData:cnt16[1]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|ReceiveData:cnt16[1]~regout\ = DFFEAS((\b2v_inst|ReceiveData:cnt16[1]~regout\ $ ((\b2v_inst|ReceiveData:cnt16[0]~1\))), GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , \b2v_inst|Selector1~1_combout\, , , 
-- \b2v_inst|ReceiveData:cnt16[31]~2_combout\, )
-- \b2v_inst|ReceiveData:cnt16[1]~1\ = CARRY(((!\b2v_inst|ReceiveData:cnt16[0]~1\) # (!\b2v_inst|ReceiveData:cnt16[1]~regout\)))
-- \b2v_inst|ReceiveData:cnt16[1]~1COUT1_5\ = CARRY(((!\b2v_inst|ReceiveData:cnt16[0]~1\) # (!\b2v_inst|ReceiveData:cnt16[1]~regout\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	datab => \b2v_inst|ReceiveData:cnt16[1]~regout\,
	aclr => \RST~combout\,
	sclr => \b2v_inst|ReceiveData:cnt16[31]~2_combout\,
	ena => \b2v_inst|Selector1~1_combout\,
	cin => \b2v_inst|ReceiveData:cnt16[0]~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|ReceiveData:cnt16[1]~regout\,
	cout0 => \b2v_inst|ReceiveData:cnt16[1]~1\,
	cout1 => \b2v_inst|ReceiveData:cnt16[1]~1COUT1_5\);

-- Location: LC_X15_Y7_N6
\b2v_inst|ReceiveData:cnt16[2]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|ReceiveData:cnt16[2]~regout\ = DFFEAS(\b2v_inst|ReceiveData:cnt16[2]~regout\ $ ((((!(!\b2v_inst|ReceiveData:cnt16[0]~1\ & \b2v_inst|ReceiveData:cnt16[1]~1\) # (\b2v_inst|ReceiveData:cnt16[0]~1\ & \b2v_inst|ReceiveData:cnt16[1]~1COUT1_5\))))), 
-- GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , \b2v_inst|Selector1~1_combout\, , , \b2v_inst|ReceiveData:cnt16[31]~2_combout\, )
-- \b2v_inst|ReceiveData:cnt16[2]~1\ = CARRY((\b2v_inst|ReceiveData:cnt16[2]~regout\ & ((!\b2v_inst|ReceiveData:cnt16[1]~1\))))
-- \b2v_inst|ReceiveData:cnt16[2]~1COUT1_5\ = CARRY((\b2v_inst|ReceiveData:cnt16[2]~regout\ & ((!\b2v_inst|ReceiveData:cnt16[1]~1COUT1_5\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	dataa => \b2v_inst|ReceiveData:cnt16[2]~regout\,
	aclr => \RST~combout\,
	sclr => \b2v_inst|ReceiveData:cnt16[31]~2_combout\,
	ena => \b2v_inst|Selector1~1_combout\,
	cin => \b2v_inst|ReceiveData:cnt16[0]~1\,
	cin0 => \b2v_inst|ReceiveData:cnt16[1]~1\,
	cin1 => \b2v_inst|ReceiveData:cnt16[1]~1COUT1_5\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|ReceiveData:cnt16[2]~regout\,
	cout0 => \b2v_inst|ReceiveData:cnt16[2]~1\,
	cout1 => \b2v_inst|ReceiveData:cnt16[2]~1COUT1_5\);

-- Location: LC_X15_Y7_N7
\b2v_inst|ReceiveData:cnt16[3]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|ReceiveData:cnt16[3]~regout\ = DFFEAS(\b2v_inst|ReceiveData:cnt16[3]~regout\ $ (((((!\b2v_inst|ReceiveData:cnt16[0]~1\ & \b2v_inst|ReceiveData:cnt16[2]~1\) # (\b2v_inst|ReceiveData:cnt16[0]~1\ & \b2v_inst|ReceiveData:cnt16[2]~1COUT1_5\))))), 
-- GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , \b2v_inst|Selector1~1_combout\, , , \b2v_inst|ReceiveData:cnt16[31]~2_combout\, )
-- \b2v_inst|ReceiveData:cnt16[3]~1\ = CARRY(((!\b2v_inst|ReceiveData:cnt16[2]~1\)) # (!\b2v_inst|ReceiveData:cnt16[3]~regout\))
-- \b2v_inst|ReceiveData:cnt16[3]~1COUT1_5\ = CARRY(((!\b2v_inst|ReceiveData:cnt16[2]~1COUT1_5\)) # (!\b2v_inst|ReceiveData:cnt16[3]~regout\))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	dataa => \b2v_inst|ReceiveData:cnt16[3]~regout\,
	aclr => \RST~combout\,
	sclr => \b2v_inst|ReceiveData:cnt16[31]~2_combout\,
	ena => \b2v_inst|Selector1~1_combout\,
	cin => \b2v_inst|ReceiveData:cnt16[0]~1\,
	cin0 => \b2v_inst|ReceiveData:cnt16[2]~1\,
	cin1 => \b2v_inst|ReceiveData:cnt16[2]~1COUT1_5\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|ReceiveData:cnt16[3]~regout\,
	cout0 => \b2v_inst|ReceiveData:cnt16[3]~1\,
	cout1 => \b2v_inst|ReceiveData:cnt16[3]~1COUT1_5\);

-- Location: LC_X15_Y7_N8
\b2v_inst|ReceiveData:cnt16[4]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|ReceiveData:cnt16[4]~regout\ = DFFEAS((\b2v_inst|ReceiveData:cnt16[4]~regout\ $ ((!(!\b2v_inst|ReceiveData:cnt16[0]~1\ & \b2v_inst|ReceiveData:cnt16[3]~1\) # (\b2v_inst|ReceiveData:cnt16[0]~1\ & \b2v_inst|ReceiveData:cnt16[3]~1COUT1_5\)))), 
-- GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , \b2v_inst|Selector1~1_combout\, , , \b2v_inst|ReceiveData:cnt16[31]~2_combout\, )
-- \b2v_inst|ReceiveData:cnt16[4]~1\ = CARRY(((\b2v_inst|ReceiveData:cnt16[4]~regout\ & !\b2v_inst|ReceiveData:cnt16[3]~1\)))
-- \b2v_inst|ReceiveData:cnt16[4]~1COUT1_5\ = CARRY(((\b2v_inst|ReceiveData:cnt16[4]~regout\ & !\b2v_inst|ReceiveData:cnt16[3]~1COUT1_5\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	datab => \b2v_inst|ReceiveData:cnt16[4]~regout\,
	aclr => \RST~combout\,
	sclr => \b2v_inst|ReceiveData:cnt16[31]~2_combout\,
	ena => \b2v_inst|Selector1~1_combout\,
	cin => \b2v_inst|ReceiveData:cnt16[0]~1\,
	cin0 => \b2v_inst|ReceiveData:cnt16[3]~1\,
	cin1 => \b2v_inst|ReceiveData:cnt16[3]~1COUT1_5\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|ReceiveData:cnt16[4]~regout\,
	cout0 => \b2v_inst|ReceiveData:cnt16[4]~1\,
	cout1 => \b2v_inst|ReceiveData:cnt16[4]~1COUT1_5\);

-- Location: LC_X15_Y7_N9
\b2v_inst|ReceiveData:cnt16[5]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|ReceiveData:cnt16[5]~regout\ = DFFEAS(\b2v_inst|ReceiveData:cnt16[5]~regout\ $ (((((!\b2v_inst|ReceiveData:cnt16[0]~1\ & \b2v_inst|ReceiveData:cnt16[4]~1\) # (\b2v_inst|ReceiveData:cnt16[0]~1\ & \b2v_inst|ReceiveData:cnt16[4]~1COUT1_5\))))), 
-- GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , \b2v_inst|Selector1~1_combout\, , , \b2v_inst|ReceiveData:cnt16[31]~2_combout\, )
-- \b2v_inst|ReceiveData:cnt16[5]~1\ = CARRY(((!\b2v_inst|ReceiveData:cnt16[4]~1COUT1_5\)) # (!\b2v_inst|ReceiveData:cnt16[5]~regout\))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	dataa => \b2v_inst|ReceiveData:cnt16[5]~regout\,
	aclr => \RST~combout\,
	sclr => \b2v_inst|ReceiveData:cnt16[31]~2_combout\,
	ena => \b2v_inst|Selector1~1_combout\,
	cin => \b2v_inst|ReceiveData:cnt16[0]~1\,
	cin0 => \b2v_inst|ReceiveData:cnt16[4]~1\,
	cin1 => \b2v_inst|ReceiveData:cnt16[4]~1COUT1_5\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|ReceiveData:cnt16[5]~regout\,
	cout => \b2v_inst|ReceiveData:cnt16[5]~1\);

-- Location: LC_X15_Y6_N0
\b2v_inst|ReceiveData:cnt16[6]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|ReceiveData:cnt16[6]~regout\ = DFFEAS((\b2v_inst|ReceiveData:cnt16[6]~regout\ $ ((!\b2v_inst|ReceiveData:cnt16[5]~1\))), GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , \b2v_inst|Selector1~1_combout\, , , 
-- \b2v_inst|ReceiveData:cnt16[31]~2_combout\, )
-- \b2v_inst|ReceiveData:cnt16[6]~1\ = CARRY(((\b2v_inst|ReceiveData:cnt16[6]~regout\ & !\b2v_inst|ReceiveData:cnt16[5]~1\)))
-- \b2v_inst|ReceiveData:cnt16[6]~1COUT1_5\ = CARRY(((\b2v_inst|ReceiveData:cnt16[6]~regout\ & !\b2v_inst|ReceiveData:cnt16[5]~1\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	datab => \b2v_inst|ReceiveData:cnt16[6]~regout\,
	aclr => \RST~combout\,
	sclr => \b2v_inst|ReceiveData:cnt16[31]~2_combout\,
	ena => \b2v_inst|Selector1~1_combout\,
	cin => \b2v_inst|ReceiveData:cnt16[5]~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|ReceiveData:cnt16[6]~regout\,
	cout0 => \b2v_inst|ReceiveData:cnt16[6]~1\,
	cout1 => \b2v_inst|ReceiveData:cnt16[6]~1COUT1_5\);

-- Location: LC_X15_Y6_N1
\b2v_inst|ReceiveData:cnt16[7]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|ReceiveData:cnt16[7]~regout\ = DFFEAS(\b2v_inst|ReceiveData:cnt16[7]~regout\ $ (((((!\b2v_inst|ReceiveData:cnt16[5]~1\ & \b2v_inst|ReceiveData:cnt16[6]~1\) # (\b2v_inst|ReceiveData:cnt16[5]~1\ & \b2v_inst|ReceiveData:cnt16[6]~1COUT1_5\))))), 
-- GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , \b2v_inst|Selector1~1_combout\, , , \b2v_inst|ReceiveData:cnt16[31]~2_combout\, )
-- \b2v_inst|ReceiveData:cnt16[7]~1\ = CARRY(((!\b2v_inst|ReceiveData:cnt16[6]~1\)) # (!\b2v_inst|ReceiveData:cnt16[7]~regout\))
-- \b2v_inst|ReceiveData:cnt16[7]~1COUT1_5\ = CARRY(((!\b2v_inst|ReceiveData:cnt16[6]~1COUT1_5\)) # (!\b2v_inst|ReceiveData:cnt16[7]~regout\))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	dataa => \b2v_inst|ReceiveData:cnt16[7]~regout\,
	aclr => \RST~combout\,
	sclr => \b2v_inst|ReceiveData:cnt16[31]~2_combout\,
	ena => \b2v_inst|Selector1~1_combout\,
	cin => \b2v_inst|ReceiveData:cnt16[5]~1\,
	cin0 => \b2v_inst|ReceiveData:cnt16[6]~1\,
	cin1 => \b2v_inst|ReceiveData:cnt16[6]~1COUT1_5\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|ReceiveData:cnt16[7]~regout\,
	cout0 => \b2v_inst|ReceiveData:cnt16[7]~1\,
	cout1 => \b2v_inst|ReceiveData:cnt16[7]~1COUT1_5\);

-- Location: LC_X15_Y6_N2
\b2v_inst|ReceiveData:cnt16[8]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|ReceiveData:cnt16[8]~regout\ = DFFEAS(\b2v_inst|ReceiveData:cnt16[8]~regout\ $ ((((!(!\b2v_inst|ReceiveData:cnt16[5]~1\ & \b2v_inst|ReceiveData:cnt16[7]~1\) # (\b2v_inst|ReceiveData:cnt16[5]~1\ & \b2v_inst|ReceiveData:cnt16[7]~1COUT1_5\))))), 
-- GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , \b2v_inst|Selector1~1_combout\, , , \b2v_inst|ReceiveData:cnt16[31]~2_combout\, )
-- \b2v_inst|ReceiveData:cnt16[8]~1\ = CARRY((\b2v_inst|ReceiveData:cnt16[8]~regout\ & ((!\b2v_inst|ReceiveData:cnt16[7]~1\))))
-- \b2v_inst|ReceiveData:cnt16[8]~1COUT1_5\ = CARRY((\b2v_inst|ReceiveData:cnt16[8]~regout\ & ((!\b2v_inst|ReceiveData:cnt16[7]~1COUT1_5\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	dataa => \b2v_inst|ReceiveData:cnt16[8]~regout\,
	aclr => \RST~combout\,
	sclr => \b2v_inst|ReceiveData:cnt16[31]~2_combout\,
	ena => \b2v_inst|Selector1~1_combout\,
	cin => \b2v_inst|ReceiveData:cnt16[5]~1\,
	cin0 => \b2v_inst|ReceiveData:cnt16[7]~1\,
	cin1 => \b2v_inst|ReceiveData:cnt16[7]~1COUT1_5\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|ReceiveData:cnt16[8]~regout\,
	cout0 => \b2v_inst|ReceiveData:cnt16[8]~1\,
	cout1 => \b2v_inst|ReceiveData:cnt16[8]~1COUT1_5\);

-- Location: LC_X15_Y6_N3
\b2v_inst|ReceiveData:cnt16[9]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|ReceiveData:cnt16[9]~regout\ = DFFEAS((\b2v_inst|ReceiveData:cnt16[9]~regout\ $ (((!\b2v_inst|ReceiveData:cnt16[5]~1\ & \b2v_inst|ReceiveData:cnt16[8]~1\) # (\b2v_inst|ReceiveData:cnt16[5]~1\ & \b2v_inst|ReceiveData:cnt16[8]~1COUT1_5\)))), 
-- GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , \b2v_inst|Selector1~1_combout\, , , \b2v_inst|ReceiveData:cnt16[31]~2_combout\, )
-- \b2v_inst|ReceiveData:cnt16[9]~1\ = CARRY(((!\b2v_inst|ReceiveData:cnt16[8]~1\) # (!\b2v_inst|ReceiveData:cnt16[9]~regout\)))
-- \b2v_inst|ReceiveData:cnt16[9]~1COUT1_5\ = CARRY(((!\b2v_inst|ReceiveData:cnt16[8]~1COUT1_5\) # (!\b2v_inst|ReceiveData:cnt16[9]~regout\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	datab => \b2v_inst|ReceiveData:cnt16[9]~regout\,
	aclr => \RST~combout\,
	sclr => \b2v_inst|ReceiveData:cnt16[31]~2_combout\,
	ena => \b2v_inst|Selector1~1_combout\,
	cin => \b2v_inst|ReceiveData:cnt16[5]~1\,
	cin0 => \b2v_inst|ReceiveData:cnt16[8]~1\,
	cin1 => \b2v_inst|ReceiveData:cnt16[8]~1COUT1_5\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|ReceiveData:cnt16[9]~regout\,
	cout0 => \b2v_inst|ReceiveData:cnt16[9]~1\,
	cout1 => \b2v_inst|ReceiveData:cnt16[9]~1COUT1_5\);

-- Location: LC_X15_Y6_N4
\b2v_inst|ReceiveData:cnt16[10]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|ReceiveData:cnt16[10]~regout\ = DFFEAS((\b2v_inst|ReceiveData:cnt16[10]~regout\ $ ((!(!\b2v_inst|ReceiveData:cnt16[5]~1\ & \b2v_inst|ReceiveData:cnt16[9]~1\) # (\b2v_inst|ReceiveData:cnt16[5]~1\ & \b2v_inst|ReceiveData:cnt16[9]~1COUT1_5\)))), 
-- GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , \b2v_inst|Selector1~1_combout\, , , \b2v_inst|ReceiveData:cnt16[31]~2_combout\, )
-- \b2v_inst|ReceiveData:cnt16[10]~1\ = CARRY(((\b2v_inst|ReceiveData:cnt16[10]~regout\ & !\b2v_inst|ReceiveData:cnt16[9]~1COUT1_5\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	datab => \b2v_inst|ReceiveData:cnt16[10]~regout\,
	aclr => \RST~combout\,
	sclr => \b2v_inst|ReceiveData:cnt16[31]~2_combout\,
	ena => \b2v_inst|Selector1~1_combout\,
	cin => \b2v_inst|ReceiveData:cnt16[5]~1\,
	cin0 => \b2v_inst|ReceiveData:cnt16[9]~1\,
	cin1 => \b2v_inst|ReceiveData:cnt16[9]~1COUT1_5\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|ReceiveData:cnt16[10]~regout\,
	cout => \b2v_inst|ReceiveData:cnt16[10]~1\);

-- Location: LC_X15_Y6_N5
\b2v_inst|ReceiveData:cnt16[11]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|ReceiveData:cnt16[11]~regout\ = DFFEAS((\b2v_inst|ReceiveData:cnt16[11]~regout\ $ ((\b2v_inst|ReceiveData:cnt16[10]~1\))), GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , \b2v_inst|Selector1~1_combout\, , , 
-- \b2v_inst|ReceiveData:cnt16[31]~2_combout\, )
-- \b2v_inst|ReceiveData:cnt16[11]~1\ = CARRY(((!\b2v_inst|ReceiveData:cnt16[10]~1\) # (!\b2v_inst|ReceiveData:cnt16[11]~regout\)))
-- \b2v_inst|ReceiveData:cnt16[11]~1COUT1_5\ = CARRY(((!\b2v_inst|ReceiveData:cnt16[10]~1\) # (!\b2v_inst|ReceiveData:cnt16[11]~regout\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	datab => \b2v_inst|ReceiveData:cnt16[11]~regout\,
	aclr => \RST~combout\,
	sclr => \b2v_inst|ReceiveData:cnt16[31]~2_combout\,
	ena => \b2v_inst|Selector1~1_combout\,
	cin => \b2v_inst|ReceiveData:cnt16[10]~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|ReceiveData:cnt16[11]~regout\,
	cout0 => \b2v_inst|ReceiveData:cnt16[11]~1\,
	cout1 => \b2v_inst|ReceiveData:cnt16[11]~1COUT1_5\);

-- Location: LC_X15_Y6_N6
\b2v_inst|ReceiveData:cnt16[12]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|ReceiveData:cnt16[12]~regout\ = DFFEAS(\b2v_inst|ReceiveData:cnt16[12]~regout\ $ ((((!(!\b2v_inst|ReceiveData:cnt16[10]~1\ & \b2v_inst|ReceiveData:cnt16[11]~1\) # (\b2v_inst|ReceiveData:cnt16[10]~1\ & 
-- \b2v_inst|ReceiveData:cnt16[11]~1COUT1_5\))))), GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , \b2v_inst|Selector1~1_combout\, , , \b2v_inst|ReceiveData:cnt16[31]~2_combout\, )
-- \b2v_inst|ReceiveData:cnt16[12]~1\ = CARRY((\b2v_inst|ReceiveData:cnt16[12]~regout\ & ((!\b2v_inst|ReceiveData:cnt16[11]~1\))))
-- \b2v_inst|ReceiveData:cnt16[12]~1COUT1_5\ = CARRY((\b2v_inst|ReceiveData:cnt16[12]~regout\ & ((!\b2v_inst|ReceiveData:cnt16[11]~1COUT1_5\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	dataa => \b2v_inst|ReceiveData:cnt16[12]~regout\,
	aclr => \RST~combout\,
	sclr => \b2v_inst|ReceiveData:cnt16[31]~2_combout\,
	ena => \b2v_inst|Selector1~1_combout\,
	cin => \b2v_inst|ReceiveData:cnt16[10]~1\,
	cin0 => \b2v_inst|ReceiveData:cnt16[11]~1\,
	cin1 => \b2v_inst|ReceiveData:cnt16[11]~1COUT1_5\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|ReceiveData:cnt16[12]~regout\,
	cout0 => \b2v_inst|ReceiveData:cnt16[12]~1\,
	cout1 => \b2v_inst|ReceiveData:cnt16[12]~1COUT1_5\);

-- Location: LC_X15_Y6_N7
\b2v_inst|ReceiveData:cnt16[13]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|ReceiveData:cnt16[13]~regout\ = DFFEAS(\b2v_inst|ReceiveData:cnt16[13]~regout\ $ (((((!\b2v_inst|ReceiveData:cnt16[10]~1\ & \b2v_inst|ReceiveData:cnt16[12]~1\) # (\b2v_inst|ReceiveData:cnt16[10]~1\ & 
-- \b2v_inst|ReceiveData:cnt16[12]~1COUT1_5\))))), GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , \b2v_inst|Selector1~1_combout\, , , \b2v_inst|ReceiveData:cnt16[31]~2_combout\, )
-- \b2v_inst|ReceiveData:cnt16[13]~1\ = CARRY(((!\b2v_inst|ReceiveData:cnt16[12]~1\)) # (!\b2v_inst|ReceiveData:cnt16[13]~regout\))
-- \b2v_inst|ReceiveData:cnt16[13]~1COUT1_5\ = CARRY(((!\b2v_inst|ReceiveData:cnt16[12]~1COUT1_5\)) # (!\b2v_inst|ReceiveData:cnt16[13]~regout\))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	dataa => \b2v_inst|ReceiveData:cnt16[13]~regout\,
	aclr => \RST~combout\,
	sclr => \b2v_inst|ReceiveData:cnt16[31]~2_combout\,
	ena => \b2v_inst|Selector1~1_combout\,
	cin => \b2v_inst|ReceiveData:cnt16[10]~1\,
	cin0 => \b2v_inst|ReceiveData:cnt16[12]~1\,
	cin1 => \b2v_inst|ReceiveData:cnt16[12]~1COUT1_5\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|ReceiveData:cnt16[13]~regout\,
	cout0 => \b2v_inst|ReceiveData:cnt16[13]~1\,
	cout1 => \b2v_inst|ReceiveData:cnt16[13]~1COUT1_5\);

-- Location: LC_X15_Y6_N8
\b2v_inst|ReceiveData:cnt16[14]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|ReceiveData:cnt16[14]~regout\ = DFFEAS((\b2v_inst|ReceiveData:cnt16[14]~regout\ $ ((!(!\b2v_inst|ReceiveData:cnt16[10]~1\ & \b2v_inst|ReceiveData:cnt16[13]~1\) # (\b2v_inst|ReceiveData:cnt16[10]~1\ & 
-- \b2v_inst|ReceiveData:cnt16[13]~1COUT1_5\)))), GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , \b2v_inst|Selector1~1_combout\, , , \b2v_inst|ReceiveData:cnt16[31]~2_combout\, )
-- \b2v_inst|ReceiveData:cnt16[14]~1\ = CARRY(((\b2v_inst|ReceiveData:cnt16[14]~regout\ & !\b2v_inst|ReceiveData:cnt16[13]~1\)))
-- \b2v_inst|ReceiveData:cnt16[14]~1COUT1_5\ = CARRY(((\b2v_inst|ReceiveData:cnt16[14]~regout\ & !\b2v_inst|ReceiveData:cnt16[13]~1COUT1_5\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	datab => \b2v_inst|ReceiveData:cnt16[14]~regout\,
	aclr => \RST~combout\,
	sclr => \b2v_inst|ReceiveData:cnt16[31]~2_combout\,
	ena => \b2v_inst|Selector1~1_combout\,
	cin => \b2v_inst|ReceiveData:cnt16[10]~1\,
	cin0 => \b2v_inst|ReceiveData:cnt16[13]~1\,
	cin1 => \b2v_inst|ReceiveData:cnt16[13]~1COUT1_5\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|ReceiveData:cnt16[14]~regout\,
	cout0 => \b2v_inst|ReceiveData:cnt16[14]~1\,
	cout1 => \b2v_inst|ReceiveData:cnt16[14]~1COUT1_5\);

-- Location: LC_X15_Y6_N9
\b2v_inst|ReceiveData:cnt16[15]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|ReceiveData:cnt16[15]~regout\ = DFFEAS(\b2v_inst|ReceiveData:cnt16[15]~regout\ $ (((((!\b2v_inst|ReceiveData:cnt16[10]~1\ & \b2v_inst|ReceiveData:cnt16[14]~1\) # (\b2v_inst|ReceiveData:cnt16[10]~1\ & 
-- \b2v_inst|ReceiveData:cnt16[14]~1COUT1_5\))))), GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , \b2v_inst|Selector1~1_combout\, , , \b2v_inst|ReceiveData:cnt16[31]~2_combout\, )
-- \b2v_inst|ReceiveData:cnt16[15]~1\ = CARRY(((!\b2v_inst|ReceiveData:cnt16[14]~1COUT1_5\)) # (!\b2v_inst|ReceiveData:cnt16[15]~regout\))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	dataa => \b2v_inst|ReceiveData:cnt16[15]~regout\,
	aclr => \RST~combout\,
	sclr => \b2v_inst|ReceiveData:cnt16[31]~2_combout\,
	ena => \b2v_inst|Selector1~1_combout\,
	cin => \b2v_inst|ReceiveData:cnt16[10]~1\,
	cin0 => \b2v_inst|ReceiveData:cnt16[14]~1\,
	cin1 => \b2v_inst|ReceiveData:cnt16[14]~1COUT1_5\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|ReceiveData:cnt16[15]~regout\,
	cout => \b2v_inst|ReceiveData:cnt16[15]~1\);

-- Location: LC_X15_Y5_N0
\b2v_inst|ReceiveData:cnt16[16]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|ReceiveData:cnt16[16]~regout\ = DFFEAS((\b2v_inst|ReceiveData:cnt16[16]~regout\ $ ((!\b2v_inst|ReceiveData:cnt16[15]~1\))), GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , \b2v_inst|Selector1~1_combout\, , , 
-- \b2v_inst|ReceiveData:cnt16[31]~2_combout\, )
-- \b2v_inst|ReceiveData:cnt16[16]~1\ = CARRY(((\b2v_inst|ReceiveData:cnt16[16]~regout\ & !\b2v_inst|ReceiveData:cnt16[15]~1\)))
-- \b2v_inst|ReceiveData:cnt16[16]~1COUT1_5\ = CARRY(((\b2v_inst|ReceiveData:cnt16[16]~regout\ & !\b2v_inst|ReceiveData:cnt16[15]~1\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	datab => \b2v_inst|ReceiveData:cnt16[16]~regout\,
	aclr => \RST~combout\,
	sclr => \b2v_inst|ReceiveData:cnt16[31]~2_combout\,
	ena => \b2v_inst|Selector1~1_combout\,
	cin => \b2v_inst|ReceiveData:cnt16[15]~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|ReceiveData:cnt16[16]~regout\,
	cout0 => \b2v_inst|ReceiveData:cnt16[16]~1\,
	cout1 => \b2v_inst|ReceiveData:cnt16[16]~1COUT1_5\);

-- Location: LC_X15_Y5_N1
\b2v_inst|ReceiveData:cnt16[17]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|ReceiveData:cnt16[17]~regout\ = DFFEAS(\b2v_inst|ReceiveData:cnt16[17]~regout\ $ (((((!\b2v_inst|ReceiveData:cnt16[15]~1\ & \b2v_inst|ReceiveData:cnt16[16]~1\) # (\b2v_inst|ReceiveData:cnt16[15]~1\ & 
-- \b2v_inst|ReceiveData:cnt16[16]~1COUT1_5\))))), GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , \b2v_inst|Selector1~1_combout\, , , \b2v_inst|ReceiveData:cnt16[31]~2_combout\, )
-- \b2v_inst|ReceiveData:cnt16[17]~1\ = CARRY(((!\b2v_inst|ReceiveData:cnt16[16]~1\)) # (!\b2v_inst|ReceiveData:cnt16[17]~regout\))
-- \b2v_inst|ReceiveData:cnt16[17]~1COUT1_5\ = CARRY(((!\b2v_inst|ReceiveData:cnt16[16]~1COUT1_5\)) # (!\b2v_inst|ReceiveData:cnt16[17]~regout\))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	dataa => \b2v_inst|ReceiveData:cnt16[17]~regout\,
	aclr => \RST~combout\,
	sclr => \b2v_inst|ReceiveData:cnt16[31]~2_combout\,
	ena => \b2v_inst|Selector1~1_combout\,
	cin => \b2v_inst|ReceiveData:cnt16[15]~1\,
	cin0 => \b2v_inst|ReceiveData:cnt16[16]~1\,
	cin1 => \b2v_inst|ReceiveData:cnt16[16]~1COUT1_5\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|ReceiveData:cnt16[17]~regout\,
	cout0 => \b2v_inst|ReceiveData:cnt16[17]~1\,
	cout1 => \b2v_inst|ReceiveData:cnt16[17]~1COUT1_5\);

-- Location: LC_X15_Y5_N2
\b2v_inst|ReceiveData:cnt16[18]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|ReceiveData:cnt16[18]~regout\ = DFFEAS(\b2v_inst|ReceiveData:cnt16[18]~regout\ $ ((((!(!\b2v_inst|ReceiveData:cnt16[15]~1\ & \b2v_inst|ReceiveData:cnt16[17]~1\) # (\b2v_inst|ReceiveData:cnt16[15]~1\ & 
-- \b2v_inst|ReceiveData:cnt16[17]~1COUT1_5\))))), GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , \b2v_inst|Selector1~1_combout\, , , \b2v_inst|ReceiveData:cnt16[31]~2_combout\, )
-- \b2v_inst|ReceiveData:cnt16[18]~1\ = CARRY((\b2v_inst|ReceiveData:cnt16[18]~regout\ & ((!\b2v_inst|ReceiveData:cnt16[17]~1\))))
-- \b2v_inst|ReceiveData:cnt16[18]~1COUT1_5\ = CARRY((\b2v_inst|ReceiveData:cnt16[18]~regout\ & ((!\b2v_inst|ReceiveData:cnt16[17]~1COUT1_5\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	dataa => \b2v_inst|ReceiveData:cnt16[18]~regout\,
	aclr => \RST~combout\,
	sclr => \b2v_inst|ReceiveData:cnt16[31]~2_combout\,
	ena => \b2v_inst|Selector1~1_combout\,
	cin => \b2v_inst|ReceiveData:cnt16[15]~1\,
	cin0 => \b2v_inst|ReceiveData:cnt16[17]~1\,
	cin1 => \b2v_inst|ReceiveData:cnt16[17]~1COUT1_5\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|ReceiveData:cnt16[18]~regout\,
	cout0 => \b2v_inst|ReceiveData:cnt16[18]~1\,
	cout1 => \b2v_inst|ReceiveData:cnt16[18]~1COUT1_5\);

-- Location: LC_X15_Y5_N3
\b2v_inst|ReceiveData:cnt16[19]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|ReceiveData:cnt16[19]~regout\ = DFFEAS((\b2v_inst|ReceiveData:cnt16[19]~regout\ $ (((!\b2v_inst|ReceiveData:cnt16[15]~1\ & \b2v_inst|ReceiveData:cnt16[18]~1\) # (\b2v_inst|ReceiveData:cnt16[15]~1\ & \b2v_inst|ReceiveData:cnt16[18]~1COUT1_5\)))), 
-- GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , \b2v_inst|Selector1~1_combout\, , , \b2v_inst|ReceiveData:cnt16[31]~2_combout\, )
-- \b2v_inst|ReceiveData:cnt16[19]~1\ = CARRY(((!\b2v_inst|ReceiveData:cnt16[18]~1\) # (!\b2v_inst|ReceiveData:cnt16[19]~regout\)))
-- \b2v_inst|ReceiveData:cnt16[19]~1COUT1_5\ = CARRY(((!\b2v_inst|ReceiveData:cnt16[18]~1COUT1_5\) # (!\b2v_inst|ReceiveData:cnt16[19]~regout\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	datab => \b2v_inst|ReceiveData:cnt16[19]~regout\,
	aclr => \RST~combout\,
	sclr => \b2v_inst|ReceiveData:cnt16[31]~2_combout\,
	ena => \b2v_inst|Selector1~1_combout\,
	cin => \b2v_inst|ReceiveData:cnt16[15]~1\,
	cin0 => \b2v_inst|ReceiveData:cnt16[18]~1\,
	cin1 => \b2v_inst|ReceiveData:cnt16[18]~1COUT1_5\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|ReceiveData:cnt16[19]~regout\,
	cout0 => \b2v_inst|ReceiveData:cnt16[19]~1\,
	cout1 => \b2v_inst|ReceiveData:cnt16[19]~1COUT1_5\);

-- Location: LC_X15_Y5_N4
\b2v_inst|ReceiveData:cnt16[20]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|ReceiveData:cnt16[20]~regout\ = DFFEAS((\b2v_inst|ReceiveData:cnt16[20]~regout\ $ ((!(!\b2v_inst|ReceiveData:cnt16[15]~1\ & \b2v_inst|ReceiveData:cnt16[19]~1\) # (\b2v_inst|ReceiveData:cnt16[15]~1\ & 
-- \b2v_inst|ReceiveData:cnt16[19]~1COUT1_5\)))), GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , \b2v_inst|Selector1~1_combout\, , , \b2v_inst|ReceiveData:cnt16[31]~2_combout\, )
-- \b2v_inst|ReceiveData:cnt16[20]~1\ = CARRY(((\b2v_inst|ReceiveData:cnt16[20]~regout\ & !\b2v_inst|ReceiveData:cnt16[19]~1COUT1_5\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	datab => \b2v_inst|ReceiveData:cnt16[20]~regout\,
	aclr => \RST~combout\,
	sclr => \b2v_inst|ReceiveData:cnt16[31]~2_combout\,
	ena => \b2v_inst|Selector1~1_combout\,
	cin => \b2v_inst|ReceiveData:cnt16[15]~1\,
	cin0 => \b2v_inst|ReceiveData:cnt16[19]~1\,
	cin1 => \b2v_inst|ReceiveData:cnt16[19]~1COUT1_5\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|ReceiveData:cnt16[20]~regout\,
	cout => \b2v_inst|ReceiveData:cnt16[20]~1\);

-- Location: LC_X15_Y5_N5
\b2v_inst|ReceiveData:cnt16[21]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|ReceiveData:cnt16[21]~regout\ = DFFEAS((\b2v_inst|ReceiveData:cnt16[21]~regout\ $ ((\b2v_inst|ReceiveData:cnt16[20]~1\))), GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , \b2v_inst|Selector1~1_combout\, , , 
-- \b2v_inst|ReceiveData:cnt16[31]~2_combout\, )
-- \b2v_inst|ReceiveData:cnt16[21]~1\ = CARRY(((!\b2v_inst|ReceiveData:cnt16[20]~1\) # (!\b2v_inst|ReceiveData:cnt16[21]~regout\)))
-- \b2v_inst|ReceiveData:cnt16[21]~1COUT1_5\ = CARRY(((!\b2v_inst|ReceiveData:cnt16[20]~1\) # (!\b2v_inst|ReceiveData:cnt16[21]~regout\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	datab => \b2v_inst|ReceiveData:cnt16[21]~regout\,
	aclr => \RST~combout\,
	sclr => \b2v_inst|ReceiveData:cnt16[31]~2_combout\,
	ena => \b2v_inst|Selector1~1_combout\,
	cin => \b2v_inst|ReceiveData:cnt16[20]~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|ReceiveData:cnt16[21]~regout\,
	cout0 => \b2v_inst|ReceiveData:cnt16[21]~1\,
	cout1 => \b2v_inst|ReceiveData:cnt16[21]~1COUT1_5\);

-- Location: LC_X15_Y5_N6
\b2v_inst|ReceiveData:cnt16[22]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|ReceiveData:cnt16[22]~regout\ = DFFEAS(\b2v_inst|ReceiveData:cnt16[22]~regout\ $ ((((!(!\b2v_inst|ReceiveData:cnt16[20]~1\ & \b2v_inst|ReceiveData:cnt16[21]~1\) # (\b2v_inst|ReceiveData:cnt16[20]~1\ & 
-- \b2v_inst|ReceiveData:cnt16[21]~1COUT1_5\))))), GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , \b2v_inst|Selector1~1_combout\, , , \b2v_inst|ReceiveData:cnt16[31]~2_combout\, )
-- \b2v_inst|ReceiveData:cnt16[22]~1\ = CARRY((\b2v_inst|ReceiveData:cnt16[22]~regout\ & ((!\b2v_inst|ReceiveData:cnt16[21]~1\))))
-- \b2v_inst|ReceiveData:cnt16[22]~1COUT1_5\ = CARRY((\b2v_inst|ReceiveData:cnt16[22]~regout\ & ((!\b2v_inst|ReceiveData:cnt16[21]~1COUT1_5\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	dataa => \b2v_inst|ReceiveData:cnt16[22]~regout\,
	aclr => \RST~combout\,
	sclr => \b2v_inst|ReceiveData:cnt16[31]~2_combout\,
	ena => \b2v_inst|Selector1~1_combout\,
	cin => \b2v_inst|ReceiveData:cnt16[20]~1\,
	cin0 => \b2v_inst|ReceiveData:cnt16[21]~1\,
	cin1 => \b2v_inst|ReceiveData:cnt16[21]~1COUT1_5\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|ReceiveData:cnt16[22]~regout\,
	cout0 => \b2v_inst|ReceiveData:cnt16[22]~1\,
	cout1 => \b2v_inst|ReceiveData:cnt16[22]~1COUT1_5\);

-- Location: LC_X15_Y5_N7
\b2v_inst|ReceiveData:cnt16[23]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|ReceiveData:cnt16[23]~regout\ = DFFEAS(\b2v_inst|ReceiveData:cnt16[23]~regout\ $ (((((!\b2v_inst|ReceiveData:cnt16[20]~1\ & \b2v_inst|ReceiveData:cnt16[22]~1\) # (\b2v_inst|ReceiveData:cnt16[20]~1\ & 
-- \b2v_inst|ReceiveData:cnt16[22]~1COUT1_5\))))), GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , \b2v_inst|Selector1~1_combout\, , , \b2v_inst|ReceiveData:cnt16[31]~2_combout\, )
-- \b2v_inst|ReceiveData:cnt16[23]~1\ = CARRY(((!\b2v_inst|ReceiveData:cnt16[22]~1\)) # (!\b2v_inst|ReceiveData:cnt16[23]~regout\))
-- \b2v_inst|ReceiveData:cnt16[23]~1COUT1_5\ = CARRY(((!\b2v_inst|ReceiveData:cnt16[22]~1COUT1_5\)) # (!\b2v_inst|ReceiveData:cnt16[23]~regout\))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	dataa => \b2v_inst|ReceiveData:cnt16[23]~regout\,
	aclr => \RST~combout\,
	sclr => \b2v_inst|ReceiveData:cnt16[31]~2_combout\,
	ena => \b2v_inst|Selector1~1_combout\,
	cin => \b2v_inst|ReceiveData:cnt16[20]~1\,
	cin0 => \b2v_inst|ReceiveData:cnt16[22]~1\,
	cin1 => \b2v_inst|ReceiveData:cnt16[22]~1COUT1_5\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|ReceiveData:cnt16[23]~regout\,
	cout0 => \b2v_inst|ReceiveData:cnt16[23]~1\,
	cout1 => \b2v_inst|ReceiveData:cnt16[23]~1COUT1_5\);

-- Location: LC_X15_Y5_N8
\b2v_inst|ReceiveData:cnt16[24]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|ReceiveData:cnt16[24]~regout\ = DFFEAS((\b2v_inst|ReceiveData:cnt16[24]~regout\ $ ((!(!\b2v_inst|ReceiveData:cnt16[20]~1\ & \b2v_inst|ReceiveData:cnt16[23]~1\) # (\b2v_inst|ReceiveData:cnt16[20]~1\ & 
-- \b2v_inst|ReceiveData:cnt16[23]~1COUT1_5\)))), GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , \b2v_inst|Selector1~1_combout\, , , \b2v_inst|ReceiveData:cnt16[31]~2_combout\, )
-- \b2v_inst|ReceiveData:cnt16[24]~1\ = CARRY(((\b2v_inst|ReceiveData:cnt16[24]~regout\ & !\b2v_inst|ReceiveData:cnt16[23]~1\)))
-- \b2v_inst|ReceiveData:cnt16[24]~1COUT1_5\ = CARRY(((\b2v_inst|ReceiveData:cnt16[24]~regout\ & !\b2v_inst|ReceiveData:cnt16[23]~1COUT1_5\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	datab => \b2v_inst|ReceiveData:cnt16[24]~regout\,
	aclr => \RST~combout\,
	sclr => \b2v_inst|ReceiveData:cnt16[31]~2_combout\,
	ena => \b2v_inst|Selector1~1_combout\,
	cin => \b2v_inst|ReceiveData:cnt16[20]~1\,
	cin0 => \b2v_inst|ReceiveData:cnt16[23]~1\,
	cin1 => \b2v_inst|ReceiveData:cnt16[23]~1COUT1_5\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|ReceiveData:cnt16[24]~regout\,
	cout0 => \b2v_inst|ReceiveData:cnt16[24]~1\,
	cout1 => \b2v_inst|ReceiveData:cnt16[24]~1COUT1_5\);

-- Location: LC_X15_Y5_N9
\b2v_inst|ReceiveData:cnt16[25]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|ReceiveData:cnt16[25]~regout\ = DFFEAS(\b2v_inst|ReceiveData:cnt16[25]~regout\ $ (((((!\b2v_inst|ReceiveData:cnt16[20]~1\ & \b2v_inst|ReceiveData:cnt16[24]~1\) # (\b2v_inst|ReceiveData:cnt16[20]~1\ & 
-- \b2v_inst|ReceiveData:cnt16[24]~1COUT1_5\))))), GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , \b2v_inst|Selector1~1_combout\, , , \b2v_inst|ReceiveData:cnt16[31]~2_combout\, )
-- \b2v_inst|ReceiveData:cnt16[25]~1\ = CARRY(((!\b2v_inst|ReceiveData:cnt16[24]~1COUT1_5\)) # (!\b2v_inst|ReceiveData:cnt16[25]~regout\))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	dataa => \b2v_inst|ReceiveData:cnt16[25]~regout\,
	aclr => \RST~combout\,
	sclr => \b2v_inst|ReceiveData:cnt16[31]~2_combout\,
	ena => \b2v_inst|Selector1~1_combout\,
	cin => \b2v_inst|ReceiveData:cnt16[20]~1\,
	cin0 => \b2v_inst|ReceiveData:cnt16[24]~1\,
	cin1 => \b2v_inst|ReceiveData:cnt16[24]~1COUT1_5\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|ReceiveData:cnt16[25]~regout\,
	cout => \b2v_inst|ReceiveData:cnt16[25]~1\);

-- Location: LC_X15_Y4_N0
\b2v_inst|ReceiveData:cnt16[26]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|ReceiveData:cnt16[26]~regout\ = DFFEAS((\b2v_inst|ReceiveData:cnt16[26]~regout\ $ ((!\b2v_inst|ReceiveData:cnt16[25]~1\))), GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , \b2v_inst|Selector1~1_combout\, , , 
-- \b2v_inst|ReceiveData:cnt16[31]~2_combout\, )
-- \b2v_inst|ReceiveData:cnt16[26]~1\ = CARRY(((\b2v_inst|ReceiveData:cnt16[26]~regout\ & !\b2v_inst|ReceiveData:cnt16[25]~1\)))
-- \b2v_inst|ReceiveData:cnt16[26]~1COUT1_5\ = CARRY(((\b2v_inst|ReceiveData:cnt16[26]~regout\ & !\b2v_inst|ReceiveData:cnt16[25]~1\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	datab => \b2v_inst|ReceiveData:cnt16[26]~regout\,
	aclr => \RST~combout\,
	sclr => \b2v_inst|ReceiveData:cnt16[31]~2_combout\,
	ena => \b2v_inst|Selector1~1_combout\,
	cin => \b2v_inst|ReceiveData:cnt16[25]~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|ReceiveData:cnt16[26]~regout\,
	cout0 => \b2v_inst|ReceiveData:cnt16[26]~1\,
	cout1 => \b2v_inst|ReceiveData:cnt16[26]~1COUT1_5\);

-- Location: LC_X15_Y4_N1
\b2v_inst|ReceiveData:cnt16[27]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|ReceiveData:cnt16[27]~regout\ = DFFEAS(\b2v_inst|ReceiveData:cnt16[27]~regout\ $ (((((!\b2v_inst|ReceiveData:cnt16[25]~1\ & \b2v_inst|ReceiveData:cnt16[26]~1\) # (\b2v_inst|ReceiveData:cnt16[25]~1\ & 
-- \b2v_inst|ReceiveData:cnt16[26]~1COUT1_5\))))), GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , \b2v_inst|Selector1~1_combout\, , , \b2v_inst|ReceiveData:cnt16[31]~2_combout\, )
-- \b2v_inst|ReceiveData:cnt16[27]~1\ = CARRY(((!\b2v_inst|ReceiveData:cnt16[26]~1\)) # (!\b2v_inst|ReceiveData:cnt16[27]~regout\))
-- \b2v_inst|ReceiveData:cnt16[27]~1COUT1_5\ = CARRY(((!\b2v_inst|ReceiveData:cnt16[26]~1COUT1_5\)) # (!\b2v_inst|ReceiveData:cnt16[27]~regout\))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	dataa => \b2v_inst|ReceiveData:cnt16[27]~regout\,
	aclr => \RST~combout\,
	sclr => \b2v_inst|ReceiveData:cnt16[31]~2_combout\,
	ena => \b2v_inst|Selector1~1_combout\,
	cin => \b2v_inst|ReceiveData:cnt16[25]~1\,
	cin0 => \b2v_inst|ReceiveData:cnt16[26]~1\,
	cin1 => \b2v_inst|ReceiveData:cnt16[26]~1COUT1_5\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|ReceiveData:cnt16[27]~regout\,
	cout0 => \b2v_inst|ReceiveData:cnt16[27]~1\,
	cout1 => \b2v_inst|ReceiveData:cnt16[27]~1COUT1_5\);

-- Location: LC_X15_Y4_N8
\b2v_inst|Equal3~8\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|Equal3~8_combout\ = (\b2v_inst|ReceiveData:cnt16[27]~regout\) # ((\b2v_inst|ReceiveData:cnt16[26]~regout\) # ((\b2v_inst|ReceiveData:cnt16[24]~regout\) # (\b2v_inst|ReceiveData:cnt16[25]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|ReceiveData:cnt16[27]~regout\,
	datab => \b2v_inst|ReceiveData:cnt16[26]~regout\,
	datac => \b2v_inst|ReceiveData:cnt16[24]~regout\,
	datad => \b2v_inst|ReceiveData:cnt16[25]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst|Equal3~8_combout\);

-- Location: LC_X15_Y3_N0
\b2v_inst|Equal3~5\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|Equal3~5_combout\ = (((\b2v_inst|ReceiveData:cnt16[17]~regout\) # (\b2v_inst|ReceiveData:cnt16[16]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|ReceiveData:cnt16[17]~regout\,
	datad => \b2v_inst|ReceiveData:cnt16[16]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst|Equal3~5_combout\);

-- Location: LC_X12_Y5_N2
\b2v_inst|Equal3~6\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|Equal3~6_combout\ = (\b2v_inst|ReceiveData:cnt16[20]~regout\) # ((\b2v_inst|ReceiveData:cnt16[21]~regout\) # ((\b2v_inst|ReceiveData:cnt16[23]~regout\) # (\b2v_inst|ReceiveData:cnt16[22]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|ReceiveData:cnt16[20]~regout\,
	datab => \b2v_inst|ReceiveData:cnt16[21]~regout\,
	datac => \b2v_inst|ReceiveData:cnt16[23]~regout\,
	datad => \b2v_inst|ReceiveData:cnt16[22]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst|Equal3~6_combout\);

-- Location: LC_X16_Y7_N0
\b2v_inst|Equal3~7\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|Equal3~7_combout\ = (\b2v_inst|ReceiveData:cnt16[18]~regout\) # ((\b2v_inst|ReceiveData:cnt16[19]~regout\) # ((\b2v_inst|Equal3~5_combout\) # (\b2v_inst|Equal3~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|ReceiveData:cnt16[18]~regout\,
	datab => \b2v_inst|ReceiveData:cnt16[19]~regout\,
	datac => \b2v_inst|Equal3~5_combout\,
	datad => \b2v_inst|Equal3~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst|Equal3~7_combout\);

-- Location: LC_X15_Y4_N2
\b2v_inst|ReceiveData:cnt16[28]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|ReceiveData:cnt16[28]~regout\ = DFFEAS(\b2v_inst|ReceiveData:cnt16[28]~regout\ $ ((((!(!\b2v_inst|ReceiveData:cnt16[25]~1\ & \b2v_inst|ReceiveData:cnt16[27]~1\) # (\b2v_inst|ReceiveData:cnt16[25]~1\ & 
-- \b2v_inst|ReceiveData:cnt16[27]~1COUT1_5\))))), GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , \b2v_inst|Selector1~1_combout\, , , \b2v_inst|ReceiveData:cnt16[31]~2_combout\, )
-- \b2v_inst|ReceiveData:cnt16[28]~1\ = CARRY((\b2v_inst|ReceiveData:cnt16[28]~regout\ & ((!\b2v_inst|ReceiveData:cnt16[27]~1\))))
-- \b2v_inst|ReceiveData:cnt16[28]~1COUT1_5\ = CARRY((\b2v_inst|ReceiveData:cnt16[28]~regout\ & ((!\b2v_inst|ReceiveData:cnt16[27]~1COUT1_5\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	dataa => \b2v_inst|ReceiveData:cnt16[28]~regout\,
	aclr => \RST~combout\,
	sclr => \b2v_inst|ReceiveData:cnt16[31]~2_combout\,
	ena => \b2v_inst|Selector1~1_combout\,
	cin => \b2v_inst|ReceiveData:cnt16[25]~1\,
	cin0 => \b2v_inst|ReceiveData:cnt16[27]~1\,
	cin1 => \b2v_inst|ReceiveData:cnt16[27]~1COUT1_5\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|ReceiveData:cnt16[28]~regout\,
	cout0 => \b2v_inst|ReceiveData:cnt16[28]~1\,
	cout1 => \b2v_inst|ReceiveData:cnt16[28]~1COUT1_5\);

-- Location: LC_X15_Y4_N3
\b2v_inst|ReceiveData:cnt16[29]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|ReceiveData:cnt16[29]~regout\ = DFFEAS((\b2v_inst|ReceiveData:cnt16[29]~regout\ $ (((!\b2v_inst|ReceiveData:cnt16[25]~1\ & \b2v_inst|ReceiveData:cnt16[28]~1\) # (\b2v_inst|ReceiveData:cnt16[25]~1\ & \b2v_inst|ReceiveData:cnt16[28]~1COUT1_5\)))), 
-- GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , \b2v_inst|Selector1~1_combout\, , , \b2v_inst|ReceiveData:cnt16[31]~2_combout\, )
-- \b2v_inst|ReceiveData:cnt16[29]~1\ = CARRY(((!\b2v_inst|ReceiveData:cnt16[28]~1\) # (!\b2v_inst|ReceiveData:cnt16[29]~regout\)))
-- \b2v_inst|ReceiveData:cnt16[29]~1COUT1_5\ = CARRY(((!\b2v_inst|ReceiveData:cnt16[28]~1COUT1_5\) # (!\b2v_inst|ReceiveData:cnt16[29]~regout\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	datab => \b2v_inst|ReceiveData:cnt16[29]~regout\,
	aclr => \RST~combout\,
	sclr => \b2v_inst|ReceiveData:cnt16[31]~2_combout\,
	ena => \b2v_inst|Selector1~1_combout\,
	cin => \b2v_inst|ReceiveData:cnt16[25]~1\,
	cin0 => \b2v_inst|ReceiveData:cnt16[28]~1\,
	cin1 => \b2v_inst|ReceiveData:cnt16[28]~1COUT1_5\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|ReceiveData:cnt16[29]~regout\,
	cout0 => \b2v_inst|ReceiveData:cnt16[29]~1\,
	cout1 => \b2v_inst|ReceiveData:cnt16[29]~1COUT1_5\);

-- Location: LC_X15_Y4_N4
\b2v_inst|ReceiveData:cnt16[30]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|ReceiveData:cnt16[30]~regout\ = DFFEAS((\b2v_inst|ReceiveData:cnt16[30]~regout\ $ ((!(!\b2v_inst|ReceiveData:cnt16[25]~1\ & \b2v_inst|ReceiveData:cnt16[29]~1\) # (\b2v_inst|ReceiveData:cnt16[25]~1\ & 
-- \b2v_inst|ReceiveData:cnt16[29]~1COUT1_5\)))), GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , \b2v_inst|Selector1~1_combout\, , , \b2v_inst|ReceiveData:cnt16[31]~2_combout\, )
-- \b2v_inst|ReceiveData:cnt16[30]~1\ = CARRY(((\b2v_inst|ReceiveData:cnt16[30]~regout\ & !\b2v_inst|ReceiveData:cnt16[29]~1COUT1_5\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	datab => \b2v_inst|ReceiveData:cnt16[30]~regout\,
	aclr => \RST~combout\,
	sclr => \b2v_inst|ReceiveData:cnt16[31]~2_combout\,
	ena => \b2v_inst|Selector1~1_combout\,
	cin => \b2v_inst|ReceiveData:cnt16[25]~1\,
	cin0 => \b2v_inst|ReceiveData:cnt16[29]~1\,
	cin1 => \b2v_inst|ReceiveData:cnt16[29]~1COUT1_5\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|ReceiveData:cnt16[30]~regout\,
	cout => \b2v_inst|ReceiveData:cnt16[30]~1\);

-- Location: LC_X15_Y4_N5
\b2v_inst|ReceiveData:cnt16[31]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|ReceiveData:cnt16[31]~regout\ = DFFEAS(((\b2v_inst|ReceiveData:cnt16[30]~1\ $ (\b2v_inst|ReceiveData:cnt16[31]~regout\))), GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , \b2v_inst|Selector1~1_combout\, , , 
-- \b2v_inst|ReceiveData:cnt16[31]~2_combout\, )

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	datad => \b2v_inst|ReceiveData:cnt16[31]~regout\,
	aclr => \RST~combout\,
	sclr => \b2v_inst|ReceiveData:cnt16[31]~2_combout\,
	ena => \b2v_inst|Selector1~1_combout\,
	cin => \b2v_inst|ReceiveData:cnt16[30]~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|ReceiveData:cnt16[31]~regout\);

-- Location: LC_X15_Y4_N6
\b2v_inst|Equal3~9\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|Equal3~9_combout\ = (\b2v_inst|ReceiveData:cnt16[28]~regout\) # ((\b2v_inst|ReceiveData:cnt16[29]~regout\) # ((\b2v_inst|ReceiveData:cnt16[30]~regout\) # (\b2v_inst|ReceiveData:cnt16[31]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|ReceiveData:cnt16[28]~regout\,
	datab => \b2v_inst|ReceiveData:cnt16[29]~regout\,
	datac => \b2v_inst|ReceiveData:cnt16[30]~regout\,
	datad => \b2v_inst|ReceiveData:cnt16[31]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst|Equal3~9_combout\);

-- Location: LC_X16_Y7_N1
\b2v_inst|Equal3~0\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|Equal3~0_combout\ = (\b2v_inst|ReceiveData:cnt16[2]~regout\) # ((\b2v_inst|ReceiveData:cnt16[3]~regout\) # ((\b2v_inst|ReceiveData:cnt16[1]~regout\) # (\b2v_inst|ReceiveData:cnt16[0]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|ReceiveData:cnt16[2]~regout\,
	datab => \b2v_inst|ReceiveData:cnt16[3]~regout\,
	datac => \b2v_inst|ReceiveData:cnt16[1]~regout\,
	datad => \b2v_inst|ReceiveData:cnt16[0]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst|Equal3~0_combout\);

-- Location: LC_X16_Y8_N0
\b2v_inst|Equal3~1\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|Equal3~1_combout\ = (\b2v_inst|ReceiveData:cnt16[6]~regout\) # (((\b2v_inst|ReceiveData:cnt16[7]~regout\) # (\b2v_inst|ReceiveData:cnt16[5]~regout\)) # (!\b2v_inst|ReceiveData:cnt16[4]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffb",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|ReceiveData:cnt16[6]~regout\,
	datab => \b2v_inst|ReceiveData:cnt16[4]~regout\,
	datac => \b2v_inst|ReceiveData:cnt16[7]~regout\,
	datad => \b2v_inst|ReceiveData:cnt16[5]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst|Equal3~1_combout\);

-- Location: LC_X12_Y6_N2
\b2v_inst|Equal3~3\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|Equal3~3_combout\ = (\b2v_inst|ReceiveData:cnt16[15]~regout\) # ((\b2v_inst|ReceiveData:cnt16[13]~regout\) # ((\b2v_inst|ReceiveData:cnt16[14]~regout\) # (\b2v_inst|ReceiveData:cnt16[12]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|ReceiveData:cnt16[15]~regout\,
	datab => \b2v_inst|ReceiveData:cnt16[13]~regout\,
	datac => \b2v_inst|ReceiveData:cnt16[14]~regout\,
	datad => \b2v_inst|ReceiveData:cnt16[12]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst|Equal3~3_combout\);

-- Location: LC_X11_Y6_N9
\b2v_inst|Equal3~2\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|Equal3~2_combout\ = (\b2v_inst|ReceiveData:cnt16[8]~regout\) # ((\b2v_inst|ReceiveData:cnt16[10]~regout\) # ((\b2v_inst|ReceiveData:cnt16[9]~regout\) # (\b2v_inst|ReceiveData:cnt16[11]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|ReceiveData:cnt16[8]~regout\,
	datab => \b2v_inst|ReceiveData:cnt16[10]~regout\,
	datac => \b2v_inst|ReceiveData:cnt16[9]~regout\,
	datad => \b2v_inst|ReceiveData:cnt16[11]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst|Equal3~2_combout\);

-- Location: LC_X16_Y7_N2
\b2v_inst|Equal3~4\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|Equal3~4_combout\ = (\b2v_inst|Equal3~0_combout\) # ((\b2v_inst|Equal3~1_combout\) # ((\b2v_inst|Equal3~3_combout\) # (\b2v_inst|Equal3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Equal3~0_combout\,
	datab => \b2v_inst|Equal3~1_combout\,
	datac => \b2v_inst|Equal3~3_combout\,
	datad => \b2v_inst|Equal3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst|Equal3~4_combout\);

-- Location: LC_X16_Y7_N3
\b2v_inst|Equal3~10\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|Equal3~10_combout\ = (\b2v_inst|Equal3~8_combout\) # ((\b2v_inst|Equal3~7_combout\) # ((\b2v_inst|Equal3~9_combout\) # (\b2v_inst|Equal3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Equal3~8_combout\,
	datab => \b2v_inst|Equal3~7_combout\,
	datac => \b2v_inst|Equal3~9_combout\,
	datad => \b2v_inst|Equal3~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst|Equal3~10_combout\);

-- Location: LC_X22_Y8_N5
\b2v_inst|ReceiveData:cnt5[31]~1\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|ReceiveData:cnt5[31]~1_combout\ = (!\RST~combout\ & (!\b2v_inst|state.r_start~regout\ & (!\b2v_inst|ReceiveData:have_Told~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RST~combout\,
	datab => \b2v_inst|state.r_start~regout\,
	datac => \b2v_inst|ReceiveData:have_Told~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst|ReceiveData:cnt5[31]~1_combout\);

-- Location: LC_X25_Y10_N4
\b2v_inst|ReceiveData:cnt5[28]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|ReceiveData:cnt5[28]~regout\ = DFFEAS(GND, GLOBAL(\b2v_inst2|bclk~regout\), VCC, , \b2v_inst|ReceiveData:cnt5[31]~1_combout\, \b2v_inst|Add0~140_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	datac => \b2v_inst|Add0~140_combout\,
	aclr => GND,
	sload => VCC,
	ena => \b2v_inst|ReceiveData:cnt5[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|ReceiveData:cnt5[28]~regout\);

-- Location: LC_X24_Y11_N4
\b2v_inst|Add0~0\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|Add0~0_combout\ = ((!\b2v_inst|ReceiveData:cnt5[0]~regout\))
-- \b2v_inst|Add0~2\ = CARRY(((\b2v_inst|ReceiveData:cnt5[0]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|ReceiveData:cnt5[0]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst|Add0~0_combout\,
	cout => \b2v_inst|Add0~2\);

-- Location: LC_X24_Y11_N3
\b2v_inst|ReceiveData:cnt5[0]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|ReceiveData:cnt5[0]~regout\ = DFFEAS((((\b2v_inst|Add0~0_combout\ & !\b2v_inst|Equal0~10_combout\))), GLOBAL(\b2v_inst2|bclk~regout\), VCC, , \b2v_inst|ReceiveData:cnt5[31]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	datac => \b2v_inst|Add0~0_combout\,
	datad => \b2v_inst|Equal0~10_combout\,
	aclr => GND,
	ena => \b2v_inst|ReceiveData:cnt5[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|ReceiveData:cnt5[0]~regout\);

-- Location: LC_X24_Y11_N5
\b2v_inst|Add0~10\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|Add0~10_combout\ = \b2v_inst|ReceiveData:cnt5[1]~regout\ $ ((((\b2v_inst|Add0~2\))))
-- \b2v_inst|Add0~12\ = CARRY(((!\b2v_inst|Add0~2\)) # (!\b2v_inst|ReceiveData:cnt5[1]~regout\))
-- \b2v_inst|Add0~12COUT1_186\ = CARRY(((!\b2v_inst|Add0~2\)) # (!\b2v_inst|ReceiveData:cnt5[1]~regout\))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|ReceiveData:cnt5[1]~regout\,
	cin => \b2v_inst|Add0~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst|Add0~10_combout\,
	cout0 => \b2v_inst|Add0~12\,
	cout1 => \b2v_inst|Add0~12COUT1_186\);

-- Location: LC_X24_Y11_N2
\b2v_inst|ReceiveData:cnt5[1]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|ReceiveData:cnt5[1]~regout\ = DFFEAS((((\b2v_inst|Add0~10_combout\))), GLOBAL(\b2v_inst2|bclk~regout\), VCC, , \b2v_inst|ReceiveData:cnt5[31]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	datad => \b2v_inst|Add0~10_combout\,
	aclr => GND,
	ena => \b2v_inst|ReceiveData:cnt5[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|ReceiveData:cnt5[1]~regout\);

-- Location: LC_X24_Y11_N6
\b2v_inst|Add0~5\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|Add0~5_combout\ = (\b2v_inst|ReceiveData:cnt5[2]~regout\ $ ((!(!\b2v_inst|Add0~2\ & \b2v_inst|Add0~12\) # (\b2v_inst|Add0~2\ & \b2v_inst|Add0~12COUT1_186\))))
-- \b2v_inst|Add0~7\ = CARRY(((\b2v_inst|ReceiveData:cnt5[2]~regout\ & !\b2v_inst|Add0~12\)))
-- \b2v_inst|Add0~7COUT1_188\ = CARRY(((\b2v_inst|ReceiveData:cnt5[2]~regout\ & !\b2v_inst|Add0~12COUT1_186\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|ReceiveData:cnt5[2]~regout\,
	cin => \b2v_inst|Add0~2\,
	cin0 => \b2v_inst|Add0~12\,
	cin1 => \b2v_inst|Add0~12COUT1_186\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst|Add0~5_combout\,
	cout0 => \b2v_inst|Add0~7\,
	cout1 => \b2v_inst|Add0~7COUT1_188\);

-- Location: LC_X24_Y11_N0
\b2v_inst|ReceiveData:cnt5[2]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|ReceiveData:cnt5[2]~regout\ = DFFEAS((\b2v_inst|Add0~5_combout\ & (((!\b2v_inst|Equal0~10_combout\)))), GLOBAL(\b2v_inst2|bclk~regout\), VCC, , \b2v_inst|ReceiveData:cnt5[31]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00aa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	dataa => \b2v_inst|Add0~5_combout\,
	datad => \b2v_inst|Equal0~10_combout\,
	aclr => GND,
	ena => \b2v_inst|ReceiveData:cnt5[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|ReceiveData:cnt5[2]~regout\);

-- Location: LC_X24_Y11_N7
\b2v_inst|Add0~15\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|Add0~15_combout\ = \b2v_inst|ReceiveData:cnt5[3]~regout\ $ (((((!\b2v_inst|Add0~2\ & \b2v_inst|Add0~7\) # (\b2v_inst|Add0~2\ & \b2v_inst|Add0~7COUT1_188\)))))
-- \b2v_inst|Add0~17\ = CARRY(((!\b2v_inst|Add0~7\)) # (!\b2v_inst|ReceiveData:cnt5[3]~regout\))
-- \b2v_inst|Add0~17COUT1_190\ = CARRY(((!\b2v_inst|Add0~7COUT1_188\)) # (!\b2v_inst|ReceiveData:cnt5[3]~regout\))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|ReceiveData:cnt5[3]~regout\,
	cin => \b2v_inst|Add0~2\,
	cin0 => \b2v_inst|Add0~7\,
	cin1 => \b2v_inst|Add0~7COUT1_188\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst|Add0~15_combout\,
	cout0 => \b2v_inst|Add0~17\,
	cout1 => \b2v_inst|Add0~17COUT1_190\);

-- Location: LC_X25_Y10_N8
\b2v_inst|ReceiveData:cnt5[3]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|ReceiveData:cnt5[3]~regout\ = DFFEAS(GND, GLOBAL(\b2v_inst2|bclk~regout\), VCC, , \b2v_inst|ReceiveData:cnt5[31]~1_combout\, \b2v_inst|Add0~15_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	datac => \b2v_inst|Add0~15_combout\,
	aclr => GND,
	sload => VCC,
	ena => \b2v_inst|ReceiveData:cnt5[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|ReceiveData:cnt5[3]~regout\);

-- Location: LC_X24_Y11_N8
\b2v_inst|Add0~20\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|Add0~20_combout\ = \b2v_inst|ReceiveData:cnt5[4]~regout\ $ ((((!(!\b2v_inst|Add0~2\ & \b2v_inst|Add0~17\) # (\b2v_inst|Add0~2\ & \b2v_inst|Add0~17COUT1_190\)))))
-- \b2v_inst|Add0~22\ = CARRY((\b2v_inst|ReceiveData:cnt5[4]~regout\ & ((!\b2v_inst|Add0~17\))))
-- \b2v_inst|Add0~22COUT1_192\ = CARRY((\b2v_inst|ReceiveData:cnt5[4]~regout\ & ((!\b2v_inst|Add0~17COUT1_190\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|ReceiveData:cnt5[4]~regout\,
	cin => \b2v_inst|Add0~2\,
	cin0 => \b2v_inst|Add0~17\,
	cin1 => \b2v_inst|Add0~17COUT1_190\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst|Add0~20_combout\,
	cout0 => \b2v_inst|Add0~22\,
	cout1 => \b2v_inst|Add0~22COUT1_192\);

-- Location: LC_X25_Y10_N2
\b2v_inst|ReceiveData:cnt5[4]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|ReceiveData:cnt5[4]~regout\ = DFFEAS(GND, GLOBAL(\b2v_inst2|bclk~regout\), VCC, , \b2v_inst|ReceiveData:cnt5[31]~1_combout\, \b2v_inst|Add0~20_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	datac => \b2v_inst|Add0~20_combout\,
	aclr => GND,
	sload => VCC,
	ena => \b2v_inst|ReceiveData:cnt5[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|ReceiveData:cnt5[4]~regout\);

-- Location: LC_X24_Y11_N9
\b2v_inst|Add0~25\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|Add0~25_combout\ = \b2v_inst|ReceiveData:cnt5[5]~regout\ $ (((((!\b2v_inst|Add0~2\ & \b2v_inst|Add0~22\) # (\b2v_inst|Add0~2\ & \b2v_inst|Add0~22COUT1_192\)))))
-- \b2v_inst|Add0~27\ = CARRY(((!\b2v_inst|Add0~22COUT1_192\)) # (!\b2v_inst|ReceiveData:cnt5[5]~regout\))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|ReceiveData:cnt5[5]~regout\,
	cin => \b2v_inst|Add0~2\,
	cin0 => \b2v_inst|Add0~22\,
	cin1 => \b2v_inst|Add0~22COUT1_192\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst|Add0~25_combout\,
	cout => \b2v_inst|Add0~27\);

-- Location: LC_X25_Y10_N5
\b2v_inst|ReceiveData:cnt5[5]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|ReceiveData:cnt5[5]~regout\ = DFFEAS((((\b2v_inst|Add0~25_combout\))), GLOBAL(\b2v_inst2|bclk~regout\), VCC, , \b2v_inst|ReceiveData:cnt5[31]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	datad => \b2v_inst|Add0~25_combout\,
	aclr => GND,
	ena => \b2v_inst|ReceiveData:cnt5[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|ReceiveData:cnt5[5]~regout\);

-- Location: LC_X24_Y10_N0
\b2v_inst|Add0~30\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|Add0~30_combout\ = \b2v_inst|ReceiveData:cnt5[6]~regout\ $ ((((!\b2v_inst|Add0~27\))))
-- \b2v_inst|Add0~32\ = CARRY((\b2v_inst|ReceiveData:cnt5[6]~regout\ & ((!\b2v_inst|Add0~27\))))
-- \b2v_inst|Add0~32COUT1_194\ = CARRY((\b2v_inst|ReceiveData:cnt5[6]~regout\ & ((!\b2v_inst|Add0~27\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|ReceiveData:cnt5[6]~regout\,
	cin => \b2v_inst|Add0~27\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst|Add0~30_combout\,
	cout0 => \b2v_inst|Add0~32\,
	cout1 => \b2v_inst|Add0~32COUT1_194\);

-- Location: LC_X25_Y10_N3
\b2v_inst|ReceiveData:cnt5[6]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|ReceiveData:cnt5[6]~regout\ = DFFEAS((((\b2v_inst|Add0~30_combout\))), GLOBAL(\b2v_inst2|bclk~regout\), VCC, , \b2v_inst|ReceiveData:cnt5[31]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	datad => \b2v_inst|Add0~30_combout\,
	aclr => GND,
	ena => \b2v_inst|ReceiveData:cnt5[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|ReceiveData:cnt5[6]~regout\);

-- Location: LC_X24_Y10_N1
\b2v_inst|Add0~35\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|Add0~35_combout\ = \b2v_inst|ReceiveData:cnt5[7]~regout\ $ (((((!\b2v_inst|Add0~27\ & \b2v_inst|Add0~32\) # (\b2v_inst|Add0~27\ & \b2v_inst|Add0~32COUT1_194\)))))
-- \b2v_inst|Add0~37\ = CARRY(((!\b2v_inst|Add0~32\)) # (!\b2v_inst|ReceiveData:cnt5[7]~regout\))
-- \b2v_inst|Add0~37COUT1_196\ = CARRY(((!\b2v_inst|Add0~32COUT1_194\)) # (!\b2v_inst|ReceiveData:cnt5[7]~regout\))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|ReceiveData:cnt5[7]~regout\,
	cin => \b2v_inst|Add0~27\,
	cin0 => \b2v_inst|Add0~32\,
	cin1 => \b2v_inst|Add0~32COUT1_194\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst|Add0~35_combout\,
	cout0 => \b2v_inst|Add0~37\,
	cout1 => \b2v_inst|Add0~37COUT1_196\);

-- Location: LC_X25_Y10_N6
\b2v_inst|ReceiveData:cnt5[7]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|ReceiveData:cnt5[7]~regout\ = DFFEAS((((\b2v_inst|Add0~35_combout\))), GLOBAL(\b2v_inst2|bclk~regout\), VCC, , \b2v_inst|ReceiveData:cnt5[31]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	datad => \b2v_inst|Add0~35_combout\,
	aclr => GND,
	ena => \b2v_inst|ReceiveData:cnt5[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|ReceiveData:cnt5[7]~regout\);

-- Location: LC_X24_Y10_N2
\b2v_inst|Add0~40\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|Add0~40_combout\ = (\b2v_inst|ReceiveData:cnt5[8]~regout\ $ ((!(!\b2v_inst|Add0~27\ & \b2v_inst|Add0~37\) # (\b2v_inst|Add0~27\ & \b2v_inst|Add0~37COUT1_196\))))
-- \b2v_inst|Add0~42\ = CARRY(((\b2v_inst|ReceiveData:cnt5[8]~regout\ & !\b2v_inst|Add0~37\)))
-- \b2v_inst|Add0~42COUT1_198\ = CARRY(((\b2v_inst|ReceiveData:cnt5[8]~regout\ & !\b2v_inst|Add0~37COUT1_196\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|ReceiveData:cnt5[8]~regout\,
	cin => \b2v_inst|Add0~27\,
	cin0 => \b2v_inst|Add0~37\,
	cin1 => \b2v_inst|Add0~37COUT1_196\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst|Add0~40_combout\,
	cout0 => \b2v_inst|Add0~42\,
	cout1 => \b2v_inst|Add0~42COUT1_198\);

-- Location: LC_X25_Y10_N9
\b2v_inst|ReceiveData:cnt5[8]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|ReceiveData:cnt5[8]~regout\ = DFFEAS((((\b2v_inst|Add0~40_combout\))), GLOBAL(\b2v_inst2|bclk~regout\), VCC, , \b2v_inst|ReceiveData:cnt5[31]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	datad => \b2v_inst|Add0~40_combout\,
	aclr => GND,
	ena => \b2v_inst|ReceiveData:cnt5[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|ReceiveData:cnt5[8]~regout\);

-- Location: LC_X24_Y10_N3
\b2v_inst|Add0~45\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|Add0~45_combout\ = \b2v_inst|ReceiveData:cnt5[9]~regout\ $ (((((!\b2v_inst|Add0~27\ & \b2v_inst|Add0~42\) # (\b2v_inst|Add0~27\ & \b2v_inst|Add0~42COUT1_198\)))))
-- \b2v_inst|Add0~47\ = CARRY(((!\b2v_inst|Add0~42\)) # (!\b2v_inst|ReceiveData:cnt5[9]~regout\))
-- \b2v_inst|Add0~47COUT1_200\ = CARRY(((!\b2v_inst|Add0~42COUT1_198\)) # (!\b2v_inst|ReceiveData:cnt5[9]~regout\))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|ReceiveData:cnt5[9]~regout\,
	cin => \b2v_inst|Add0~27\,
	cin0 => \b2v_inst|Add0~42\,
	cin1 => \b2v_inst|Add0~42COUT1_198\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst|Add0~45_combout\,
	cout0 => \b2v_inst|Add0~47\,
	cout1 => \b2v_inst|Add0~47COUT1_200\);

-- Location: LC_X25_Y11_N2
\b2v_inst|ReceiveData:cnt5[9]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|ReceiveData:cnt5[9]~regout\ = DFFEAS((((\b2v_inst|Add0~45_combout\))), GLOBAL(\b2v_inst2|bclk~regout\), VCC, , \b2v_inst|ReceiveData:cnt5[31]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	datad => \b2v_inst|Add0~45_combout\,
	aclr => GND,
	ena => \b2v_inst|ReceiveData:cnt5[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|ReceiveData:cnt5[9]~regout\);

-- Location: LC_X24_Y10_N4
\b2v_inst|Add0~50\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|Add0~50_combout\ = (\b2v_inst|ReceiveData:cnt5[10]~regout\ $ ((!(!\b2v_inst|Add0~27\ & \b2v_inst|Add0~47\) # (\b2v_inst|Add0~27\ & \b2v_inst|Add0~47COUT1_200\))))
-- \b2v_inst|Add0~52\ = CARRY(((\b2v_inst|ReceiveData:cnt5[10]~regout\ & !\b2v_inst|Add0~47COUT1_200\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|ReceiveData:cnt5[10]~regout\,
	cin => \b2v_inst|Add0~27\,
	cin0 => \b2v_inst|Add0~47\,
	cin1 => \b2v_inst|Add0~47COUT1_200\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst|Add0~50_combout\,
	cout => \b2v_inst|Add0~52\);

-- Location: LC_X25_Y11_N9
\b2v_inst|ReceiveData:cnt5[10]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|ReceiveData:cnt5[10]~regout\ = DFFEAS(GND, GLOBAL(\b2v_inst2|bclk~regout\), VCC, , \b2v_inst|ReceiveData:cnt5[31]~1_combout\, \b2v_inst|Add0~50_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	datac => \b2v_inst|Add0~50_combout\,
	aclr => GND,
	sload => VCC,
	ena => \b2v_inst|ReceiveData:cnt5[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|ReceiveData:cnt5[10]~regout\);

-- Location: LC_X24_Y10_N5
\b2v_inst|Add0~55\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|Add0~55_combout\ = \b2v_inst|ReceiveData:cnt5[11]~regout\ $ ((((\b2v_inst|Add0~52\))))
-- \b2v_inst|Add0~57\ = CARRY(((!\b2v_inst|Add0~52\)) # (!\b2v_inst|ReceiveData:cnt5[11]~regout\))
-- \b2v_inst|Add0~57COUT1_202\ = CARRY(((!\b2v_inst|Add0~52\)) # (!\b2v_inst|ReceiveData:cnt5[11]~regout\))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|ReceiveData:cnt5[11]~regout\,
	cin => \b2v_inst|Add0~52\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst|Add0~55_combout\,
	cout0 => \b2v_inst|Add0~57\,
	cout1 => \b2v_inst|Add0~57COUT1_202\);

-- Location: LC_X25_Y10_N0
\b2v_inst|ReceiveData:cnt5[11]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|ReceiveData:cnt5[11]~regout\ = DFFEAS(GND, GLOBAL(\b2v_inst2|bclk~regout\), VCC, , \b2v_inst|ReceiveData:cnt5[31]~1_combout\, \b2v_inst|Add0~55_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	datac => \b2v_inst|Add0~55_combout\,
	aclr => GND,
	sload => VCC,
	ena => \b2v_inst|ReceiveData:cnt5[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|ReceiveData:cnt5[11]~regout\);

-- Location: LC_X24_Y10_N6
\b2v_inst|Add0~60\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|Add0~60_combout\ = \b2v_inst|ReceiveData:cnt5[12]~regout\ $ ((((!(!\b2v_inst|Add0~52\ & \b2v_inst|Add0~57\) # (\b2v_inst|Add0~52\ & \b2v_inst|Add0~57COUT1_202\)))))
-- \b2v_inst|Add0~62\ = CARRY((\b2v_inst|ReceiveData:cnt5[12]~regout\ & ((!\b2v_inst|Add0~57\))))
-- \b2v_inst|Add0~62COUT1_204\ = CARRY((\b2v_inst|ReceiveData:cnt5[12]~regout\ & ((!\b2v_inst|Add0~57COUT1_202\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|ReceiveData:cnt5[12]~regout\,
	cin => \b2v_inst|Add0~52\,
	cin0 => \b2v_inst|Add0~57\,
	cin1 => \b2v_inst|Add0~57COUT1_202\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst|Add0~60_combout\,
	cout0 => \b2v_inst|Add0~62\,
	cout1 => \b2v_inst|Add0~62COUT1_204\);

-- Location: LC_X25_Y11_N6
\b2v_inst|ReceiveData:cnt5[12]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|ReceiveData:cnt5[12]~regout\ = DFFEAS(GND, GLOBAL(\b2v_inst2|bclk~regout\), VCC, , \b2v_inst|ReceiveData:cnt5[31]~1_combout\, \b2v_inst|Add0~60_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	datac => \b2v_inst|Add0~60_combout\,
	aclr => GND,
	sload => VCC,
	ena => \b2v_inst|ReceiveData:cnt5[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|ReceiveData:cnt5[12]~regout\);

-- Location: LC_X24_Y10_N7
\b2v_inst|Add0~65\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|Add0~65_combout\ = (\b2v_inst|ReceiveData:cnt5[13]~regout\ $ (((!\b2v_inst|Add0~52\ & \b2v_inst|Add0~62\) # (\b2v_inst|Add0~52\ & \b2v_inst|Add0~62COUT1_204\))))
-- \b2v_inst|Add0~67\ = CARRY(((!\b2v_inst|Add0~62\) # (!\b2v_inst|ReceiveData:cnt5[13]~regout\)))
-- \b2v_inst|Add0~67COUT1_206\ = CARRY(((!\b2v_inst|Add0~62COUT1_204\) # (!\b2v_inst|ReceiveData:cnt5[13]~regout\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|ReceiveData:cnt5[13]~regout\,
	cin => \b2v_inst|Add0~52\,
	cin0 => \b2v_inst|Add0~62\,
	cin1 => \b2v_inst|Add0~62COUT1_204\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst|Add0~65_combout\,
	cout0 => \b2v_inst|Add0~67\,
	cout1 => \b2v_inst|Add0~67COUT1_206\);

-- Location: LC_X25_Y11_N5
\b2v_inst|ReceiveData:cnt5[13]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|ReceiveData:cnt5[13]~regout\ = DFFEAS(GND, GLOBAL(\b2v_inst2|bclk~regout\), VCC, , \b2v_inst|ReceiveData:cnt5[31]~1_combout\, \b2v_inst|Add0~65_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	datac => \b2v_inst|Add0~65_combout\,
	aclr => GND,
	sload => VCC,
	ena => \b2v_inst|ReceiveData:cnt5[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|ReceiveData:cnt5[13]~regout\);

-- Location: LC_X24_Y10_N8
\b2v_inst|Add0~70\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|Add0~70_combout\ = \b2v_inst|ReceiveData:cnt5[14]~regout\ $ ((((!(!\b2v_inst|Add0~52\ & \b2v_inst|Add0~67\) # (\b2v_inst|Add0~52\ & \b2v_inst|Add0~67COUT1_206\)))))
-- \b2v_inst|Add0~72\ = CARRY((\b2v_inst|ReceiveData:cnt5[14]~regout\ & ((!\b2v_inst|Add0~67\))))
-- \b2v_inst|Add0~72COUT1_208\ = CARRY((\b2v_inst|ReceiveData:cnt5[14]~regout\ & ((!\b2v_inst|Add0~67COUT1_206\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|ReceiveData:cnt5[14]~regout\,
	cin => \b2v_inst|Add0~52\,
	cin0 => \b2v_inst|Add0~67\,
	cin1 => \b2v_inst|Add0~67COUT1_206\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst|Add0~70_combout\,
	cout0 => \b2v_inst|Add0~72\,
	cout1 => \b2v_inst|Add0~72COUT1_208\);

-- Location: LC_X25_Y11_N8
\b2v_inst|ReceiveData:cnt5[14]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|ReceiveData:cnt5[14]~regout\ = DFFEAS((((\b2v_inst|Add0~70_combout\))), GLOBAL(\b2v_inst2|bclk~regout\), VCC, , \b2v_inst|ReceiveData:cnt5[31]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	datad => \b2v_inst|Add0~70_combout\,
	aclr => GND,
	ena => \b2v_inst|ReceiveData:cnt5[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|ReceiveData:cnt5[14]~regout\);

-- Location: LC_X24_Y10_N9
\b2v_inst|Add0~75\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|Add0~75_combout\ = (\b2v_inst|ReceiveData:cnt5[15]~regout\ $ (((!\b2v_inst|Add0~52\ & \b2v_inst|Add0~72\) # (\b2v_inst|Add0~52\ & \b2v_inst|Add0~72COUT1_208\))))
-- \b2v_inst|Add0~77\ = CARRY(((!\b2v_inst|Add0~72COUT1_208\) # (!\b2v_inst|ReceiveData:cnt5[15]~regout\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|ReceiveData:cnt5[15]~regout\,
	cin => \b2v_inst|Add0~52\,
	cin0 => \b2v_inst|Add0~72\,
	cin1 => \b2v_inst|Add0~72COUT1_208\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst|Add0~75_combout\,
	cout => \b2v_inst|Add0~77\);

-- Location: LC_X25_Y11_N3
\b2v_inst|ReceiveData:cnt5[15]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|ReceiveData:cnt5[15]~regout\ = DFFEAS(GND, GLOBAL(\b2v_inst2|bclk~regout\), VCC, , \b2v_inst|ReceiveData:cnt5[31]~1_combout\, \b2v_inst|Add0~75_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	datac => \b2v_inst|Add0~75_combout\,
	aclr => GND,
	sload => VCC,
	ena => \b2v_inst|ReceiveData:cnt5[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|ReceiveData:cnt5[15]~regout\);

-- Location: LC_X24_Y9_N0
\b2v_inst|Add0~80\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|Add0~80_combout\ = \b2v_inst|ReceiveData:cnt5[16]~regout\ $ ((((!\b2v_inst|Add0~77\))))
-- \b2v_inst|Add0~82\ = CARRY((\b2v_inst|ReceiveData:cnt5[16]~regout\ & ((!\b2v_inst|Add0~77\))))
-- \b2v_inst|Add0~82COUT1_210\ = CARRY((\b2v_inst|ReceiveData:cnt5[16]~regout\ & ((!\b2v_inst|Add0~77\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|ReceiveData:cnt5[16]~regout\,
	cin => \b2v_inst|Add0~77\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst|Add0~80_combout\,
	cout0 => \b2v_inst|Add0~82\,
	cout1 => \b2v_inst|Add0~82COUT1_210\);

-- Location: LC_X25_Y9_N8
\b2v_inst|ReceiveData:cnt5[16]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|ReceiveData:cnt5[16]~regout\ = DFFEAS(GND, GLOBAL(\b2v_inst2|bclk~regout\), VCC, , \b2v_inst|ReceiveData:cnt5[31]~1_combout\, \b2v_inst|Add0~80_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	datac => \b2v_inst|Add0~80_combout\,
	aclr => GND,
	sload => VCC,
	ena => \b2v_inst|ReceiveData:cnt5[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|ReceiveData:cnt5[16]~regout\);

-- Location: LC_X24_Y9_N1
\b2v_inst|Add0~85\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|Add0~85_combout\ = \b2v_inst|ReceiveData:cnt5[17]~regout\ $ (((((!\b2v_inst|Add0~77\ & \b2v_inst|Add0~82\) # (\b2v_inst|Add0~77\ & \b2v_inst|Add0~82COUT1_210\)))))
-- \b2v_inst|Add0~87\ = CARRY(((!\b2v_inst|Add0~82\)) # (!\b2v_inst|ReceiveData:cnt5[17]~regout\))
-- \b2v_inst|Add0~87COUT1_212\ = CARRY(((!\b2v_inst|Add0~82COUT1_210\)) # (!\b2v_inst|ReceiveData:cnt5[17]~regout\))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|ReceiveData:cnt5[17]~regout\,
	cin => \b2v_inst|Add0~77\,
	cin0 => \b2v_inst|Add0~82\,
	cin1 => \b2v_inst|Add0~82COUT1_210\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst|Add0~85_combout\,
	cout0 => \b2v_inst|Add0~87\,
	cout1 => \b2v_inst|Add0~87COUT1_212\);

-- Location: LC_X25_Y9_N2
\b2v_inst|ReceiveData:cnt5[17]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|ReceiveData:cnt5[17]~regout\ = DFFEAS((((\b2v_inst|Add0~85_combout\))), GLOBAL(\b2v_inst2|bclk~regout\), VCC, , \b2v_inst|ReceiveData:cnt5[31]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	datad => \b2v_inst|Add0~85_combout\,
	aclr => GND,
	ena => \b2v_inst|ReceiveData:cnt5[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|ReceiveData:cnt5[17]~regout\);

-- Location: LC_X24_Y9_N2
\b2v_inst|Add0~90\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|Add0~90_combout\ = (\b2v_inst|ReceiveData:cnt5[18]~regout\ $ ((!(!\b2v_inst|Add0~77\ & \b2v_inst|Add0~87\) # (\b2v_inst|Add0~77\ & \b2v_inst|Add0~87COUT1_212\))))
-- \b2v_inst|Add0~92\ = CARRY(((\b2v_inst|ReceiveData:cnt5[18]~regout\ & !\b2v_inst|Add0~87\)))
-- \b2v_inst|Add0~92COUT1_214\ = CARRY(((\b2v_inst|ReceiveData:cnt5[18]~regout\ & !\b2v_inst|Add0~87COUT1_212\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|ReceiveData:cnt5[18]~regout\,
	cin => \b2v_inst|Add0~77\,
	cin0 => \b2v_inst|Add0~87\,
	cin1 => \b2v_inst|Add0~87COUT1_212\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst|Add0~90_combout\,
	cout0 => \b2v_inst|Add0~92\,
	cout1 => \b2v_inst|Add0~92COUT1_214\);

-- Location: LC_X25_Y9_N5
\b2v_inst|ReceiveData:cnt5[18]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|ReceiveData:cnt5[18]~regout\ = DFFEAS((((\b2v_inst|Add0~90_combout\))), GLOBAL(\b2v_inst2|bclk~regout\), VCC, , \b2v_inst|ReceiveData:cnt5[31]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	datad => \b2v_inst|Add0~90_combout\,
	aclr => GND,
	ena => \b2v_inst|ReceiveData:cnt5[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|ReceiveData:cnt5[18]~regout\);

-- Location: LC_X24_Y9_N3
\b2v_inst|Add0~95\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|Add0~95_combout\ = (\b2v_inst|ReceiveData:cnt5[19]~regout\ $ (((!\b2v_inst|Add0~77\ & \b2v_inst|Add0~92\) # (\b2v_inst|Add0~77\ & \b2v_inst|Add0~92COUT1_214\))))
-- \b2v_inst|Add0~97\ = CARRY(((!\b2v_inst|Add0~92\) # (!\b2v_inst|ReceiveData:cnt5[19]~regout\)))
-- \b2v_inst|Add0~97COUT1_216\ = CARRY(((!\b2v_inst|Add0~92COUT1_214\) # (!\b2v_inst|ReceiveData:cnt5[19]~regout\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|ReceiveData:cnt5[19]~regout\,
	cin => \b2v_inst|Add0~77\,
	cin0 => \b2v_inst|Add0~92\,
	cin1 => \b2v_inst|Add0~92COUT1_214\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst|Add0~95_combout\,
	cout0 => \b2v_inst|Add0~97\,
	cout1 => \b2v_inst|Add0~97COUT1_216\);

-- Location: LC_X25_Y9_N4
\b2v_inst|ReceiveData:cnt5[19]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|ReceiveData:cnt5[19]~regout\ = DFFEAS(GND, GLOBAL(\b2v_inst2|bclk~regout\), VCC, , \b2v_inst|ReceiveData:cnt5[31]~1_combout\, \b2v_inst|Add0~95_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	datac => \b2v_inst|Add0~95_combout\,
	aclr => GND,
	sload => VCC,
	ena => \b2v_inst|ReceiveData:cnt5[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|ReceiveData:cnt5[19]~regout\);

-- Location: LC_X24_Y9_N4
\b2v_inst|Add0~100\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|Add0~100_combout\ = \b2v_inst|ReceiveData:cnt5[20]~regout\ $ ((((!(!\b2v_inst|Add0~77\ & \b2v_inst|Add0~97\) # (\b2v_inst|Add0~77\ & \b2v_inst|Add0~97COUT1_216\)))))
-- \b2v_inst|Add0~102\ = CARRY((\b2v_inst|ReceiveData:cnt5[20]~regout\ & ((!\b2v_inst|Add0~97COUT1_216\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|ReceiveData:cnt5[20]~regout\,
	cin => \b2v_inst|Add0~77\,
	cin0 => \b2v_inst|Add0~97\,
	cin1 => \b2v_inst|Add0~97COUT1_216\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst|Add0~100_combout\,
	cout => \b2v_inst|Add0~102\);

-- Location: LC_X25_Y11_N1
\b2v_inst|ReceiveData:cnt5[20]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|ReceiveData:cnt5[20]~regout\ = DFFEAS((((\b2v_inst|Add0~100_combout\))), GLOBAL(\b2v_inst2|bclk~regout\), VCC, , \b2v_inst|ReceiveData:cnt5[31]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	datad => \b2v_inst|Add0~100_combout\,
	aclr => GND,
	ena => \b2v_inst|ReceiveData:cnt5[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|ReceiveData:cnt5[20]~regout\);

-- Location: LC_X24_Y9_N5
\b2v_inst|Add0~105\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|Add0~105_combout\ = (\b2v_inst|ReceiveData:cnt5[21]~regout\ $ ((\b2v_inst|Add0~102\)))
-- \b2v_inst|Add0~107\ = CARRY(((!\b2v_inst|Add0~102\) # (!\b2v_inst|ReceiveData:cnt5[21]~regout\)))
-- \b2v_inst|Add0~107COUT1_218\ = CARRY(((!\b2v_inst|Add0~102\) # (!\b2v_inst|ReceiveData:cnt5[21]~regout\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|ReceiveData:cnt5[21]~regout\,
	cin => \b2v_inst|Add0~102\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst|Add0~105_combout\,
	cout0 => \b2v_inst|Add0~107\,
	cout1 => \b2v_inst|Add0~107COUT1_218\);

-- Location: LC_X25_Y11_N4
\b2v_inst|ReceiveData:cnt5[21]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|ReceiveData:cnt5[21]~regout\ = DFFEAS((((\b2v_inst|Add0~105_combout\))), GLOBAL(\b2v_inst2|bclk~regout\), VCC, , \b2v_inst|ReceiveData:cnt5[31]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	datad => \b2v_inst|Add0~105_combout\,
	aclr => GND,
	ena => \b2v_inst|ReceiveData:cnt5[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|ReceiveData:cnt5[21]~regout\);

-- Location: LC_X24_Y9_N6
\b2v_inst|Add0~110\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|Add0~110_combout\ = (\b2v_inst|ReceiveData:cnt5[22]~regout\ $ ((!(!\b2v_inst|Add0~102\ & \b2v_inst|Add0~107\) # (\b2v_inst|Add0~102\ & \b2v_inst|Add0~107COUT1_218\))))
-- \b2v_inst|Add0~112\ = CARRY(((\b2v_inst|ReceiveData:cnt5[22]~regout\ & !\b2v_inst|Add0~107\)))
-- \b2v_inst|Add0~112COUT1_220\ = CARRY(((\b2v_inst|ReceiveData:cnt5[22]~regout\ & !\b2v_inst|Add0~107COUT1_218\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|ReceiveData:cnt5[22]~regout\,
	cin => \b2v_inst|Add0~102\,
	cin0 => \b2v_inst|Add0~107\,
	cin1 => \b2v_inst|Add0~107COUT1_218\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst|Add0~110_combout\,
	cout0 => \b2v_inst|Add0~112\,
	cout1 => \b2v_inst|Add0~112COUT1_220\);

-- Location: LC_X23_Y9_N7
\b2v_inst|ReceiveData:cnt5[22]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|ReceiveData:cnt5[22]~regout\ = DFFEAS((((\b2v_inst|Add0~110_combout\))), GLOBAL(\b2v_inst2|bclk~regout\), VCC, , \b2v_inst|ReceiveData:cnt5[31]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	datad => \b2v_inst|Add0~110_combout\,
	aclr => GND,
	ena => \b2v_inst|ReceiveData:cnt5[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|ReceiveData:cnt5[22]~regout\);

-- Location: LC_X24_Y9_N7
\b2v_inst|Add0~115\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|Add0~115_combout\ = \b2v_inst|ReceiveData:cnt5[23]~regout\ $ (((((!\b2v_inst|Add0~102\ & \b2v_inst|Add0~112\) # (\b2v_inst|Add0~102\ & \b2v_inst|Add0~112COUT1_220\)))))
-- \b2v_inst|Add0~117\ = CARRY(((!\b2v_inst|Add0~112\)) # (!\b2v_inst|ReceiveData:cnt5[23]~regout\))
-- \b2v_inst|Add0~117COUT1_222\ = CARRY(((!\b2v_inst|Add0~112COUT1_220\)) # (!\b2v_inst|ReceiveData:cnt5[23]~regout\))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|ReceiveData:cnt5[23]~regout\,
	cin => \b2v_inst|Add0~102\,
	cin0 => \b2v_inst|Add0~112\,
	cin1 => \b2v_inst|Add0~112COUT1_220\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst|Add0~115_combout\,
	cout0 => \b2v_inst|Add0~117\,
	cout1 => \b2v_inst|Add0~117COUT1_222\);

-- Location: LC_X23_Y9_N6
\b2v_inst|ReceiveData:cnt5[23]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|ReceiveData:cnt5[23]~regout\ = DFFEAS(GND, GLOBAL(\b2v_inst2|bclk~regout\), VCC, , \b2v_inst|ReceiveData:cnt5[31]~1_combout\, \b2v_inst|Add0~115_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	datac => \b2v_inst|Add0~115_combout\,
	aclr => GND,
	sload => VCC,
	ena => \b2v_inst|ReceiveData:cnt5[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|ReceiveData:cnt5[23]~regout\);

-- Location: LC_X24_Y9_N8
\b2v_inst|Add0~120\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|Add0~120_combout\ = \b2v_inst|ReceiveData:cnt5[24]~regout\ $ ((((!(!\b2v_inst|Add0~102\ & \b2v_inst|Add0~117\) # (\b2v_inst|Add0~102\ & \b2v_inst|Add0~117COUT1_222\)))))
-- \b2v_inst|Add0~122\ = CARRY((\b2v_inst|ReceiveData:cnt5[24]~regout\ & ((!\b2v_inst|Add0~117\))))
-- \b2v_inst|Add0~122COUT1_224\ = CARRY((\b2v_inst|ReceiveData:cnt5[24]~regout\ & ((!\b2v_inst|Add0~117COUT1_222\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|ReceiveData:cnt5[24]~regout\,
	cin => \b2v_inst|Add0~102\,
	cin0 => \b2v_inst|Add0~117\,
	cin1 => \b2v_inst|Add0~117COUT1_222\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst|Add0~120_combout\,
	cout0 => \b2v_inst|Add0~122\,
	cout1 => \b2v_inst|Add0~122COUT1_224\);

-- Location: LC_X23_Y9_N8
\b2v_inst|ReceiveData:cnt5[24]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|ReceiveData:cnt5[24]~regout\ = DFFEAS((((\b2v_inst|Add0~120_combout\))), GLOBAL(\b2v_inst2|bclk~regout\), VCC, , \b2v_inst|ReceiveData:cnt5[31]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	datad => \b2v_inst|Add0~120_combout\,
	aclr => GND,
	ena => \b2v_inst|ReceiveData:cnt5[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|ReceiveData:cnt5[24]~regout\);

-- Location: LC_X24_Y9_N9
\b2v_inst|Add0~125\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|Add0~125_combout\ = \b2v_inst|ReceiveData:cnt5[25]~regout\ $ (((((!\b2v_inst|Add0~102\ & \b2v_inst|Add0~122\) # (\b2v_inst|Add0~102\ & \b2v_inst|Add0~122COUT1_224\)))))
-- \b2v_inst|Add0~127\ = CARRY(((!\b2v_inst|Add0~122COUT1_224\)) # (!\b2v_inst|ReceiveData:cnt5[25]~regout\))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|ReceiveData:cnt5[25]~regout\,
	cin => \b2v_inst|Add0~102\,
	cin0 => \b2v_inst|Add0~122\,
	cin1 => \b2v_inst|Add0~122COUT1_224\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst|Add0~125_combout\,
	cout => \b2v_inst|Add0~127\);

-- Location: LC_X23_Y9_N1
\b2v_inst|ReceiveData:cnt5[25]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|ReceiveData:cnt5[25]~regout\ = DFFEAS((((\b2v_inst|Add0~125_combout\))), GLOBAL(\b2v_inst2|bclk~regout\), VCC, , \b2v_inst|ReceiveData:cnt5[31]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	datad => \b2v_inst|Add0~125_combout\,
	aclr => GND,
	ena => \b2v_inst|ReceiveData:cnt5[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|ReceiveData:cnt5[25]~regout\);

-- Location: LC_X24_Y8_N0
\b2v_inst|Add0~130\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|Add0~130_combout\ = (\b2v_inst|ReceiveData:cnt5[26]~regout\ $ ((!\b2v_inst|Add0~127\)))
-- \b2v_inst|Add0~132\ = CARRY(((\b2v_inst|ReceiveData:cnt5[26]~regout\ & !\b2v_inst|Add0~127\)))
-- \b2v_inst|Add0~132COUT1_226\ = CARRY(((\b2v_inst|ReceiveData:cnt5[26]~regout\ & !\b2v_inst|Add0~127\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|ReceiveData:cnt5[26]~regout\,
	cin => \b2v_inst|Add0~127\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst|Add0~130_combout\,
	cout0 => \b2v_inst|Add0~132\,
	cout1 => \b2v_inst|Add0~132COUT1_226\);

-- Location: LC_X23_Y9_N0
\b2v_inst|ReceiveData:cnt5[26]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|ReceiveData:cnt5[26]~regout\ = DFFEAS(GND, GLOBAL(\b2v_inst2|bclk~regout\), VCC, , \b2v_inst|ReceiveData:cnt5[31]~1_combout\, \b2v_inst|Add0~130_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	datac => \b2v_inst|Add0~130_combout\,
	aclr => GND,
	sload => VCC,
	ena => \b2v_inst|ReceiveData:cnt5[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|ReceiveData:cnt5[26]~regout\);

-- Location: LC_X24_Y8_N1
\b2v_inst|Add0~135\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|Add0~135_combout\ = (\b2v_inst|ReceiveData:cnt5[27]~regout\ $ (((!\b2v_inst|Add0~127\ & \b2v_inst|Add0~132\) # (\b2v_inst|Add0~127\ & \b2v_inst|Add0~132COUT1_226\))))
-- \b2v_inst|Add0~137\ = CARRY(((!\b2v_inst|Add0~132\) # (!\b2v_inst|ReceiveData:cnt5[27]~regout\)))
-- \b2v_inst|Add0~137COUT1_228\ = CARRY(((!\b2v_inst|Add0~132COUT1_226\) # (!\b2v_inst|ReceiveData:cnt5[27]~regout\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|ReceiveData:cnt5[27]~regout\,
	cin => \b2v_inst|Add0~127\,
	cin0 => \b2v_inst|Add0~132\,
	cin1 => \b2v_inst|Add0~132COUT1_226\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst|Add0~135_combout\,
	cout0 => \b2v_inst|Add0~137\,
	cout1 => \b2v_inst|Add0~137COUT1_228\);

-- Location: LC_X23_Y9_N2
\b2v_inst|ReceiveData:cnt5[27]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|ReceiveData:cnt5[27]~regout\ = DFFEAS((((\b2v_inst|Add0~135_combout\))), GLOBAL(\b2v_inst2|bclk~regout\), VCC, , \b2v_inst|ReceiveData:cnt5[31]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	datad => \b2v_inst|Add0~135_combout\,
	aclr => GND,
	ena => \b2v_inst|ReceiveData:cnt5[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|ReceiveData:cnt5[27]~regout\);

-- Location: LC_X24_Y8_N2
\b2v_inst|Add0~140\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|Add0~140_combout\ = (\b2v_inst|ReceiveData:cnt5[28]~regout\ $ ((!(!\b2v_inst|Add0~127\ & \b2v_inst|Add0~137\) # (\b2v_inst|Add0~127\ & \b2v_inst|Add0~137COUT1_228\))))
-- \b2v_inst|Add0~142\ = CARRY(((\b2v_inst|ReceiveData:cnt5[28]~regout\ & !\b2v_inst|Add0~137\)))
-- \b2v_inst|Add0~142COUT1_230\ = CARRY(((\b2v_inst|ReceiveData:cnt5[28]~regout\ & !\b2v_inst|Add0~137COUT1_228\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|ReceiveData:cnt5[28]~regout\,
	cin => \b2v_inst|Add0~127\,
	cin0 => \b2v_inst|Add0~137\,
	cin1 => \b2v_inst|Add0~137COUT1_228\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst|Add0~140_combout\,
	cout0 => \b2v_inst|Add0~142\,
	cout1 => \b2v_inst|Add0~142COUT1_230\);

-- Location: LC_X24_Y8_N7
\b2v_inst|ReceiveData:cnt5[31]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|ReceiveData:cnt5[31]~regout\ = DFFEAS((((\b2v_inst|Add0~155_combout\))), GLOBAL(\b2v_inst2|bclk~regout\), VCC, , \b2v_inst|ReceiveData:cnt5[31]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	datad => \b2v_inst|Add0~155_combout\,
	aclr => GND,
	ena => \b2v_inst|ReceiveData:cnt5[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|ReceiveData:cnt5[31]~regout\);

-- Location: LC_X24_Y8_N3
\b2v_inst|Add0~145\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|Add0~145_combout\ = (\b2v_inst|ReceiveData:cnt5[29]~regout\ $ (((!\b2v_inst|Add0~127\ & \b2v_inst|Add0~142\) # (\b2v_inst|Add0~127\ & \b2v_inst|Add0~142COUT1_230\))))
-- \b2v_inst|Add0~147\ = CARRY(((!\b2v_inst|Add0~142\) # (!\b2v_inst|ReceiveData:cnt5[29]~regout\)))
-- \b2v_inst|Add0~147COUT1_232\ = CARRY(((!\b2v_inst|Add0~142COUT1_230\) # (!\b2v_inst|ReceiveData:cnt5[29]~regout\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|ReceiveData:cnt5[29]~regout\,
	cin => \b2v_inst|Add0~127\,
	cin0 => \b2v_inst|Add0~142\,
	cin1 => \b2v_inst|Add0~142COUT1_230\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst|Add0~145_combout\,
	cout0 => \b2v_inst|Add0~147\,
	cout1 => \b2v_inst|Add0~147COUT1_232\);

-- Location: LC_X24_Y8_N8
\b2v_inst|ReceiveData:cnt5[29]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|ReceiveData:cnt5[29]~regout\ = DFFEAS((((\b2v_inst|Add0~145_combout\))), GLOBAL(\b2v_inst2|bclk~regout\), VCC, , \b2v_inst|ReceiveData:cnt5[31]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	datad => \b2v_inst|Add0~145_combout\,
	aclr => GND,
	ena => \b2v_inst|ReceiveData:cnt5[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|ReceiveData:cnt5[29]~regout\);

-- Location: LC_X24_Y8_N4
\b2v_inst|Add0~150\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|Add0~150_combout\ = \b2v_inst|ReceiveData:cnt5[30]~regout\ $ ((((!(!\b2v_inst|Add0~127\ & \b2v_inst|Add0~147\) # (\b2v_inst|Add0~127\ & \b2v_inst|Add0~147COUT1_232\)))))
-- \b2v_inst|Add0~152\ = CARRY((\b2v_inst|ReceiveData:cnt5[30]~regout\ & ((!\b2v_inst|Add0~147COUT1_232\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|ReceiveData:cnt5[30]~regout\,
	cin => \b2v_inst|Add0~127\,
	cin0 => \b2v_inst|Add0~147\,
	cin1 => \b2v_inst|Add0~147COUT1_232\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst|Add0~150_combout\,
	cout => \b2v_inst|Add0~152\);

-- Location: LC_X24_Y8_N9
\b2v_inst|ReceiveData:cnt5[30]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|ReceiveData:cnt5[30]~regout\ = DFFEAS(GND, GLOBAL(\b2v_inst2|bclk~regout\), VCC, , \b2v_inst|ReceiveData:cnt5[31]~1_combout\, \b2v_inst|Add0~150_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	datac => \b2v_inst|Add0~150_combout\,
	aclr => GND,
	sload => VCC,
	ena => \b2v_inst|ReceiveData:cnt5[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|ReceiveData:cnt5[30]~regout\);

-- Location: LC_X24_Y8_N5
\b2v_inst|Add0~155\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|Add0~155_combout\ = \b2v_inst|ReceiveData:cnt5[31]~regout\ $ ((((\b2v_inst|Add0~152\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|ReceiveData:cnt5[31]~regout\,
	cin => \b2v_inst|Add0~152\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst|Add0~155_combout\);

-- Location: LC_X24_Y8_N6
\b2v_inst|Equal0~9\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|Equal0~9_combout\ = (!\b2v_inst|Add0~140_combout\ & (!\b2v_inst|Add0~155_combout\ & (!\b2v_inst|Add0~150_combout\ & !\b2v_inst|Add0~145_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add0~140_combout\,
	datab => \b2v_inst|Add0~155_combout\,
	datac => \b2v_inst|Add0~150_combout\,
	datad => \b2v_inst|Add0~145_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst|Equal0~9_combout\);

-- Location: LC_X24_Y11_N1
\b2v_inst|Equal0~0\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|Equal0~0_combout\ = (\b2v_inst|Add0~5_combout\ & (\b2v_inst|Add0~0_combout\ & (!\b2v_inst|Add0~15_combout\ & !\b2v_inst|Add0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0008",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add0~5_combout\,
	datab => \b2v_inst|Add0~0_combout\,
	datac => \b2v_inst|Add0~15_combout\,
	datad => \b2v_inst|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst|Equal0~0_combout\);

-- Location: LC_X25_Y10_N7
\b2v_inst|Equal0~2\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|Equal0~2_combout\ = (!\b2v_inst|Add0~45_combout\ & (!\b2v_inst|Add0~50_combout\ & (!\b2v_inst|Add0~55_combout\ & !\b2v_inst|Add0~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add0~45_combout\,
	datab => \b2v_inst|Add0~50_combout\,
	datac => \b2v_inst|Add0~55_combout\,
	datad => \b2v_inst|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst|Equal0~2_combout\);

-- Location: LC_X25_Y11_N0
\b2v_inst|Equal0~3\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|Equal0~3_combout\ = (!\b2v_inst|Add0~60_combout\ & (!\b2v_inst|Add0~65_combout\ & (!\b2v_inst|Add0~75_combout\ & !\b2v_inst|Add0~70_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add0~60_combout\,
	datab => \b2v_inst|Add0~65_combout\,
	datac => \b2v_inst|Add0~75_combout\,
	datad => \b2v_inst|Add0~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst|Equal0~3_combout\);

-- Location: LC_X25_Y10_N1
\b2v_inst|Equal0~1\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|Equal0~1_combout\ = (!\b2v_inst|Add0~35_combout\ & (!\b2v_inst|Add0~30_combout\ & (!\b2v_inst|Add0~20_combout\ & !\b2v_inst|Add0~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add0~35_combout\,
	datab => \b2v_inst|Add0~30_combout\,
	datac => \b2v_inst|Add0~20_combout\,
	datad => \b2v_inst|Add0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst|Equal0~1_combout\);

-- Location: LC_X23_Y9_N5
\b2v_inst|Equal0~4\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|Equal0~4_combout\ = (\b2v_inst|Equal0~0_combout\ & (\b2v_inst|Equal0~2_combout\ & (\b2v_inst|Equal0~3_combout\ & \b2v_inst|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Equal0~0_combout\,
	datab => \b2v_inst|Equal0~2_combout\,
	datac => \b2v_inst|Equal0~3_combout\,
	datad => \b2v_inst|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst|Equal0~4_combout\);

-- Location: LC_X23_Y9_N9
\b2v_inst|Equal0~8\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|Equal0~8_combout\ = (!\b2v_inst|Add0~120_combout\ & (!\b2v_inst|Add0~135_combout\ & (!\b2v_inst|Add0~130_combout\ & !\b2v_inst|Add0~125_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add0~120_combout\,
	datab => \b2v_inst|Add0~135_combout\,
	datac => \b2v_inst|Add0~130_combout\,
	datad => \b2v_inst|Add0~125_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst|Equal0~8_combout\);

-- Location: LC_X25_Y9_N6
\b2v_inst|Equal0~5\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|Equal0~5_combout\ = (!\b2v_inst|Add0~95_combout\ & (!\b2v_inst|Add0~90_combout\ & (!\b2v_inst|Add0~80_combout\ & !\b2v_inst|Add0~85_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add0~95_combout\,
	datab => \b2v_inst|Add0~90_combout\,
	datac => \b2v_inst|Add0~80_combout\,
	datad => \b2v_inst|Add0~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst|Equal0~5_combout\);

-- Location: LC_X25_Y11_N7
\b2v_inst|Equal0~6\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|Equal0~6_combout\ = ((!\b2v_inst|Add0~100_combout\ & ((!\b2v_inst|Add0~105_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0033",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|Add0~100_combout\,
	datad => \b2v_inst|Add0~105_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst|Equal0~6_combout\);

-- Location: LC_X23_Y9_N3
\b2v_inst|Equal0~7\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|Equal0~7_combout\ = (!\b2v_inst|Add0~115_combout\ & (\b2v_inst|Equal0~5_combout\ & (\b2v_inst|Equal0~6_combout\ & !\b2v_inst|Add0~110_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0040",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add0~115_combout\,
	datab => \b2v_inst|Equal0~5_combout\,
	datac => \b2v_inst|Equal0~6_combout\,
	datad => \b2v_inst|Add0~110_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst|Equal0~7_combout\);

-- Location: LC_X23_Y9_N4
\b2v_inst|Equal0~10\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|Equal0~10_combout\ = (\b2v_inst|Equal0~9_combout\ & (\b2v_inst|Equal0~4_combout\ & (\b2v_inst|Equal0~8_combout\ & \b2v_inst|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Equal0~9_combout\,
	datab => \b2v_inst|Equal0~4_combout\,
	datac => \b2v_inst|Equal0~8_combout\,
	datad => \b2v_inst|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst|Equal0~10_combout\);

-- Location: LC_X19_Y7_N2
\b2v_inst|ReceiveData:have_Told\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|ReceiveData:have_Told~regout\ = DFFEAS(((!\b2v_inst|Selector3~0_combout\ & ((\b2v_inst|ReceiveData:have_Told~regout\) # (\b2v_inst|Equal0~10_combout\)))), GLOBAL(\b2v_inst2|bclk~regout\), VCC, , \b2v_inst|ReceiveData:cnt5[31]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	dataa => \b2v_inst|ReceiveData:have_Told~regout\,
	datac => \b2v_inst|Selector3~0_combout\,
	datad => \b2v_inst|Equal0~10_combout\,
	aclr => GND,
	ena => \b2v_inst|ReceiveData:cnt5[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|ReceiveData:have_Told~regout\);

-- Location: LC_X19_Y7_N8
\b2v_inst|rfinish~0\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|rfinish~0_combout\ = (\b2v_inst|rfinish~regout\ & ((\b2v_inst|ReceiveData:have_Told~regout\) # ((\b2v_inst|state.r_start~regout\) # (!\b2v_inst|Equal0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|ReceiveData:have_Told~regout\,
	datab => \b2v_inst|state.r_start~regout\,
	datac => \b2v_inst|rfinish~regout\,
	datad => \b2v_inst|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst|rfinish~0_combout\);

-- Location: LC_X19_Y7_N7
\b2v_inst|rfinish\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|rfinish~regout\ = DFFEAS((\b2v_inst|rfinish~0_combout\) # ((!\b2v_inst|Equal3~10_combout\ & (!\b2v_inst|state.r_sample~regout\ & \b2v_inst|state.r_start~regout\))), GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f1f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	dataa => \b2v_inst|Equal3~10_combout\,
	datab => \b2v_inst|state.r_sample~regout\,
	datac => \b2v_inst|rfinish~0_combout\,
	datad => \b2v_inst|state.r_start~regout\,
	aclr => \RST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|rfinish~regout\);

-- Location: LC_X17_Y10_N9
\b2v_inst1|state.x_idle\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst1|state.x_idle~regout\ = DFFEAS((\b2v_inst1|state.x_stop~regout\ & (!\b2v_inst1|Equal0~10_combout\ & ((\b2v_inst|rfinish~regout\) # (\b2v_inst1|state.x_idle~regout\)))) # (!\b2v_inst1|state.x_stop~regout\ & ((\b2v_inst|rfinish~regout\) # 
-- ((\b2v_inst1|state.x_idle~regout\)))), GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "54fc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	dataa => \b2v_inst1|state.x_stop~regout\,
	datab => \b2v_inst|rfinish~regout\,
	datac => \b2v_inst1|state.x_idle~regout\,
	datad => \b2v_inst1|Equal0~10_combout\,
	aclr => \RST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst1|state.x_idle~regout\);

-- Location: LC_X12_Y9_N4
\b2v_inst1|Transmit_Data:cnt16[28]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst1|Transmit_Data:cnt16[28]~regout\ = DFFEAS(GND, GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , \b2v_inst1|state.x_idle~regout\, \b2v_inst1|Add0~140_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	datac => \b2v_inst1|Add0~140_combout\,
	aclr => \RST~combout\,
	sload => VCC,
	ena => \b2v_inst1|state.x_idle~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst1|Transmit_Data:cnt16[28]~regout\);

-- Location: LC_X15_Y11_N4
\b2v_inst1|Add0~0\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst1|Add0~0_combout\ = (!\b2v_inst1|Transmit_Data:cnt16[0]~regout\)
-- \b2v_inst1|Add0~2\ = CARRY((\b2v_inst1|Transmit_Data:cnt16[0]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "55aa",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|Transmit_Data:cnt16[0]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst1|Add0~0_combout\,
	cout => \b2v_inst1|Add0~2\);

-- Location: LC_X15_Y11_N1
\b2v_inst1|Transmit_Data:cnt16[0]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst1|Transmit_Data:cnt16[0]~regout\ = DFFEAS(GND, GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , \b2v_inst1|state.x_idle~regout\, \b2v_inst1|Add0~0_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	datac => \b2v_inst1|Add0~0_combout\,
	aclr => \RST~combout\,
	sload => VCC,
	ena => \b2v_inst1|state.x_idle~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst1|Transmit_Data:cnt16[0]~regout\);

-- Location: LC_X12_Y9_N6
\b2v_inst1|Transmit_Data:cnt16[27]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst1|Transmit_Data:cnt16[27]~regout\ = DFFEAS(GND, GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , \b2v_inst1|state.x_idle~regout\, \b2v_inst1|Add0~135_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	datac => \b2v_inst1|Add0~135_combout\,
	aclr => \RST~combout\,
	sload => VCC,
	ena => \b2v_inst1|state.x_idle~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst1|Transmit_Data:cnt16[27]~regout\);

-- Location: LC_X15_Y8_N0
\b2v_inst1|Add0~130\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst1|Add0~130_combout\ = (\b2v_inst1|Transmit_Data:cnt16[26]~regout\ $ ((!\b2v_inst1|Add0~127\)))
-- \b2v_inst1|Add0~132\ = CARRY(((\b2v_inst1|Transmit_Data:cnt16[26]~regout\ & !\b2v_inst1|Add0~127\)))
-- \b2v_inst1|Add0~132COUT1_226\ = CARRY(((\b2v_inst1|Transmit_Data:cnt16[26]~regout\ & !\b2v_inst1|Add0~127\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|Transmit_Data:cnt16[26]~regout\,
	cin => \b2v_inst1|Add0~127\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst1|Add0~130_combout\,
	cout0 => \b2v_inst1|Add0~132\,
	cout1 => \b2v_inst1|Add0~132COUT1_226\);

-- Location: LC_X12_Y9_N5
\b2v_inst1|Transmit_Data:cnt16[26]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst1|Transmit_Data:cnt16[26]~regout\ = DFFEAS(GND, GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , \b2v_inst1|state.x_idle~regout\, \b2v_inst1|Add0~130_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	datac => \b2v_inst1|Add0~130_combout\,
	aclr => \RST~combout\,
	sload => VCC,
	ena => \b2v_inst1|state.x_idle~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst1|Transmit_Data:cnt16[26]~regout\);

-- Location: LC_X15_Y8_N1
\b2v_inst1|Add0~135\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst1|Add0~135_combout\ = \b2v_inst1|Transmit_Data:cnt16[27]~regout\ $ (((((!\b2v_inst1|Add0~127\ & \b2v_inst1|Add0~132\) # (\b2v_inst1|Add0~127\ & \b2v_inst1|Add0~132COUT1_226\)))))
-- \b2v_inst1|Add0~137\ = CARRY(((!\b2v_inst1|Add0~132\)) # (!\b2v_inst1|Transmit_Data:cnt16[27]~regout\))
-- \b2v_inst1|Add0~137COUT1_228\ = CARRY(((!\b2v_inst1|Add0~132COUT1_226\)) # (!\b2v_inst1|Transmit_Data:cnt16[27]~regout\))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|Transmit_Data:cnt16[27]~regout\,
	cin => \b2v_inst1|Add0~127\,
	cin0 => \b2v_inst1|Add0~132\,
	cin1 => \b2v_inst1|Add0~132COUT1_226\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst1|Add0~135_combout\,
	cout0 => \b2v_inst1|Add0~137\,
	cout1 => \b2v_inst1|Add0~137COUT1_228\);

-- Location: LC_X12_Y9_N7
\b2v_inst1|Transmit_Data:cnt16[24]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst1|Transmit_Data:cnt16[24]~regout\ = DFFEAS(GND, GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , \b2v_inst1|state.x_idle~regout\, \b2v_inst1|Add0~120_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	datac => \b2v_inst1|Add0~120_combout\,
	aclr => \RST~combout\,
	sload => VCC,
	ena => \b2v_inst1|state.x_idle~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst1|Transmit_Data:cnt16[24]~regout\);

-- Location: LC_X15_Y9_N5
\b2v_inst1|Add0~105\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst1|Add0~105_combout\ = (\b2v_inst1|Transmit_Data:cnt16[21]~regout\ $ ((\b2v_inst1|Add0~102\)))
-- \b2v_inst1|Add0~107\ = CARRY(((!\b2v_inst1|Add0~102\) # (!\b2v_inst1|Transmit_Data:cnt16[21]~regout\)))
-- \b2v_inst1|Add0~107COUT1_218\ = CARRY(((!\b2v_inst1|Add0~102\) # (!\b2v_inst1|Transmit_Data:cnt16[21]~regout\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|Transmit_Data:cnt16[21]~regout\,
	cin => \b2v_inst1|Add0~102\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst1|Add0~105_combout\,
	cout0 => \b2v_inst1|Add0~107\,
	cout1 => \b2v_inst1|Add0~107COUT1_218\);

-- Location: LC_X12_Y9_N8
\b2v_inst1|Transmit_Data:cnt16[21]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst1|Transmit_Data:cnt16[21]~regout\ = DFFEAS((((\b2v_inst1|Add0~105_combout\))), GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , \b2v_inst1|state.x_idle~regout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	datad => \b2v_inst1|Add0~105_combout\,
	aclr => \RST~combout\,
	ena => \b2v_inst1|state.x_idle~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst1|Transmit_Data:cnt16[21]~regout\);

-- Location: LC_X15_Y9_N6
\b2v_inst1|Add0~110\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst1|Add0~110_combout\ = \b2v_inst1|Transmit_Data:cnt16[22]~regout\ $ ((((!(!\b2v_inst1|Add0~102\ & \b2v_inst1|Add0~107\) # (\b2v_inst1|Add0~102\ & \b2v_inst1|Add0~107COUT1_218\)))))
-- \b2v_inst1|Add0~112\ = CARRY((\b2v_inst1|Transmit_Data:cnt16[22]~regout\ & ((!\b2v_inst1|Add0~107\))))
-- \b2v_inst1|Add0~112COUT1_220\ = CARRY((\b2v_inst1|Transmit_Data:cnt16[22]~regout\ & ((!\b2v_inst1|Add0~107COUT1_218\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|Transmit_Data:cnt16[22]~regout\,
	cin => \b2v_inst1|Add0~102\,
	cin0 => \b2v_inst1|Add0~107\,
	cin1 => \b2v_inst1|Add0~107COUT1_218\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst1|Add0~110_combout\,
	cout0 => \b2v_inst1|Add0~112\,
	cout1 => \b2v_inst1|Add0~112COUT1_220\);

-- Location: LC_X12_Y9_N1
\b2v_inst1|Transmit_Data:cnt16[22]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst1|Transmit_Data:cnt16[22]~regout\ = DFFEAS((((\b2v_inst1|Add0~110_combout\))), GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , \b2v_inst1|state.x_idle~regout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	datad => \b2v_inst1|Add0~110_combout\,
	aclr => \RST~combout\,
	ena => \b2v_inst1|state.x_idle~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst1|Transmit_Data:cnt16[22]~regout\);

-- Location: LC_X15_Y9_N7
\b2v_inst1|Add0~115\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst1|Add0~115_combout\ = \b2v_inst1|Transmit_Data:cnt16[23]~regout\ $ (((((!\b2v_inst1|Add0~102\ & \b2v_inst1|Add0~112\) # (\b2v_inst1|Add0~102\ & \b2v_inst1|Add0~112COUT1_220\)))))
-- \b2v_inst1|Add0~117\ = CARRY(((!\b2v_inst1|Add0~112\)) # (!\b2v_inst1|Transmit_Data:cnt16[23]~regout\))
-- \b2v_inst1|Add0~117COUT1_222\ = CARRY(((!\b2v_inst1|Add0~112COUT1_220\)) # (!\b2v_inst1|Transmit_Data:cnt16[23]~regout\))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|Transmit_Data:cnt16[23]~regout\,
	cin => \b2v_inst1|Add0~102\,
	cin0 => \b2v_inst1|Add0~112\,
	cin1 => \b2v_inst1|Add0~112COUT1_220\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst1|Add0~115_combout\,
	cout0 => \b2v_inst1|Add0~117\,
	cout1 => \b2v_inst1|Add0~117COUT1_222\);

-- Location: LC_X12_Y9_N9
\b2v_inst1|Transmit_Data:cnt16[23]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst1|Transmit_Data:cnt16[23]~regout\ = DFFEAS(GND, GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , \b2v_inst1|state.x_idle~regout\, \b2v_inst1|Add0~115_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	datac => \b2v_inst1|Add0~115_combout\,
	aclr => \RST~combout\,
	sload => VCC,
	ena => \b2v_inst1|state.x_idle~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst1|Transmit_Data:cnt16[23]~regout\);

-- Location: LC_X15_Y9_N8
\b2v_inst1|Add0~120\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst1|Add0~120_combout\ = \b2v_inst1|Transmit_Data:cnt16[24]~regout\ $ ((((!(!\b2v_inst1|Add0~102\ & \b2v_inst1|Add0~117\) # (\b2v_inst1|Add0~102\ & \b2v_inst1|Add0~117COUT1_222\)))))
-- \b2v_inst1|Add0~122\ = CARRY((\b2v_inst1|Transmit_Data:cnt16[24]~regout\ & ((!\b2v_inst1|Add0~117\))))
-- \b2v_inst1|Add0~122COUT1_224\ = CARRY((\b2v_inst1|Transmit_Data:cnt16[24]~regout\ & ((!\b2v_inst1|Add0~117COUT1_222\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|Transmit_Data:cnt16[24]~regout\,
	cin => \b2v_inst1|Add0~102\,
	cin0 => \b2v_inst1|Add0~117\,
	cin1 => \b2v_inst1|Add0~117COUT1_222\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst1|Add0~120_combout\,
	cout0 => \b2v_inst1|Add0~122\,
	cout1 => \b2v_inst1|Add0~122COUT1_224\);

-- Location: LC_X15_Y8_N9
\b2v_inst1|Equal0~8\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst1|Equal0~8_combout\ = (!\b2v_inst1|Add0~135_combout\ & (!\b2v_inst1|Add0~130_combout\ & (!\b2v_inst1|Add0~120_combout\ & !\b2v_inst1|Add0~125_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|Add0~135_combout\,
	datab => \b2v_inst1|Add0~130_combout\,
	datac => \b2v_inst1|Add0~120_combout\,
	datad => \b2v_inst1|Add0~125_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst1|Equal0~8_combout\);

-- Location: LC_X15_Y8_N7
\b2v_inst1|Equal0~11\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst1|Equal0~11_combout\ = (((\b2v_inst1|Equal0~8_combout\ & \b2v_inst1|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst1|Equal0~8_combout\,
	datad => \b2v_inst1|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst1|Equal0~11_combout\);

-- Location: LC_X15_Y11_N5
\b2v_inst1|Add0~5\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst1|Add0~5_combout\ = (\b2v_inst1|Transmit_Data:cnt16[1]~regout\ $ ((\b2v_inst1|Add0~2\)))
-- \b2v_inst1|Add0~7\ = CARRY(((!\b2v_inst1|Add0~2\) # (!\b2v_inst1|Transmit_Data:cnt16[1]~regout\)))
-- \b2v_inst1|Add0~7COUT1_186\ = CARRY(((!\b2v_inst1|Add0~2\) # (!\b2v_inst1|Transmit_Data:cnt16[1]~regout\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|Transmit_Data:cnt16[1]~regout\,
	cin => \b2v_inst1|Add0~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst1|Add0~5_combout\,
	cout0 => \b2v_inst1|Add0~7\,
	cout1 => \b2v_inst1|Add0~7COUT1_186\);

-- Location: LC_X15_Y11_N3
\b2v_inst1|Transmit_Data:cnt16[1]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst1|Transmit_Data:cnt16[1]~regout\ = DFFEAS((((\b2v_inst1|Add0~5_combout\))), GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , \b2v_inst1|state.x_idle~regout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	datad => \b2v_inst1|Add0~5_combout\,
	aclr => \RST~combout\,
	ena => \b2v_inst1|state.x_idle~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst1|Transmit_Data:cnt16[1]~regout\);

-- Location: LC_X15_Y11_N6
\b2v_inst1|Add0~10\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst1|Add0~10_combout\ = (\b2v_inst1|Transmit_Data:cnt16[2]~regout\ $ ((!(!\b2v_inst1|Add0~2\ & \b2v_inst1|Add0~7\) # (\b2v_inst1|Add0~2\ & \b2v_inst1|Add0~7COUT1_186\))))
-- \b2v_inst1|Add0~12\ = CARRY(((\b2v_inst1|Transmit_Data:cnt16[2]~regout\ & !\b2v_inst1|Add0~7\)))
-- \b2v_inst1|Add0~12COUT1_188\ = CARRY(((\b2v_inst1|Transmit_Data:cnt16[2]~regout\ & !\b2v_inst1|Add0~7COUT1_186\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|Transmit_Data:cnt16[2]~regout\,
	cin => \b2v_inst1|Add0~2\,
	cin0 => \b2v_inst1|Add0~7\,
	cin1 => \b2v_inst1|Add0~7COUT1_186\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst1|Add0~10_combout\,
	cout0 => \b2v_inst1|Add0~12\,
	cout1 => \b2v_inst1|Add0~12COUT1_188\);

-- Location: LC_X15_Y11_N0
\b2v_inst1|Transmit_Data:cnt16[2]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst1|Transmit_Data:cnt16[2]~regout\ = DFFEAS((((\b2v_inst1|Add0~10_combout\))), GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , \b2v_inst1|state.x_idle~regout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	datad => \b2v_inst1|Add0~10_combout\,
	aclr => \RST~combout\,
	ena => \b2v_inst1|state.x_idle~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst1|Transmit_Data:cnt16[2]~regout\);

-- Location: LC_X15_Y11_N7
\b2v_inst1|Add0~15\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst1|Add0~15_combout\ = \b2v_inst1|Transmit_Data:cnt16[3]~regout\ $ (((((!\b2v_inst1|Add0~2\ & \b2v_inst1|Add0~12\) # (\b2v_inst1|Add0~2\ & \b2v_inst1|Add0~12COUT1_188\)))))
-- \b2v_inst1|Add0~17\ = CARRY(((!\b2v_inst1|Add0~12\)) # (!\b2v_inst1|Transmit_Data:cnt16[3]~regout\))
-- \b2v_inst1|Add0~17COUT1_190\ = CARRY(((!\b2v_inst1|Add0~12COUT1_188\)) # (!\b2v_inst1|Transmit_Data:cnt16[3]~regout\))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|Transmit_Data:cnt16[3]~regout\,
	cin => \b2v_inst1|Add0~2\,
	cin0 => \b2v_inst1|Add0~12\,
	cin1 => \b2v_inst1|Add0~12COUT1_188\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst1|Add0~15_combout\,
	cout0 => \b2v_inst1|Add0~17\,
	cout1 => \b2v_inst1|Add0~17COUT1_190\);

-- Location: LC_X16_Y10_N7
\b2v_inst1|Transmit_Data:cnt16[3]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst1|Transmit_Data:cnt16[3]~regout\ = DFFEAS((((\b2v_inst1|Add0~15_combout\))), GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , \b2v_inst1|state.x_idle~regout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	datad => \b2v_inst1|Add0~15_combout\,
	aclr => \RST~combout\,
	ena => \b2v_inst1|state.x_idle~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst1|Transmit_Data:cnt16[3]~regout\);

-- Location: LC_X15_Y11_N8
\b2v_inst1|Add0~20\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst1|Add0~20_combout\ = \b2v_inst1|Transmit_Data:cnt16[4]~regout\ $ ((((!(!\b2v_inst1|Add0~2\ & \b2v_inst1|Add0~17\) # (\b2v_inst1|Add0~2\ & \b2v_inst1|Add0~17COUT1_190\)))))
-- \b2v_inst1|Add0~22\ = CARRY((\b2v_inst1|Transmit_Data:cnt16[4]~regout\ & ((!\b2v_inst1|Add0~17\))))
-- \b2v_inst1|Add0~22COUT1_192\ = CARRY((\b2v_inst1|Transmit_Data:cnt16[4]~regout\ & ((!\b2v_inst1|Add0~17COUT1_190\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|Transmit_Data:cnt16[4]~regout\,
	cin => \b2v_inst1|Add0~2\,
	cin0 => \b2v_inst1|Add0~17\,
	cin1 => \b2v_inst1|Add0~17COUT1_190\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst1|Add0~20_combout\,
	cout0 => \b2v_inst1|Add0~22\,
	cout1 => \b2v_inst1|Add0~22COUT1_192\);

-- Location: LC_X12_Y8_N5
\b2v_inst1|Transmit_Data:cnt16[19]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst1|Transmit_Data:cnt16[19]~regout\ = DFFEAS((((\b2v_inst1|Add0~95_combout\))), GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , \b2v_inst1|state.x_idle~regout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	datad => \b2v_inst1|Add0~95_combout\,
	aclr => \RST~combout\,
	ena => \b2v_inst1|state.x_idle~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst1|Transmit_Data:cnt16[19]~regout\);

-- Location: LC_X15_Y9_N0
\b2v_inst1|Add0~80\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst1|Add0~80_combout\ = (\b2v_inst1|Transmit_Data:cnt16[16]~regout\ $ ((!\b2v_inst1|Add0~77\)))
-- \b2v_inst1|Add0~82\ = CARRY(((\b2v_inst1|Transmit_Data:cnt16[16]~regout\ & !\b2v_inst1|Add0~77\)))
-- \b2v_inst1|Add0~82COUT1_210\ = CARRY(((\b2v_inst1|Transmit_Data:cnt16[16]~regout\ & !\b2v_inst1|Add0~77\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|Transmit_Data:cnt16[16]~regout\,
	cin => \b2v_inst1|Add0~77\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst1|Add0~80_combout\,
	cout0 => \b2v_inst1|Add0~82\,
	cout1 => \b2v_inst1|Add0~82COUT1_210\);

-- Location: LC_X12_Y8_N3
\b2v_inst1|Transmit_Data:cnt16[16]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst1|Transmit_Data:cnt16[16]~regout\ = DFFEAS(GND, GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , \b2v_inst1|state.x_idle~regout\, \b2v_inst1|Add0~80_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	datac => \b2v_inst1|Add0~80_combout\,
	aclr => \RST~combout\,
	sload => VCC,
	ena => \b2v_inst1|state.x_idle~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst1|Transmit_Data:cnt16[16]~regout\);

-- Location: LC_X15_Y9_N1
\b2v_inst1|Add0~85\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst1|Add0~85_combout\ = (\b2v_inst1|Transmit_Data:cnt16[17]~regout\ $ (((!\b2v_inst1|Add0~77\ & \b2v_inst1|Add0~82\) # (\b2v_inst1|Add0~77\ & \b2v_inst1|Add0~82COUT1_210\))))
-- \b2v_inst1|Add0~87\ = CARRY(((!\b2v_inst1|Add0~82\) # (!\b2v_inst1|Transmit_Data:cnt16[17]~regout\)))
-- \b2v_inst1|Add0~87COUT1_212\ = CARRY(((!\b2v_inst1|Add0~82COUT1_210\) # (!\b2v_inst1|Transmit_Data:cnt16[17]~regout\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|Transmit_Data:cnt16[17]~regout\,
	cin => \b2v_inst1|Add0~77\,
	cin0 => \b2v_inst1|Add0~82\,
	cin1 => \b2v_inst1|Add0~82COUT1_210\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst1|Add0~85_combout\,
	cout0 => \b2v_inst1|Add0~87\,
	cout1 => \b2v_inst1|Add0~87COUT1_212\);

-- Location: LC_X12_Y8_N6
\b2v_inst1|Transmit_Data:cnt16[17]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst1|Transmit_Data:cnt16[17]~regout\ = DFFEAS((((\b2v_inst1|Add0~85_combout\))), GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , \b2v_inst1|state.x_idle~regout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	datad => \b2v_inst1|Add0~85_combout\,
	aclr => \RST~combout\,
	ena => \b2v_inst1|state.x_idle~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst1|Transmit_Data:cnt16[17]~regout\);

-- Location: LC_X15_Y9_N2
\b2v_inst1|Add0~90\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst1|Add0~90_combout\ = (\b2v_inst1|Transmit_Data:cnt16[18]~regout\ $ ((!(!\b2v_inst1|Add0~77\ & \b2v_inst1|Add0~87\) # (\b2v_inst1|Add0~77\ & \b2v_inst1|Add0~87COUT1_212\))))
-- \b2v_inst1|Add0~92\ = CARRY(((\b2v_inst1|Transmit_Data:cnt16[18]~regout\ & !\b2v_inst1|Add0~87\)))
-- \b2v_inst1|Add0~92COUT1_214\ = CARRY(((\b2v_inst1|Transmit_Data:cnt16[18]~regout\ & !\b2v_inst1|Add0~87COUT1_212\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|Transmit_Data:cnt16[18]~regout\,
	cin => \b2v_inst1|Add0~77\,
	cin0 => \b2v_inst1|Add0~87\,
	cin1 => \b2v_inst1|Add0~87COUT1_212\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst1|Add0~90_combout\,
	cout0 => \b2v_inst1|Add0~92\,
	cout1 => \b2v_inst1|Add0~92COUT1_214\);

-- Location: LC_X12_Y8_N7
\b2v_inst1|Transmit_Data:cnt16[18]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst1|Transmit_Data:cnt16[18]~regout\ = DFFEAS((((\b2v_inst1|Add0~90_combout\))), GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , \b2v_inst1|state.x_idle~regout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	datad => \b2v_inst1|Add0~90_combout\,
	aclr => \RST~combout\,
	ena => \b2v_inst1|state.x_idle~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst1|Transmit_Data:cnt16[18]~regout\);

-- Location: LC_X15_Y9_N3
\b2v_inst1|Add0~95\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst1|Add0~95_combout\ = (\b2v_inst1|Transmit_Data:cnt16[19]~regout\ $ (((!\b2v_inst1|Add0~77\ & \b2v_inst1|Add0~92\) # (\b2v_inst1|Add0~77\ & \b2v_inst1|Add0~92COUT1_214\))))
-- \b2v_inst1|Add0~97\ = CARRY(((!\b2v_inst1|Add0~92\) # (!\b2v_inst1|Transmit_Data:cnt16[19]~regout\)))
-- \b2v_inst1|Add0~97COUT1_216\ = CARRY(((!\b2v_inst1|Add0~92COUT1_214\) # (!\b2v_inst1|Transmit_Data:cnt16[19]~regout\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|Transmit_Data:cnt16[19]~regout\,
	cin => \b2v_inst1|Add0~77\,
	cin0 => \b2v_inst1|Add0~92\,
	cin1 => \b2v_inst1|Add0~92COUT1_214\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst1|Add0~95_combout\,
	cout0 => \b2v_inst1|Add0~97\,
	cout1 => \b2v_inst1|Add0~97COUT1_216\);

-- Location: LC_X12_Y8_N8
\b2v_inst1|Equal0~5\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst1|Equal0~5_combout\ = (!\b2v_inst1|Add0~95_combout\ & (!\b2v_inst1|Add0~85_combout\ & (!\b2v_inst1|Add0~80_combout\ & !\b2v_inst1|Add0~90_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|Add0~95_combout\,
	datab => \b2v_inst1|Add0~85_combout\,
	datac => \b2v_inst1|Add0~80_combout\,
	datad => \b2v_inst1|Add0~90_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst1|Equal0~5_combout\);

-- Location: LC_X12_Y8_N1
\b2v_inst1|Equal0~6\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst1|Equal0~6_combout\ = (((!\b2v_inst1|Add0~100_combout\ & !\b2v_inst1|Add0~105_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst1|Add0~100_combout\,
	datad => \b2v_inst1|Add0~105_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst1|Equal0~6_combout\);

-- Location: LC_X16_Y9_N8
\b2v_inst1|Equal0~7\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst1|Equal0~7_combout\ = (!\b2v_inst1|Add0~110_combout\ & (!\b2v_inst1|Add0~115_combout\ & (\b2v_inst1|Equal0~5_combout\ & \b2v_inst1|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|Add0~110_combout\,
	datab => \b2v_inst1|Add0~115_combout\,
	datac => \b2v_inst1|Equal0~5_combout\,
	datad => \b2v_inst1|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst1|Equal0~7_combout\);

-- Location: LC_X15_Y11_N2
\b2v_inst1|Equal0~0\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst1|Equal0~0_combout\ = (!\b2v_inst1|Add0~10_combout\ & (!\b2v_inst1|Add0~0_combout\ & (!\b2v_inst1|Add0~15_combout\ & !\b2v_inst1|Add0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|Add0~10_combout\,
	datab => \b2v_inst1|Add0~0_combout\,
	datac => \b2v_inst1|Add0~15_combout\,
	datad => \b2v_inst1|Add0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst1|Equal0~0_combout\);

-- Location: LC_X12_Y8_N9
\b2v_inst1|Transmit_Data:cnt16[14]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst1|Transmit_Data:cnt16[14]~regout\ = DFFEAS(GND, GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , \b2v_inst1|state.x_idle~regout\, \b2v_inst1|Add0~70_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	datac => \b2v_inst1|Add0~70_combout\,
	aclr => \RST~combout\,
	sload => VCC,
	ena => \b2v_inst1|state.x_idle~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst1|Transmit_Data:cnt16[14]~regout\);

-- Location: LC_X15_Y10_N5
\b2v_inst1|Add0~55\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst1|Add0~55_combout\ = (\b2v_inst1|Transmit_Data:cnt16[11]~regout\ $ ((\b2v_inst1|Add0~52\)))
-- \b2v_inst1|Add0~57\ = CARRY(((!\b2v_inst1|Add0~52\) # (!\b2v_inst1|Transmit_Data:cnt16[11]~regout\)))
-- \b2v_inst1|Add0~57COUT1_202\ = CARRY(((!\b2v_inst1|Add0~52\) # (!\b2v_inst1|Transmit_Data:cnt16[11]~regout\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|Transmit_Data:cnt16[11]~regout\,
	cin => \b2v_inst1|Add0~52\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst1|Add0~55_combout\,
	cout0 => \b2v_inst1|Add0~57\,
	cout1 => \b2v_inst1|Add0~57COUT1_202\);

-- Location: LC_X16_Y10_N0
\b2v_inst1|Transmit_Data:cnt16[11]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst1|Transmit_Data:cnt16[11]~regout\ = DFFEAS(GND, GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , \b2v_inst1|state.x_idle~regout\, \b2v_inst1|Add0~55_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	datac => \b2v_inst1|Add0~55_combout\,
	aclr => \RST~combout\,
	sload => VCC,
	ena => \b2v_inst1|state.x_idle~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst1|Transmit_Data:cnt16[11]~regout\);

-- Location: LC_X15_Y10_N6
\b2v_inst1|Add0~60\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst1|Add0~60_combout\ = \b2v_inst1|Transmit_Data:cnt16[12]~regout\ $ ((((!(!\b2v_inst1|Add0~52\ & \b2v_inst1|Add0~57\) # (\b2v_inst1|Add0~52\ & \b2v_inst1|Add0~57COUT1_202\)))))
-- \b2v_inst1|Add0~62\ = CARRY((\b2v_inst1|Transmit_Data:cnt16[12]~regout\ & ((!\b2v_inst1|Add0~57\))))
-- \b2v_inst1|Add0~62COUT1_204\ = CARRY((\b2v_inst1|Transmit_Data:cnt16[12]~regout\ & ((!\b2v_inst1|Add0~57COUT1_202\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|Transmit_Data:cnt16[12]~regout\,
	cin => \b2v_inst1|Add0~52\,
	cin0 => \b2v_inst1|Add0~57\,
	cin1 => \b2v_inst1|Add0~57COUT1_202\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst1|Add0~60_combout\,
	cout0 => \b2v_inst1|Add0~62\,
	cout1 => \b2v_inst1|Add0~62COUT1_204\);

-- Location: LC_X16_Y10_N6
\b2v_inst1|Transmit_Data:cnt16[12]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst1|Transmit_Data:cnt16[12]~regout\ = DFFEAS((((\b2v_inst1|Add0~60_combout\))), GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , \b2v_inst1|state.x_idle~regout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	datad => \b2v_inst1|Add0~60_combout\,
	aclr => \RST~combout\,
	ena => \b2v_inst1|state.x_idle~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst1|Transmit_Data:cnt16[12]~regout\);

-- Location: LC_X15_Y10_N7
\b2v_inst1|Add0~65\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst1|Add0~65_combout\ = \b2v_inst1|Transmit_Data:cnt16[13]~regout\ $ (((((!\b2v_inst1|Add0~52\ & \b2v_inst1|Add0~62\) # (\b2v_inst1|Add0~52\ & \b2v_inst1|Add0~62COUT1_204\)))))
-- \b2v_inst1|Add0~67\ = CARRY(((!\b2v_inst1|Add0~62\)) # (!\b2v_inst1|Transmit_Data:cnt16[13]~regout\))
-- \b2v_inst1|Add0~67COUT1_206\ = CARRY(((!\b2v_inst1|Add0~62COUT1_204\)) # (!\b2v_inst1|Transmit_Data:cnt16[13]~regout\))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|Transmit_Data:cnt16[13]~regout\,
	cin => \b2v_inst1|Add0~52\,
	cin0 => \b2v_inst1|Add0~62\,
	cin1 => \b2v_inst1|Add0~62COUT1_204\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst1|Add0~65_combout\,
	cout0 => \b2v_inst1|Add0~67\,
	cout1 => \b2v_inst1|Add0~67COUT1_206\);

-- Location: LC_X16_Y9_N0
\b2v_inst1|Transmit_Data:cnt16[13]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst1|Transmit_Data:cnt16[13]~regout\ = DFFEAS((((\b2v_inst1|Add0~65_combout\))), GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , \b2v_inst1|state.x_idle~regout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	datad => \b2v_inst1|Add0~65_combout\,
	aclr => \RST~combout\,
	ena => \b2v_inst1|state.x_idle~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst1|Transmit_Data:cnt16[13]~regout\);

-- Location: LC_X15_Y10_N8
\b2v_inst1|Add0~70\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst1|Add0~70_combout\ = \b2v_inst1|Transmit_Data:cnt16[14]~regout\ $ ((((!(!\b2v_inst1|Add0~52\ & \b2v_inst1|Add0~67\) # (\b2v_inst1|Add0~52\ & \b2v_inst1|Add0~67COUT1_206\)))))
-- \b2v_inst1|Add0~72\ = CARRY((\b2v_inst1|Transmit_Data:cnt16[14]~regout\ & ((!\b2v_inst1|Add0~67\))))
-- \b2v_inst1|Add0~72COUT1_208\ = CARRY((\b2v_inst1|Transmit_Data:cnt16[14]~regout\ & ((!\b2v_inst1|Add0~67COUT1_206\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|Transmit_Data:cnt16[14]~regout\,
	cin => \b2v_inst1|Add0~52\,
	cin0 => \b2v_inst1|Add0~67\,
	cin1 => \b2v_inst1|Add0~67COUT1_206\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst1|Add0~70_combout\,
	cout0 => \b2v_inst1|Add0~72\,
	cout1 => \b2v_inst1|Add0~72COUT1_208\);

-- Location: LC_X16_Y9_N5
\b2v_inst1|Equal0~3\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst1|Equal0~3_combout\ = (!\b2v_inst1|Add0~75_combout\ & (!\b2v_inst1|Add0~70_combout\ & (!\b2v_inst1|Add0~60_combout\ & !\b2v_inst1|Add0~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|Add0~75_combout\,
	datab => \b2v_inst1|Add0~70_combout\,
	datac => \b2v_inst1|Add0~60_combout\,
	datad => \b2v_inst1|Add0~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst1|Equal0~3_combout\);

-- Location: LC_X16_Y10_N5
\b2v_inst1|Transmit_Data:cnt16[8]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst1|Transmit_Data:cnt16[8]~regout\ = DFFEAS((((\b2v_inst1|Add0~40_combout\))), GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , \b2v_inst1|state.x_idle~regout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	datad => \b2v_inst1|Add0~40_combout\,
	aclr => \RST~combout\,
	ena => \b2v_inst1|state.x_idle~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst1|Transmit_Data:cnt16[8]~regout\);

-- Location: LC_X15_Y10_N0
\b2v_inst1|Add0~30\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst1|Add0~30_combout\ = \b2v_inst1|Transmit_Data:cnt16[6]~regout\ $ ((((!\b2v_inst1|Add0~27\))))
-- \b2v_inst1|Add0~32\ = CARRY((\b2v_inst1|Transmit_Data:cnt16[6]~regout\ & ((!\b2v_inst1|Add0~27\))))
-- \b2v_inst1|Add0~32COUT1_194\ = CARRY((\b2v_inst1|Transmit_Data:cnt16[6]~regout\ & ((!\b2v_inst1|Add0~27\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|Transmit_Data:cnt16[6]~regout\,
	cin => \b2v_inst1|Add0~27\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst1|Add0~30_combout\,
	cout0 => \b2v_inst1|Add0~32\,
	cout1 => \b2v_inst1|Add0~32COUT1_194\);

-- Location: LC_X16_Y9_N4
\b2v_inst1|Transmit_Data:cnt16[6]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst1|Transmit_Data:cnt16[6]~regout\ = DFFEAS(GND, GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , \b2v_inst1|state.x_idle~regout\, \b2v_inst1|Add0~30_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	datac => \b2v_inst1|Add0~30_combout\,
	aclr => \RST~combout\,
	sload => VCC,
	ena => \b2v_inst1|state.x_idle~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst1|Transmit_Data:cnt16[6]~regout\);

-- Location: LC_X15_Y10_N1
\b2v_inst1|Add0~35\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst1|Add0~35_combout\ = \b2v_inst1|Transmit_Data:cnt16[7]~regout\ $ (((((!\b2v_inst1|Add0~27\ & \b2v_inst1|Add0~32\) # (\b2v_inst1|Add0~27\ & \b2v_inst1|Add0~32COUT1_194\)))))
-- \b2v_inst1|Add0~37\ = CARRY(((!\b2v_inst1|Add0~32\)) # (!\b2v_inst1|Transmit_Data:cnt16[7]~regout\))
-- \b2v_inst1|Add0~37COUT1_196\ = CARRY(((!\b2v_inst1|Add0~32COUT1_194\)) # (!\b2v_inst1|Transmit_Data:cnt16[7]~regout\))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|Transmit_Data:cnt16[7]~regout\,
	cin => \b2v_inst1|Add0~27\,
	cin0 => \b2v_inst1|Add0~32\,
	cin1 => \b2v_inst1|Add0~32COUT1_194\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst1|Add0~35_combout\,
	cout0 => \b2v_inst1|Add0~37\,
	cout1 => \b2v_inst1|Add0~37COUT1_196\);

-- Location: LC_X16_Y9_N6
\b2v_inst1|Transmit_Data:cnt16[7]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst1|Transmit_Data:cnt16[7]~regout\ = DFFEAS(GND, GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , \b2v_inst1|state.x_idle~regout\, \b2v_inst1|Add0~35_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	datac => \b2v_inst1|Add0~35_combout\,
	aclr => \RST~combout\,
	sload => VCC,
	ena => \b2v_inst1|state.x_idle~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst1|Transmit_Data:cnt16[7]~regout\);

-- Location: LC_X15_Y10_N2
\b2v_inst1|Add0~40\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst1|Add0~40_combout\ = (\b2v_inst1|Transmit_Data:cnt16[8]~regout\ $ ((!(!\b2v_inst1|Add0~27\ & \b2v_inst1|Add0~37\) # (\b2v_inst1|Add0~27\ & \b2v_inst1|Add0~37COUT1_196\))))
-- \b2v_inst1|Add0~42\ = CARRY(((\b2v_inst1|Transmit_Data:cnt16[8]~regout\ & !\b2v_inst1|Add0~37\)))
-- \b2v_inst1|Add0~42COUT1_198\ = CARRY(((\b2v_inst1|Transmit_Data:cnt16[8]~regout\ & !\b2v_inst1|Add0~37COUT1_196\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|Transmit_Data:cnt16[8]~regout\,
	cin => \b2v_inst1|Add0~27\,
	cin0 => \b2v_inst1|Add0~37\,
	cin1 => \b2v_inst1|Add0~37COUT1_196\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst1|Add0~40_combout\,
	cout0 => \b2v_inst1|Add0~42\,
	cout1 => \b2v_inst1|Add0~42COUT1_198\);

-- Location: LC_X16_Y10_N4
\b2v_inst1|Transmit_Data:cnt16[9]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst1|Transmit_Data:cnt16[9]~regout\ = DFFEAS(GND, GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , \b2v_inst1|state.x_idle~regout\, \b2v_inst1|Add0~45_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	datac => \b2v_inst1|Add0~45_combout\,
	aclr => \RST~combout\,
	sload => VCC,
	ena => \b2v_inst1|state.x_idle~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst1|Transmit_Data:cnt16[9]~regout\);

-- Location: LC_X15_Y10_N3
\b2v_inst1|Add0~45\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst1|Add0~45_combout\ = (\b2v_inst1|Transmit_Data:cnt16[9]~regout\ $ (((!\b2v_inst1|Add0~27\ & \b2v_inst1|Add0~42\) # (\b2v_inst1|Add0~27\ & \b2v_inst1|Add0~42COUT1_198\))))
-- \b2v_inst1|Add0~47\ = CARRY(((!\b2v_inst1|Add0~42\) # (!\b2v_inst1|Transmit_Data:cnt16[9]~regout\)))
-- \b2v_inst1|Add0~47COUT1_200\ = CARRY(((!\b2v_inst1|Add0~42COUT1_198\) # (!\b2v_inst1|Transmit_Data:cnt16[9]~regout\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|Transmit_Data:cnt16[9]~regout\,
	cin => \b2v_inst1|Add0~27\,
	cin0 => \b2v_inst1|Add0~42\,
	cin1 => \b2v_inst1|Add0~42COUT1_198\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst1|Add0~45_combout\,
	cout0 => \b2v_inst1|Add0~47\,
	cout1 => \b2v_inst1|Add0~47COUT1_200\);

-- Location: LC_X16_Y9_N7
\b2v_inst1|Equal0~2\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst1|Equal0~2_combout\ = (!\b2v_inst1|Add0~40_combout\ & (!\b2v_inst1|Add0~55_combout\ & (!\b2v_inst1|Add0~50_combout\ & !\b2v_inst1|Add0~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|Add0~40_combout\,
	datab => \b2v_inst1|Add0~55_combout\,
	datac => \b2v_inst1|Add0~50_combout\,
	datad => \b2v_inst1|Add0~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst1|Equal0~2_combout\);

-- Location: LC_X16_Y9_N1
\b2v_inst1|Equal0~1\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst1|Equal0~1_combout\ = (!\b2v_inst1|Add0~30_combout\ & (!\b2v_inst1|Add0~35_combout\ & (!\b2v_inst1|Add0~25_combout\ & \b2v_inst1|Add0~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|Add0~30_combout\,
	datab => \b2v_inst1|Add0~35_combout\,
	datac => \b2v_inst1|Add0~25_combout\,
	datad => \b2v_inst1|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst1|Equal0~1_combout\);

-- Location: LC_X16_Y9_N2
\b2v_inst1|Equal0~4\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst1|Equal0~4_combout\ = (\b2v_inst1|Equal0~0_combout\ & (\b2v_inst1|Equal0~3_combout\ & (\b2v_inst1|Equal0~2_combout\ & \b2v_inst1|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|Equal0~0_combout\,
	datab => \b2v_inst1|Equal0~3_combout\,
	datac => \b2v_inst1|Equal0~2_combout\,
	datad => \b2v_inst1|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst1|Equal0~4_combout\);

-- Location: LC_X16_Y9_N3
\b2v_inst1|Transmit_Data:cnt16[4]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst1|Transmit_Data:cnt16[4]~regout\ = DFFEAS((\b2v_inst1|Add0~20_combout\ & (((!\b2v_inst1|Equal0~4_combout\) # (!\b2v_inst1|Equal0~7_combout\)) # (!\b2v_inst1|Equal0~11_combout\))), GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , 
-- \b2v_inst1|state.x_idle~regout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4ccc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	dataa => \b2v_inst1|Equal0~11_combout\,
	datab => \b2v_inst1|Add0~20_combout\,
	datac => \b2v_inst1|Equal0~7_combout\,
	datad => \b2v_inst1|Equal0~4_combout\,
	aclr => \RST~combout\,
	ena => \b2v_inst1|state.x_idle~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst1|Transmit_Data:cnt16[4]~regout\);

-- Location: LC_X15_Y11_N9
\b2v_inst1|Add0~25\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst1|Add0~25_combout\ = \b2v_inst1|Transmit_Data:cnt16[5]~regout\ $ (((((!\b2v_inst1|Add0~2\ & \b2v_inst1|Add0~22\) # (\b2v_inst1|Add0~2\ & \b2v_inst1|Add0~22COUT1_192\)))))
-- \b2v_inst1|Add0~27\ = CARRY(((!\b2v_inst1|Add0~22COUT1_192\)) # (!\b2v_inst1|Transmit_Data:cnt16[5]~regout\))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|Transmit_Data:cnt16[5]~regout\,
	cin => \b2v_inst1|Add0~2\,
	cin0 => \b2v_inst1|Add0~22\,
	cin1 => \b2v_inst1|Add0~22COUT1_192\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst1|Add0~25_combout\,
	cout => \b2v_inst1|Add0~27\);

-- Location: LC_X16_Y9_N9
\b2v_inst1|Transmit_Data:cnt16[5]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst1|Transmit_Data:cnt16[5]~regout\ = DFFEAS(GND, GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , \b2v_inst1|state.x_idle~regout\, \b2v_inst1|Add0~25_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	datac => \b2v_inst1|Add0~25_combout\,
	aclr => \RST~combout\,
	sload => VCC,
	ena => \b2v_inst1|state.x_idle~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst1|Transmit_Data:cnt16[5]~regout\);

-- Location: LC_X15_Y10_N4
\b2v_inst1|Add0~50\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst1|Add0~50_combout\ = (\b2v_inst1|Transmit_Data:cnt16[10]~regout\ $ ((!(!\b2v_inst1|Add0~27\ & \b2v_inst1|Add0~47\) # (\b2v_inst1|Add0~27\ & \b2v_inst1|Add0~47COUT1_200\))))
-- \b2v_inst1|Add0~52\ = CARRY(((\b2v_inst1|Transmit_Data:cnt16[10]~regout\ & !\b2v_inst1|Add0~47COUT1_200\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|Transmit_Data:cnt16[10]~regout\,
	cin => \b2v_inst1|Add0~27\,
	cin0 => \b2v_inst1|Add0~47\,
	cin1 => \b2v_inst1|Add0~47COUT1_200\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst1|Add0~50_combout\,
	cout => \b2v_inst1|Add0~52\);

-- Location: LC_X16_Y10_N9
\b2v_inst1|Transmit_Data:cnt16[10]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst1|Transmit_Data:cnt16[10]~regout\ = DFFEAS((((\b2v_inst1|Add0~50_combout\))), GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , \b2v_inst1|state.x_idle~regout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	datad => \b2v_inst1|Add0~50_combout\,
	aclr => \RST~combout\,
	ena => \b2v_inst1|state.x_idle~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst1|Transmit_Data:cnt16[10]~regout\);

-- Location: LC_X15_Y10_N9
\b2v_inst1|Add0~75\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst1|Add0~75_combout\ = (\b2v_inst1|Transmit_Data:cnt16[15]~regout\ $ (((!\b2v_inst1|Add0~52\ & \b2v_inst1|Add0~72\) # (\b2v_inst1|Add0~52\ & \b2v_inst1|Add0~72COUT1_208\))))
-- \b2v_inst1|Add0~77\ = CARRY(((!\b2v_inst1|Add0~72COUT1_208\) # (!\b2v_inst1|Transmit_Data:cnt16[15]~regout\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|Transmit_Data:cnt16[15]~regout\,
	cin => \b2v_inst1|Add0~52\,
	cin0 => \b2v_inst1|Add0~72\,
	cin1 => \b2v_inst1|Add0~72COUT1_208\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst1|Add0~75_combout\,
	cout => \b2v_inst1|Add0~77\);

-- Location: LC_X12_Y8_N4
\b2v_inst1|Transmit_Data:cnt16[15]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst1|Transmit_Data:cnt16[15]~regout\ = DFFEAS(GND, GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , \b2v_inst1|state.x_idle~regout\, \b2v_inst1|Add0~75_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	datac => \b2v_inst1|Add0~75_combout\,
	aclr => \RST~combout\,
	sload => VCC,
	ena => \b2v_inst1|state.x_idle~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst1|Transmit_Data:cnt16[15]~regout\);

-- Location: LC_X15_Y9_N4
\b2v_inst1|Add0~100\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst1|Add0~100_combout\ = (\b2v_inst1|Transmit_Data:cnt16[20]~regout\ $ ((!(!\b2v_inst1|Add0~77\ & \b2v_inst1|Add0~97\) # (\b2v_inst1|Add0~77\ & \b2v_inst1|Add0~97COUT1_216\))))
-- \b2v_inst1|Add0~102\ = CARRY(((\b2v_inst1|Transmit_Data:cnt16[20]~regout\ & !\b2v_inst1|Add0~97COUT1_216\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|Transmit_Data:cnt16[20]~regout\,
	cin => \b2v_inst1|Add0~77\,
	cin0 => \b2v_inst1|Add0~97\,
	cin1 => \b2v_inst1|Add0~97COUT1_216\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst1|Add0~100_combout\,
	cout => \b2v_inst1|Add0~102\);

-- Location: LC_X12_Y8_N2
\b2v_inst1|Transmit_Data:cnt16[20]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst1|Transmit_Data:cnt16[20]~regout\ = DFFEAS(GND, GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , \b2v_inst1|state.x_idle~regout\, \b2v_inst1|Add0~100_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	datac => \b2v_inst1|Add0~100_combout\,
	aclr => \RST~combout\,
	sload => VCC,
	ena => \b2v_inst1|state.x_idle~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst1|Transmit_Data:cnt16[20]~regout\);

-- Location: LC_X15_Y9_N9
\b2v_inst1|Add0~125\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst1|Add0~125_combout\ = \b2v_inst1|Transmit_Data:cnt16[25]~regout\ $ (((((!\b2v_inst1|Add0~102\ & \b2v_inst1|Add0~122\) # (\b2v_inst1|Add0~102\ & \b2v_inst1|Add0~122COUT1_224\)))))
-- \b2v_inst1|Add0~127\ = CARRY(((!\b2v_inst1|Add0~122COUT1_224\)) # (!\b2v_inst1|Transmit_Data:cnt16[25]~regout\))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|Transmit_Data:cnt16[25]~regout\,
	cin => \b2v_inst1|Add0~102\,
	cin0 => \b2v_inst1|Add0~122\,
	cin1 => \b2v_inst1|Add0~122COUT1_224\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst1|Add0~125_combout\,
	cout => \b2v_inst1|Add0~127\);

-- Location: LC_X12_Y9_N3
\b2v_inst1|Transmit_Data:cnt16[25]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst1|Transmit_Data:cnt16[25]~regout\ = DFFEAS(GND, GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , \b2v_inst1|state.x_idle~regout\, \b2v_inst1|Add0~125_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	datac => \b2v_inst1|Add0~125_combout\,
	aclr => \RST~combout\,
	sload => VCC,
	ena => \b2v_inst1|state.x_idle~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst1|Transmit_Data:cnt16[25]~regout\);

-- Location: LC_X15_Y8_N2
\b2v_inst1|Add0~140\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst1|Add0~140_combout\ = \b2v_inst1|Transmit_Data:cnt16[28]~regout\ $ ((((!(!\b2v_inst1|Add0~127\ & \b2v_inst1|Add0~137\) # (\b2v_inst1|Add0~127\ & \b2v_inst1|Add0~137COUT1_228\)))))
-- \b2v_inst1|Add0~142\ = CARRY((\b2v_inst1|Transmit_Data:cnt16[28]~regout\ & ((!\b2v_inst1|Add0~137\))))
-- \b2v_inst1|Add0~142COUT1_230\ = CARRY((\b2v_inst1|Transmit_Data:cnt16[28]~regout\ & ((!\b2v_inst1|Add0~137COUT1_228\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|Transmit_Data:cnt16[28]~regout\,
	cin => \b2v_inst1|Add0~127\,
	cin0 => \b2v_inst1|Add0~137\,
	cin1 => \b2v_inst1|Add0~137COUT1_228\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst1|Add0~140_combout\,
	cout0 => \b2v_inst1|Add0~142\,
	cout1 => \b2v_inst1|Add0~142COUT1_230\);

-- Location: LC_X12_Y9_N2
\b2v_inst1|Transmit_Data:cnt16[29]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst1|Transmit_Data:cnt16[29]~regout\ = DFFEAS(GND, GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , \b2v_inst1|state.x_idle~regout\, \b2v_inst1|Add0~145_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	datac => \b2v_inst1|Add0~145_combout\,
	aclr => \RST~combout\,
	sload => VCC,
	ena => \b2v_inst1|state.x_idle~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst1|Transmit_Data:cnt16[29]~regout\);

-- Location: LC_X15_Y8_N3
\b2v_inst1|Add0~145\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst1|Add0~145_combout\ = (\b2v_inst1|Transmit_Data:cnt16[29]~regout\ $ (((!\b2v_inst1|Add0~127\ & \b2v_inst1|Add0~142\) # (\b2v_inst1|Add0~127\ & \b2v_inst1|Add0~142COUT1_230\))))
-- \b2v_inst1|Add0~147\ = CARRY(((!\b2v_inst1|Add0~142\) # (!\b2v_inst1|Transmit_Data:cnt16[29]~regout\)))
-- \b2v_inst1|Add0~147COUT1_232\ = CARRY(((!\b2v_inst1|Add0~142COUT1_230\) # (!\b2v_inst1|Transmit_Data:cnt16[29]~regout\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|Transmit_Data:cnt16[29]~regout\,
	cin => \b2v_inst1|Add0~127\,
	cin0 => \b2v_inst1|Add0~142\,
	cin1 => \b2v_inst1|Add0~142COUT1_230\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst1|Add0~145_combout\,
	cout0 => \b2v_inst1|Add0~147\,
	cout1 => \b2v_inst1|Add0~147COUT1_232\);

-- Location: LC_X12_Y8_N0
\b2v_inst1|Transmit_Data:cnt16[30]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst1|Transmit_Data:cnt16[30]~regout\ = DFFEAS(GND, GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , \b2v_inst1|state.x_idle~regout\, \b2v_inst1|Add0~150_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	datac => \b2v_inst1|Add0~150_combout\,
	aclr => \RST~combout\,
	sload => VCC,
	ena => \b2v_inst1|state.x_idle~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst1|Transmit_Data:cnt16[30]~regout\);

-- Location: LC_X15_Y8_N4
\b2v_inst1|Add0~150\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst1|Add0~150_combout\ = (\b2v_inst1|Transmit_Data:cnt16[30]~regout\ $ ((!(!\b2v_inst1|Add0~127\ & \b2v_inst1|Add0~147\) # (\b2v_inst1|Add0~127\ & \b2v_inst1|Add0~147COUT1_232\))))
-- \b2v_inst1|Add0~152\ = CARRY(((\b2v_inst1|Transmit_Data:cnt16[30]~regout\ & !\b2v_inst1|Add0~147COUT1_232\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|Transmit_Data:cnt16[30]~regout\,
	cin => \b2v_inst1|Add0~127\,
	cin0 => \b2v_inst1|Add0~147\,
	cin1 => \b2v_inst1|Add0~147COUT1_232\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst1|Add0~150_combout\,
	cout => \b2v_inst1|Add0~152\);

-- Location: LC_X16_Y10_N1
\b2v_inst1|Transmit_Data:cnt16[31]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst1|Transmit_Data:cnt16[31]~regout\ = DFFEAS(GND, GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , \b2v_inst1|state.x_idle~regout\, \b2v_inst1|Add0~155_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	datac => \b2v_inst1|Add0~155_combout\,
	aclr => \RST~combout\,
	sload => VCC,
	ena => \b2v_inst1|state.x_idle~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst1|Transmit_Data:cnt16[31]~regout\);

-- Location: LC_X15_Y8_N5
\b2v_inst1|Add0~155\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst1|Add0~155_combout\ = ((\b2v_inst1|Add0~152\ $ (\b2v_inst1|Transmit_Data:cnt16[31]~regout\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst1|Transmit_Data:cnt16[31]~regout\,
	cin => \b2v_inst1|Add0~152\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst1|Add0~155_combout\);

-- Location: LC_X15_Y8_N6
\b2v_inst1|Equal0~9\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst1|Equal0~9_combout\ = (!\b2v_inst1|Add0~140_combout\ & (!\b2v_inst1|Add0~145_combout\ & (!\b2v_inst1|Add0~150_combout\ & !\b2v_inst1|Add0~155_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|Add0~140_combout\,
	datab => \b2v_inst1|Add0~145_combout\,
	datac => \b2v_inst1|Add0~150_combout\,
	datad => \b2v_inst1|Add0~155_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst1|Equal0~9_combout\);

-- Location: LC_X17_Y10_N5
\b2v_inst1|Equal0~10\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst1|Equal0~10_combout\ = (\b2v_inst1|Equal0~9_combout\ & (\b2v_inst1|Equal0~4_combout\ & (\b2v_inst1|Equal0~8_combout\ & \b2v_inst1|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|Equal0~9_combout\,
	datab => \b2v_inst1|Equal0~4_combout\,
	datac => \b2v_inst1|Equal0~8_combout\,
	datad => \b2v_inst1|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst1|Equal0~10_combout\);

-- Location: LC_X17_Y10_N1
\b2v_inst1|Selector1~0\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst1|Selector1~0_combout\ = (\b2v_inst1|Equal1~4_combout\ & (\b2v_inst1|state.x_shift~regout\ & (\b2v_inst1|Equal1~9_combout\ & \b2v_inst1|Equal0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|Equal1~4_combout\,
	datab => \b2v_inst1|state.x_shift~regout\,
	datac => \b2v_inst1|Equal1~9_combout\,
	datad => \b2v_inst1|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst1|Selector1~0_combout\);

-- Location: LC_X17_Y10_N0
\b2v_inst1|Transmit_Data:xbufs[7]~1\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst1|Transmit_Data:xbufs[7]~1_combout\ = ((\b2v_inst|rfinish~regout\ & (!\b2v_inst1|state.x_idle~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|rfinish~regout\,
	datac => \b2v_inst1|state.x_idle~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst1|Transmit_Data:xbufs[7]~1_combout\);

-- Location: LC_X17_Y10_N7
\b2v_inst1|state.x_start\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst1|state.x_start~regout\ = DFFEAS((!\b2v_inst1|Selector1~0_combout\ & ((\b2v_inst1|Transmit_Data:xbufs[7]~1_combout\) # ((\b2v_inst1|state.x_start~regout\ & !\b2v_inst1|Equal0~10_combout\)))), GLOBAL(\b2v_inst2|bclk~regout\), 
-- !GLOBAL(\RST~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4454",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	dataa => \b2v_inst1|Selector1~0_combout\,
	datab => \b2v_inst1|Transmit_Data:xbufs[7]~1_combout\,
	datac => \b2v_inst1|state.x_start~regout\,
	datad => \b2v_inst1|Equal0~10_combout\,
	aclr => \RST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst1|state.x_start~regout\);

-- Location: LC_X17_Y10_N2
\b2v_inst1|Selector3~0\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst1|Selector3~0_combout\ = (\b2v_inst1|state.x_shift~regout\ & (!\b2v_inst1|Selector1~0_combout\ & ((\b2v_inst1|state.x_idle~regout\) # (!\b2v_inst|rfinish~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "008c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|state.x_idle~regout\,
	datab => \b2v_inst1|state.x_shift~regout\,
	datac => \b2v_inst|rfinish~regout\,
	datad => \b2v_inst1|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst1|Selector3~0_combout\);

-- Location: LC_X17_Y10_N3
\b2v_inst1|state.x_shift\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst1|state.x_shift~regout\ = DFFEAS((\b2v_inst1|Equal0~10_combout\ & (!\b2v_inst1|state.x_stop~regout\ & ((\b2v_inst1|state.x_start~regout\) # (\b2v_inst1|Selector3~0_combout\)))) # (!\b2v_inst1|Equal0~10_combout\ & 
-- (((\b2v_inst1|Selector3~0_combout\)))), GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3f08",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	dataa => \b2v_inst1|state.x_start~regout\,
	datab => \b2v_inst1|Equal0~10_combout\,
	datac => \b2v_inst1|state.x_stop~regout\,
	datad => \b2v_inst1|Selector3~0_combout\,
	aclr => \RST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst1|state.x_shift~regout\);

-- Location: LC_X15_Y8_N8
\b2v_inst1|Selector1~1\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst1|Selector1~1_combout\ = (\b2v_inst1|state.x_shift~regout\ & (\b2v_inst1|Equal0~4_combout\ & (\b2v_inst1|Equal0~11_combout\ & \b2v_inst1|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|state.x_shift~regout\,
	datab => \b2v_inst1|Equal0~4_combout\,
	datac => \b2v_inst1|Equal0~11_combout\,
	datad => \b2v_inst1|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst1|Selector1~1_combout\);

-- Location: LC_X18_Y9_N1
\b2v_inst1|Transmit_Data:tbitcnt[0]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst1|Transmit_Data:tbitcnt[0]~regout\ = DFFEAS(GND, GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , \b2v_inst1|Selector1~1_combout\, \b2v_inst1|Add1~0_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	datac => \b2v_inst1|Add1~0_combout\,
	aclr => \RST~combout\,
	sload => VCC,
	ena => \b2v_inst1|Selector1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst1|Transmit_Data:tbitcnt[0]~regout\);

-- Location: LC_X18_Y1_N7
\b2v_inst|ReceiveData:rbufs[6]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|ReceiveData:rbufs[6]~regout\ = DFFEAS(((\b2v_inst|Decoder0~2\ & (\Data_in~combout\)) # (!\b2v_inst|Decoder0~2\ & ((\b2v_inst|ReceiveData:rbufs[6]~regout\)))), GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaf0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	dataa => \Data_in~combout\,
	datac => \b2v_inst|ReceiveData:rbufs[6]~regout\,
	datad => \b2v_inst|Decoder0~2\,
	aclr => \RST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|ReceiveData:rbufs[6]~regout\);

-- Location: LC_X19_Y7_N0
\b2v_inst|rbuf[7]~0\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|rbuf[7]~0_combout\ = (!\RST~combout\ & (\b2v_inst|state.r_stop~regout\ & (!\b2v_inst|Equal3~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0404",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RST~combout\,
	datab => \b2v_inst|state.r_stop~regout\,
	datac => \b2v_inst|Equal3~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst|rbuf[7]~0_combout\);

-- Location: LC_X17_Y2_N2
\b2v_inst|rbuf[6]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|rbuf\(6) = DFFEAS(GND, GLOBAL(\b2v_inst2|bclk~regout\), VCC, , \b2v_inst|rbuf[7]~0_combout\, \b2v_inst|ReceiveData:rbufs[6]~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	datac => \b2v_inst|ReceiveData:rbufs[6]~regout\,
	aclr => GND,
	sload => VCC,
	ena => \b2v_inst|rbuf[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|rbuf\(6));

-- Location: LC_X18_Y1_N4
\b2v_inst|ReceiveData:rbufs[4]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|ReceiveData:rbufs[4]~regout\ = DFFEAS(((\b2v_inst|Decoder0~3\ & (\Data_in~combout\)) # (!\b2v_inst|Decoder0~3\ & ((\b2v_inst|ReceiveData:rbufs[4]~regout\)))), GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaf0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	dataa => \Data_in~combout\,
	datac => \b2v_inst|ReceiveData:rbufs[4]~regout\,
	datad => \b2v_inst|Decoder0~3\,
	aclr => \RST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|ReceiveData:rbufs[4]~regout\);

-- Location: LC_X17_Y2_N4
\b2v_inst|rbuf[4]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|rbuf\(4) = DFFEAS(GND, GLOBAL(\b2v_inst2|bclk~regout\), VCC, , \b2v_inst|rbuf[7]~0_combout\, \b2v_inst|ReceiveData:rbufs[4]~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	datac => \b2v_inst|ReceiveData:rbufs[4]~regout\,
	aclr => GND,
	sload => VCC,
	ena => \b2v_inst|rbuf[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|rbuf\(4));

-- Location: LC_X16_Y10_N2
\b2v_inst1|Transmit_Data:xbufs[7]~0\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst1|Transmit_Data:xbufs[7]~0_combout\ = (!\RST~combout\ & (!\b2v_inst1|state.x_idle~regout\ & (\b2v_inst|rfinish~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RST~combout\,
	datab => \b2v_inst1|state.x_idle~regout\,
	datac => \b2v_inst|rfinish~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst1|Transmit_Data:xbufs[7]~0_combout\);

-- Location: LC_X19_Y9_N0
\b2v_inst1|Transmit_Data:xbufs[4]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst1|Transmit_Data:xbufs[4]~regout\ = DFFEAS((((\b2v_inst|rbuf\(4)))), GLOBAL(\b2v_inst2|bclk~regout\), VCC, , \b2v_inst1|Transmit_Data:xbufs[7]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	datad => \b2v_inst|rbuf\(4),
	aclr => GND,
	ena => \b2v_inst1|Transmit_Data:xbufs[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst1|Transmit_Data:xbufs[4]~regout\);

-- Location: LC_X19_Y9_N2
\b2v_inst1|Transmit_Data:xbufs[6]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst1|Mux0~0\ = (\b2v_inst1|Transmit_Data:tbitcnt[0]~regout\ & (\b2v_inst1|Transmit_Data:tbitcnt[1]~regout\)) # (!\b2v_inst1|Transmit_Data:tbitcnt[0]~regout\ & ((\b2v_inst1|Transmit_Data:tbitcnt[1]~regout\ & (D1_\Transmit_Data:xbufs[6])) # 
-- (!\b2v_inst1|Transmit_Data:tbitcnt[1]~regout\ & ((\b2v_inst1|Transmit_Data:xbufs[4]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	dataa => \b2v_inst1|Transmit_Data:tbitcnt[0]~regout\,
	datab => \b2v_inst1|Transmit_Data:tbitcnt[1]~regout\,
	datac => \b2v_inst|rbuf\(6),
	datad => \b2v_inst1|Transmit_Data:xbufs[4]~regout\,
	aclr => GND,
	sload => VCC,
	ena => \b2v_inst1|Transmit_Data:xbufs[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst1|Mux0~0\,
	regout => \b2v_inst1|Transmit_Data:xbufs[6]~regout\);

-- Location: LC_X18_Y1_N5
\b2v_inst|ReceiveData:rbufs[5]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|ReceiveData:rbufs[5]~regout\ = DFFEAS(((\b2v_inst|Decoder0~1\ & (\Data_in~combout\)) # (!\b2v_inst|Decoder0~1\ & ((\b2v_inst|ReceiveData:rbufs[5]~regout\)))), GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afa0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	dataa => \Data_in~combout\,
	datac => \b2v_inst|Decoder0~1\,
	datad => \b2v_inst|ReceiveData:rbufs[5]~regout\,
	aclr => \RST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|ReceiveData:rbufs[5]~regout\);

-- Location: LC_X17_Y2_N1
\b2v_inst|rbuf[5]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|rbuf\(5) = DFFEAS((((\b2v_inst|ReceiveData:rbufs[5]~regout\))), GLOBAL(\b2v_inst2|bclk~regout\), VCC, , \b2v_inst|rbuf[7]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	datad => \b2v_inst|ReceiveData:rbufs[5]~regout\,
	aclr => GND,
	ena => \b2v_inst|rbuf[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|rbuf\(5));

-- Location: LC_X18_Y1_N2
\b2v_inst|Decoder0~4\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|Decoder0~4_combout\ = (\b2v_inst|ReceiveData:rbitcnt[1]~regout\ & (\b2v_inst|ReceiveData:rbitcnt[0]~regout\ & (\b2v_inst|ReceiveData:rbitcnt[2]~regout\ & \b2v_inst|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|ReceiveData:rbitcnt[1]~regout\,
	datab => \b2v_inst|ReceiveData:rbitcnt[0]~regout\,
	datac => \b2v_inst|ReceiveData:rbitcnt[2]~regout\,
	datad => \b2v_inst|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst|Decoder0~4_combout\);

-- Location: LC_X17_Y2_N3
\b2v_inst|ReceiveData:rbufs[7]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|ReceiveData:rbufs[7]~regout\ = DFFEAS(((\b2v_inst|Decoder0~4_combout\ & ((\Data_in~combout\))) # (!\b2v_inst|Decoder0~4_combout\ & (\b2v_inst|ReceiveData:rbufs[7]~regout\))), GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0cc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	datab => \b2v_inst|ReceiveData:rbufs[7]~regout\,
	datac => \Data_in~combout\,
	datad => \b2v_inst|Decoder0~4_combout\,
	aclr => \RST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|ReceiveData:rbufs[7]~regout\);

-- Location: LC_X17_Y2_N7
\b2v_inst|rbuf[7]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|rbuf\(7) = DFFEAS((((\b2v_inst|ReceiveData:rbufs[7]~regout\))), GLOBAL(\b2v_inst2|bclk~regout\), VCC, , \b2v_inst|rbuf[7]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	datad => \b2v_inst|ReceiveData:rbufs[7]~regout\,
	aclr => GND,
	ena => \b2v_inst|rbuf[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|rbuf\(7));

-- Location: LC_X12_Y7_N6
\b2v_inst1|Transmit_Data:xbufs[7]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst1|Transmit_Data:xbufs[7]~regout\ = DFFEAS((((\b2v_inst|rbuf\(7)))), GLOBAL(\b2v_inst2|bclk~regout\), VCC, , \b2v_inst1|Transmit_Data:xbufs[7]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	datad => \b2v_inst|rbuf\(7),
	aclr => GND,
	ena => \b2v_inst1|Transmit_Data:xbufs[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst1|Transmit_Data:xbufs[7]~regout\);

-- Location: LC_X12_Y7_N2
\b2v_inst1|Transmit_Data:xbufs[5]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst1|Mux0~1\ = (\b2v_inst1|Transmit_Data:tbitcnt[0]~regout\ & ((\b2v_inst1|Mux0~0\ & ((\b2v_inst1|Transmit_Data:xbufs[7]~regout\))) # (!\b2v_inst1|Mux0~0\ & (D1_\Transmit_Data:xbufs[5])))) # (!\b2v_inst1|Transmit_Data:tbitcnt[0]~regout\ & 
-- (\b2v_inst1|Mux0~0\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ec64",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	dataa => \b2v_inst1|Transmit_Data:tbitcnt[0]~regout\,
	datab => \b2v_inst1|Mux0~0\,
	datac => \b2v_inst|rbuf\(5),
	datad => \b2v_inst1|Transmit_Data:xbufs[7]~regout\,
	aclr => GND,
	sload => VCC,
	ena => \b2v_inst1|Transmit_Data:xbufs[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst1|Mux0~1\,
	regout => \b2v_inst1|Transmit_Data:xbufs[5]~regout\);

-- Location: LC_X12_Y4_N3
\b2v_inst|Decoder0~8\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|Decoder0~8_combout\ = (!\b2v_inst|ReceiveData:rbitcnt[2]~regout\ & (\b2v_inst|ReceiveData:rbitcnt[1]~regout\ & (\b2v_inst|ReceiveData:rbitcnt[0]~regout\ & \b2v_inst|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|ReceiveData:rbitcnt[2]~regout\,
	datab => \b2v_inst|ReceiveData:rbitcnt[1]~regout\,
	datac => \b2v_inst|ReceiveData:rbitcnt[0]~regout\,
	datad => \b2v_inst|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst|Decoder0~8_combout\);

-- Location: LC_X12_Y4_N4
\b2v_inst|ReceiveData:rbufs[3]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|ReceiveData:rbufs[3]~regout\ = DFFEAS(((\b2v_inst|Decoder0~8_combout\ & (\Data_in~combout\)) # (!\b2v_inst|Decoder0~8_combout\ & ((\b2v_inst|ReceiveData:rbufs[3]~regout\)))), GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaf0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	dataa => \Data_in~combout\,
	datac => \b2v_inst|ReceiveData:rbufs[3]~regout\,
	datad => \b2v_inst|Decoder0~8_combout\,
	aclr => \RST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|ReceiveData:rbufs[3]~regout\);

-- Location: LC_X12_Y4_N2
\b2v_inst|rbuf[3]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|rbuf\(3) = DFFEAS(GND, GLOBAL(\b2v_inst2|bclk~regout\), VCC, , \b2v_inst|rbuf[7]~0_combout\, \b2v_inst|ReceiveData:rbufs[3]~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	datac => \b2v_inst|ReceiveData:rbufs[3]~regout\,
	aclr => GND,
	sload => VCC,
	ena => \b2v_inst|rbuf[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|rbuf\(3));

-- Location: LC_X12_Y7_N4
\b2v_inst1|Transmit_Data:xbufs[3]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst1|Transmit_Data:xbufs[3]~regout\ = DFFEAS((((\b2v_inst|rbuf\(3)))), GLOBAL(\b2v_inst2|bclk~regout\), VCC, , \b2v_inst1|Transmit_Data:xbufs[7]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	datad => \b2v_inst|rbuf\(3),
	aclr => GND,
	ena => \b2v_inst1|Transmit_Data:xbufs[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst1|Transmit_Data:xbufs[3]~regout\);

-- Location: LC_X18_Y1_N3
\b2v_inst|Decoder0~5\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|Decoder0~5_combout\ = (\b2v_inst|ReceiveData:rbitcnt[1]~regout\ & (!\b2v_inst|ReceiveData:rbitcnt[0]~regout\ & (!\b2v_inst|ReceiveData:rbitcnt[2]~regout\ & \b2v_inst|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0200",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|ReceiveData:rbitcnt[1]~regout\,
	datab => \b2v_inst|ReceiveData:rbitcnt[0]~regout\,
	datac => \b2v_inst|ReceiveData:rbitcnt[2]~regout\,
	datad => \b2v_inst|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst|Decoder0~5_combout\);

-- Location: LC_X17_Y2_N5
\b2v_inst|ReceiveData:rbufs[2]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|ReceiveData:rbufs[2]~regout\ = DFFEAS((\b2v_inst|Decoder0~5_combout\ & (((\Data_in~combout\)))) # (!\b2v_inst|Decoder0~5_combout\ & (\b2v_inst|ReceiveData:rbufs[2]~regout\)), GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e4e4",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	dataa => \b2v_inst|Decoder0~5_combout\,
	datab => \b2v_inst|ReceiveData:rbufs[2]~regout\,
	datac => \Data_in~combout\,
	aclr => \RST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|ReceiveData:rbufs[2]~regout\);

-- Location: LC_X17_Y2_N9
\b2v_inst|rbuf[2]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|rbuf\(2) = DFFEAS((((\b2v_inst|ReceiveData:rbufs[2]~regout\))), GLOBAL(\b2v_inst2|bclk~regout\), VCC, , \b2v_inst|rbuf[7]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	datad => \b2v_inst|ReceiveData:rbufs[2]~regout\,
	aclr => GND,
	ena => \b2v_inst|rbuf[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|rbuf\(2));

-- Location: LC_X12_Y4_N8
\b2v_inst|Decoder0~7\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|Decoder0~7_combout\ = (!\b2v_inst|ReceiveData:rbitcnt[2]~regout\ & (!\b2v_inst|ReceiveData:rbitcnt[1]~regout\ & (!\b2v_inst|ReceiveData:rbitcnt[0]~regout\ & \b2v_inst|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|ReceiveData:rbitcnt[2]~regout\,
	datab => \b2v_inst|ReceiveData:rbitcnt[1]~regout\,
	datac => \b2v_inst|ReceiveData:rbitcnt[0]~regout\,
	datad => \b2v_inst|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst|Decoder0~7_combout\);

-- Location: LC_X12_Y4_N9
\b2v_inst|ReceiveData:rbufs[0]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|ReceiveData:rbufs[0]~regout\ = DFFEAS(((\b2v_inst|Decoder0~7_combout\ & (\Data_in~combout\)) # (!\b2v_inst|Decoder0~7_combout\ & ((\b2v_inst|ReceiveData:rbufs[0]~regout\)))), GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaf0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	dataa => \Data_in~combout\,
	datac => \b2v_inst|ReceiveData:rbufs[0]~regout\,
	datad => \b2v_inst|Decoder0~7_combout\,
	aclr => \RST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|ReceiveData:rbufs[0]~regout\);

-- Location: LC_X12_Y4_N6
\b2v_inst|rbuf[0]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|rbuf\(0) = DFFEAS(GND, GLOBAL(\b2v_inst2|bclk~regout\), VCC, , \b2v_inst|rbuf[7]~0_combout\, \b2v_inst|ReceiveData:rbufs[0]~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	datac => \b2v_inst|ReceiveData:rbufs[0]~regout\,
	aclr => GND,
	sload => VCC,
	ena => \b2v_inst|rbuf[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|rbuf\(0));

-- Location: LC_X12_Y7_N8
\b2v_inst1|Transmit_Data:xbufs[0]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst1|Transmit_Data:xbufs[0]~regout\ = DFFEAS(GND, GLOBAL(\b2v_inst2|bclk~regout\), VCC, , \b2v_inst1|Transmit_Data:xbufs[7]~0_combout\, \b2v_inst|rbuf\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	datac => \b2v_inst|rbuf\(0),
	aclr => GND,
	sload => VCC,
	ena => \b2v_inst1|Transmit_Data:xbufs[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst1|Transmit_Data:xbufs[0]~regout\);

-- Location: LC_X17_Y2_N6
\b2v_inst|Decoder0~6\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|Decoder0~6_combout\ = (\b2v_inst|ReceiveData:rbitcnt[0]~regout\ & (!\b2v_inst|ReceiveData:rbitcnt[2]~regout\ & (!\b2v_inst|ReceiveData:rbitcnt[1]~regout\ & \b2v_inst|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0200",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|ReceiveData:rbitcnt[0]~regout\,
	datab => \b2v_inst|ReceiveData:rbitcnt[2]~regout\,
	datac => \b2v_inst|ReceiveData:rbitcnt[1]~regout\,
	datad => \b2v_inst|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst|Decoder0~6_combout\);

-- Location: LC_X17_Y2_N0
\b2v_inst|ReceiveData:rbufs[1]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|ReceiveData:rbufs[1]~regout\ = DFFEAS(((\b2v_inst|Decoder0~6_combout\ & ((\Data_in~combout\))) # (!\b2v_inst|Decoder0~6_combout\ & (\b2v_inst|ReceiveData:rbufs[1]~regout\))), GLOBAL(\b2v_inst2|bclk~regout\), !GLOBAL(\RST~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0cc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	datab => \b2v_inst|ReceiveData:rbufs[1]~regout\,
	datac => \Data_in~combout\,
	datad => \b2v_inst|Decoder0~6_combout\,
	aclr => \RST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|ReceiveData:rbufs[1]~regout\);

-- Location: LC_X17_Y2_N8
\b2v_inst|rbuf[1]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst|rbuf\(1) = DFFEAS((((\b2v_inst|ReceiveData:rbufs[1]~regout\))), GLOBAL(\b2v_inst2|bclk~regout\), VCC, , \b2v_inst|rbuf[7]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	datad => \b2v_inst|ReceiveData:rbufs[1]~regout\,
	aclr => GND,
	ena => \b2v_inst|rbuf[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|rbuf\(1));

-- Location: LC_X17_Y9_N2
\b2v_inst1|Transmit_Data:xbufs[1]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst1|Mux0~2\ = (\b2v_inst1|Transmit_Data:tbitcnt[1]~regout\ & (((\b2v_inst1|Transmit_Data:tbitcnt[0]~regout\)))) # (!\b2v_inst1|Transmit_Data:tbitcnt[1]~regout\ & ((\b2v_inst1|Transmit_Data:tbitcnt[0]~regout\ & ((D1_\Transmit_Data:xbufs[1]))) # 
-- (!\b2v_inst1|Transmit_Data:tbitcnt[0]~regout\ & (\b2v_inst1|Transmit_Data:xbufs[0]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	dataa => \b2v_inst1|Transmit_Data:xbufs[0]~regout\,
	datab => \b2v_inst1|Transmit_Data:tbitcnt[1]~regout\,
	datac => \b2v_inst|rbuf\(1),
	datad => \b2v_inst1|Transmit_Data:tbitcnt[0]~regout\,
	aclr => GND,
	sload => VCC,
	ena => \b2v_inst1|Transmit_Data:xbufs[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst1|Mux0~2\,
	regout => \b2v_inst1|Transmit_Data:xbufs[1]~regout\);

-- Location: LC_X12_Y7_N5
\b2v_inst1|Transmit_Data:xbufs[2]\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst1|Mux0~3\ = (\b2v_inst1|Transmit_Data:tbitcnt[1]~regout\ & ((\b2v_inst1|Mux0~2\ & (\b2v_inst1|Transmit_Data:xbufs[3]~regout\)) # (!\b2v_inst1|Mux0~2\ & ((D1_\Transmit_Data:xbufs[2]))))) # (!\b2v_inst1|Transmit_Data:tbitcnt[1]~regout\ & 
-- (((\b2v_inst1|Mux0~2\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	dataa => \b2v_inst1|Transmit_Data:tbitcnt[1]~regout\,
	datab => \b2v_inst1|Transmit_Data:xbufs[3]~regout\,
	datac => \b2v_inst|rbuf\(2),
	datad => \b2v_inst1|Mux0~2\,
	aclr => GND,
	sload => VCC,
	ena => \b2v_inst1|Transmit_Data:xbufs[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst1|Mux0~3\,
	regout => \b2v_inst1|Transmit_Data:xbufs[2]~regout\);

-- Location: LC_X17_Y10_N6
\b2v_inst1|Selector0~0\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst1|Selector0~0_combout\ = (\b2v_inst1|state.x_shift~regout\ & ((\b2v_inst1|Transmit_Data:tbitcnt[2]~regout\ & (\b2v_inst1|Mux0~1\)) # (!\b2v_inst1|Transmit_Data:tbitcnt[2]~regout\ & ((\b2v_inst1|Mux0~3\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ac00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|Mux0~1\,
	datab => \b2v_inst1|Mux0~3\,
	datac => \b2v_inst1|Transmit_Data:tbitcnt[2]~regout\,
	datad => \b2v_inst1|state.x_shift~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst1|Selector0~0_combout\);

-- Location: LC_X16_Y10_N8
\b2v_inst1|Selector0~1\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst1|Selector0~1_combout\ = ((\b2v_inst1|xout~regout\) # ((!\b2v_inst|rfinish~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfcf",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|xout~regout\,
	datac => \b2v_inst|rfinish~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b2v_inst1|Selector0~1_combout\);

-- Location: LC_X16_Y10_N3
\b2v_inst1|xout\ : cyclone_lcell
-- Equation(s):
-- \b2v_inst1|xout~regout\ = DFFEAS((\b2v_inst1|Selector0~0_combout\) # ((\b2v_inst1|state.x_stop~regout\) # ((!\b2v_inst1|state.x_idle~regout\ & \b2v_inst1|Selector0~1_combout\))), GLOBAL(\b2v_inst2|bclk~regout\), VCC, , !\RST~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffba",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|bclk~regout\,
	dataa => \b2v_inst1|Selector0~0_combout\,
	datab => \b2v_inst1|state.x_idle~regout\,
	datac => \b2v_inst1|Selector0~1_combout\,
	datad => \b2v_inst1|state.x_stop~regout\,
	aclr => GND,
	ena => \ALT_INV_RST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst1|xout~regout\);

-- Location: PIN_1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Data_out~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \b2v_inst1|xout~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Data_out);
END structure;


