--Project: Serial_Port-Receiver
--Author: Du Zhang
--Create Date: 2016-12-18
--Email: duzhang6@gmail.com
--Github: https://github.com/Jason101616

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
entity Receiver is         
    Port(bclkr:in std_logic;    		--Receiver baud clock
			rreset:in std_logic:='0';	--Receiver reset
			rin:in std_logic;				--received bit
			rbuf:out std_logic_vector(7 downto 0);		--received signal buffer
			rfinish:out std_logic:='0'
			);
end Receiver;

architecture behav of Receiver is
	type states is (r_start,r_sample,r_stop);               --define states
	signal state:states:=r_start;
	signal rins:std_logic;		--received bit (signal)
	signal suspicious_start:std_logic:='0';
begin
	ReadData: process(rin)
	begin
		rins<=rin;
	end process;

	
	ReceiveData: process(bclkr, rreset, rins)
	variable cnt:integer:=0;	--counter for detecting start signal
	variable cnt16:integer:=0;	--counter for counting 16
	variable rbufs:std_logic_vector(7 downto 0);
	variable rbitcnt:integer:=0;
	variable have_Told:std_logic:='0';
	variable cnt5:integer:=0;
	begin
		if rreset='1' then
			state<=r_start;
			cnt:=0;
			cnt16:=0;
			rbitcnt:=0;
			rbufs:="00000000";
			rfinish<='0';
		elsif rising_edge(bclkr) then
		case state is
			when r_start=>
				if (have_Told='0') then
					cnt5:=cnt5+1;
					if(cnt5=5) then
						rfinish<='0';
						have_Told:='1';
						cnt5:=0;
					end if;
				end if;
				
				if (suspicious_start='1' and rins='0') then		
					cnt:=cnt+1;
					if (cnt=7) then
						state<=r_sample;
						have_Told:='0';
						suspicious_start<='0';
						cnt:=0;
						cnt16:=0;
					end if;
				elsif (suspicious_start='0' and rins='0') then
					suspicious_start<='1';
				else
					suspicious_start<='0';
					cnt:=0;
				end if;
			when r_sample=>
				cnt16:=cnt16+1;
				if(cnt16=16) then
					rbufs(rbitcnt):=rins;
					rbitcnt:=rbitcnt+1;
					cnt16:=0;
				end if;
				if (rbitcnt=8) then
					state<=r_stop;
					cnt16:=0;
					rbitcnt:=0;
				end if;	
			when r_stop=>
				if(cnt16=16) then
					cnt16:=0;
					rbuf<=rbufs;
					rfinish<='1';
					state<=r_start;
				else
					cnt16:=cnt16+1;
				end if;
			when others=>
				state<=r_start;
		end case;
		end if;
	end process;

end behav;
