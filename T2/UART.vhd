library IEEE;
use IEEE.std_logic_1164.all;

use IEEE.std_logic_signed.all;
use IEEE.std_logic_arith.all;
use work.p_MR2.all;

entity UART is
	port
	(
		rst : in std_logic;
		ck : in std_logic;
		ce : in std_logic;
		rw : in std_logic;
		inta : in std_logic;
		intr : out std_logic;
		req  : out reg16;
		ack : in reg16;
		address : in reg32;
		data :inout reg32
	);
end UART;

architecture UART of UART is
-------------------------------Variables-----------
signal registro: reg16;
signal registro_Control: reg16; --Senial de Control
signal registro_Cin: reg16; --Registro de CIN
signal registro_Cout: reg16; --Registro de COUT
---------------------------------------------------
signal datosRecibidos: std_logic_vector(7 downto 0);
signal datosAEnviar: std_logic_vector(7 downto 0);
signal sendTx: std_logic;
signal ackRx: std_logic;
signal reciveRx: std_logic;

begin

ackRx <= '0';
sendTx <= '0';
registro <= registro_Control when address = x"FFE00000" else 
							 registro_Cin when address = x"FFE00004" else 
							 registro_Cout when address = x"FFE00008" else 
							 (others => '0');
----------------------------------------------------------------------
	
	SerialRx: entity work.Rx port map(ck, rst, datosRecibidos, reciveRx, ack => ackRx);
	SerialTx: entity work.Tx port map(ck, rst, datosAEnviar,reciveRx,  send_CPU => sendTx);
	
	Recepcion:process(rst, reciveRx)
	begin
		if rst = '1' then
			ackRx <= '0';
		else
			registro_Cin <= x"0000" & datosRecibidos;
			ackRx <= '0';
		end if;
	end process;
----------------------------------------------------------------------

end UART;

