-------------------------------------------------------------------------
--
-- 32 bits PROCESSOR TESTBENCH    LITTLE  ENDIAN      13/october/2004
--
-- It must be observed that the processor is hold in reset
-- (rstCPU <= '1') at the start of simulation, being activated
-- (rstCPU <= '0') just after the end of the object file reading be the
-- testbench.
--
-- This testbench employs two memories implying a HARVARD organization
--
-------------------------------------------------------------------------

library IEEE;
use IEEE.Std_Logic_1164.all;

package aux_functions is  

	subtype blocoCacheL2 is std_logic_vector(80 downto 0);
   subtype reg64			is std_logic_vector(63 downto 0);
	subtype reg32  		is std_logic_vector(31 downto 0);
   subtype reg16  		is std_logic_vector(15 downto 0);
   subtype reg8   		is std_logic_vector( 7 downto 0);
   subtype reg4   		is std_logic_vector( 3 downto 0);

   -- definio do tipo 'memory', que ser utilizado para as memrias de dados/instrues
   constant MEMORY_SIZE : integer := 2048;     
   type memory is array (0 to MEMORY_SIZE) of reg8; --Tipo Memoria Principal--Palabra de 8 bits

   constant TAM_LINHA : integer := 200;
   
   function CONV_VECTOR( letra : string(1 to TAM_LINHA);  pos: integer ) return std_logic_vector;
   
end aux_functions;

package body aux_functions is

  --
  -- converte um caracter de uma dada linha em um std_logic_vector
  --
  function CONV_VECTOR( letra:string(1 to TAM_LINHA);  pos: integer ) return std_logic_vector is         
     variable bin: reg4;
   begin
      case (letra(pos)) is  
              when '0' => bin := "0000";
              when '1' => bin := "0001";
              when '2' => bin := "0010";
              when '3' => bin := "0011";
              when '4' => bin := "0100";
              when '5' => bin := "0101";
              when '6' => bin := "0110";
              when '7' => bin := "0111";
              when '8' => bin := "1000";
              when '9' => bin := "1001";
              when 'A' | 'a' => bin := "1010";
              when 'B' | 'b' => bin := "1011";
              when 'C' | 'c' => bin := "1100";
              when 'D' | 'd' => bin := "1101";
              when 'E' | 'e' => bin := "1110";
              when 'F' | 'f' => bin := "1111";
              when others =>  bin := "0000";  
      end case;
     return bin;
  end CONV_VECTOR;

end aux_functions;   

--------------------------------------------------------------------------
-- Module implementing a behavioral model of an ASYNCHRONOUS INTERFACE RAM
--------------------------------------------------------------------------
library IEEE;
use ieee.std_logic_1164.all;
use ieee.STD_LOGIC_UNSIGNED.all;
use work.aux_functions.all;

entity RAM_mem_Data is
      generic(  START_ADDRESS: reg32 := (others=>'0')  );
      port(ck, ce_n, we_n, oe_n, bw: in std_logic;    address: in reg32;   data: inout reg32);
end RAM_mem_Data;

architecture RAM_mem_Data of RAM_mem_Data is 
   signal RAM : memory;
   signal tmp_address: reg32;
   alias  low_address: reg16 is tmp_address(15 downto 0);    --  baixa para 16 bits devido ao CONV_INTEGER --
