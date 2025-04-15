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
							when "0000" => data <= "0010"; -- 0  -> 2
							when "0001" => data <= "0010"; -- 1  -> 2
							when "0010" => data <= "0100"; -- 2  -> 4
							when "0011" => data <= "0100"; -- 3  -> 4
							when "0100" => data <= "0110"; -- 4  -> 6
							when "0101" => data <= "0110"; -- 5  -> 6
							when "0110" => data <= "1000"; -- 6  -> 8
							when "0111" => data <= "1000"; -- 7  -> 8
							when "1000" => data <= "1010"; -- 8  -> 10
							when "1001" => data <= "1010"; -- 9  -> 10
							when "1010" => data <= "1100"; -- 10 -> 12
							when "1011" => data <= "1100"; -- 11 -> 12
							when "1100" => data <= "1110"; -- 12 -> 14
							when "1101" => data <= "1110"; -- 13 -> 14
							when "1110" => data <= "0000"; -- 14 -> 0
							when "1111" => data <= "0000"; -- 15 -> 0
						end case;
						
					if selector = '1' then
						case data is 
							when "0000" => data <= "0001"; -- 0  -> 1
							when "0001" => data <= "0011"; -- 1  -> 3
							when "0010" => data <= "0011"; -- 2  -> 3
							when "0011" => data <= "0101"; -- 3  -> 5
							when "0100" => data <= "0101"; -- 4  -> 5
							when "0101" => data <= "0111"; -- 5  -> 7
							when "0110" => data <= "0111"; -- 6  -> 7
							when "0111" => data <= "1001"; -- 7  -> 9
							when "1000" => data <= "1001"; -- 8  -> 9
							when "1001" => data <= "1011"; -- 9  -> 11
							when "1010" => data <= "1011"; -- 10 -> 11
							when "1011" => data <= "1101"; -- 11 -> 13
							when "1100" => data <= "1101"; -- 12 -> 13
							when "1101" => data <= "1111"; -- 13 -> 15
							when "1110" => data <= "1111"; -- 14 -> 15
							when "1111" => data <= "0001"; -- 15 -> 1
						end case;
					end if;
					
			end process state_machine;
	
end architecture logic;