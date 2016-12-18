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

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "12/18/2016 17:27:11"
                                                            
-- Vhdl Test Bench template for design  :  Top_Module
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Top_Module_vhd_tst IS
END Top_Module_vhd_tst;
ARCHITECTURE Top_Module_arch OF Top_Module_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL Buttom1 : STD_LOGIC:='1';
SIGNAL Buttom2 : STD_LOGIC:='0';
SIGNAL CLK : STD_LOGIC;
SIGNAL Data_in : STD_LOGIC;
SIGNAL Data_out : STD_LOGIC;
SIGNAL RST : STD_LOGIC:='0';
COMPONENT Top_Module
	PORT (
	Buttom1 : IN STD_LOGIC;
	Buttom2 : IN STD_LOGIC;
	CLK : IN STD_LOGIC;
	Data_in : IN STD_LOGIC;
	Data_out : OUT STD_LOGIC;
	RST : IN STD_LOGIC
	);
END COMPONENT;

constant clk_period :time :=20 ns;
constant Data_in_period :time :=208 us;

BEGIN
	i1 : Top_Module
	PORT MAP (
-- list connections between master ports and signals
	Buttom1 => Buttom1,
	Buttom2 => Buttom2,
	CLK => CLK,
	Data_in => Data_in,
	Data_out => Data_out,
	RST => RST
	);

PROCESS                                                                              
BEGIN            	                                               
	CLK<='0';
	wait for clk_period/2;  
	CLK<='1';
	wait for clk_period/2;	
END PROCESS;

process
begin
	Data_in<='1';--空闲位
	wait for 500us;
	Data_in<='0';--起始位
	wait for Data_in_period;
	Data_in<='0';--1 bit
	wait for Data_in_period;
	Data_in<='1';--2 bit
	wait for Data_in_period;
	Data_in<='0';--3 bit
	wait for Data_in_period;
	Data_in<='1';--4 bit
	wait for Data_in_period;
	Data_in<='0';--5 bit
	wait for Data_in_period;
	Data_in<='1';--6 bit
	wait for Data_in_period;
	Data_in<='0';--7 bit
	wait for Data_in_period;
	Data_in<='1';--8 bit
	wait for Data_in_period;
	Data_in<='1';--终止位
	wait for Data_in_period;
	
	Data_in<='1';--空闲位
	wait for 500us;
	Data_in<='0';--起始位
	wait for Data_in_period;
	Data_in<='1';--1 bit
	wait for Data_in_period;
	Data_in<='1';--2 bit
	wait for Data_in_period;
	Data_in<='1';--3 bit
	wait for Data_in_period;
	Data_in<='1';--4 bit
	wait for Data_in_period;
	Data_in<='0';--5 bit
	wait for Data_in_period;
	Data_in<='0';--6 bit
	wait for Data_in_period;
	Data_in<='0';--7 bit
	wait for Data_in_period;
	Data_in<='0';--8 bit
	wait for Data_in_period;
	Data_in<='1';--终止位
	wait for Data_in_period;
end process;
	
END Top_Module_arch;
