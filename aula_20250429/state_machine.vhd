-- Project Name: state_machine
-- Author: Pedro Nicollas Bastos
-- Date: 202504029
-- Description: Maquina de estado de 16 estados

entity state_machine is 
	port (
		--inputs
		signal current_state: in integer range 0 to 15;
		signal selector, clock : in bit;
		
		
		--outputs
		signal next_state: out integer range 0 to 15;
		signal ten, unit : out bit_vector (3 downto 0);
		signal enabled: out bit_vector (1 downto 0)

);
end entity state_machine;

architecture logic of state_machine is
	begin
		--state_machine process--
		state_machine : process(clock)
			begin
				if clock = '0' and clock'event then

					if selector = '0' then
						case current_state is
							when 0  => next_state <= 2;
								ten <= "0000";
								unit <= "0010";
								enabled <= "01";
							when 1  => next_state <= 2;
								ten <= "0000";
								unit <= "0010";
								enabled <= "01";
							when 2  => next_state <= 4;
								ten <= "0000";
								unit <= "0100";
								enabled <= "01";
							when 3  => next_state <= 4;
								ten <= "0000";
								unit <= "0100";
								enabled <= "01";
							when 4  => next_state <= 6;
								ten <= "0000";
								unit <= "0110";
								enabled <= "01";
							when 5  => next_state <= 6;
								ten <= "0000";
								unit <= "0110";
								enabled <= "01";
							when 6  => next_state <= 8;
								ten <= "0000";
								unit <= "1000";
								enabled <= "01";
							when 7  => next_state <= 8;
								ten <= "0000";
								unit <= "1000";
								enabled <= "01";
							when 8  => next_state <= 10;
								ten <= "0001";
								unit <= "0000";
								enabled <= "11";
							when 9  => next_state <= 10;
								ten <= "0001";
								unit <= "0000";
								enabled <= "11";
							when 10 => next_state <= 12;
								ten <= "0001";
								unit <= "0010";
								enabled <= "11";
							when 11 => next_state <= 12;
								ten <= "0001";
								unit <= "0010";
								enabled <= "11";
							when 12 => next_state <= 14;
								ten <= "0001";
								unit <= "0100";
								enabled <= "11";
							when 13 => next_state <= 14;
								ten <= "0001";
								unit <= "0100";
								enabled <= "11";
							when 14 => next_state <= 0;
								ten <= "0000";
								unit <= "0000";
								enabled <= "01";
							when 15 => next_state <= 0;
								ten <= "0000";
								unit <= "0000";
								enabled <= "01";
						end case;

					elsif selector = '1' then
						case current_state is
							when 0  => next_state <= 1;
								ten <= "0000";
								unit <= "0001";
								enabled <= "01";
							when 1  => next_state <= 3;
								ten <= "0000";
								unit <= "0011";
								enabled <= "01";
							when 2  => next_state <= 3;
								ten <= "0000";
								unit <= "0011";
								enabled <= "01";
							when 3  => next_state <= 5;
								ten <= "0000";
								unit <= "0101";
								enabled <= "01";
							when 4  => next_state <= 5;
								ten <= "0000";
								unit <= "0101";
								enabled <= "01";
							when 5  => next_state <= 7;
								ten <= "0000";
								unit <= "0111";
								enabled <= "01";
							when 6  => next_state <= 7;
								ten <= "0000";
								unit <= "0111";
								enabled <= "01";
							when 7  => next_state <= 9;
								ten <= "0000";
								unit <= "1001";
								enabled <= "01";
							when 8  => next_state <= 9;
								ten <= "0000";
								unit <= "1001";
								enabled <= "01";
							when 9  => next_state <= 11;
								ten <= "0001";
								unit <= "0001";
								enabled <= "11";
							when 10 => next_state <= 11;
								ten <= "0001";
								unit <= "0001";
								enabled <= "11";
							when 11 => next_state <= 13;
								ten <= "0001";
								unit <= "0011";
								enabled <= "11";
							when 12 => next_state <= 13;
								ten <= "0001";
								unit <= "0011";
								enabled <= "11";
							when 13 => next_state <= 15;
								ten <= "0001";
								unit <= "0101";
								enabled <= "11";
							when 14 => next_state <= 15;
								ten <= "0001";
								unit <= "0101";
								enabled <= "11";
							when 15 => next_state <= 1;
								ten <= "0000";
								unit <= "0001";
								enabled <= "01";

						end case;
					end if;
				end if;
				
			end process state_machine;
			--state_machine process end--
	
end architecture logic;