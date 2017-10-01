library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity flipflop is -- Inicializa as Entidades do FlipFlop JK
   port( 
         J,K: in  std_logic;  -- Define as variaveis J e K
         reset: in std_logic; -- Define a varivavel de RESET
         clock: in std_logic; -- Define a variavel de Clock 
         s: out std_logic	  -- Define a Variavel de Saída
        );
end flipflop; -- Fim Entidade

architecture arc of flipflop is
	   signal temp: std_logic; -- Define uma variavel temporaria
	   
	begin
	   process (clock) -- Configura o clock como sequencial
	   begin
		  if rising_edge(clock) then -- Aguarda o clock de subida               
			 if reset='1' then  -- Reseta o flipflop
				temp <= '0';
				elsif (J='0' and K='0') then
				   temp <= temp;
				elsif (J='0' and K='1') then
				   temp <= '0';
				elsif (J='1' and K='0') then
				   temp <= '1';
				elsif (J='1' and K='1') then
				   temp <= not (temp);
				end if;   
		  end if;
	   end process;
	   s <= temp; -- Saida recebe variavel temporaria
end arc;