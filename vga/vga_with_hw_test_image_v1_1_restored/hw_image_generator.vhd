LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.numeric_std.all;

ENTITY hw_image_generator IS
	GENERIC(
		pixels_y :	INTEGER := 1920;    --row that first color will persist until
		pixels_x	:	INTEGER := 1080;    --column that first color will persist until
		rowMin   :  INTEGER := 440;
		rowMax   :  INTEGER := 692;
		columnMin :  INTEGER := 154;
		columnMax :  INTEGER := 358);
		--test : INTEGER := 440);
	PORT(
		disp_ena		:	IN		STD_LOGIC;	--display enable ('1' = display time, '0' = blanking time)
		row			:	IN		INTEGER;		--row pixel coordinate
		column		:	IN		INTEGER;		--column pixel coordinate
		reset			:  IN    STD_LOGIC;  --reset the game
		--clk			:  IN    STD_LOGIC;
		
		sw0				:  IN    STD_LOGIC; -- button 1 input
		-- 7 is the MSB, carries the most weight when changing colors.
		red			:	OUT	STD_LOGIC_VECTOR(7 DOWNTO 0) := (OTHERS => '0');  --red magnitude output to DAC
		green			:	OUT	STD_LOGIC_VECTOR(7 DOWNTO 0) := (OTHERS => '0');  --green magnitude output to DAC
		blue			:	OUT	STD_LOGIC_VECTOR(7 DOWNTO 0) := (OTHERS => '0')); --blue magnitude output to DAC
END hw_image_generator;

ARCHITECTURE behavior OF hw_image_generator IS
	signal columnVector : unsigned(8 downto 0) := (OTHERS => '0'); --000000000
BEGIN
	PROCESS(disp_ena, row, column)
	VARIABLE test : INTEGER;
	VARIABLE test2 : INTEGER;
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
			-- game logic
		IF(sw0 = '1') THEN
		columnVector <= columnVector + 1;
		END IF;
		
		--rowMin   :  INTEGER := 440;
		--rowMax   :  INTEGER := 692;
		--columnMin:  INTEGER := 154;
		--columnMax:  INTEGER := 358
		
	-- A
	IF(columnVector = "000000000") THEN
		IF(row > rowMin AND row < rowMax AND column > columnMin AND column < columnMax) THEN
					red <= (6 => '1',
							  OTHERS => '0');
					green	<= (6 => '1',
								 OTHERS => '0');
					blue <= (6 => '1',
								OTHERS => '0');
				END IF;
		ELSIF(columnVector = "000000001") THEN
		IF(row > (rowMin + 306) AND row < (rowMax + 306) AND column > columnMin AND column < columnMax) THEN
					red <= (6 => '1',
							  OTHERS => '0');
					green	<= (6 => '1',
								 OTHERS => '0');
					blue <= (6 => '1',
								OTHERS => '0');
		END IF; -- end columnVector = "000000010"
		END IF; -- end columnVector = "000000001"
			ELSE
			red <= (OTHERS => '0');
			green <= (OTHERS => '0');
			blue <= (OTHERS => '0');
		END IF; -- disp_enable if statement
	END PROCESS;
END behavior;