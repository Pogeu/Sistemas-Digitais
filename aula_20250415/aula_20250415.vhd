-- Project Name: aula_20250415
-- Author: Pedro Nicollas Bastos
-- Date: 20250415
-- Description: SistemasDigitais aula 4 exercicio

entity aula_20250415 is 
	port (
		--inputs
		signal KEY : in bit_vector (3 downto 0);
		signal SW : in bit_vector (17 downto 0);
		
		--outputs
		signal HEX7, HEX6, HEX5, HEX4, HEX3, HEX2, HEX1, HEX0 : out bit_vector (6 downto 0)

);
end entity aula_20250415;

architecture logic of aula_20250415 is

	-- seven_segments_converter component init--
	component seven_segments_converter is
		port(
			--inputs
			signal enabled : in bit;
			signal data : in bit_vector (3 downto 0);
			
			--outputs
			signal display : out bit_vector (6 downto 0)
		);
	end component seven_segments_converter;
	-- seven_segments_converter component end--

	-- state_machine component init--
	component state_machine is 
		port (
			--inputs
			signal current_state: in integer range 0 to 15;
			signal selector, clock : in bit;
			
			
			--outputs
			signal next_state: out integer range 0 to 15;
			signal ten, unit : out bit_vector (3 downto 0);
			signal enabled: out bit_vector (1 downto 0)

	);
	end component state_machine;
	-- state_machine component end--

	begin

		-- VAI ENTRAR COISA AQUI --
	
end architecture logic;