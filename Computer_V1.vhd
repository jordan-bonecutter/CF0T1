----------------------------------------------------------------------
-- Structural Model
-- Author: Jordan Bonecutter 
----------------------------------------------------------------------

Library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_MISC.all;
use IEEE.STD_LOGIC_ARITH.all;

----------------1 bit not gate----------------------

Library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_MISC.all;
use IEEE.STD_LOGIC_ARITH.all;

Entity NOT1 is
	Port(
			A: In std_logic;
			Y: Out std_logic
		);
End NOT1;

Architecture BEHAVIORAL of NOT1 is
Begin
	P: Process(A)
	Begin
		Y <= not A 1 ns;
	End Process P;
End BEHAVIORAL;

----------------2 bit and gate----------------------

Library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_MISC.all;
use IEEE.STD_LOGIC_ARITH.all;

Entity AND2 is
	Port(
			A: In std_logic;
			B: In std_logic;
			Y: Out std_logic
		);
End AND2;

Architecture BEHAVIORAL of AND2 is
Begin
	P: Process(A, B)
	Begin
		Y <= A and B after 2.4 ns;
	End Process P;
End BEHAVIORAL;

----------------2 bit or gate-----------------------

Library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_MISC.all;
use IEEE.STD_LOGIC_ARITH.all;

Entity OR2 is
	Port(
			A: In std_logic;
			B: In std_logic;
			Y: Out std_logic
		);
End OR2;

Architecture BEHAVIORAL of OR2 is
Begin
	P: Process(A, B)
	Begin
		Y <= A or B after 2.4 ns;
	End Process P;
End BEHAVIORAL;

----------------2 bit xor gate-----------------------

Library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_MISC.all;
use IEEE.STD_LOGIC_ARITH.all;

Entity XOR2 is
	Port(
			A: In std_logic;
			B: In std_logic;
			Y: Out std_logic
		);
End XOR2;

Architecture BEHAVIORAL of XOR2 is
Begin
	P: Process(A, B)
	Begin
		Y <= A xor B after 2.4 ns;
	End Process P;
End BEHAVIORAL;

----------------3 bit and gate----------------------

Library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_MISC.all;
use IEEE.STD_LOGIC_ARITH.all;

Entity AND3 is
	Port(
			A: In 	std_logic;
			B: In 	std_logic;
			C: In 	std_logic;
			Y: Out 	std_logic
		);
End AND3;

Architecture BEHAVIORAL of AND3 is
Begin
	P: Process(A, B, C)
	Begin
		Y <= A and B and C after 3.2 ns;
	End Process P;
End BEHAVIORAL;

----------------3 bit or gate-----------------------

Library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_MISC.all;
use IEEE.STD_LOGIC_ARITH.all;

Entity OR3 is
	Port(
			A: In std_logic;
			B: In std_logic;
			C: In std_logic;
			Y: Out std_logic
		);
End OR3;

Architecture BEHAVIORAL of OR3 is
Begin
	P: Process(A, B, C)
	Begin
		Y <= A or B or C after 3.2 ns;
	End Process P;
End BEHAVIORAL;

----------------4 bit and gate----------------------

Library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_MISC.all;
use IEEE.STD_LOGIC_ARITH.all;

Entity AND4 is
	Port(
			A: In 	std_logic;
			B: In 	std_logic;
			C: In 	std_logic;
			D: In	std_logic;
			Y: Out 	std_logic
		);
End AND4;

Architecture BEHAVIORAL of AND4 is
Begin
	P: Process(A, B, C, D)
	Begin
		Y <= A and B and C and D after 4.0 ns;
	End Process P;
End BEHAVIORAL;

----------------4 bit or gate-----------------------

Library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_MISC.all;
use IEEE.STD_LOGIC_ARITH.all;

Entity OR4 is
	Port(
			A: In std_logic;
			B: In std_logic;
			C: In std_logic;
			D: In std_logic;
			Y: Out std_logic
		);
End OR4;

Architecture BEHAVIORAL of OR4 is
Begin
	P: Process(A, B, C, D)
	Begin
		Y <= A or B or C or D after 4.0 ns;
	End Process P;
End BEHAVIORAL;

----------------5 bit and gate----------------------

Library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_MISC.all;
use IEEE.STD_LOGIC_ARITH.all;

Entity AND5 is
	Port(
			A: In 	std_logic;
			B: In 	std_logic;
			C: In 	std_logic;
			D: In	std_logic;
			E: In	std_logic;
			Y: Out 	std_logic
		);
End AND5;

Architecture BEHAVIORAL of AND5 is
Begin
	P: Process(A, B, C, D, E)
	Begin
		Y <= A and B and C and D and E after 5.0 ns;
	End Process P;
End BEHAVIORAL;

----------------5 bit or gate-----------------------

Library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_MISC.all;
use IEEE.STD_LOGIC_ARITH.all;

Entity OR5 is
	Port(
			A: In std_logic;
			B: In std_logic;
			C: In std_logic;
			D: In std_logic;
			E: In std_logic;
			Y: Out std_logic
		);
End OR5;

Architecture BEHAVIORAL of OR5 is
Begin
	P: Process(A, B, C, D, E)
	Begin
		Y <= A or B or C or D or E after 5.0 ns;
	End Process P;
End BEHAVIORAL;

----------------Full adder--------------------------

Library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_MISC.all;
use IEEE.STD_LOGIC_ARITH.all;

Entity Adder is
	Port(
			C_in: In std_logic;
			A: In std_logic;
			B: In std_logic;
			S: Out std_logic;
			G: Out std_logic;
			P: Out std_logic
		);
End Adder;

Architecture STRUCT of Adder is
		
	Component XOR2 is
		Port(
				A: In std_logic;
				B: In std_logic;
				Y: Out std_logic
			);
	End Component;

	Component AND2 is
		Port(
				A: In std_logic;
				B: In std_logic;
				Y: Out std_logic
			);
	End Component;

	Component OR2 is
		Port(
				A: In std_logic;
				B: In std_logic;
				Y: Out std_logic
			);
	End Component;


	SIGNAL s1: std_logic;

Begin

	U_2XOR_1: XOR2 Port Map(
						   		A => A,
								B => B,
								Y => s1
						   );

	U_2XOR_2: XOR2 Port Map(
						   		A => s1,
								B => C_in,
								Y => S
						   );

	U_OR2_1: OR2 Port Map(
						 		A => A,
								B => B,
								Y => P
						 );

	U_AND2_1: AND2 Port Map(
						   		A => A,
								B => B,
								Y => G
						   );
End STRUCT;

----------------4 bit carry lookahead---------------

