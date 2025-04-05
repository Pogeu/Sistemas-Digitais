-- Project Name: aula_20250401
-- Author: Pedro Nicollas Bastos
-- Date: 20250401
-- Description: SistemasDigitais aula 3 exercicio

entity aula_20250401 is 
	port(
		--inputs
		signal selector : in bit;
		signal data : in bit_vector (3 downto 0);
		
		--outputs
		signal display_0, display_1 : out bit_vector(6 downto 0) 
	);
end entity aula_20250401;



architecture logic of aula_20250401 is
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
	
	begin
		display_0 <= auxiliar when selector='0' else "0000000";
		display_1 <= auxiliar when selector='1' else "0000000";
		
		converter_0 : seven_segments_converter port map ('1',  data, auxiliar);
	
end architecture logic;