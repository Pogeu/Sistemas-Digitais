-- Project Name: seven_segments_converter
-- Author: Pedro Nicollas Bastos
-- Date: 20250401
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
	--display in
	signal 	input_a, input_b, input_c, input_d : bit;
	
	--display out
	signal output_a, output_b, output_c, output_d, output_e, output_f, output_g : bit;
	
	-- auxililar variable to not put one more collumn in the k-map
	signal auxiliar : bit_vector (6 downto 0);
	
	begin
		input_a <= data(3);
		input_b <= data(2);
		input_c <= data(1);
		input_d <= data(0);
		
		display <= auxiliar when enabled = '1' else "0000000";
		
		auxiliar <= output_g & output_f & output_e & output_d & output_c & output_b & output_a;
		
		output_a <= (not input_b and not input_d) or (input_c) or (input_b and input_d) or (input_a);
		output_b <= (not input_b) or (input_c and input_d);
		output_c <= (not input_c) or (input_d) or (input_b);
		output_d <= (not input_b and not input_d) or (not input_b and input_c) or (input_b and not input_c and input_d) or (input_c and not input_d) or (input_a);
		output_e <= (not input_b and not input_d) or (input_c and not input_d);
		output_f <= (not input_c and not input_d) or (input_b and not input_c) or (input_b and not input_d) or (input_a);
		output_g <= (not input_b and input_c) or (input_b and not input_c) or (input_a) or (input_c and not input_d);
	
end architecture logic;