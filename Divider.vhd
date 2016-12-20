--Project: Serial_Port-frequency divider
--Author: Du Zhang
--Create Date: 2016-12-18
--Email: duzhang6@gmail.com

----------50MHz clock 16-divided frequency-------
----------9600Baud/s 325-------------------------
----------4800Baud/s 650------------------------
----------2400Baud/s 1302------------------------
----------1200Baud/s 2604------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Divider is
    port (
              clk,resetb:in std_logic;
              but1,but2:in std_logic;
              bclk:out std_logic;
			  but1_out, but2_out: out std_logic);
end Divider;

architecture behavioral of Divider is
begin
process(clk,resetb)
variable cnt:integer:=0;
begin
  if resetb='1' then                                         -- resetb='1'时复位
     cnt:=0; bclk<='0';
  elsif rising_edge(clk) then
	but1_out <= but1; but2_out <= but2;
	if (but1='0' and but2='0') then
		if cnt>324 then 
			cnt:=0; bclk<='1';                        --设置分频系数325:9600baud/s
		else 
			cnt:=cnt+1; bclk<='0';
		end if; 
		
	elsif (but1='1' and but2='0') then
		if cnt>650 then 
			cnt:=0; bclk<='1';                        --设置分频系数651:4800baud/s
		else 
			cnt:=cnt+1; bclk<='0';
		end if; 
		
	elsif (but1='0' and but2='1') then
		if cnt>1301 then 
			cnt:=0; bclk<='1';                        --设置分频系数1302:2400baud/s
		else 
			cnt:=cnt+1; bclk<='0';
		end if; 
    
    else 
		if cnt>2603 then 
			cnt:=0; bclk<='1';                        --设置分频系数2604:1200baud/s
		else 
			cnt:=cnt+1; bclk<='0';
		end if;
    end if;   
  end if;
end process;
end behavioral;
