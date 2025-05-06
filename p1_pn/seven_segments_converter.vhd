-- Project Name: seven_segments_converter
-- Author: Pedro Nicollas Bastos
-- Date: 20250429
-- Description: Conversor para display 7 segmentos

entity seven_segments_converter is
	port(
		--inputs
		signal enabled : in bit;
		signal data : in bit_vector (3 downto 0);
		
		--outputs
		signal display : out bit_vector (6 downto 0)
	);
end entity seven_segments_converter;

architecture logic of seven_segments_converter is
	
	-- auxiliar variable to not put one more collumn in the k-map
	signal auxiliar : bit_vector (6 downto 0);
	
	begin
		
		display <= auxiliar when enabled = '1' else "0000000";
		
		-- https://www.fpga4student.com/2017/09/vhdl-code-for-seven-segment-display.html
		with data select 
			auxiliar <= 
			"0111111" when "0000",	--0 40
			"0000110" when "0001",	--1 79
			"1011011" when "0010",	--2 24
			"1001111" when "0011",	--3 30
			"1100110" when "0100",	--4 19
			"1101101" when "0101",	--5 12
			"1111101" when "0110",	--6 02
			"0000111" when "0111",	--7 78
			"1111111" when "1000",	--8 00
			"1100111" when "1001", 	--9 18
			
			"1110111" when "1010",	--A 08
			"1111110" when "1011",	--b 03 
			"0111001" when "1100",	--C 46
			"1011110" when "1101",	--d 21
			"1111101" when "1110",	--E 06 
			"1110001" when "1111";	--F 0e
	
end architecture logic;