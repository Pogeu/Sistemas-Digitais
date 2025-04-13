-- Project Name: aula_20250408
-- Author: Pedro Nicollas Bastos
-- Date: 20250401
-- Description: SistemasDigitais aula 3 exercicio

entity aula_20250408 is 
	port(
		--inputs
		signal selector, clock  : in bit;
		
		--outputs
		signal display : out bit_vector(6 downto 0) 
	);
end entity aula_20250408;



architecture logic of aula_20250408 is
	--components init--
	component seven_segments_converter is
		port(
			--inputs
			signal enabled : in bit;
			signal data : in bit_vector (3 downto 0);
		
			--outputs
			signal display : out bit_vector (6 downto 0)
		);
	end component seven_segments_converter;
	--components end--
	
	signal auxiliar : bit_vector(6 downto 0);
	signal data : bit_vector (3 downto0) := "0000";
	
	begin
		display <= not auxiliar;
		
		converter_0 : seven_segments_converter port map ('1',  data, auxiliar);
		
		-- state_machine process
		state_machine : process(clk)
			begin
				if clock = '0' and clock'event then
				
					if selector = '0' then
						case data is 
							when "0000" => dado <= "0010";
							when "0001" => dado <= "0010";
							when "0010" => dado <= "0100";
							when "0011" => dado <= "0100";
							when "0100" => dado <= "0110";
							when "0101" => dado <= "0110";
							when "0110" => dado <= "1000";
							when "0111" => dado <= "1000";
							when "1000" => dado <= "1010";
							when "1001" => dado <= "1010";
							when "1010" => dado <= "1100";
							when "1011" => dado <= "1100";
							when "1100" => dado <= "1110";
							when "1101" => dado <= "1110";
							when "1110" => dado <= "0000";
							when "1111" => dado <= "0000";
						end case;
						
					if selector = '1' then
						case data is 
							when "0000" => dado <= "0001";
							when "0001" => dado <= "0011";
							when "0010" => dado <= "0011";
							when "0011" => dado <= "0101";
							when "0100" => dado <= "0110";
							when "0101" => dado <= "0110";
							when "0110" => dado <= "1000";
							when "0111" => dado <= "1000";
							when "1000" => dado <= "1010";
							when "1001" => dado <= "1010";
							when "1010" => dado <= "1100";
							when "1011" => dado <= "1100";
							when "1100" => dado <= "1110";
							when "1101" => dado <= "1110";
							when "1110" => dado <= "0000";
							when "1111" => dado <= "0000";
						end case;
				
				end if;
			end process state_machine;
	
end architecture logic;