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
		pixels_y 				:	INTEGER := 1920;    --row that first color will persist until
		pixels_x					:	INTEGER := 1080;    --column that first color will persist until
		movingBlockRowMin		:  INTEGER := 465;
		movingBlockrowMax		:  INTEGER := 667;
		movingBlockcolumnMin :  INTEGER := 179;
		movingBlockcolumnMax :  INTEGER := 333;
		rowMin   				:  INTEGER := 440;
		rowMax   				:  INTEGER := 692;
		columnMin 				:  INTEGER := 154;
		columnMax 				:  INTEGER := 358);

	PORT(
		disp_ena			:	IN		STD_LOGIC;	--display enable ('1' = display time, '0' = blanking time)
		row				:	IN		INTEGER;		--row pixel coordinate
		column			:	IN		INTEGER;		--column pixel coordinate
		reset				:  IN    STD_LOGIC;  --reset the game
		clock				:  IN    STD_LOGIC;	--50Mhz clock
		b1					:  IN    STD_LOGIC;  -- button 1 input, pin_M23
		confirmButton	:	IN 	STD_LOGIC; 	-- button 2 input
		
		-- 7 is the MSB, carries the most weight when changing colors.
		ha0 : OUT STD_LOGIC := '1'; -- hex display HEX0
		hb0 : OUT STD_LOGIC := '1';
		hc0 : OUT STD_LOGIC := '1';
		hd0 : OUT STD_LOGIC := '1';
		he0 : OUT STD_LOGIC := '1';
		hf0 : OUT STD_LOGIC := '1';
		hg0 : OUT STD_LOGIC := '1';
		
		ha1 : OUT STD_LOGIC := '1'; -- hex display HEX1
		hb1 : OUT STD_LOGIC := '1';
		hc1 : OUT STD_LOGIC := '1';
		hd1 : OUT STD_LOGIC := '1';
		he1 : OUT STD_LOGIC := '1';
		hf1 : OUT STD_LOGIC := '1';
		hg1 : OUT STD_LOGIC := '1';
		
		ha2 : OUT STD_LOGIC := '1'; -- hex display HEX2
		hb2 : OUT STD_LOGIC := '1';
		hc2 : OUT STD_LOGIC := '1';
		hd2 : OUT STD_LOGIC := '1';
		he2 : OUT STD_LOGIC := '1';
		hf2 : OUT STD_LOGIC := '1';
		hg2 : OUT STD_LOGIC := '1';
		
		ha3 : OUT STD_LOGIC := '1'; -- hex display HEX3
		hb3 : OUT STD_LOGIC := '1';
		hc3 : OUT STD_LOGIC := '1';
		hd3 : OUT STD_LOGIC := '1';
		he3 : OUT STD_LOGIC := '1';
		hf3 : OUT STD_LOGIC := '1';
		hg3 : OUT STD_LOGIC := '1';
		
		r1			:	OUT 	STD_LOGIC;
		r2			:	OUT	STD_LOGIC;
		red		:	OUT	STD_LOGIC_VECTOR(7 DOWNTO 0) := (OTHERS => '0');  --red magnitude output to DAC
		green		:	OUT	STD_LOGIC_VECTOR(7 DOWNTO 0) := (OTHERS => '0');  --green magnitude output to DAC
		blue		:	OUT	STD_LOGIC_VECTOR(7 DOWNTO 0) := (OTHERS => '0')); --blue magnitude output to DAC
END hw_image_generator;