begin     

   tmp_address <= address - START_ADDRESS;   --  offset do endereamento  -- 
   
   -- writes in memory ASYNCHRONOUSLY  -- LITTLE ENDIAN -------------------
   process(ck, ce_n, we_n, low_address, data)
     begin
		  if ck'event and ck = '1' then
			 if ce_n='0' and we_n='0' then
				 if CONV_INTEGER(low_address)>=0 and CONV_INTEGER(low_address+3)<=MEMORY_SIZE then
						if bw='1' then
							 RAM(CONV_INTEGER(low_address+3)) <= data(31 downto 24);
							 RAM(CONV_INTEGER(low_address+2)) <= data(23 downto 16);
							 RAM(CONV_INTEGER(low_address+1)) <= data(15 downto  8);
						end if;
						RAM(CONV_INTEGER(low_address  )) <= data( 7 downto  0); 
				 end if;
				end if;
		 end if;
    end process;   
    
   -- read from memory
   process(ck, ce_n, oe_n, low_address)
	begin
		if ck'event and ck = '1' then
			  if ce_n='0' and oe_n='0' and
				 CONV_INTEGER(low_address)>=0 and CONV_INTEGER(low_address+3)<=MEMORY_SIZE then
					data(31 downto 24) <= RAM(CONV_INTEGER(low_address+3));
					data(23 downto 16) <= RAM(CONV_INTEGER(low_address+2));
					data(15 downto  8) <= RAM(CONV_INTEGER(low_address+1));
					data( 7 downto  0) <= RAM(CONV_INTEGER(low_address	 ));
			  else
					data(31 downto 24) <= (others=>'Z');
					data(23 downto 16) <= (others=>'Z');
					data(15 downto  8) <= (others=>'Z');
					data( 7 downto  0) <= (others=>'Z');
			  end if;
		end if;
   end process;   

end RAM_mem_Data;
  
--------------------------------------------------------------------------
-- Module implementing a behavioral model of an ASYNCHRONOUS INTERFACE RAM
--------------------------------------------------------------------------
library IEEE;
use ieee.std_logic_1164.all;
use ieee.STD_LOGIC_UNSIGNED.all;
use work.aux_functions.all;

entity RAM_mem is
      generic(  START_ADDRESS: reg32 := (others=>'0')  );
      port(ck, ce_n, we_n, oe_n, bw: in std_logic;    address: in reg32;   data: inout reg64);
end RAM_mem;

architecture RAM_mem of RAM_mem is 
   signal RAM : memory;
   signal tmp_address: reg32;
   alias  low_address: reg16 is tmp_address(15 downto 0);    --  baixa para 16 bits devido ao CONV_INTEGER --
begin     

   tmp_address <= address - START_ADDRESS;   --  offset do endereamento  -- 
   
   -- writes in memory ASYNCHRONOUSLY  -- LITTLE ENDIAN -------------------
   process(ck, ce_n, we_n, low_address, data)
     begin
		  if ck'event and ck = '1' then
			 if ce_n='0' and we_n='0' then
				 if CONV_INTEGER(low_address)>=0 and CONV_INTEGER(low_address+3)<=MEMORY_SIZE then
						if bw='1' then
							 RAM(CONV_INTEGER(low_address+3)) <= data(31 downto 24);
							 RAM(CONV_INTEGER(low_address+2)) <= data(23 downto 16);
							 RAM(CONV_INTEGER(low_address+1)) <= data(15 downto  8);
						end if;
						RAM(CONV_INTEGER(low_address  )) <= data( 7 downto  0); 
				 end if;
				end if;
		 end if;
    end process;   
    
   -- read from memory
   process(ck, ce_n, oe_n, low_address)
	begin
		if ck'event and ck = '1' then
			  if ce_n='0' and oe_n='0' and
				 CONV_INTEGER(low_address)>=0 and CONV_INTEGER(low_address+3)<=MEMORY_SIZE then
					
					data(63 downto 56) <= RAM(CONV_INTEGER(low_address+7));
					data(55 downto 48) <= RAM(CONV_INTEGER(low_address+6));
					data(47 downto 40) <= RAM(CONV_INTEGER(low_address+5));
					data(39 downto 32) <= RAM(CONV_INTEGER(low_address+4));
					
					data(31 downto 24) <= RAM(CONV_INTEGER(low_address+3));
					data(23 downto 16) <= RAM(CONV_INTEGER(low_address+2));
					data(15 downto  8) <= RAM(CONV_INTEGER(low_address+1));
					data( 7 downto  0) <= RAM(CONV_INTEGER(low_address	 ));
			  else
					data(63 downto 56) <= (others=>'Z');
					data(55 downto 48) <= (others=>'Z');
					data(47 downto 40) <= (others=>'Z');
					data(39 downto 32) <= (others=>'Z');
					
					data(31 downto 24) <= (others=>'Z');
					data(23 downto 16) <= (others=>'Z');
					data(15 downto  8) <= (others=>'Z');
					data( 7 downto  0) <= (others=>'Z');
			  end if;
		end if;
   end process;   

