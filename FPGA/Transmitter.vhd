--Project: Serial_Port-Transmitter
--Author: Du Zhang
--Create Date: 2016-12-18
--Email: duzhang6@gmail.com

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Transmitter is
port(
	 bclkt:in std_logic;
	 xreset:in std_logic:='0';
	 x_cmd:in std_logic;		--read rising_edge than transmit one frame
	 xbuf: in std_logic_vector(7 downto 0);
	 xout:out std_logic
	 );
end Transmitter;


architecture behav of Transmitter is
	type states is (x_idle,x_start,x_shift,x_stop);      -- define 4 Transmitter states
	signal state:states:=x_idle;
begin
	Transmit_Data: process(bclkt,xreset)
		variable cnt16:integer:=0;	--counter for counting 16
		variable tbitcnt:integer:=0; --record how many bits have been transmitted
		variable xbufs:std_logic_vector(7 downto 0);	--bits need to be transmitted
		variable xbufs_add:std_logic_vector(7 downto 0);
	begin
		
		if xreset='1' then
			state<=x_idle;
			cnt16:=0;
			tbitcnt:=0;
		elsif rising_edge(bclkt) then		
			case state is
				when x_idle=>
					if (x_cmd='0') then
						xout<='1';
					else
						xbufs:=xbuf;
						xbufs_add:=xbuf+"00010000"; --xbufs_add=xbufs+16
						state<=x_start;	
					end if;
				
				when x_start=>
					xout<='0';
					cnt16:=cnt16+1;
					if(cnt16=16) then
						state<=x_shift;
						cnt16:=0;
					end if;
					
				when x_shift=>
					xout<=xbufs(tbitcnt);	--Decide which register to transmit.
					cnt16:=cnt16+1;
					if(cnt16=16) then
						if(tbitcnt=7) then
							state<=x_stop;
							tbitcnt:=0;
							cnt16:=0;
						else
							tbitcnt:=tbitcnt+1;
							cnt16:=0;
						end if;
					end if;
					
				when x_stop=>
					xout<='1';
					cnt16:=cnt16+1;
					if(cnt16=16) then
						state<=x_idle;
						cnt16:=0;
					end if;
					
				when others=>
					state<=x_idle;		
			end case;
		end if;		
	end process;
end behav; 
