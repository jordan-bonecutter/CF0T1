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

	Component Adder4 is
		Port(
				C_i:	In	std_logic;
				A:		In	std_logic_vector(3 downto 0);
				B:		In	std_logic_vector(3 downto 0);
				S:		Out std_logic_vector(3 downto 0);
				C_o:	Out std_logic
			);
	End Component;

	signal test_vectA, test_vectB: std_logic_vector(3 downto 0);
	test_vectA <= "0000";
	test_vectB <= "0000";
	signal out_sig: std_logic_vector(3 downto 0);
	signal c_o:		std_logic;

Begin

	uut: Adder4 Port Map(
								C_i => '0',
								A	=> test_vectA,
								B	=> test_vectB,
								S 	=> out_sig,
								C_o => c_o
							);

	ttb: PROCESS
	BEGIN

	wait for 200 ns;

	test_vectA <= "1010";
	test_vectB <= "0101";

	wait for 200 ns;
	
	test_vectA <= "0010";
	test_vectB <= "0111";

	wait for 200 ns;
	End Process;

End;