end RAM_mem;

--------------------------------------------------------------------------
-- Module implementing CACHE-ASOCIATIVA-L2
--------------------------------------------------------------------------
library IEEE;
use ieee.std_logic_1164.all;
use ieee.STD_LOGIC_UNSIGNED.all;
use work.aux_functions.all;

entity CACHE_L2 is
      generic(  START_ADDRESS: reg32 := (others=>'0')  );
      port(Cck, Cce_n, Cwe_n, Coe_n, Cbw: in std_logic;    Caddress: in reg32;   Cdata: inout reg32);
end CACHE_L2;

architecture CACHE_L2 of CACHE_L2 is 
   
	type memory_cache is array (7 downto 0) of blocoCacheL2; --Tipo Memoria cache L2
	
	signal CACHE_DATA : memory_cache;  -- Memoria de datos
   signal tmp_address: reg32;
   alias  low_address: reg16 is tmp_address(15 downto 0);    --  baixa para 16 bits devido ao CONV_INTEGER --

	signal MPck,MPoe_n,MPbw: std_logic; -- variables para lectura de cache L2
	signal MPdata: reg64;
	signal row: reg16;
	signal tag: reg4;
	
	
begin     
   tmp_address <= Caddress - START_ADDRESS;   --  offset do endereamento  -- 
	row <= "000" & tmp_address(15 downto 3);
	tag <= "0" & tmp_address(2 downto 0);
	
	Instr_mem: entity work.RAM_mem 
		generic map( START_ADDRESS => x"00400020" )
		port map (ck=>MPck, ce_n=>Cce_n, we_n=>Cwe_n, oe_n=>MPoe_n, bw=>MPbw, address=>Caddress, data=>MPdata);
	
	
	 process -- Senial de relof para memoria principal (MP)
        begin
        MPck <= '1', '0' after 10 ns;
        wait for 40 ns;
    end process;  
    
   -- Lectura de memoria -------------------------
   process(Cck, Cce_n, Coe_n, low_address)
	  
	  variable reg_tmp: blocoCacheL2; -- Esta variable sirve para poder validar los bloques de la cache
	  variable bandera: std_logic; -- Esta bandera sirve para balidar que solo entre a un bloco
	  variable contador: integer; -- Esta variable sirve para el control de los blocos en la cache
	  
     begin
		if Cck'event and Cck = '1' then
			
			bandera := '0'; -- se inicializa la bandera en false
			MPoe_n <= '1';
			
			if Cce_n='0' and Coe_n='0' then
			---AQUI SE EFECTUA LA LECTUARA DE LA CACHE L2
				
				reg_tmp := CACHE_DATA(0);
				if reg_tmp(79 downto 67) = row and reg_tmp(66 downto 64) = tag and reg_tmp(80) = '1'
				and bandera = '0'
				then
						bandera := '1'; -- Validamos que entro en el bloco de chache
						---dependiendo el dato pedido se mandan estos cuatro registros
						if tmp_address(2) = '0' then
							Cdata(31 downto 24) <= reg_tmp(63 downto 56);
							Cdata(23 downto 16) <= reg_tmp(55 downto 48);
							Cdata(15 downto  8) <= reg_tmp(47 downto  40);
							Cdata( 7 downto  0) <= reg_tmp(39 downto  32);
						---o estos cuatro registros
						else
							Cdata(31 downto 24) <= reg_tmp(31 downto 24);
							Cdata(23 downto 16) <= reg_tmp(23 downto 16);
							Cdata(15 downto  8) <= reg_tmp(15 downto  8);
							Cdata( 7 downto  0) <= reg_tmp( 7 downto  0);
						end if;
				end if;
				
				reg_tmp := CACHE_DATA(1);
				if reg_tmp(79 downto 67) = row and reg_tmp(66 downto 64) = tag and reg_tmp(80) = '1'
				and bandera = '0'
				then
						bandera := '1'; -- Validamos que entro en el bloco de chache
						---dependiendo el dato pedido se mandan estos cuatro registros
						if tmp_address(2) = '0' then
							Cdata(31 downto 24) <= reg_tmp(63 downto 56);
							Cdata(23 downto 16) <= reg_tmp(55 downto 48);
							Cdata(15 downto  8) <= reg_tmp(47 downto  40);
							Cdata( 7 downto  0) <= reg_tmp(39 downto  32);
						---o estos cuatro registros
						else
							Cdata(31 downto 24) <= reg_tmp(31 downto 24);
							Cdata(23 downto 16) <= reg_tmp(23 downto 16);
							Cdata(15 downto  8) <= reg_tmp(15 downto  8);
							Cdata( 7 downto  0) <= reg_tmp( 7 downto  0);
						end if;
				end if;
				
				reg_tmp := CACHE_DATA(2);
				if reg_tmp(79 downto 67) = row and reg_tmp(66 downto 64) = tag and reg_tmp(80) = '1'
				and bandera = '0'
				then
						bandera := '1'; -- Validamos que entro en el bloco de chache
						---dependiendo el dato pedido se mandan estos cuatro registros
						if tmp_address(2) = '0' then
							Cdata(31 downto 24) <= reg_tmp(63 downto 56);
							Cdata(23 downto 16) <= reg_tmp(55 downto 48);
							Cdata(15 downto  8) <= reg_tmp(47 downto  40);
							Cdata( 7 downto  0) <= reg_tmp(39 downto  32);
						---o estos cuatro registros
						else
							Cdata(31 downto 24) <= reg_tmp(31 downto 24);
							Cdata(23 downto 16) <= reg_tmp(23 downto 16);
							Cdata(15 downto  8) <= reg_tmp(15 downto  8);
							Cdata( 7 downto  0) <= reg_tmp( 7 downto  0);
						end if;
				end if;
				
				reg_tmp := CACHE_DATA(3);
				if reg_tmp(79 downto 67) = row and reg_tmp(66 downto 64) = tag and reg_tmp(80) = '1'
				and bandera = '0'
				then
						bandera := '1'; -- Validamos que entro en el bloco de chache
						---dependiendo el dato pedido se mandan estos cuatro registros
						if tmp_address(2) = '0' then
							Cdata(31 downto 24) <= reg_tmp(63 downto 56);
							Cdata(23 downto 16) <= reg_tmp(55 downto 48);
							Cdata(15 downto  8) <= reg_tmp(47 downto  40);
							Cdata( 7 downto  0) <= reg_tmp(39 downto  32);
						---o estos cuatro registros
						else
							Cdata(31 downto 24) <= reg_tmp(31 downto 24);
							Cdata(23 downto 16) <= reg_tmp(23 downto 16);
							Cdata(15 downto  8) <= reg_tmp(15 downto  8);
							Cdata( 7 downto  0) <= reg_tmp( 7 downto  0);
						end if;
				end if;
				
				reg_tmp := CACHE_DATA(4);
				if reg_tmp(79 downto 67) = row and reg_tmp(66 downto 64) = tag and reg_tmp(80) = '1'
				and bandera = '0'
				then
						bandera := '1'; -- Validamos que entro en el bloco de chache
						---dependiendo el dato pedido se mandan estos cuatro registros
						if tmp_address(2) = '0' then
							Cdata(31 downto 24) <= reg_tmp(63 downto 56);
							Cdata(23 downto 16) <= reg_tmp(55 downto 48);
							Cdata(15 downto  8) <= reg_tmp(47 downto  40);
							Cdata( 7 downto  0) <= reg_tmp(39 downto  32);
						---o estos cuatro registros
						else
							Cdata(31 downto 24) <= reg_tmp(31 downto 24);
							Cdata(23 downto 16) <= reg_tmp(23 downto 16);
							Cdata(15 downto  8) <= reg_tmp(15 downto  8);
							Cdata( 7 downto  0) <= reg_tmp( 7 downto  0);
						end if;
				end if;
				
				reg_tmp := CACHE_DATA(5);
				if reg_tmp(79 downto 67) = row and reg_tmp(66 downto 64) = tag and reg_tmp(80) = '1'
				and bandera = '0'
				then
						bandera := '1'; -- Validamos que entro en el bloco de chache
						---dependiendo el dato pedido se mandan estos cuatro registros
						if tmp_address(2) = '0' then
							Cdata(31 downto 24) <= reg_tmp(63 downto 56);
							Cdata(23 downto 16) <= reg_tmp(55 downto 48);
							Cdata(15 downto  8) <= reg_tmp(47 downto  40);
							Cdata( 7 downto  0) <= reg_tmp(39 downto  32);
						---o estos cuatro registros
						else
							Cdata(31 downto 24) <= reg_tmp(31 downto 24);
							Cdata(23 downto 16) <= reg_tmp(23 downto 16);
							Cdata(15 downto  8) <= reg_tmp(15 downto  8);
							Cdata( 7 downto  0) <= reg_tmp( 7 downto  0);
						end if;
				end if;
				
				reg_tmp := CACHE_DATA(6);
				if reg_tmp(79 downto 67) = row and reg_tmp(66 downto 64) = tag and reg_tmp(80) = '1'
				and bandera = '0'
				then
						bandera := '1'; -- Validamos que entro en el bloco de chache
						---dependiendo el dato pedido se mandan estos cuatro registros
						if tmp_address(2) = '0' then
							Cdata(31 downto 24) <= reg_tmp(63 downto 56);
							Cdata(23 downto 16) <= reg_tmp(55 downto 48);
							Cdata(15 downto  8) <= reg_tmp(47 downto  40);
							Cdata( 7 downto  0) <= reg_tmp(39 downto  32);
						---o estos cuatro registros
						else
							Cdata(31 downto 24) <= reg_tmp(31 downto 24);
							Cdata(23 downto 16) <= reg_tmp(23 downto 16);
							Cdata(15 downto  8) <= reg_tmp(15 downto  8);
							Cdata( 7 downto  0) <= reg_tmp( 7 downto  0);
						end if;
				end if;
				
				reg_tmp := CACHE_DATA(7);
				if reg_tmp(79 downto 67) = row and reg_tmp(66 downto 64) = tag and reg_tmp(80) = '1'
				and bandera = '0'
				then
						bandera := '1'; -- Validamos que entro en el bloco de chache
						---dependiendo el dato pedido se mandan estos cuatro registros
						if tmp_address(2) = '0' then
							Cdata(31 downto 24) <= reg_tmp(63 downto 56);
							Cdata(23 downto 16) <= reg_tmp(55 downto 48);
							Cdata(15 downto  8) <= reg_tmp(47 downto  40);
							Cdata( 7 downto  0) <= reg_tmp(39 downto  32);
						---o estos cuatro registros
						else
							Cdata(31 downto 24) <= reg_tmp(31 downto 24);
							Cdata(23 downto 16) <= reg_tmp(23 downto 16);
							Cdata(15 downto  8) <= reg_tmp(15 downto  8);
							Cdata( 7 downto  0) <= reg_tmp( 7 downto  0);
						end if;
				end if;
				
				-------------------------EL DATO NO ESTA EN LA CACHE------------------------------
				if bandera = '0' then 
					--- SE BUSCA EN EL NIVEL DE ABAJO
					
					MPoe_n <= '0'; -- mandamos la senial de datos
					
					--------- GUARDAMOS TODO EL BLOCO DE MP EN CACHE ---------------------
					reg_tmp := '1' & MPdata(63 downto 0) & low_address(15 downto 0);
					CACHE_DATA(contador) <= reg_tmp; -- los asignamos al bloco correspondiente (siguiente contador) en la cache
					
					--------- REGRESAMOS EL DATO AL NIVEL DE ARRIBA ---------------------
					if tmp_address(2) = '0' then
							Cdata(31 downto 24) <= reg_tmp(63 downto 56);
							Cdata(23 downto 16) <= reg_tmp(55 downto 48);
							Cdata(15 downto  8) <= reg_tmp(47 downto  40);
							Cdata( 7 downto  0) <= reg_tmp(39 downto  32);
						---o estos cuatro registros
					else
							Cdata(31 downto 24) <= reg_tmp(31 downto 24);
							Cdata(23 downto 16) <= reg_tmp(23 downto 16);
							Cdata(15 downto  8) <= reg_tmp(15 downto  8);
							Cdata( 7 downto  0) <= reg_tmp( 7 downto  0);
					end if;
					
					----------- VALIDAMOS EL CONTADOR DE BLOCOS EN LA CACHE -----------
					contador := contador  + 1;
					if contador = 8 then
						contador := 0;
					end if;
					
					------------ REGRESAMOS LA BANDERA A 0 ----------------------------
					bandera := '0';
					MPoe_n <= '1';
				end if;
			end if;
		end if;
   end process;

