-- VHDL Entity my_project_lib.Full_Adder.symbol
--
-- Created:
--          by - fzhang19.ews (eceb-2022-22.ews.illinois.edu)
--          at - 14:24:55 09/21/16
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

ENTITY Full_Adder IS
   PORT( 
      a    : IN     std_logic;
      b    : IN     std_logic;
      cin  : IN     std_logic;
      cout : OUT    std_logic;
      s    : OUT    std_logic
   );

-- Declarations

END Full_Adder ;

--
-- VHDL Architecture my_project_lib.Full_Adder.struct
--
-- Created:
--          by - fzhang19.ews (eceb-2022-22.ews.illinois.edu)
--          at - 14:24:56 09/21/16
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

LIBRARY my_project_lib;

ARCHITECTURE struct OF Full_Adder IS

   -- Architecture declarations

   -- Internal signal declarations
   SIGNAL din2  : std_logic;
   SIGNAL dout  : std_logic;
   SIGNAL dout1 : std_logic;
   SIGNAL f     : std_logic;


   -- Component Declarations
   COMPONENT my_xor
   PORT (
      a : IN     std_logic ;
      b : IN     std_logic ;
      f : OUT    std_logic 
   );
   END COMPONENT;

   -- Optional embedded configurations
   -- pragma synthesis_off
   FOR ALL : my_xor USE ENTITY my_project_lib.my_xor;
   -- pragma synthesis_on


BEGIN

   -- ModuleWare code(v1.9) for instance 'U_2' of 'and'
   dout1 <= a AND b;

   -- ModuleWare code(v1.9) for instance 'U_3' of 'and'
   dout <= a AND cin;

   -- ModuleWare code(v1.9) for instance 'U_5' of 'and'
   din2 <= b AND cin;

   -- ModuleWare code(v1.9) for instance 'U_4' of 'or'
   cout <= dout1 OR dout OR din2;

   -- Instance port mappings.
   U_0 : my_xor
      PORT MAP (
         a => a,
         b => b,
         f => f
      );
   U_1 : my_xor
      PORT MAP (
         a => f,
         b => cin,
         f => s
      );

END struct;
