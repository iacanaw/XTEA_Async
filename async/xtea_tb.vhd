library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_textio.all;
use ieee.std_logic_unsigned.all;

entity xtea_tb is
end xtea_tb;

architecture xtea_tb of xtea_tb is
	signal clk, reset: std_logic := '0';
	signal key_t, key_f, key_ack: std_logic_vector(127 downto 0);
	signal in_enc_t, in_enc_f, in_enc_ack, out_enc_t, out_enc_f, out_enc_ack: std_logic_vector(63 downto 0);
begin

	reset <= '1', '0' after 5 ns, '1' after 1500 ns;

	clk <= '1';

	key_t <= x"00000000000000000000000000000000", x"f0e1d2c3b4a5968778695a4b3c2d1e0f" after 1000 ns;
	key_f <= x"00000000000000000000000000000000", not x"f0e1d2c3b4a5968778695a4b3c2d1e0f" after 1000 ns;

	in_enc_t <= x"0000000000000000", x"1234567890123456" after 1000 ns;
	in_enc_f <= x"0000000000000000", not x"1234567890123456" after 1000 ns;

	process(out_enc_t, out_enc_f, out_enc_ack)
	begin
		if(out_enc_t = x"fe363df6c986d015") then
			report "output TRUE correto!";
		end if;
		if(out_enc_f = not x"fe363df6c986d015") then --0x"01C9C20936792FEA"
			report "output FALSE correto!";
		end if;
		if(out_enc_ack = x"ffffffffffffffff") then
			report "output ACK em '1'!";
		end if;
	end process;

	-- XTEA core
	core: entity work.xtea
	port map(in_enc_t		=> in_enc_t,
			in_enc_f		=> in_enc_f,
			in_enc_ack 		=> in_enc_ack,
			out_enc_t		=> out_enc_t,
			out_enc_f		=> out_enc_f,
			out_enc_ack 	=> out_enc_ack,
			key_t 			=> key_t,
			key_f			=> key_f,
			key_ack			=> key_ack,
			clk				=> clk,
			reset			=> reset
	);

end xtea_tb;