end CACHE_L2;

-------------------------------------------------------------------------
--  CPU PROCESSOR SIMULATION TESTBENCH
-------------------------------------------------------------------------
library ieee;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;          
use STD.TEXTIO.all;
use work.aux_functions.all;

entity CPU_tb is
end CPU_tb;

architecture cpu_tb of cpu_tb is
    
    signal Dadress, Iadress, Idata, Ddata,
           i_cpu_address, d_cpu_address, data_cpu, tb_add, tb_data : reg32 := (others => '0' );
	 
    signal Dce_n, Dwe_n, Doe_n, Ice_n, Iwe_n, Ioe_n, ck, rst, rstCPU, hold, 
           go_i, go_d, ce, rw, bw: std_logic;
    
    file ARQ : TEXT open READ_MODE is "buublesort.log";
 
begin
           
    Data_mem:  entity work.RAM_mem_Data 
               generic map( START_ADDRESS => x"10010000" )
               port map (ck=>ck ,ce_n=>Dce_n, we_n=>Dwe_n, oe_n=>Doe_n, bw=>bw, address=>Dadress, data=>Ddata);
                                            
    Instr_mem: entity work.CACHE_L2 
               generic map( START_ADDRESS => x"00400020" )
               port map (Cck=>ck, Cce_n=>Ice_n, Cwe_n=>Iwe_n, Coe_n=>Ioe_n, Cbw=>'1', Caddress=>Iadress, Cdata=>Idata);
        
    hold <= '0';                                 

    -- data memory signals --------------------------------------------------------
    Dce_n <= '0' when  ce='1' or go_d='1'             else '1';
    Doe_n <= '0' when (ce='1' and rw='1')             else '1';       
    Dwe_n <= '0' when (ce='1' and rw='0') or go_d='1' else '1';    

    Dadress <= tb_add  when rstCPU='1' else d_cpu_address;
    Ddata   <= tb_data when rstCPU='1' else data_cpu when (ce='1' and rw='0') else (others=>'Z'); 
    
    data_cpu <= Ddata when (ce='1' and rw='1') else (others=>'Z');
    
    -- instructions memory signals --------------------------------------------------------
    Ice_n <= '0';                                 
    Ioe_n <= '1' when rstCPU='1' else '0';           -- impede leitura enquanto est escrevendo                             
    Iwe_n <= '0' when go_i='1'   else '1';           -- escrita durante a leitura do arquivo 
    
    Iadress <= tb_add  when rstCPU='1' else i_cpu_address;
    Idata   <= tb_data when rstCPU='1' else (others => 'Z'); 
  

    cpu: entity work.MRstd  port map(
              clock=>ck, reset=>rstCPU,	hold=>hold,
              i_address => i_cpu_address,
              instruction => Idata,
              ce=>ce,  rw=>rw,  bw=>bw,
              d_address => d_cpu_address,
              data => data_cpu
        ); 

    rst <='1', '0' after 25 ns;       -- generates the reset signal 

    process                          -- generates the clock signal 
        begin
        ck <= '1', '0' after 10 ns;
        wait for 20 ns;
    end process;

    
    ----------------------------------------------------------------------------
    -- this process loads the instruction memory and the data memory during reset
    --
    --
    --   O PROCESSO ABAIXO  UMA PARSER PARA LER CDIGO GERADO PELO SPIM NO
    --   SEGUINTE FORMATO:
    --
    --      .CODE
    --      [0x00400020]        0x3c011001  lui $1, 4097 [d2]               ; 16: la    $t0, d2
    --      [0x00400024]        0x34280004  ori $8, $1, 4 [d2]
    --      [0x00400028]        0x8d080000  lw $8, 0($8)                    ; 17: lw    $t0,0($t0)
    --      .....
    --      [0x00400048]        0x0810000f  j 0x0040003c [loop]             ; 30: j     loop
    --      [0x0040004c]        0x01284821  addu $9, $9, $8                 ; 32: addu $t1, $t1, $t0
    --      [0x00400050]        0x08100014  j 0x00400050 [x]                ; 34: j     x
    --      .DATA
    --      [0x10010000]                        0x0000faaa  0x00000083  0x00000000  0x00000000
    --
    ----------------------------------------------------------------------------
    process
        variable ARQ_LINE : LINE;
        variable line_arq : string(1 to 200);
        variable code     : boolean;
        variable i, address_flag : integer;
    begin  
        go_i <= '0';
        go_d <= '0';
        rstCPU <= '1';           -- hold the processor during file reading
        code:=true;              -- default value of code is 1 (CODE)
                                 
        wait until rst = '1';
        
        while NOT (endfile(ARQ)) loop    -- INCIO DA LEITURA DO ARQUIVO CONTENDO INSTRUO E DADOS -----
            readline(ARQ, ARQ_LINE);      
            read(ARQ_LINE, line_arq(1 to  ARQ_LINE'length) );
                        
            if line_arq(1 to 5)=".CODE" then 
                   code:=true;                     -- code 
            elsif line_arq(1 to 5)=".DATA" then
                   code:=false;                    -- data 
            else 
               i := 1;                                  -- LEITORA DE LINHA - analizar o loop abaixo para compreender 
               address_flag := 0;                       -- para INSTRUO  um para (end,inst)
                                                        -- para DADO aceita (end, dado 0, dado 1, dado 2 ....)
               loop                                     
                  if line_arq(i) = '0' and line_arq(i+1) = 'x' then      -- encontrou indicao de nmero hexa: '0x'
                         i := i + 2;
                         if address_flag=0 then
                               for w in 0 to 7 loop
                                   tb_add( (31-w*4) downto (32-(w+1)*4))  <= CONV_VECTOR(line_arq,i+w);
                               end loop;    
                               i := i + 8; 
                               address_flag := 1;
                         else
                               for w in 0 to 7 loop
                                   tb_data( (31-w*4) downto (32-(w+1)*4))  <= CONV_VECTOR(line_arq,i+w);
                               end loop;    
                               i := i + 8;
                               
                               wait for 0.1 ns;
                               
                               if code=true then go_i <= '1';    -- the go_i signal enables instruction memory writing
                                            else go_d <= '1';    -- the go_d signal enables data memory writing
                               end if; 
                               
                               wait for 0.1 ns;
                               
                               tb_add <= tb_add + 4;       -- *great!* consigo ler mais de uma word por linha!
                               go_i <= '0';
                               go_d <= '0'; 
                               
                               address_flag := 2;    -- sinaliza que j leu o contedo do endereo;

                         end if;
                  end if;
                  i := i + 1;
                  
                  -- sai da linha quando chegou no seu final OU j leu par(endereo, instruo) no caso de cdigo
                  exit when i=TAM_LINHA or (code=true and address_flag=2);
               end loop;
            end if;
            
        end loop;                        -- FINAL DA LEITURA DO ARQUIVO CONTENDO INSTRUO E DADOS -----
        
        rstCPU <= '0';   -- release the processor to execute
        wait for 2 ns;   -- To activate the RST CPU signal
        wait until rst = '1';  -- to Hold again!
        
    end process;
    
end cpu_tb;
