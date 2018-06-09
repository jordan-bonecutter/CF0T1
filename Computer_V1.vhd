----------------------------------------------------------------------
-- Structural Model
-- Author: Jordan Bonecutter 
----------------------------------------------------------------------

Library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_MISC.all;
use IEEE.STD_LOGIC_ARITH.all;

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
		Y <= A or B after 2.4 ns;
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
End FullAdder;

Architecture STRUCT of Adder is
		
	Component 2XOR is
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

	U_2XOR_1: 2XOR Port Map(
						   		A => A,
								B => B,
								Y => s1
						   );

	U_2XOR_2: 2XOR Port Map(
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
								Y => P
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

	U_AND2_3: Port Map(
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

	U_AND5_1: Port Map(
					  			A => C_i,
								B => P(0),
								C => P(1),
								D => P(2),
								E => P(3),
								Y => s7
					  );

	U_AND4_2: Port Map(
					  			A => G(0),
								B => P(1),
								C => P(2),
								D => P(3),
								Y => s8
					  );

	U_AND3_3: Port Map(
					  			A => G(1),
								B => P(2),
								C => P(3),
								Y => s9
					  );

	U_AND2_4: Port Map(
					  			A => G(2),
								B => P(3),
								Y => sA
					  );

	U_OR5_1: Port Map(
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
				C:		Out std_logic_vector(3 downto 0);
			);
	End Component;

	Component Adder is
		Port(
				C_i:	In	std_logic;
				A:		In	std_logic;
				B:		In	std_logic;
				S:		Out	std_logic;
				G:		Out std_logic;
				P:		Out std_logic;
			);
	End Component;

	Signal p_sig, g_sig:	std_logic_vector(3 downto 0);
	Signal c0, c1, c2, c3:	std_logic;

Begin

	U_Bit4CLA_0: Bit4CLA Port Map(
								 	C_i 	=> C_i,
									G 		=> g_sig,
									P 		=> p_sig,
									C(0) 	=> c0,
									C(1)	=> c1,
									C(2)	=> c2,
									C(3)	=> c3
								 );

	U_Adder_0: Adder Port Map(
							 		C_i		=> C_i,
									A		=> A(0),
									B		=> B(0),
									S		=> S(0),
									G		=> g_sig(0),
									P		=> p_sig(0)
							 );

	U_Adder_1: Adder Port Map(
							 		C_i		=> c0,
									A		=> A(1),
									B		=> B(1),
									S		=> S(1),
									G		=> g_sig(1),
									P		=> p_sig(1)
							 );

	U_Adder_2: Adder Port Map(
							 		C_i		=> c1,
									A		=> A(2),
									B		=> B(2),
									S		=> S(2),
									G		=> g_sig(2),
									p		=> p_sig(2)
							 );
	
	U_Adder_3: Adder Port Map(
							 		C_i		=> c2,
									A		=> A(3),
									B		=> B(3),
									S		=> S(3),
									G		=> g_sig(3),
									p		=> p_sig(3)
							 );

End STRUCT;
