-- Project Name: aula_20250429
-- Author: Pedro Nicollas Bastos
-- Date: 20250429
-- Description: SistemasDigitais aula 5 exercicio

entity aula_20250429 is 
	port (
		--inputs
		signal KEY : in bit_vector (3 downto 0);
		signal SW : in bit_vector (17 downto 0);
		
		--outputs
		signal HEX7, HEX6, HEX5, HEX4, HEX3, HEX2, HEX1, HEX0 : out bit_vector (6 downto 0)

);
end entity aula_20250429;

architecture logic of aula_20250429 is

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

	-----inputs--------
	signal signal_key :  bit_vector (3 downto 0);
	signal signal_sw :  bit_vector (17 downto 0);
		
	-----outputs-------
	signal signal_hex7, signal_hex6, signal_hex5, signal_hex4, signal_hex3, signal_hex2, signal_hex1, signal_hex0 :  bit_vector (6 downto 0):= "0000000";
	
	----state_machine--
	signal state: integer range 0 to 15 := 0;
	
	signal selector, clock : bit;
	signal next_state: integer range 0 to 15;
	signal ten, unit : bit_vector (3 downto 0);
	signal enabled: bit_vector (1 downto 0);

	
	begin
		
		signal_key <= KEY;
		signal_sw <= SW;
	
		HEX7 <= not signal_hex7;
		HEX6 <= not signal_hex6;
		HEX5 <= not signal_hex5;
		HEX4 <= not signal_hex4;
		HEX3 <= not signal_hex3;
		HEX2 <= not signal_hex2;
		HEX1 <= not signal_hex1;
		HEX0 <= not signal_hex0;
		------------------------
		
		selector <= signal_sw(0);
		clock <= signal_key(3);
		
		state_machine_0 : state_machine port map(state, selector, clock, state, ten, unit, enabled);
		seven_segments_converter_0 : seven_segments_converter port map(enabled(1), ten, signal_hex7); -- ten digit 
		seven_segments_converter_1 : seven_segments_converter port map(enabled(0), unit, signal_hex6); --unit digit
	
	
	
end architecture logic;