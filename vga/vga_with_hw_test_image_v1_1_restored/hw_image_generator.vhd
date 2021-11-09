-- Riley Taylor
-- Zack Burton
-- Professor Hartup
-- Due Date: End of November 2021
-- ECE287 Final Project tic-tac-toe
-- In this project we will be constructing a tic-tac-toe board using the de2-115 Altera board.
-- A VGA will be used to display the game to a screen so the user's can play the game.
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

	PORT(
		disp_ena		:	IN		STD_LOGIC;	--display enable ('1' = display time, '0' = blanking time)
		row			:	IN		INTEGER;		--row pixel coordinate
		column		:	IN		INTEGER;		--column pixel coordinate
		reset			:  IN    STD_LOGIC;  --reset the game
		clock			:  IN    STD_LOGIC;	
		b1		:  IN    STD_LOGIC;  -- button 1 input, pin_M23
		
		-- 7 is the MSB, carries the most weight when changing colors.
		r1			:	OUT 	STD_LOGIC;
		red			:	OUT	STD_LOGIC_VECTOR(7 DOWNTO 0) := (OTHERS => '0');  --red magnitude output to DAC
		green			:	OUT	STD_LOGIC_VECTOR(7 DOWNTO 0) := (OTHERS => '0');  --green magnitude output to DAC
		blue			:	OUT	STD_LOGIC_VECTOR(7 DOWNTO 0) := (OTHERS => '0')); --blue magnitude output to DAC
END hw_image_generator;

ARCHITECTURE behavior OF hw_image_generator IS

BEGIN
	-- led will light when button is pressed
	r1 <= Not b1;
	
	PROCESS(disp_ena, row, column, clock)
	
		VARIABLE columnNum : INTEGER range 0 to 8; -- loops through A -> I should work as a counter
		VARIABLE buttonState : BOOLEAN := false;
	
	BEGIN
		IF(disp_ena = '1') THEN		--display time
			
			-----------------------
			-- SCREEN BACKGROUND --
			-----------------------

			-- row will be filled up to 1920 pixels (the x-axis)
			-- column will be filled up to 1080 pixels (the y-axis)
			IF(row < pixels_y AND column < pixels_x) THEN
				red <= (OTHERS => '0');
				green	<= (OTHERS => '1');
				blue <= (OTHERS => '1');
			END IF;
				
			-------------------------------
			-- VERTICAL GAME BOARD LINES --
			-------------------------------
			
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
			
			
			
			---------------------------------
			-- HORIZONTAL GAME BOARD LINES --
			---------------------------------
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
		
		--------------------------------
		---------- Game Logic ----------
		--------------------------------		
		
				IF rising_edge(clock) THEN
					IF b1 = '0' and buttonState = false THEN -- button is 0 when pressed
						buttonState := not buttonState; -- buttonState logic to prevent button bouncing
						columnNum := columnNum + 1;
						IF columnNum > 8 THEN
								columnNum := 0;
							END IF;
						ELSIF b1 = '1' and buttonState = true THEN
							buttonState := not buttonState;
				END IF; -- b1 if statement
			END IF; -- end rising_edge if statement
		
	-- A
	IF(columnNum = 0) THEN -- checks if box is in A's position
		IF(row > rowMin AND row < rowMax AND column > columnMin AND column < columnMax) THEN
			red <= (6 => '1',
					  OTHERS => '0');
			green	<= (6 => '1',
						 OTHERS => '0');
			blue <= (6 => '1',
						OTHERS => '0');
		END IF;
		
	-- B
	ELSIF(columnNum = 1) THEN -- checks if box is in B's position
		IF(row > (rowMin + 394) AND row < (rowMax + 394) AND column > columnMin AND column < columnMax) THEN
			red <= (6 => '1',
					  OTHERS => '0');
			green	<= (6 => '1',
						 OTHERS => '0');
			blue <= (6 => '1',
						OTHERS => '0');
		END IF;
		
	-- C
	ELSIF(columnNum = 2) THEN -- checks if box is in C's position
		IF(row > (rowMin + 788) AND row < (rowMax + 788) AND column > columnMin AND column < columnMax) THEN
			red <= (6 => '1',
					  OTHERS => '0');
			green	<= (6 => '1',
						 OTHERS => '0');
			blue <= (6 => '1',
						OTHERS => '0');
		END IF;
		
	-- D
	ELSIF(columnNum = 3) THEN -- checks if box is in D's position
		IF(row > rowMin AND row < rowMax AND column > (columnMin + 284) AND column < (columnMax + 284)) THEN
			red <= (6 => '1',
					  OTHERS => '0');
			green	<= (6 => '1',
						 OTHERS => '0');
			blue <= (6 => '1',
						OTHERS => '0');
		END IF;
		
	-- E
	ELSIF(columnNum = 4) THEN -- checks if box is in E's position
		IF(row > (rowMin + 394) AND row < (rowMax + 394) AND column > (columnMin + 284) AND column < (columnMax + 284)) THEN
			red <= (6 => '1',
					  OTHERS => '0');
			green	<= (6 => '1',
						 OTHERS => '0');
			blue <= (6 => '1',
						OTHERS => '0');
		END IF;
		
	-- F
	ELSIF(columnNum = 5) THEN -- checks if box is in F's position
		IF(row > (rowMin + 788) AND row < (rowMax + 788) AND column > (columnMin + 284) AND column < (columnMax + 284)) THEN
			red <= (6 => '1',
					  OTHERS => '0');
			green	<= (6 => '1',
						 OTHERS => '0');
			blue <= (6 => '1',
						OTHERS => '0');
		END IF;
		
	-- G
	ELSIF(columnNum = 6) THEN -- checks if box is in G's position
		IF(row > rowMin AND row < rowMax AND column > (columnMin + 568) AND column < (columnMax + 568)) THEN
			red <= (6 => '1',
					  OTHERS => '0');
			green	<= (6 => '1',
						 OTHERS => '0');
			blue <= (6 => '1',
						OTHERS => '0');
		END IF;
		
	-- H
	ELSIF(columnNum = 7) THEN -- checks if box is in H's position
		IF(row > (rowMin + 394) AND row < (rowMax + 394) AND column > (columnMin + 568) AND column < (columnMax + 568)) THEN
			red <= (6 => '1',
					  OTHERS => '0');
			green	<= (6 => '1',
						 OTHERS => '0');
			blue <= (6 => '1',
						OTHERS => '0');
		END IF;
		
	-- I
	ELSIF(columnNum = 8) THEN -- checks if box is in I's position
		IF(row > (rowMin + 788) AND row < (rowMax + 788) AND column > (columnMin + 568) AND column < (columnMax + 568)) THEN
			red <= (6 => '1',
					  OTHERS => '0');
			green	<= (6 => '1',
						 OTHERS => '0');
			blue <= (6 => '1',
						OTHERS => '0');
		END IF;
		
	END IF; -- end all checks
			ELSE -- fail safe
			red <= (OTHERS => '0');
			green <= (OTHERS => '0');
			blue <= (OTHERS => '0');
		END IF; -- disp_enable if statement
	END PROCESS;
END behavior;