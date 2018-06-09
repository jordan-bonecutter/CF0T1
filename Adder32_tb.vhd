------------------------------------------
-- Jordan Bonecutter
-- Computer_V1_tb.vhd
------------------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE std.textio.ALL;

Entity tb is
End tb;

Architecture behav of tb is

	Component Adder32 is
		Port(
				C_i:	In	std_logic;
				A:		In	std_logic_vector(31 downto 0);
				B:		In	std_logic_vector(31 downto 0);
				S:		Out std_logic_vector(31 downto 0);
				C_o:	Out std_logic
			);
	End Component;

	signal test_vectA, test_vectB: std_logic_vector(31 downto 0);
	signal out_sig: std_logic_vector(31 downto 0);
	signal c_o, c_i:		std_logic;

Begin

	uut: Adder4 Port Map(
								C_i => c_i,
								A	=> test_vectA,
								B	=> test_vectB,
								S 	=> out_sig,
								C_o => c_o
							);

	ttb: PROCESS
	BEGIN

    c_i <= '0';

    test_vectA <= "00000000000000000000000000000000";
	test_vectB <= "00000000000000000000000000000000";

	wait for 200 ns;

	test_vectA <= "00010001000100010001000100010001";
	test_vectB <= "00010001000100010001000100010001";

	wait for 200 ns;
	
	test_vectA <= "00101001100110011001011010010100";
	test_vectB <= "00101110011101011101011010111010";

	wait for 200 ns;
	
	test_vectA <= "01111111101101111101011111110101";
	test_vectB <= "00100000010000011101011101101110";
	
	wait for 200ns;
	
	test_vectA <= "10110000000000011000000000000000";
	test_vectB <= "00010000001101111101100010101101";
	
	End Process;

End;
