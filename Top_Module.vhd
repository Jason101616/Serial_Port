--Project: Serial_Port-Top_Module
--Author: Du Zhang
--Create Date: 2016-12-18
--Email: duzhang6@gmail.com

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY Top_Module IS 
	PORT
	(
		Data_in :  IN  STD_LOGIC;
		RST :  IN  STD_LOGIC;
		CLK :  IN  STD_LOGIC;
		Buttom1 :  IN  STD_LOGIC;
		Buttom2 :  IN  STD_LOGIC;
		Buttom1_Out : OUT STD_LOGIC;
		Buttom2_Out : OUT STD_LOGIC;
		Data_out :  OUT  STD_LOGIC;
		RBUF : OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
	);
END Top_Module;

ARCHITECTURE bdf_type OF Top_Module IS 

COMPONENT Receiver
	PORT(bclkr : IN STD_LOGIC;
		 rreset : IN STD_LOGIC;
		 rin : IN STD_LOGIC;
		 rfinish : OUT STD_LOGIC;
		 rbuf : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;

COMPONENT Transmitter
	PORT(bclkt : IN STD_LOGIC;
		 xreset : IN STD_LOGIC;
		 x_cmd : IN STD_LOGIC;
		 xbuf : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 xout : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT Divider
	PORT(clk : IN STD_LOGIC;
		 resetb : IN STD_LOGIC;
		 but1 : IN STD_LOGIC;
		 but2 : IN STD_LOGIC;
		 bclk : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC_VECTOR(7 DOWNTO 0);


BEGIN 
RBUF <= SYNTHESIZED_WIRE_3;
Buttom1_Out <= Buttom1;
Buttom2_Out <= Buttom2;

b2v_inst : Receiver
PORT MAP(bclkr => SYNTHESIZED_WIRE_4,
		 rreset => RST,
		 rin => Data_in,
		 rfinish => SYNTHESIZED_WIRE_2,
		 rbuf => SYNTHESIZED_WIRE_3);


b2v_inst1 : Transmitter
PORT MAP(bclkt => SYNTHESIZED_WIRE_4,
		 xreset => RST,
		 x_cmd => SYNTHESIZED_WIRE_2,
		 xbuf => SYNTHESIZED_WIRE_3,
		 xout => Data_out);


b2v_inst2 : Divider
PORT MAP(clk => CLK,
		 resetb => RST,
		 but1 => Buttom1,
		 but2 => Buttom2,
		 bclk => SYNTHESIZED_WIRE_4);


END bdf_type;