Library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_MISC.all;
use IEEE.STD_LOGIC_ARITH.all;

Entity Bit4CLA is
	Port(
			C_i:	In 		std_logic;
			G: 		In 		std_logic_vector(3 downto 0);
			P: 		In 		std_logic_vector(3 downto 0);
			C: 		Out 	std_logic_vector(3 downto 0)
		);
End Bit4CLA;

Architecture STRUCT of Bit4CLA is

	Component AND2 is
		Port(
				A: In std_logic;
				B: In std_logic;
				Y: Out std_logic
			);
	End Component;

	Component OR2 is
		Port(
				A: In std_logic;
				B: In std_logic;
				Y: Out std_logic
			);
	End Component;

	Component AND3 is
		Port(
				A: In std_logic;
				B: In std_logic;
				C: In std_logic;
				Y: Out std_logic
			);
	End Component;

	Component OR3 is
		Port(
				A: In std_logic;
				B: In std_logic;
				C: In std_logic;
				Y: Out std_logic
			);
	End Component;

	Component AND4 is
		Port(
				A: In std_logic;
				B: In std_logic;
				C: In std_logic;
				D: In std_logic;
				Y: Out std_logic
			);
	End Component;

	Component OR4 is
		Port(
				A: In std_logic;
				B: In std_logic;
				C: In std_logic;
				D: In std_logic;
				Y: Out std_logic
			);
	End Component;

	Component AND5 is
		Port(
				A: In std_logic;
				B: In std_logic;
				C: In std_logic;
				D: In std_logic;
				E: In std_logic;
				Y: Out std_logic
			);
	End Component;

	Component OR5 is
		Port(
				A: In std_logic;
				B: In std_logic;
				C: In std_logic;
				D: In std_logic;
				E: In std_logic;
				Y: Out std_logic
			);
	End Component;

	Signal s1, s2, s3, s4, s5, s6, s7, s8, s9, sA: std_logic;

Begin

	U_AND2_1: AND2 Port Map(
						   		A => C_i,
								B => P(0),
								Y => s1
						   );
	U_OR2_1: OR2 Port Map(
						 		A => s1,
								B => G(0),
								Y => C(0)
						 );
	U_AND3_1: AND3 Port Map(
						   		A => C_i,
								B => P(0),
								C => P(1),
						   		Y => s2
							);

	U_AND2_2: AND2 Port Map(
						   		A => P(1),
								B => G(0),
								Y => s3
						   );

	U_OR3_1: OR3 Port Map(
						 		A => s2,
								B => s3,
								C => G(1),
								Y => C(1)
						 );

	U_AND4_1: AND4 Port Map(
						   		A => C_i,
								B => P(0),
								C => P(1),
								D => P(2),
								Y => s4
						   );

	U_AND3_2: AND3 Port Map(
						   		A => G(0),
								B => P(1),
								C => P(2),
								Y => s5
						   );

	U_AND2_3: AND2 Port Map(
					  			A => P(2),
								B => G(1),
								Y => s6
					  );
	
	U_OR4_1: OR4 Port Map(
						 		A => s4,
								B => s5,
								C => s6,
								D => G(2),
								Y => C(2)
						 );

	U_AND5_1: AND5 Port Map(
					  			A => C_i,
								B => P(0),
								C => P(1),
								D => P(2),
								E => P(3),
								Y => s7
					  );

	U_AND4_2: AND4 Port Map(
					  			A => G(0),
								B => P(1),
								C => P(2),
								D => P(3),
								Y => s8
					  );

	U_AND3_3: AND3 Port Map(
					  			A => G(1),
								B => P(2),
								C => P(3),
								Y => s9
					  );

	U_AND2_4: AND2 Port Map(
					  			A => G(2),
								B => P(3),
								Y => sA
					  );

	U_OR5_1: OR5 Port Map(
					 			A => s7,
								B => s8,
								C => s9,
								D => sA,
								E => G(3),
								Y => C(3)
					 );
END STRUCT;

----------------4 bit CLA adder---------------------

Library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_MISC.all;
use IEEE.STD_LOGIC_ARITH.all;

Entity Adder4 is
	Port(
			C_i:	In	std_logic;
			A:		In 	std_logic_vector(3 downto 0);
			B: 		In 	std_logic_vector(3 downto 0);
			S:		Out	std_logic_vector(3 downto 0);
			C_o:	Out	std_logic
		);
End Adder4;

Architecture STRUCT of Adder4 is

	Component Bit4CLA is
		Port(
				C_i:	In	std_logic;
				G:		In 	std_logic_vector(3 downto 0);
				P:		In 	std_logic_vector(3 downto 0);
				C:		Out std_logic_vector(3 downto 0)
			);
	End Component;

	Component Adder is
		Port(
				C_in:	In	std_logic;
				A:		In	std_logic;
				B:		In	std_logic;
				S:		Out	std_logic;
				G:		Out std_logic;
				P:		Out std_logic
			);
	End Component;

	Signal p_sig, g_sig:	std_logic_vector(3 downto 0);
	Signal c0, c1, c2:	std_logic;

Begin

	U_Bit4CLA_0: Bit4CLA Port Map(
								 	C_i 	=> C_i,
									G 		=> g_sig,
									P 		=> p_sig,
									C(0) 	=> c0,
									C(1)	=> c1,
									C(2)	=> c2,
									C(3)	=> C_o
								 );

	U_Adder_0: Adder Port Map(
							 		C_in		=> C_i,
									A		=> A(0),
									B		=> B(0),
									S		=> S(0),
									G		=> g_sig(0),
									P		=> p_sig(0)
							 );

	U_Adder_1: Adder Port Map(
							 		C_in		=> c0,
									A		=> A(1),
									B		=> B(1),
									S		=> S(1),
									G		=> g_sig(1),
									P		=> p_sig(1)
							 );

	U_Adder_2: Adder Port Map(
							 		C_in		=> c1,
									A		=> A(2),
									B		=> B(2),
									S		=> S(2),
									G		=> g_sig(2),
									p		=> p_sig(2)
							 );
	
	U_Adder_3: Adder Port Map(
							 		C_in		=> c2,
									A		=> A(3),
									B		=> B(3),
									S		=> S(3),
									G		=> g_sig(3),
									p		=> p_sig(3)
							 );

End STRUCT;


---------------32 bit CLA adder---------------------

Library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_MISC.all;
use IEEE.STD_LOGIC_ARITH.all;

Entity Adder32 is
	Port(
			A:	In	std_logic_vector(31 downto 0);
			B:	In	std_logic_vector(31 downto 0);
			S: 	Out	std_logic_vector(31 downto 0);
			C_i:In	std_logic;
			C_o:Out std_logic
		);