ARCHITECTURE behavior OF hw_image_generator IS
	BEGIN
		-- led confirmations on board to show user button presses.
		r1 <= Not b1;
		r2 <= Not confirmButton;
	
	--------------------------------------------
	-- PROCESS
	-- Includes VGA and Game code.
	-- Will display a playable version of classic tic-tac-toe.
	--------------------------------------------
	PROCESS(disp_ena, row, column, clock)
		VARIABLE columnNum 						: 	INTEGER range 0 to 9; -- loops through A -> I should work as a counter
		VARIABLE buttonState 					: 	BOOLEAN := false;
		VARIABLE buttonStateConfirm 			: 	BOOLEAN := false;
		VARIABLE resetState 						: 	BOOLEAN := false;
		VARIABLE A, B, C, D, E, F, G, H, I	: 	INTEGER := 0;
		VARIABLE p1									:	INTEGER := 1; -- player 1 is active at program begin
		VARIABLE p2									:	INTEGER := 0; -- player 2 is inactive at program begin
	BEGIN
	
		IF(disp_ena = '1') THEN		--display time
			
			---------------------------------------------------------------------
			------------------------- SCREEN BACKGROUND -------------------------
			---------------------------------------------------------------------

			-- row will be filled up to 1920 pixels (the x-axis)
			-- column will be filled up to 1080 pixels (the y-axis)
			IF(row < pixels_y AND column < pixels_x) THEN
				red <= (OTHERS => '1');
				green	<= (OTHERS => '1');
				blue <= (OTHERS => '1');
			END IF;
				
			---------------------------------------------------------------------
			--------------------- VERTICAL GAME BOARD LINES ---------------------
			---------------------------------------------------------------------
			
			-- displacement of 696 pixels from the left to the right.
				--  696 < row < 744 line position and thickness.
			-- displacement of 150 pixels from top and bottom.
				-- 150 < column < 930 line position vertically.
				-- 1080 - 150 = 930 (Displacement from TOP)
				-- 0 + 150 = 150 (Displacement from BOTTOM)
				-- TEST VALUE EXAMPLES:
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
			
			---------------------------------------------------------------------
			-------------------- HORIZONTAL GAME BOARD LINES --------------------
			---------------------------------------------------------------------
			
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
		
		---------------------------------------------------------------------
		----------------------------- Game Logic ----------------------------
		---------------------------------------------------------------------
		
		---------------------------------------------------START button logic
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
				
				IF rising_edge(clock) THEN
				IF confirmButton = '0' and buttonStateConfirm = false THEN
					buttonStateConfirm := not buttonStateConfirm;
						-- player 1's turn
						IF(columnNum = 0 AND p1 = 1 AND A = 0) THEN
							A := 1;
							p2 := 1;
							p1 := 0;	
						END IF;
						IF(columnNum = 1 AND p1 = 1  AND B = 0) THEN
							B := 1;
							p2 := 1;
							p1 := 0;
						END IF;
						IF(columnNum = 2 AND p1 = 1  AND C = 0) THEN
							C := 1;
							p2 := 1;
							p1 := 0;
						END IF;
						IF (columnNum = 3 AND p1 = 1  AND D = 0) THEN
							D := 1;
							p2 := 1;
							p1 := 0;
						END IF;
						IF (columnNum = 4 AND p1 = 1  AND E = 0) THEN
							E := 1;
							p2 := 1;
							p1 := 0;
						END IF;
						IF(columnNum = 5 AND p1 = 1  AND F = 0) THEN
							F := 1;
							p2 := 1;
							p1 := 0;
						END IF;
						IF(columnNum = 6 AND p1 = 1  AND G = 0) THEN
							G := 1;
							p2 := 1;
							p1 := 0;
						END IF;
						IF(columnNum = 7 AND p1 = 1  AND H = 0) THEN
							H := 1;
							p2 := 1;
							p1 := 0;
						END IF;
						IF(columnNum = 8 AND p1 = 1  AND I = 0) THEN
							I := 1;
							p2 := 1;
							p1 := 0;
						END IF;
						
						-- player 2's turn
						IF(columnNum = 0 AND p2 = 1 AND A = 0) THEN
							A := 2;
							p1 := 1;
							p2 := 0;
						END IF;
						IF(columnNum = 1 AND p2 = 1 AND B = 0) THEN
							B := 2;
							p1 := 1;
							p2 := 0;
						END IF;
						IF(columnNum = 2 AND p2 = 1 AND C = 0) THEN
							C := 2;
							p1 := 1;
							p2 := 0;
						END IF;
						IF (columnNum = 3 AND p2 = 1 AND D = 0) THEN
							D := 2;
							p1 := 1;
							p2 := 0;
						END IF;
						IF (columnNum = 4 AND p2 = 1 AND E = 0) THEN
							E := 2;
							p1 := 1;
							p2 := 0;
						END IF;
						IF(columnNum = 5 AND p2 = 1 AND F = 0) THEN
							F := 2;
							p1 := 1;
							p2 := 0;
						END IF;
						IF(columnNum = 6 AND p2 = 1 AND G = 0) THEN
							G := 2;
							p1 := 1;
							p2 := 0;
						END IF;
						IF(columnNum = 7 AND p2 = 1 AND H = 0) THEN
							H := 2;
							p1 := 1;
							p2 := 0;
						END IF;
						IF(columnNum = 8 AND p2 = 1 AND I = 0) THEN
							I := 2;
							p1 := 1;
							p2 := 0;
						END IF;
					ELSIF confirmButton = '1' and buttonStateConfirm = true THEN
						buttonStateConfirm := not buttonState;
					END IF; --confirmButton if statement
				END IF; -- end 2nd rising clock edge
				
			IF rising_edge(clock) THEN
				IF reset = '0' THEN-- and resetState = false THEN -- button is 0 when pressed
					--resetState := not resetState; -- reset logic to prevent button bouncing
					A := 0;
					B := 0;
					C := 0;
					D := 0;
					E := 0;
					F := 0;
					G := 0;
					H := 0;
					I := 0;
					p1 := 1;
					p2 := 0;
					columnNum := 9;
					--ELSIF reset = '1' and resetState = true THEN
					--resetState := not resetState;
				END IF; -- reset if statement	
			END IF; -- end rising_edge if statement
		--------------------------------------------------- END button logic

		--------------------------------------------------- START player 1 logic
		IF (A = 1) THEN
			IF(row > rowMin AND row < rowMax AND column > columnMin AND column < columnMax) THEN
					red <= (7 => '1',
							  OTHERS => '0');
					green	<= (OTHERS => '0');
					blue <= (OTHERS => '0');
				END IF;
			END IF; -- end if A = 1
		IF (B = 1) THEN
			IF(row > (rowMin + 394) AND row < (rowMax + 394) AND column > columnMin AND column < columnMax) THEN
					red <= (7 => '1',
							  OTHERS => '0');
					green	<= (OTHERS => '0');
					blue <= (OTHERS => '0');
				END IF;
			END IF; -- end if B = 1
			
		IF (C = 1) THEN
			IF(row > (rowMin + 788) AND row < (rowMax + 788) AND column > columnMin AND column < columnMax) THEN
					red <= (7 => '1',
							  OTHERS => '0');
					green	<= (OTHERS => '0');
					blue <= (OTHERS => '0');
				END IF;
			END IF; -- end if C = 1
			
		IF (D = 1) THEN
			IF(row > rowMin AND row < rowMax AND column > (columnMin + 284) AND column < (columnMax + 284)) THEN
					red <= (7 => '1',
							  OTHERS => '0');
					green	<= (OTHERS => '0');
					blue <= (OTHERS => '0');
				END IF;
			END IF; -- end if D = 1
			
		IF (E = 1) THEN
			IF(row > (rowMin + 394) AND row < (rowMax + 394) AND column > (columnMin + 284) AND column < (columnMax + 284)) THEN
					red <= (7 => '1',
							  OTHERS => '0');
					green	<= (OTHERS => '0');
					blue <= (OTHERS => '0');
				END IF;
			END IF; -- end if E = 1
			
		IF (F = 1) THEN
			IF(row > (rowMin + 788) AND row < (rowMax + 788) AND column > (columnMin + 284) AND column < (columnMax + 284)) THEN
					red <= (7 => '1',
							  OTHERS => '0');
					green	<= (OTHERS => '0');
					blue <= (OTHERS => '0');
				END IF;
			END IF; -- end if F = 1
			
		IF (G = 1) THEN
			IF(row > rowMin AND row < rowMax AND column > (columnMin + 568) AND column < (columnMax + 568)) THEN
					red <= (7 => '1',
							  OTHERS => '0');
					green	<= (OTHERS => '0');
					blue <= (OTHERS => '0');
				END IF;
			END IF; -- end if G = 1
			
		IF (H = 1) THEN
			IF(row > (rowMin + 394) AND row < (rowMax + 394) AND column > (columnMin + 568) AND column < (columnMax + 568)) THEN
					red <= (7 => '1',
							  OTHERS => '0');
					green	<= (OTHERS => '0');
					blue <= (OTHERS => '0');
				END IF;
			END IF; -- end if H = 1
			
		IF (I = 1) THEN
			IF(row > (rowMin + 788) AND row < (rowMax + 788) AND column > (columnMin + 568) AND column < (columnMax + 568)) THEN
					red <= (7 => '1',
							  OTHERS => '0');
					green	<= (OTHERS => '0');
					blue <= (OTHERS => '0');
				END IF;
			END IF; -- end if I = 1
		---------------------------------------------------------- END player 1 logic
		
		
		
		---------------------------------------------------------- START player 2 logic
		IF (A = 2) THEN
			IF(row > rowMin AND row < rowMax AND column > columnMin AND column < columnMax) THEN
					red <= (OTHERS => '0');
					green	<= (7 => '1',
						OTHERS => '0');
					blue <= (OTHERS => '0');
					--ha3 <= '1'; hb3 <= '0'; hc3 <= '0'; hd3 <= '0'; he3 <= '0'; hf3 <= '0'; hg3 <= '1';
					--ha2 <= '0'; hb2 <= '1'; hc2 <= '0'; hd2 <= '0'; he2 <= '1'; hf2 <= '0'; hg2 <= '0';
					--ha1 <= '0'; hb1 <= '1'; hc1 <= '1'; hd1 <= '0'; he1 <= '0'; hf1 <= '0'; hg1 <= '0';
					--ha0 <= '1'; hb0 <= '0'; hc0 <= '0'; hd0 <= '0'; he0 <= '0'; hf0 <= '1'; hg0 <= '0';
				END IF;
			END IF; -- end if A = 2
			
		IF (B = 2) THEN
			IF(row > (rowMin + 394) AND row < (rowMax + 394) AND column > columnMin AND column < columnMax) THEN
					red <= (OTHERS => '0');
					green	<= (7 => '1',
						OTHERS => '0');
					blue <= (OTHERS => '0');
				END IF;
			END IF; -- end if B = 2
			
		IF (C = 2) THEN
			IF(row > (rowMin + 788) AND row < (rowMax + 788) AND column > columnMin AND column < columnMax) THEN
					red <= (OTHERS => '0');
					green	<= (7 => '1',
						OTHERS => '0');
					blue <= (OTHERS => '0');
				END IF;
			END IF; -- end if C = 2
			
		IF (D = 2) THEN
			IF(row > rowMin AND row < rowMax AND column > (columnMin + 284) AND column < (columnMax + 284)) THEN
					red <= (OTHERS => '0');
					green	<= (7 => '1',
						OTHERS => '0');
					blue <= (OTHERS => '0');
				END IF;
			END IF; -- end if D = 2
			
		IF (E = 2) THEN
			IF(row > (rowMin + 394) AND row < (rowMax + 394) AND column > (columnMin + 284) AND column < (columnMax + 284)) THEN
					red <= (OTHERS => '0');
					green	<= (7 => '1',
						OTHERS => '0');
					blue <= (OTHERS => '0');
				END IF;
			END IF; -- end if E = 2

		IF (F = 2) THEN
			IF(row > (rowMin + 788) AND row < (rowMax + 788) AND column > (columnMin + 284) AND column < (columnMax + 284)) THEN
					red <= (OTHERS => '0');
					green	<= (7 => '1',
						OTHERS => '0');
					blue <= (OTHERS => '0');
				END IF;
			END IF; -- end if F = 2
			
		IF (G = 2) THEN
			IF(row > rowMin AND row < rowMax AND column > (columnMin + 568) AND column < (columnMax + 568)) THEN
					red <= (OTHERS => '0');
					green	<= (7 => '1',
						OTHERS => '0');
					blue <= (OTHERS => '0');
				END IF;
			END IF; -- end if G = 2
			
		IF (H = 2) THEN
			IF(row > (rowMin + 394) AND row < (rowMax + 394) AND column > (columnMin + 568) AND column < (columnMax + 568)) THEN
					red <= (OTHERS => '0');
					green	<= (7 => '1',
						OTHERS => '0');
					blue <= (OTHERS => '0');
				END IF;
			END IF; -- end if H = 2
			
		IF (I = 2) THEN
			IF(row > (rowMin + 788) AND row < (rowMax + 788) AND column > (columnMin + 568) AND column < (columnMax + 568)) THEN
					red <= (OTHERS => '0');
					green	<= (7 => '1',
						OTHERS => '0');
					blue <= (OTHERS => '0');
				END IF;
			END IF; -- end if I = 2
			---------------------------------------------------------- END player 2 logic
			
			---------------------------------------------------------- START Moving box to select square
		-- A
		IF(columnNum = 0) THEN -- checks if box is in A's position
			ha0 <= '1';
			hb0 <= '0';
			hc0 <= '0';
			hd0 <= '1';
			he0 <= '1';
			hf0 <= '1';
			hg0 <= '1';
				IF(row > movingBlockrowMin AND row < movingBlockrowMax AND column > movingBlockcolumnMin AND column < movingBlockcolumnMax) THEN
					red <= (7 => '1',
							  OTHERS => '0');
					green	<= (7 => '1',
								 OTHERS => '0');
					blue <= (7 => '1',
								OTHERS => '0');
				END IF;
		-- B
		ELSIF(columnNum = 1) THEN -- checks if box is in B's position
			ha0 <= '0';
			hb0 <= '0';
			hc0 <= '1';
			hd0 <= '0';
			he0 <= '0';
			hf0 <= '1';
			hg0 <= '0';
				IF(row > (movingBlockrowMin + 394) AND row < (movingBlockrowMax + 394) AND column > movingBlockcolumnMin AND column < movingBlockcolumnMax) THEN
					red <= (7 => '1',
							  OTHERS => '0');
					green	<= (7 => '1',
								 OTHERS => '0');
					blue <= (7 => '1',
								OTHERS => '0');
				END IF;
			
		-- C
		ELSIF(columnNum = 2) THEN -- checks if box is in C's position
			ha0 <= '0';
			hb0 <= '0';
			hc0 <= '0';
			hd0 <= '0';
			he0 <= '1';
			hf0 <= '1';
			hg0 <= '0';
				IF(row > (movingBlockrowMin + 788) AND row < (movingBlockrowMax + 788) AND column > movingBlockcolumnMin AND column < movingBlockcolumnMax) THEN
					red <= (7 => '1',
							  OTHERS => '0');
					green	<= (7 => '1',
								 OTHERS => '0');
					blue <= (7 => '1',
								OTHERS => '0');
				END IF;
			
		-- D
		ELSIF(columnNum = 3) THEN -- checks if box is in D's position
			ha0 <= '1';
			hb0 <= '0';
			hc0 <= '0';
			hd0 <= '1';
			he0 <= '1';
			hf0 <= '0';
			hg0 <= '0';
				IF(row > movingBlockrowMin AND row < movingBlockrowMax AND column > (movingBlockcolumnMin + 284) AND column < (movingBlockcolumnMax + 284)) THEN
					red <= (7 => '1',
							  OTHERS => '0');
					green	<= (7 => '1',
								 OTHERS => '0');
					blue <= (7 => '1',
								OTHERS => '0');
				END IF;
			
		-- E
		ELSIF(columnNum = 4) THEN -- checks if box is in E's position
			ha0 <= '0';
			hb0 <= '1';
			hc0 <= '0';
			hd0 <= '0';
			he0 <= '1';
			hf0 <= '0';
			hg0 <= '0';
				IF(row > (movingBlockrowMin + 394) AND row < (movingBlockrowMax + 394) AND column > (movingBlockcolumnMin + 284) AND column < (movingBlockcolumnMax + 284)) THEN
					red <= (7 => '1',
							  OTHERS => '0');
					green	<= (7 => '1',
								 OTHERS => '0');
					blue <= (7 => '1',
								OTHERS => '0');
				END IF;
			
		-- F
		ELSIF(columnNum = 5) THEN -- checks if box is in F's position
			ha0 <= '0';
			hb0 <= '1';
			hc0 <= '0';
			hd0 <= '0';
			he0 <= '0';
			hf0 <= '0';
			hg0 <= '0';
				IF(row > (movingBlockrowMin + 788) AND row < (movingBlockrowMax + 788) AND column > (movingBlockcolumnMin + 284) AND column < (movingBlockcolumnMax + 284)) THEN
					red <= (7 => '1',
							  OTHERS => '0');
					green	<= (7 => '1',
								 OTHERS => '0');
					blue <= (7 => '1',
								OTHERS => '0');
				END IF;
			
		-- G
		ELSIF(columnNum = 6) THEN -- checks if box is in G's position
			ha0 <= '0';
			hb0 <= '0';
			hc0 <= '0';
			hd0 <= '1';
			he0 <= '1';
			hf0 <= '1';
			hg0 <= '1';
				IF(row > movingBlockrowMin AND row < movingBlockrowMax AND column > (movingBlockcolumnMin + 568) AND column < (movingBlockcolumnMax + 568)) THEN
					red <= (7 => '1',
							  OTHERS => '0');
					green	<= (7 => '1',
								 OTHERS => '0');
					blue <= (7 => '1',
								OTHERS => '0');
				END IF;
			
		-- H
		ELSIF(columnNum = 7) THEN -- checks if box is in H's position
			ha0 <= '0';
			hb0 <= '0';
			hc0 <= '0';
			hd0 <= '0';
			he0 <= '0';
			hf0 <= '0';
			hg0 <= '0';
				IF(row > (movingBlockrowMin + 394) AND row < (movingBlockrowMax + 394) AND column > (movingBlockcolumnMin + 568) AND column < (movingBlockcolumnMax + 568)) THEN
					red <= (7 => '1',
							  OTHERS => '0');
					green	<= (7 => '1',
								 OTHERS => '0');
					blue <= (7 => '1',
								OTHERS => '0');
				END IF;
			
		-- I
		ELSIF(columnNum = 8) THEN -- checks if box is in I's position
			ha0 <= '0';
			hb0 <= '0';
			hc0 <= '0';
			hd0 <= '0';
			he0 <= '1';
			hf0 <= '0';
			hg0 <= '0';
				IF(row > (movingBlockrowMin + 788) AND row < (movingBlockrowMax + 788) AND column > (movingBlockcolumnMin + 568) AND column < (movingBlockcolumnMax + 568)) THEN
					red <= (7 => '1',
							  OTHERS => '0');
					green	<= (7 => '1',
								 OTHERS => '0');
					blue <= (7 => '1',
								OTHERS => '0');
				END IF;
			---------------------------------------------------------- END Moving box to select square
		END IF; -- end all checks
		
			ELSE
			red <= (OTHERS => '0');
			green <= (OTHERS => '0');
			blue <= (OTHERS => '0');
		END IF; -- disp_enable if statement
	END PROCESS;
END behavior;