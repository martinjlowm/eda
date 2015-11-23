-- -------------------------------------------------------------------------
--
--  Title      :  Useful types and constants in a nice package.
--             :
--  Developers :  Jonas Benjamin Borch - s052435@student.dtu.dk
--             :
--  Purpose    :  This design contains a package with usefull types and
--             :  constants.
--             :
--  Revision   :  1.0  22-08-08  Initial version
--             :
--  Special    :
--  thanks to  :  Niels Haandbæk -- c958307@student.dtu.dk
--             :  Michael Kristensen - c973396@student.dtu.dk
--             :  Hans Holten-Lund - hahl@imm.dtu.dk
--
-- -------------------------------------------------------------------------

----------------------------------------------------------------------------
--    Type name |  MIPS name | size in bits
--        bit_t |     bit    | 1
--       byte_t |    byte    | 8
--   halfword_t |  halfword  | 16
--       word_t |    word    | 32
-- doubleword_t | doubleword | 64
-- The constants can be used to set all bits in a signal or variable of type
-- byte_t, halfword_t, word_t and doubleword_t to either '0', '1', 'X' or
-- 'Z'.
----------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.types.all;

package constants is
  constant BYTE_SIZE : integer := 8;
  constant WORD_SIZE : integer := BYTE_SIZE * 4;
  constant HALFWORD_SIZE : integer := WORD_SIZE / 2;

  constant NUM_COLS : integer := 4;
  constant MATRIX_WIDTH : integer := BYTE_SIZE * NUM_COLS;

  constant SOBEL_MASK_G_X : SOBEL_MASK := (-1, 1, -2, 2, -1, 1);
  constant SOBEL_MASK_G_Y : SOBEL_MASK := (1, 2, 1, -1, -2, -1);
end constants;