End Adder32;

Architecture STRUCT of Adder32 is

	Component Adder4 is
		Port(
				C_i:	In	std_logic;
				A:		In 	std_logic_vector(3 downto 0);
				B: 		In 	std_logic_vector(3 downto 0);
				S:		Out	std_logic_vector(3 downto 0);
				C_o:	Out	std_logic
			);
	End Component;

	Signal c0, c1, c2, c3, c4, c5, c6: std_logic;

Begin

	U_Adder4_0: Adder4 Port Map(
							   		C_i	=> C_i,
									A	=> A(3 downto 0),
									B	=> B(3 downto 0),
									S	=> S(3 downto 0),
									C_o	=> c0
							   );

	U_Adder4_1: Adder4 Port Map(
							   		C_i	=> c0,
									A	=> A(7 downto 4),
									B	=> B(7 downto 4),
									S	=> S(7 downto 4),
									C_o	=> c1
							   );

	U_Adder4_2: Adder4 Port Map(
							   		C_i	=> c1,
									A	=> A(11 downto 8),
									B	=> B(11 downto 8),
									S	=> S(11 downto 8),
									C_o	=> c2
							   );

	U_Adder4_3: Adder4 Port Map(
							   		C_i	=> c2,
									A	=> A(15 downto 12),
									B	=> B(15 downto 12),
									S	=> S(15 downto 12),
									C_o	=> c3
							   );

	U_Adder4_4: Adder4 Port Map(
							   		C_i	=> c3,
									A	=> A(19 downto 16),
									B	=> B(19 downto 16),
									S	=> S(19 downto 16),
									C_o	=> c4
							   );

	U_Adder4_5: Adder4 Port Map(
							   		C_i	=> c4,
									A	=> A(23 downto 20),
									B	=> B(23 downto 20),
									S	=> S(23 downto 20),
									C_o	=> c5
							   );

	U_Adder4_6: Adder4 Port Map(
							   		C_i	=> c5,
									A	=> A(27 downto 24),
									B	=> B(27 downto 24),
									S	=> S(27 downto 24),
									C_o	=> c6
								);

	U_Adder4_7: Adder4 Port Map(
							   		C_i	=> c6,
									A	=> A(31 downto 28),
									B	=> B(31 downto 28),
									S	=> S(31 downto 28),
									C_o	=> C_o
							   );
							
End STRUCT;

---------------5 bit decoder------------------------

Library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_MISC.all;
use IEEE.STD_LOGIC_ARITH.all;

Entity Decoder5 is
	Port(
			V_in:	In	std_logic_vector(4 downto 0);
			V_o:	Out	std_logic_vector(31 downto 0)
		);
End Decoder5;

Architecture STRUCT of Decoder5 is

	Component AND5 is
		Port(
				A: In std_logic;
				B: In std_logic;
				C: In std_logic;
				D: In std_logic;
				Y: Out std_logic
			);
	End Component;

	Component NOT1 is
		Port(
				A:	In	std_logic;
				Y:	Out	std_logic
			);
	End Component;

	Signal v0n, v1n, v2n, v3n, v4n:	std_logic;

