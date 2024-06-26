library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Decoder_3x8 is
    Port ( input : in  STD_LOGIC_VECTOR(2 downto 0);
           output : out  STD_LOGIC_VECTOR(7 downto 0));
end Decoder_3x8;

architecture Behavioral of Decoder_3x8 is
begin
    process (input)
    begin
        case input is
            when "000" =>
                output <= "10000000";
            when "001" =>
                output <= "01000000";
            when "010" =>
                output <= "00100000";
            when "011" =>
                output <= "00010000";
            when "100" =>
                output <= "00001000";
            when "101" =>
                output <= "00000100";
            when "110" =>
                output <= "00000010";
            when "111" =>
                output <= "00000001";
            when others =>
                output <= "00000000"; -- Default case
        end case;
    end process;
end Behavioral;