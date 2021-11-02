--------------------------------------------------------------------------------
--
--   FileName:         hw_image_generator.vhd
--   Dependencies:     none
--   Design Software:  Quartus II 64-bit Version 12.1 Build 177 SJ Full Version
--
--   HDL CODE IS PROVIDED "AS IS."  DIGI-KEY EXPRESSLY DISCLAIMS ANY
--   WARRANTY OF ANY KIND, WHETHER EXPRESS OR IMPLIED, INCLUDING BUT NOT
--   LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY, FITNESS FOR A
--   PARTICULAR PURPOSE, OR NON-INFRINGEMENT. IN NO EVENT SHALL DIGI-KEY
--   BE LIABLE FOR ANY INCIDENTAL, SPECIAL, INDIRECT OR CONSEQUENTIAL
--   DAMAGES, LOST PROFITS OR LOST DATA, HARM TO YOUR EQUIPMENT, COST OF
--   PROCUREMENT OF SUBSTITUTE GOODS, TECHNOLOGY OR SERVICES, ANY CLAIMS
--   BY THIRD PARTIES (INCLUDING BUT NOT LIMITED TO ANY DEFENSE THEREOF),
--   ANY CLAIMS FOR INDEMNITY OR CONTRIBUTION, OR OTHER SIMILAR COSTS.
--
--   Version History
--   Version 1.0 05/10/2013 Scott Larson
--     Initial Public Release
--    
--------------------------------------------------------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY hw_image_generator IS
	GENERIC(
		pixels_y :	INTEGER := 1920;    --row that first color will persist until
		pixels_x	:	INTEGER := 1080);    --column that first color will persist until
	PORT(
		disp_ena		:	IN		STD_LOGIC;	--display enable ('1' = display time, '0' = blanking time)
		row			:	IN		INTEGER;		--row pixel coordinate
		column		:	IN		INTEGER;		--column pixel coordinate
		
		-- 7 is the MSB, carries the most weight when changing colors.
		red			:	OUT	STD_LOGIC_VECTOR(7 DOWNTO 0) := (OTHERS => '0');  --red magnitude output to DAC
		green			:	OUT	STD_LOGIC_VECTOR(7 DOWNTO 0) := (OTHERS => '0');  --green magnitude output to DAC
		blue			:	OUT	STD_LOGIC_VECTOR(7 DOWNTO 0) := (OTHERS => '0')); --blue magnitude output to DAC
END hw_image_generator;

ARCHITECTURE behavior OF hw_image_generator IS
BEGIN
	PROCESS(disp_ena, row, column)
	BEGIN

		IF(disp_ena = '1') THEN		--display time
		
			----------------
			-- BACKGROUND --
			----------------
				-- 1 1 1 creates white?
			-- row will be filled up to 1920 pixels (the x-axis)
			-- column will be filled up to 1080 pixels (the y-axis)
			IF(row < pixels_y AND column < pixels_x) THEN
				red <= (OTHERS => '0');
				green	<= (OTHERS => '1');
				blue <= (OTHERS => '1');
				END IF;
				
			--------------------	
			-- VERTICAL LINES --
			--------------------
			-- displacement of 696 pixels from the left to the right.
				--  696 < row < 744 line position and thickness.
			-- displacement of 150 pixels from top and bottom.
				-- 150 < column < 930 line position vertically.
				-- 1080 - 150 = 930 (Displacement from TOP)
				-- 0 + 150 = 150 (Displacement from BOTTOM)
				
				-- TEST VALUES:
					-- Light gray
						-- red(7) => 1
						-- green(7) => 1
						-- blue(7) => 1
						-- OTHERS => 0
					-- Dark gray -- CURRENT VALUE FOR BOARD LINES
						-- red(6) => 1
						-- green(6) => 1
						-- blue(6) => 1
						-- OTHERS => 0
			IF(row > 696 AND row < 744 AND column < 930 AND column > 150) THEN
				red <= (6 => '1',
						  OTHERS => '0');
				green	<= (6 => '1',
							 OTHERS => '0');
				blue <= (6 => '1',
							OTHERS => '0');
			END IF;
			
			-- displacement of 1176 pixels from the left to the right.
				--  1176 < row < 1224 line position and thickness.
			-- displacement of 150 pixels from top and bottom.
				-- 150 < column < 930 line position vertically.
				-- 1080 - 150 = 930 (Displacement from TOP)
				-- 0 + 150 = 150 (Displacement from BOTTOM)
			IF(row > 1176 AND row < 1224 AND column < 930 AND column > 150) THEN
				red <= (6 => '1',
						  OTHERS => '0');
				green	<= (6 => '1',
							 OTHERS => '0');
				blue <= (6 => '1',
							OTHERS => '0');
			END IF;
			
			
			
			----------------------
			-- HORIZONTAL LINES --
			----------------------
			IF(row > 436 AND row < 1484 AND column < 410 AND column > 362) THEN
				red <= (6 => '1',
						  OTHERS => '0');
				green	<= (6 => '1',
							 OTHERS => '0');
				blue <= (6 => '1',
							OTHERS => '0');
			END IF;
			
			IF(row > 436 AND row < 1484 AND column < 718 AND column > 670) THEN
				red <= (6 => '1',
						  OTHERS => '0');
				green	<= (6 => '1',
							 OTHERS => '0');
				blue <= (6 => '1',
							OTHERS => '0');
			END IF;
		
		-- blanking time
		ELSE
			red <= (OTHERS => '0');
			green <= (OTHERS => '0');
			blue <= (OTHERS => '0');
		END IF;
	
	END PROCESS;
END behavior;