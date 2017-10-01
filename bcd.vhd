library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity bcd is -- Inicializa as Entidades do FlipFlop JK
   port( 
         i0,i1,i2,i3: in  std_logic;  -- Define as variaveis J e K         
         led: out bit_vector (6 downto 0)	  -- Define a Variavel de Saída
        );
end bcd; -- Fim Entidade

architecture decoder of bcd is  	   
	begin
	process (i0,i1,i2,i3)
		begin
	      if i0='0' and i1='0' and i2='0' and i3='0' then
			led <= "0000001";
			elsif i0='1' and i1='0' and i2='0' and i3='0' then
			led <= "1001111";
			elsif i0='0' and i1='1' and i2='0' and i3='0' then
			led <= "0010010";
			elsif i0='1' and i1='1' and i2='0' and i3='0' then
			led <= "0000110";
			elsif i0='0' and i1='0' and i2='1' and i3='0' then
			led <= "1001100";
			elsif i0='1' and i1='0' and i2='1' and i3='0' then
			led <= "0100100";
			end if;   
		end process;
end decoder;