Begin

	U_NOT1_0:	NOT1 Port Map(
						   		A	=> V_in(0),
								Y	=> v0n
						   );

	U_NOT1_1:	NOT1 Port Map(
						   		A	=> V_in(1),
								Y	=> v1n
						   );
	
	U_NOT1_2:	NOT1 Port Map(
						   		A	=> V_in(2),
								Y	=> v2n
						   );

	U_NOT1_3:	NOT1 Port Map(
						   		A	=> V_in(3),
								Y	=> v3n
						   );
	U_NOT1_4:	NOT1 Port Map(
						   		A 	=> V_in(4),
								Y	=> v4n
						   );


	U_AND5_0:	AND5 Port Map(
						   		A	=> v0n,
								B	=> v1n,
								C	=> v2n,
								D	=> v3n,
								E	=> v4n,
								Y	=> V_o(0)
						   );

	U_AND5_1:	AND5 Port Map(
						   		A	=> V_in(0),
								B	=> v1n,
								C	=> v2n,
								D	=> v3n,
								E	=> v4n,
								Y	=> V_o(1)
						   );

	U_AND5_2:	AND5 Port Map(
						   		A	=> v0n,
								B	=> V_in(1),
								C	=> v2n,
								D	=> v3n,
								E	=> v4n,
								Y	=> V_o(2)
						   );

	U_AND5_3:	AND5 Port Map(
						   		A	=> V_in(0),
								B	=> V_in(1),
								C	=> v2n,
								D	=> v3n,
								E	=> v4n,
								Y	=> V_o(3)
						   );

	U_AND5_4:	AND5 Port Map(
						   		A	=> v0n,
								B	=> v1n,
								C	=> V_in(2),
								D	=> v3n,
								E	=> v4n,
								Y	=> V_o(4)
						   );

	U_AND5_5:	AND5 Port Map(
						   		A	=> V_in(0),
								B	=> v1n,
								C	=> V_in(2),
								D	=> v3n,
								E	=> v4n,
								Y	=> V_o(5)
						   );

	U_AND5_6:	AND5 Port Map(
						   		A	=> v0n, 
								B	=> V_in(1),
								C	=> V_in(2),
								D	=> v3n,
								E	=> v4n,
								Y	=> V_o(6)
						   );

	U_AND5_7:	AND5 Port Map(
						   		A	=> V_in(0), 
								B	=> V_in(1),
								C	=> V_in(2),
								D	=> v3n,
								E	=> v4n,
								Y	=> V_o(7)
						   );
	
	U_AND5_8:	AND5 Port Map(
						   		A	=> v0n, 
								B	=> v1n,
								C	=> v2n,
								D	=> V_in(3),
								E	=> v4n,
								Y	=> V_o(8)
						   );
	
	U_AND5_9:	AND5 Port Map(
						   		A	=> V_in(0), 
								B	=> v1n,
								C	=> v2n,
								D	=> V_in(3),
								E	=> v4n,
								Y	=> V_o(9)
						   );
	
	U_AND5_A:	AND5 Port Map(
						   		A	=> v0n, 
								B	=> V_in(1),
								C	=> v2n,
								D	=> V_in(3),
								E	=> v4n,
								Y	=> V_o(10)
						   );
	
	U_AND5_B:	AND5 Port Map(
						   		A	=> V_in(0), 
								B	=> V_in(1),
								C	=> v2n,
								D	=> V_in(3),
								E	=> v4n,
								Y	=> V_o(11)
						   );
	
	U_AND5_C:	AND5 Port Map(
						   		A	=> v0n,
								B	=> v1n,
								C	=> V_in(2),
								D	=> V_in(3),
								E	=> v4n,
								Y	=> V_o(12)
						   );
	
	U_AND5_D:	AND5 Port Map(
						   		A	=> V_in(0),
								B	=> v1n,
								C	=> V_in(2),
								D	=> V_in(3),
								E	=> v4n,
								Y	=> V_o(13)
						   );
	
	U_AND5_E:	AND5 Port Map(
						   		A	=> v0n, 
								B	=> V_in(1),
								C	=> V_in(2),
								D	=> V_in(3),
								E	=> v4n,
								Y	=> V_o(14)
						   );
	
	U_AND5_F:	AND5 Port Map(
						   		A	=> V_in(0), 
								B	=> V_in(1),
								C	=> V_in(2),
								D	=> V_in(3),
								E	=> v4n,
								Y	=> V_o(15)
						   );

	U_AND5_10:	AND5 Port Map(
						   		A	=> v0n,
								B	=> v1n,
								C	=> v2n,
								D	=> v3n,
								E	=> V_in(4),
								Y	=> V_o(16)
						   );

	U_AND5_11:	AND5 Port Map(
						   		A	=> V_in(0),
								B	=> v1n,
								C	=> v2n,
								D	=> v3n,
								E	=> V_in(4),
								Y	=> V_o(17)
						   );

	U_AND5_12:	AND5 Port Map(
						   		A	=> v0n,
								B	=> V_in(1),
								C	=> v2n,
								D	=> v3n,
								E	=> V_in(4),
								Y	=> V_o(18)
						   );

	U_AND5_13:	AND5 Port Map(
						   		A	=> V_in(0),
								B	=> V_in(1),
								C	=> v2n,
								D	=> v3n,
								E	=> V_in(4),
								Y	=> V_o(19)
						   );

	U_AND5_14:	AND5 Port Map(
						   		A	=> v0n,
								B	=> v1n,
								C	=> V_in(2),
								D	=> v3n,
								E	=> V_in(4),
								Y	=> V_o(20)
						   );

	U_AND5_15:	AND5 Port Map(
						   		A	=> V_in(0),
								B	=> v1n,
								C	=> V_in(2),
								D	=> v3n,
								E	=> V_in(4),
								Y	=> V_o(21)
						   );

	U_AND5_16:	AND5 Port Map(
						   		A	=> v0n, 
								B	=> V_in(1),
								C	=> V_in(2),
								D	=> v3n,
								E	=> V_in(4),
								Y	=> V_o(22)
						   );

	U_AND5_17:	AND5 Port Map(
						   		A	=> V_in(0), 
								B	=> V_in(1),
								C	=> V_in(2),
								D	=> v3n,
								E	=> V_in(4),
								Y	=> V_o(23)
						   );
	
	U_AND5_18:	AND5 Port Map(
						   		A	=> v0n, 
								B	=> v1n,
								C	=> v2n,
								D	=> V_in(3),
								E	=> V_in(4),
								Y	=> V_o(24)
						   );
	
	U_AND5_19:	AND5 Port Map(
						   		A	=> V_in(0), 
								B	=> v1n,
								C	=> v2n,
								D	=> V_in(3),
								E	=> V_in(4),
								Y	=> V_o(25)
						   );
	
	U_AND5_1A:	AND5 Port Map(
						   		A	=> v0n, 
								B	=> V_in(1),
								C	=> v2n,
								D	=> V_in(3),
								E	=> V_in(4),
								Y	=> V_o(26)
						   );
	
	U_AND5_1B:	AND5 Port Map(
						   		A	=> V_in(0), 
								B	=> V_in(1),
								C	=> v2n,
								D	=> V_in(3),
								E	=> V_in(4),
								Y	=> V_o(27)
						   );
	
	U_AND5_1C:	AND5 Port Map(
						   		A	=> v0n,
								B	=> v1n,
								C	=> V_in(2),
								D	=> V_in(3),
								E	=> V_in(4),
								Y	=> V_o(28)
						   );
	
	U_AND5_1D:	AND5 Port Map(
						   		A	=> V_in(0),
								B	=> v1n,
								C	=> V_in(2),
								D	=> V_in(3),
								E	=> V_in(4),
								Y	=> V_o(29)
						   );
	
	U_AND5_1E:	AND5 Port Map(
						   		A	=> v0n, 
								B	=> V_in(1),
								C	=> V_in(2),
								D	=> V_in(3),
								E	=> V_in(4),
								Y	=> V_o(30)
						   );
	
	U_AND5_1F:	AND5 Port Map(
						   		A	=> V_in(0), 
								B	=> V_in(1),
								C	=> V_in(2),
								D	=> V_in(3),
								E	=> V_in(4),
								Y	=> V_o(31)
						   );
End STRUCT;

---------------32 bit rshifter-----------------------

Library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_MISC.all;
use IEEE.STD_LOGIC_ARITH.all;

Entity RShifter32 is
	Port(
			V_in:	In	std_logic_vector(31 downto 0);
			A:		In	std_logic_vector(4 downto 0);
			V_out:	Out	std_logic_vector(31 downto 0)
		);
End RShifter32;

Architecture STRUCT of RShifter32 is

	Component Decoder5 is
		Port(
				V_in:	In 	std_logic_vector(4 downto 0);
				V_o:	Out std_logic_vector(31 downto 0)
			);
	End Component;

	Component AND2 is
		Port(
				A:	In	std_logic;
				B:	In	std_logic;
				Y:	Out	std_logic
			);
	End Component

	Component OR2 is
		Port(
				A:	In	std_logic;
				B:	In	std_logic;
				Y:	Out	std_logic
			);
	End Component;

	Component OR3 is
		Port(
				A:	In	std_logic;
				B:	In	std_logic;
				C:	In	std_logic;
				Y:	Out	std_logic
			);
	End Component;

	Component OR4 is
		Port(
				A:	In	std_logic;
				B:	In	std_logic;
				C:	In	std_logic;
				D:	In	std_logic;
				Y:	Out	std_logic
			);
	End Component;

	Component OR5 is
		Port(
				A:	In	std_logic;
				B:	In	std_logic;
				C:	In	std_logic;
				D:	In	std_logic;
				E:	In	std_logic;
				Y:	Out	std_logic
			);
	End Component;

	Signal smask:	std_logic_vector(31 downto 0);
	Signal t0,t1

