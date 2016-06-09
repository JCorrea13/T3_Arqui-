library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_signed.all;
use IEEE.std_logic_arith.all;
use work.p_MR2.all;

library IEEE;
use IEEE.std_logic_1164.all;
package estadosSerialRX is
	type ESTADOS_RX is (espera_Dato, recepcion_Dato, espera_Ack_Cpu);
end estadosSerialRX;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.estadosSerialRX.all;

entity Rx is
	port(
		ck, rst: in std_logic;
		datosRecibidos: out std_logic_vector(7 downto 0);
		datos: in std_logic;
		send: out std_logic;
		ack: in std_logic
	);
end Rx;

architecture Rx of Rx is
signal P82: std_logic_vector(11 downto 0):= (others => '0');
signal estado: ESTADOS_RX;
begin
	
Recepcion: process(ck,rst)
	variable cont: integer;
		begin
			if rst = '1' then 
				cont:= 12;
				estado<= espera_Dato;
			elsif ck'event and ck = '1' then
					case estado is
						when espera_Dato =>
								
							if datos = '0' then 	--//Verificamos el "start bit" y comenzamos 
								P82(cont)<= datos;--//la recepcion de todo el dato
								cont := cont -1;
								estado <= recepcion_Dato;
							end if;
							
						when recepcion_Dato =>--// Recibimos todo el dato
							if cont = 2 then --//Cuendo el contador es 2 ya se recivio todo el dato
								datosRecibidos <= P82(10 downto 3);
								cont := 12;
								send <= '1';
								estado<= espera_Ack_Cpu;
							else
								P82(cont)<= datos;--// Recibimos los datos y los almacenamos 
								cont := cont -1;	--//	en el buffer de entrada
								estado <= recepcion_Dato;
							end if;
						when espera_Ack_Cpu => --// Esperamos que el CPU reciba la informacion
							if  ack <= '1' then
								send <= '0';
								estado<= espera_Dato;
							end if;
					end case;
					
			end if;
		end process;
end Rx;

---------------------------------------------------------------------------------------------
--								CODIGO DE TRANSMISION DE DATOS
---------------------------------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_signed.all;
use IEEE.std_logic_arith.all;
use work.p_MR2.all;

library IEEE;
use IEEE.std_logic_1164.all;
package estadosSerialTX is
	type ESTADOS_TX is (espera_Dato_CPU, transmite_Dato);
end estadosSerialTX;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.estadosSerialTX.all;

entity Tx is
	port(
		ck, rst: in std_logic;
		datosRecibidos: in std_logic_vector(7 downto 0);
		datos: out std_logic;
		ack_CPU: out std_logic;
		send_CPU: in std_logic
	);
end Tx;

architecture Tx of Tx is
signal P82: std_logic_vector(11 downto 0):= (others => '0');
signal estado: ESTADOS_TX;
begin
	
Transmision: process(ck,rst)
	variable cont: integer;
		begin
			if rst = '1' then 
				cont:= 11;
				estado<= espera_Dato_CPU;
			elsif ck'event and ck = '1' then
				case estado is
						when espera_Dato_CPU =>
							if send_CPU = '1' then
								estado <= transmite_Dato;
							end if;
						when transmite_Dato => --//Inicio de la transmision
							case cont is		
								when  11 =>									--//Start bit						
									datos <= '0';
									cont := cont -1; 
									estado <= transmite_Dato;
								when 10|9|8|7|6|5|4|3 =>				--//Bist de dato
									datos <= datosRecibidos(cont);
									cont := cont -1; 
									estado <= transmite_Dato;
								when 3 =>									--//Bit de paridad
									datos <= '0';
									cont := cont -1; 
									estado <= transmite_Dato;
								when 2|1 =>									--//Stop bits
									datos <=  '1';
									cont := cont -1; 
									estado <= transmite_Dato;
								when others =>								--//regresamos a espera_Dato_CPU
									cont := 11;
									estado <= espera_Dato_CPU;
							end case;
				end case;
			end if;
		end process;
end Tx;