Begin

	U_Decoder5_0:	Decoder5 Port Map(
						   				A	=> V_in,
										V_o	=> smask
								   );

	U_AND2_0:	AND2 Port Map(
						   		A	=> V_in(0),
								B	=> smask(0),
								Y	=> V_out(0)
						   );

	U_AND2_1:	AND2 Port Map(
						   		A	=> V_in(0),
								B	=> smask(1),
								Y	=> t0
						   );

	U_AND2_2:	AND2 Port Map(
						   		A	=> V_in(1),
								B	=> smask(0),
								Y	=> t1
						   );

	U_OR2_0:	OR2 Port Map(
						 		A	=> t0,
								B	=> t1,
								Y	=> V_out(1)
						 );

	-- 3rd bit --

	U_AND2_3:	AND2 Port Map(
						   		A	=> V_in(0),
								B	=> smask(2),
								Y	=> t2
						   );

	U_AND2_4:	AND2 Port Map(
						   		A	=> V_in(1),
								B	=> smask(1),
								Y	=> t3
						   );

	U_AND2_5: 	AND2 Port Map(
								A	=> V_in(2),
								B	=> smask(0),
								Y	=> t4
							);

	U_OR3_0:	OR3 Port Map(
						 		A	=> t2,
								B	=> t3,
								C	=> t4,
								Y	=> V_out(2)
						 );

	-- 4th bit --

	U_AND2_6:	AND2 Port Map(
						   		A	=> V_in(0),
								B	=> smask(3),
								Y	=> t5
						   );

	U_AND2_7:	AND2 Port Map(
						   		A	=> V_in(1),
								B	=> smask(2),
								Y	=> t6
						   );

	U_AND2_8: 	AND2 Port Map(
								A	=> V_in(2),
								B	=> smask(1),
								Y	=> t7
							);

	U_AND2_9:	AND2 Port Map(
						   		A	=> V_in(3),
								B	=> smask(0),
								Y	=> t8
						   );

	U_OR4_0:	OR4 Port Map(
						 		A	=> t5,
								B	=> t6,
								C	=> t7,
								D	=> t8,
								Y	=> V_out(3)
						 );

	-- 5th bit --

	U_AND2_A:	AND2 Port Map(
						   		A	=> V_in(0),
								B	=> smask(4),
								Y	=> t9
						   );

	U_AND2_B:	AND2 Port Map(
						   		A	=> V_in(1),
								B	=> smask(3),
								Y	=> tA
						   );

	U_AND2_C: 	AND2 Port Map(
								A	=> V_in(2),
								B	=> smask(2),
								Y	=> tB
							);

	U_AND2_D:	AND2 Port Map(
						   		A	=> V_in(3),
								B	=> smask(1),
								Y	=> tC
						   );

	U_AND2_E: 	AND2 Port Map(
								A	=> V_in(4),
								B	=> smask(0),
								Y	=> tD
							);

	U_OR5_0:	OR5 Port Map(
						 		A	=> t9,
								B	=> tA,
								C	=> tB,
								D	=> tC,
								E	=> tD,
								Y	=> V_out(4)
						 );

	-- 6th bit --

	U_AND2_F:	AND2 Port Map(
						   		A	=> V_in(0),
								B	=> smask(5),
								Y	=> tE
						   );

	U_AND2_10:	AND2 Port Map(
						   		A	=> V_in(1),
								B	=> smask(4),
								Y	=> tF
						   );

	U_AND2_11: 	AND2 Port Map(
								A	=> V_in(2),
								B	=> smask(3),
								Y	=> t10
							);

	U_AND2_12:	AND2 Port Map(
						   		A	=> V_in(3),
								B	=> smask(2),
								Y	=> t11
						   );

	U_AND2_13: 	AND2 Port Map(
								A	=> V_in(4),
								B	=> smask(1),
								Y	=> t12
							);

	U_AND2_14:	AND2 Port Map(
								A	=> V_in(5),
								B	=> smask(0),
								Y	=> t13
							);

	U_OR5_1:	OR5 Port Map(
						 		A	=> tE,
								B	=> tF,
								C	=> t10,
								D	=> t11,
								E	=> t12,
								Y	=> t13
						 );

	U_OR2_1:	OR2 Port Map(
						 		A	=> t13,
								B	=> t14,
								Y	=> V_out(5)
						 );

	-- 7th bit --

	U_AND2_15:	AND2 Port Map(
						   		A	=> V_in(0),
								B	=> smask(6),
								Y	=> t15
						   );

	U_AND2_16:	AND2 Port Map(
						   		A	=> V_in(1),
								B	=> smask(5),
								Y	=> t16
						   );

	U_AND2_17: 	AND2 Port Map(
								A	=> V_in(2),
								B	=> smask(4),
								Y	=> t17
							);

	U_AND2_18:	AND2 Port Map(
						   		A	=> V_in(3),
								B	=> smask(3),
								Y	=> t18
						   );

	U_AND2_19: 	AND2 Port Map(
								A	=> V_in(4),
								B	=> smask(2),
								Y	=> t19
							);

	U_AND2_1A:	AND2 Port Map(
								A	=> V_in(5),
								B	=> smask(1),
								Y	=> t1A
							);

	U_AND2_1B:	AND2 Port Map(
								A	=> V_in(6),
								B	=> smask(0),
								Y	=> t1B
							);

	U_OR5_2:	OR5 Port Map(
						 		A	=> t15,
								B	=> t16,
								C	=> t17,
								D	=> t18,
								E	=> t19,
								Y	=> t1C
						 );

	U_OR3_1:	OR3 Port Map(
						 		A	=> t1A,
								B	=> t1B,
								C	=> t1C,
								Y	=> V_out(6)
						 );

	-- 8th bit --

	U_AND2_1C:	AND2 Port Map(
						   		A	=> V_in(0),
								B	=> smask(7),
								Y	=> t1D
						   );

	U_AND2_1D:	AND2 Port Map(
						   		A	=> V_in(1),
								B	=> smask(6),
								Y	=> t1E
						   );

	U_AND2_1E: 	AND2 Port Map(
								A	=> V_in(2),
								B	=> smask(5),
								Y	=> t1F
							);

	U_AND2_1F:	AND2 Port Map(
						   		A	=> V_in(3),
								B	=> smask(4),
								Y	=> t20
						   );

	U_AND2_20: 	AND2 Port Map(
								A	=> V_in(4),
								B	=> smask(3),
								Y	=> t21
							);

	U_AND2_21:	AND2 Port Map(
								A	=> V_in(5),
								B	=> smask(2),
								Y	=> t22
							);

	U_AND2_22:	AND2 Port Map(
								A	=> V_in(6),
								B	=> smask(1),
								Y	=> t23
							);

	U_AND2_23:	AND2 Port Map(
								A	=> V_in(7),
								B	=> smask(0),
								Y	=> t24
							);

	U_OR5_3:	OR5 Port Map(
						 		A	=> t1D,
								B	=> t1E,
								C	=> t1F,
								D	=> t20,
								E	=> t21,
								Y	=> t25
						 );

	U_OR4_1:	OR4 Port Map(
						 		A	=> t25,
								B	=> t22,
								C	=> t23,
								D	=> t24,
								Y	=> V_out(7)
						 );

	-- 9th bit --

	U_AND2_24:	AND2 Port Map(
						   		A	=> V_in(0),
								B	=> smask(8),
								Y	=> t26
						   );

	U_AND2_25:	AND2 Port Map(
						   		A	=> V_in(1),
								B	=> smask(7),
								Y	=> t27
						   );

	U_AND2_26: 	AND2 Port Map(
								A	=> V_in(2),
								B	=> smask(6),
								Y	=> t28
							);

	U_AND2_27:	AND2 Port Map(
						   		A	=> V_in(3),
								B	=> smask(5),
								Y	=> t29
						   );

	U_AND2_28: 	AND2 Port Map(
								A	=> V_in(4),
								B	=> smask(4),
								Y	=> t2A
							);

	U_AND2_29:	AND2 Port Map(
								A	=> V_in(5),
								B	=> smask(3),
								Y	=> t2B
							);

	U_AND2_2A:	AND2 Port Map(
								A	=> V_in(6),
								B	=> smask(2),
								Y	=> t2C
							);

	U_AND2_2B:	AND2 Port Map(
								A	=> V_in(7),
								B	=> smask(1),
								Y	=> t2D
							);

	U_AND2_2C:	AND2 Port Map(
								A	=> V_in(8),
								B	=> smask(0),
								Y	=> t2E
							);
	
	U_OR5_4:	OR5 Port Map(
						 		A	=> t26,
								B	=> t27,
								C	=> t28,
								D	=> t29,
								E	=> t2A,
								Y	=> t2F
						 );

	U_OR5_5:	OR5 Port Map(
						 		A	=> t2B,
								B	=> t2C,
								C	=> t2D,
								D	=> t2E,
								E	=> t2F,
								Y	=> V_out(8)
						 );

	-- Ath bit --

	U_AND2_2D:	AND2 Port Map(
						   		A	=> V_in(0),
								B	=> smask(9),
								Y	=> t30
						   );

	U_AND2_2E:	AND2 Port Map(
						   		A	=> V_in(1),
								B	=> smask(8),
								Y	=> t31
						   );

	U_AND2_2F: 	AND2 Port Map(
								A	=> V_in(2),
								B	=> smask(7),
								Y	=> t32
							);

	U_AND2_30:	AND2 Port Map(
						   		A	=> V_in(3),
								B	=> smask(6),
								Y	=> t33
						   );

	U_AND2_31: 	AND2 Port Map(
								A	=> V_in(4),
								B	=> smask(5),
								Y	=> t34
							);

	U_AND2_32:	AND2 Port Map(
								A	=> V_in(5),
								B	=> smask(4),
								Y	=> t35
							);

	U_AND2_33:	AND2 Port Map(
								A	=> V_in(6),
								B	=> smask(3),
								Y	=> t36
							);

	U_AND2_34:	AND2 Port Map(
								A	=> V_in(7),
								B	=> smask(2),
								Y	=> t37
							);

	U_AND2_35:	AND2 Port Map(
								A	=> V_in(8),
								B	=> smask(1),
								Y	=> t38
							);
	
	U_AND2_36:	AND2 Port Map(
								A	=> V_in(9),
								B	=> smask(0),
								Y	=> t39
							);

	U_OR5_6:	OR5 Port Map(
						 		A	=> t30,
								B	=> t31,
								C	=> t32,
								D	=> t33,
								E	=> t34,
								Y	=> t3A
						 );

	U_OR5_7:	OR5 Port Map(
						 		A	=> t35,
								B	=> t36,
								C	=> t37,
								D	=> t38,
								E	=> t39,
								Y	=> t3B
						 );

	U_OR2_2:	OR2 Port Map(
						 		A	=> t3A,
								B	=> t3B,
								Y	=> V_out(9)
						 );

	-- Bth bit --

	U_AND2_37:	AND2 Port Map(
						   		A	=> V_in(0),
								B	=> smask(10),
								Y	=> t3C
						   );

	U_AND2_38:	AND2 Port Map(
						   		A	=> V_in(1),
								B	=> smask(9),
								Y	=> t3D
						   );

	U_AND2_39: 	AND2 Port Map(
								A	=> V_in(2),
								B	=> smask(8),
								Y	=> t3E
							);

	U_AND2_3A:	AND2 Port Map(
						   		A	=> V_in(3),
								B	=> smask(7),
								Y	=> t3F
						   );

	U_AND2_3B: 	AND2 Port Map(
								A	=> V_in(4),
								B	=> smask(6),
								Y	=> t40
							);

	U_AND2_3C:	AND2 Port Map(
								A	=> V_in(5),
								B	=> smask(5),
								Y	=> t41
							);

	U_AND2_3D:	AND2 Port Map(
								A	=> V_in(6),
								B	=> smask(4),
								Y	=> t42
							);

	U_AND2_3E:	AND2 Port Map(
								A	=> V_in(7),
								B	=> smask(3),
								Y	=> t43
							);

	U_AND2_3F:	AND2 Port Map(
								A	=> V_in(8),
								B	=> smask(2),
								Y	=> t44
							);
	
	U_AND2_40:	AND2 Port Map(
								A	=> V_in(9),
								B	=> smask(1),
								Y	=> t45
							);

	U_AND2_41:	AND2 Port Map(
						   		A	=> V_in(10),
								B	=> smask(0),
								Y	=> t46
						   );

	U_OR5_8:	OR5 Port Map(
						 		A	=> t3C,
								B	=> t3D,
								C	=> t3E,
								D	=> t3F,
								E	=> t40,
								Y	=> t47
						 );

	U_OR5_9:	OR5 Port Map(
						 		A	=> t41,
								B	=> t42,
								C	=> t43,
								D	=> t44,
								E	=> t45,
								Y	=> t48
						 );

	U_OR3_2:	OR3 Port Map(
						 		A	=> t46,
								B	=> t47,
								C	=> t48
								Y	=> V_out(10)
						 );

	-- Cth bit --

	U_AND2_42:	AND2 Port Map(
						   		A	=> V_in(0),
								B	=> smask(11),
								Y	=> t49
						   );

	U_AND2_43:	AND2 Port Map(
						   		A	=> V_in(1),
								B	=> smask(10),
								Y	=> t4A
						   );

	U_AND2_44: 	AND2 Port Map(
								A	=> V_in(2),
								B	=> smask(9),
								Y	=> t4B
							);

	U_AND2_45:	AND2 Port Map(
						   		A	=> V_in(3),
								B	=> smask(8),
								Y	=> t4C
						   );

	U_AND2_46: 	AND2 Port Map(
								A	=> V_in(4),
								B	=> smask(7),
								Y	=> t4D
							);

	U_AND2_47:	AND2 Port Map(
								A	=> V_in(5),
								B	=> smask(6),
								Y	=> t4E
							);

	U_AND2_48:	AND2 Port Map(
								A	=> V_in(6),
								B	=> smask(5),
								Y	=> t4F
							);

	U_AND2_49:	AND2 Port Map(
								A	=> V_in(7),
								B	=> smask(4),
								Y	=> t50
							);

	U_AND2_4A:	AND2 Port Map(
								A	=> V_in(8),
								B	=> smask(3),
								Y	=> t51
							);
	
	U_AND2_4B:	AND2 Port Map(
								A	=> V_in(9),
								B	=> smask(2),
								Y	=> t52
							);

	U_AND2_4C:	AND2 Port Map(
						   		A	=> V_in(10),
								B	=> smask(1),
								Y	=> t53
						   );

	U_AND2_4D:	AND2 Port Map(
								A	=> V_in(11),
								B	=> smask(1),
								Y	=> t54
							);

	U_OR5_A:	OR5 Port Map(
						 		A	=> t49,
								B	=> t4A,
								C	=> t4B,
								D	=> t4C,
								E	=> t4D,
								Y	=> t55
						 );

	U_OR5_B:	OR5 Port Map(
						 		A	=> t4E,
								B	=> t4F,
								C	=> t50,
								D	=> t51,
								E	=> t52,
								Y	=> t56
						 );

	U_OR4_2:	OR4 Port Map(
						 		A	=> t53,
								B	=> t54,
								C	=> t55,
								D	=> t56,
								Y	=> V_out(11)
						 );
	-- Dth bit --

	U_AND2_4E:	AND2 Port Map(
						   		A	=> V_in(0),
								B	=> smask(12),
								Y	=> t57
						   );

	U_AND2_4F:	AND2 Port Map(
						   		A	=> V_in(1),
								B	=> smask(11),
								Y	=> t58
						   );

	U_AND2_50: 	AND2 Port Map(
								A	=> V_in(2),
								B	=> smask(10),
								Y	=> t59
							);

	U_AND2_51:	AND2 Port Map(
						   		A	=> V_in(3),
								B	=> smask(9),
								Y	=> t5A
						   );

	U_AND2_52: 	AND2 Port Map(
								A	=> V_in(4),
								B	=> smask(8),
								Y	=> t5B
							);

	U_AND2_53:	AND2 Port Map(
								A	=> V_in(5),
								B	=> smask(7),
								Y	=> t5C
							);

	U_AND2_54:	AND2 Port Map(
								A	=> V_in(6),
								B	=> smask(6),
								Y	=> t5D
							);

	U_AND2_55:	AND2 Port Map(
								A	=> V_in(7),
								B	=> smask(5),
								Y	=> t5E
							);

	U_AND2_56:	AND2 Port Map(
								A	=> V_in(8),
								B	=> smask(4),
								Y	=> t5F
							);
	
	U_AND2_57:	AND2 Port Map(
								A	=> V_in(9),
								B	=> smask(3),
								Y	=> t60
							);

	U_AND2_58:	AND2 Port Map(
						   		A	=> V_in(10),
								B	=> smask(2),
								Y	=> t61
						   );

	U_AND2_59:	AND2 Port Map(
								A	=> V_in(11),
								B	=> smask(1),
								Y	=> t62
							);

	U_AND2_5A:	AND2 Port Map(
								A	=> V_in(12),
								B	=> smask(0),
								Y	=> t63
							);

	U_OR5_C:	OR5 Port Map(
						 		A	=> t57,
								B	=> t58,
								C	=> t59,
								D	=> t5A,
								E	=> t5B,
								Y	=> t64
						 );

	U_OR5_D:	OR5 Port Map(
						 		A	=> t5C,
								B	=> t5D,
								C	=> t5E,
								D	=> t5F,
								E	=> t60,
								Y	=> t65
						 );

	U_OR5_E:	OR5 Port Map(
						 		A	=> t61,
								B	=> t62,
								C	=> t63,
								D	=> t64,
								E	=> t65,
								Y	=> V_out(12)
						 );
	-- Eth bit --

	U_AND2_5B:	AND2 Port Map(
						   		A	=> V_in(0),
								B	=> smask(13),
								Y	=> t66
						   );

	U_AND2_5C:	AND2 Port Map(
						   		A	=> V_in(1),
								B	=> smask(12),
								Y	=> t67
						   );

	U_AND2_5D: 	AND2 Port Map(
								A	=> V_in(2),
								B	=> smask(11),
								Y	=> t68
							);

	U_AND2_5E:	AND2 Port Map(
						   		A	=> V_in(3),
								B	=> smask(10),
								Y	=> t69
						   );

	U_AND2_5F: 	AND2 Port Map(
								A	=> V_in(4),
								B	=> smask(9),
								Y	=> t6A
							);

	U_AND2_60:	AND2 Port Map(
								A	=> V_in(5),
								B	=> smask(8),
								Y	=> t6B
							);

	U_AND2_61:	AND2 Port Map(
								A	=> V_in(6),
								B	=> smask(7),
								Y	=> t6C
							);

	U_AND2_62:	AND2 Port Map(
								A	=> V_in(7),
								B	=> smask(6),
								Y	=> t6D
							);

	U_AND2_63:	AND2 Port Map(
								A	=> V_in(8),
								B	=> smask(5),
								Y	=> t6E
							);
	
	U_AND2_64:	AND2 Port Map(
								A	=> V_in(9),
								B	=> smask(4),
								Y	=> t6F
							);

	U_AND2_65:	AND2 Port Map(
						   		A	=> V_in(10),
								B	=> smask(3),
								Y	=> t70
						   );

	U_AND2_66:	AND2 Port Map(
								A	=> V_in(11),
								B	=> smask(2),
								Y	=> t71
							);

	U_AND2_67:	AND2 Port Map(
								A	=> V_in(12),
								B	=> smask(1),
								Y	=> t72
							);

	U_AND2_68:	AND2 Port Map(
								A	=> V_in(13),
								B	=> smask(0),
								Y	=> t73
							);

	U_OR5_F:	OR5 Port Map(
						 		A	=> t66,
								B	=> t67,
								C	=> t68,
								D	=> t69,
								E	=> t6A,
								Y	=> t74
						 );

	U_OR5_10:	OR5 Port Map(
						 		A	=> t6B,
								B	=> t6C,
								C	=> t6D,
								D	=> t6E,
								E	=> t6F,
								Y	=> t75
						 );

	U_OR5_11:	OR5 Port Map(
						 		A	=> t70,
								B	=> t71,
								C	=> t72,
								D	=> t73,
								E	=> t74,
								Y	=> t76
						 );

	U_OR2_3:	OR2 Port Map(
						 		A	=> t75,
								B	=> t76,
								Y	=> V_out(13)
						 );
	
	-- Fth bit --

	U_AND2_69:	AND2 Port Map(
						   		A	=> V_in(0),
								B	=> smask(14),
								Y	=> t77
						   );

	U_AND2_6A:	AND2 Port Map(
						   		A	=> V_in(1),
								B	=> smask(13),
								Y	=> t78
						   );

	U_AND2_6B: 	AND2 Port Map(
								A	=> V_in(2),
								B	=> smask(12),
								Y	=> t79
							);

	U_AND2_6C:	AND2 Port Map(
						   		A	=> V_in(3),
								B	=> smask(11),
								Y	=> t79
						   );

	U_AND2_6D: 	AND2 Port Map(
								A	=> V_in(4),
								B	=> smask(10),
								Y	=> t7A
							);

	U_AND2_6E:	AND2 Port Map(
								A	=> V_in(5),
								B	=> smask(9),
								Y	=> t7B
							);

	U_AND2_6F:	AND2 Port Map(
								A	=> V_in(6),
								B	=> smask(8),
								Y	=> t7C
							);

	U_AND2_70:	AND2 Port Map(
								A	=> V_in(7),
								B	=> smask(7),
								Y	=> t7D
							);

	U_AND2_71:	AND2 Port Map(
								A	=> V_in(8),
								B	=> smask(6),
								Y	=> t7E
							);
	
	U_AND2_72:	AND2 Port Map(
								A	=> V_in(9),
								B	=> smask(5),
								Y	=> t7F
							);

	U_AND2_73:	AND2 Port Map(
						   		A	=> V_in(10),
								B	=> smask(4),
								Y	=> t80
						   );

	U_AND2_74:	AND2 Port Map(
								A	=> V_in(11),
								B	=> smask(3),
								Y	=> t81
							);

	U_AND2_75:	AND2 Port Map(
								A	=> V_in(12),
								B	=> smask(2),
								Y	=> t82
							);

	U_AND2_76:	AND2 Port Map(
								A	=> V_in(13),
								B	=> smask(1),
								Y	=> t83
							);

	U_AND2_77:	AND2 Port Map(
								A	=> V_in(14),
								B	=> smask(0),
								Y	=> t84
							);

	U_OR5_12:	OR5 Port Map(
						 		A	=> t76,
								B	=> t77,
								C	=> t78,
								D	=> t79,
								E	=> t7A,
								Y	=> t85
						 );

	U_OR5_13:	OR5 Port Map(
						 		A	=> t7B,
								B	=> t7C,
								C	=> t7D,
								D	=> t7E,
								E	=> t7F,
								Y	=> t86
						 );

	U_OR5_14:	OR5 Port Map(
						 		A	=> t80,
								B	=> t81,
								C	=> t82,
								D	=> t83,
								E	=> t84,
								Y	=> t87
						 );

	U_OR3_3:	OR3 Port Map(
						 		A	=> t85,
								B	=> t86,
								C	=> t87,
								Y	=> V_out(14)
						 );
	
	-- 10th bit --

	U_AND2_78:	AND2 Port Map(
						   		A	=> V_in(0),
								B	=> smask(15),
								Y	=> t88
						   );

	U_AND2_79:	AND2 Port Map(
						   		A	=> V_in(1),
								B	=> smask(14),
								Y	=> t89
						   );

	U_AND2_7A: 	AND2 Port Map(
								A	=> V_in(2),
								B	=> smask(13),
								Y	=> t8A
							);

	U_AND2_7B:	AND2 Port Map(
						   		A	=> V_in(3),
								B	=> smask(12),
								Y	=> t8B
						   );

	U_AND2_7C: 	AND2 Port Map(
								A	=> V_in(4),
								B	=> smask(11),
								Y	=> t8C
							);

	U_AND2_7D:	AND2 Port Map(
								A	=> V_in(5),
								B	=> smask(10),
								Y	=> t8D
							);

	U_AND2_7E:	AND2 Port Map(
								A	=> V_in(6),
								B	=> smask(9),
								Y	=> t8E
							);

	U_AND2_7F:	AND2 Port Map(
								A	=> V_in(7),
								B	=> smask(8),
								Y	=> t8F
							);

	U_AND2_80:	AND2 Port Map(
								A	=> V_in(8),
								B	=> smask(7),
								Y	=> t90
							);
	
	U_AND2_81:	AND2 Port Map(
								A	=> V_in(9),
								B	=> smask(6),
								Y	=> t91
							);

	U_AND2_82:	AND2 Port Map(
						   		A	=> V_in(10),
								B	=> smask(5),
								Y	=> t92
						   );

	U_AND2_83:	AND2 Port Map(
								A	=> V_in(11),
								B	=> smask(4),
								Y	=> t93
							);

	U_AND2_84:	AND2 Port Map(
								A	=> V_in(12),
								B	=> smask(3),
								Y	=> t94
							);

	U_AND2_85:	AND2 Port Map(
								A	=> V_in(13),
								B	=> smask(2),
								Y	=> t95
							);

	U_AND2_86:	AND2 Port Map(
								A	=> V_in(14),
								B	=> smask(1),
								Y	=> t96
							);

	U_AND2_87:	AND2 Port Map(
								A	=> V_in(15),
								B	=> smask(0),
								Y	=> t97
							);

	U_OR5_15:	OR5 Port Map(
						 		A	=> t88,
								B	=> t89,
								C	=> t8A,
								D	=> t8B,
								E	=> t8C,
								Y	=> t98
						 );

	U_OR5_16:	OR5 Port Map(
						 		A	=> t8D,
								B	=> t8E,
								C	=> t8F,
								D	=> t90,
								E	=> t91,
								Y	=> t99
						 );

	U_OR5_17:	OR5 Port Map(
						 		A	=> t92,
								B	=> t93,
								C	=> t94,
								D	=> t95,
								E	=> t96,
								Y	=> t9A
						 );

	U_OR4_3:	OR4 Port Map(
						 		A	=> t97,
								B	=> t98,
								C	=> t99,
								D	=> t9A
								Y	=> V_out(15)
						 );
