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
		reset				:  IN    STD_LOGIC;  --reset the game, button 4 input, pin_R24
		clock				:  IN    STD_LOGIC;	--50Mhz clock
		moveFoward					:  IN    STD_LOGIC;  -- button 1 input, pin_M23
		moveBackward	:	IN		STD_LOGIC; -- button 2 input, pin_M21
		confirmButton	:	IN 	STD_LOGIC; 	-- button 3 input, pin_N21
		
		
		-- 7 is the MSB, carries the most weight when changing colors.
		--ha0 : OUT STD_LOGIC; -- hex display HEX0
		--hb0 : OUT STD_LOGIC;
		--hc0 : OUT STD_LOGIC;
		--hd0 : OUT STD_LOGIC;
		--he0 : OUT STD_LOGIC;
		--hf0 : OUT STD_LOGIC;
		--hg0 : OUT STD_LOGIC;
		
		r1			:	OUT 	STD_LOGIC;
		r2			:	OUT	STD_LOGIC;
		red		:	OUT	STD_LOGIC_VECTOR(7 DOWNTO 0) := (OTHERS => '0');  --red magnitude output to DAC
		green		:	OUT	STD_LOGIC_VECTOR(7 DOWNTO 0) := (OTHERS => '0');  --green magnitude output to DAC
		blue		:	OUT	STD_LOGIC_VECTOR(7 DOWNTO 0) := (OTHERS => '0')); --blue magnitude output to DAC
END hw_image_generator;

ARCHITECTURE behavior OF hw_image_generator IS
	signal p1w : STD_LOGIC := '0';
	signal p2w : STD_LOGIC := '0';
	signal gameT : STD_LOGIC := '0';
	BEGIN
	--p1win <= p1w;
	--p2win <= p2w;
	--gameTie <= gameT;
		-- led confirmations on board to show user button presses.
		r1 <= Not moveFoward;
		r2 <= Not confirmButton;
	--------------------------------------------
	-- PROCESS
	-- Includes VGA and Game code.
	-- Will display a playable version of classic tic-tac-toe.
	--------------------------------------------
	PROCESS(disp_ena, row, column, clock, p1w, p2w, gameT, reset)
		VARIABLE columnNum 						: 	INTEGER range 0 to 9; -- loops through A -> I should work as a counter
		VARIABLE buttonState 					: 	BOOLEAN := false;
		VARIABLE buttonStateConfirm 			: 	BOOLEAN := false;
		VARIABLE resetState 						: 	BOOLEAN := false;
		VARIABLE A, B, C, D, E, F, G, H, I	: 	INTEGER := 0;
		VARIABLE p1									:	INTEGER := 1; -- player 1 is active at program begin
		VARIABLE p2									:	INTEGER := 0; -- player 2 is inactive at program begin
		VARIABLE buttonConfirmCounter			:	INTEGER := 0; -- counts number of times the button is confirmed
	BEGIN
		p1w <= '0';
		p2w <= '0';
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
					IF moveFoward = '0' and buttonState = false THEN -- button is 0 when pressed
						buttonState := not buttonState; -- buttonState logic to prevent button bouncing
						columnNum := columnNum + 1;
						IF columnNum > 8 THEN
								columnNum := 0;
							END IF;
						ELSIF moveFoward = '1' and buttonState = true THEN
							buttonState := not buttonState;
					END IF; -- moveFoward if statement	
				END IF; -- end rising_edge if statement
				
				IF rising_edge(clock) THEN
				IF confirmButton = '0' and buttonStateConfirm = false THEN
					buttonStateConfirm := not buttonStateConfirm;
						-- player 1's turn
					--	if(confirmButton = '0') then
							--columnNum := 0;
						--end if;
						IF(columnNum = 0 AND p1 = 1 AND A = 0) THEN
							buttonConfirmCounter := buttonConfirmCounter + 1;
							A := 1;
							p2 := 1;
							p1 := 0;	
						END IF;
						IF(columnNum = 1 AND p1 = 1  AND B = 0) THEN
						buttonConfirmCounter := buttonConfirmCounter + 1;
							B := 1;
							p2 := 1;
							p1 := 0;
						END IF;
						IF(columnNum = 2 AND p1 = 1  AND C = 0) THEN
						buttonConfirmCounter := buttonConfirmCounter + 1;
							C := 1;
							p2 := 1;
							p1 := 0;
						END IF;
						IF (columnNum = 3 AND p1 = 1  AND D = 0) THEN
						buttonConfirmCounter := buttonConfirmCounter + 1;
							D := 1;
							p2 := 1;
							p1 := 0;
						END IF;
						IF (columnNum = 4 AND p1 = 1  AND E = 0) THEN
						buttonConfirmCounter := buttonConfirmCounter + 1;
							E := 1;
							p2 := 1;
							p1 := 0;
						END IF;
						IF(columnNum = 5 AND p1 = 1  AND F = 0) THEN
						buttonConfirmCounter := buttonConfirmCounter + 1;
							F := 1;
							p2 := 1;
							p1 := 0;
						END IF;
						IF(columnNum = 6 AND p1 = 1  AND G = 0) THEN
						buttonConfirmCounter := buttonConfirmCounter + 1;
							G := 1;
							p2 := 1;
							p1 := 0;
						END IF;
						IF(columnNum = 7 AND p1 = 1  AND H = 0) THEN
						buttonConfirmCounter := buttonConfirmCounter + 1;
							H := 1;
							p2 := 1;
							p1 := 0;
						END IF;
						IF(columnNum = 8 AND p1 = 1  AND I = 0) THEN
						buttonConfirmCounter := buttonConfirmCounter + 1;
							I := 1;
							p2 := 1;
							p1 := 0;
						END IF;
						
						-- player 2's turn
						IF(columnNum = 0 AND p2 = 1 AND A = 0) THEN
						buttonConfirmCounter := buttonConfirmCounter + 1;
							A := 2;
							p1 := 1;
							p2 := 0;
						END IF;
						IF(columnNum = 1 AND p2 = 1 AND B = 0) THEN
						buttonConfirmCounter := buttonConfirmCounter + 1;
							B := 2;
							p1 := 1;
							p2 := 0;
						END IF;
						IF(columnNum = 2 AND p2 = 1 AND C = 0) THEN
						buttonConfirmCounter := buttonConfirmCounter + 1;
							C := 2;
							p1 := 1;
							p2 := 0;
						END IF;
						IF (columnNum = 3 AND p2 = 1 AND D = 0) THEN
						buttonConfirmCounter := buttonConfirmCounter + 1;
							D := 2;
							p1 := 1;
							p2 := 0;
						END IF;
						IF (columnNum = 4 AND p2 = 1 AND E = 0) THEN
						buttonConfirmCounter := buttonConfirmCounter + 1;
							E := 2;
							p1 := 1;
							p2 := 0;
						END IF;
						IF(columnNum = 5 AND p2 = 1 AND F = 0) THEN
						buttonConfirmCounter := buttonConfirmCounter + 1;
							F := 2;
							p1 := 1;
							p2 := 0;
						END IF;
						IF(columnNum = 6 AND p2 = 1 AND G = 0) THEN
						buttonConfirmCounter := buttonConfirmCounter + 1;
							G := 2;
							p1 := 1;
							p2 := 0;
						END IF;
						IF(columnNum = 7 AND p2 = 1 AND H = 0) THEN
						buttonConfirmCounter := buttonConfirmCounter + 1;
							H := 2;
							p1 := 1;
							p2 := 0;
						END IF;
						IF(columnNum = 8 AND p2 = 1 AND I = 0) THEN
						buttonConfirmCounter := buttonConfirmCounter + 1;
							I := 2;
							p1 := 1;
							p2 := 0;
						END IF;
							if(confirmButton = '0') then
							columnNum := 9;
							end if;
					ELSIF confirmButton = '1' and buttonStateConfirm = true THEN
						buttonStateConfirm := not buttonState;
					END IF; --confirmButton if statement
				END IF; -- end 2nd rising clock edge
				
				--IF rising_edge(clock) THEN
				IF reset = '0' THEN
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
					buttonConfirmCounter := 0;
					p1w <= '0';
					p2w <= '0';
					gameT <= '0';
					--ELSIF reset = '1' and resetState = true THEN
					--resetState := not resetState;
				END IF; -- reset if statement	
			--END IF;
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
			--ha0 <= '1';
			--hb0 <= '0';
			--hc0 <= '0';
			--hd0 <= '1';
			--he0 <= '1';
			--hf0 <= '1';
			--hg0 <= '1';
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
			--ha0 <= '0';
			--hb0 <= '0';
			--hc0 <= '1';
			--hd0 <= '0';
			--he0 <= '0';
			--hf0 <= '1';
			--hg0 <= '0';
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
			--ha0 <= '0';
			--hb0 <= '0';
			--hc0 <= '0';
			--hd0 <= '0';
			--he0 <= '1';
			--hf0 <= '1';
			--hg0 <= '0';
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
			--ha0 <= '1';
			--hb0 <= '0';
			--hc0 <= '0';
			--hd0 <= '1';
			--he0 <= '1';
			--hf0 <= '0';
			--hg0 <= '0';
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
			--ha0 <= '0';
			--hb0 <= '1';
			--hc0 <= '0';
			--hd0 <= '0';
			--he0 <= '1';
			--hf0 <= '0';
			--hg0 <= '0';
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
			--ha0 <= '0';
			--hb0 <= '1';
			--hc0 <= '0';
			--hd0 <= '0';
			--he0 <= '0';
			--hf0 <= '0';
			--hg0 <= '0';
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
			--ha0 <= '0';
			--hb0 <= '0';
			--hc0 <= '0';
			--hd0 <= '1';
			--he0 <= '1';
			--hf0 <= '1';
			--hg0 <= '1';
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
			--ha0 <= '0';
			--hb0 <= '0';
			--hc0 <= '0';
			--hd0 <= '0';
			--he0 <= '0';
			--hf0 <= '0';
			--hg0 <= '0';
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
			--ha0 <= '0';
			--hb0 <= '0';
			--hc0 <= '0';
			--hd0 <= '0';
			--he0 <= '1';
			--hf0 <= '0';
			--hg0 <= '0';
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
		
		---------------------------------------------------------------------
		--------------------------- Win Conditions --------------------------
		---------------------------------------------------------------------
if (a = 1 AND b = 1 AND c = 1) Then 
p1w <= '1';
end if;
if (a = 1 AND d = 1 AND g = 1) Then 
p1w <= '1';
end if;
if (b = 1 AND e = 1 AND h = 1) Then 
p1w <= '1';
end if;
if (d=1 AND e=1 AND f = 1) Then 
p1w <= '1';
end if;
if (a=1 AND e=1 AND i =1) Then
p1w <= '1';
end if;
if (g=1 AND h=1 and i=1) Then
p1w <= '1';
end if;
if (g=1 AND e=1 AND c=1) Then 
p1w <= '1';
end if;
if (c=1 AND f=1 AND i=1) Then 
p1w <= '1';
end if;
if (a=2 AND b =2 AND c = 2) Then 
p2w <= '1';
end if;
if (a=2 AND d =2 AND g = 2) Then 
p2w <= '1';
end if;
if (b=2 AND e =2 AND h = 2) Then 
p2w <= '1';
end if;
if (d=2 AND e=2 AND f = 2) Then 
p2w <= '1';
end if;
if (a=2 AND e=2 AND i =2) Then
p2w <= '1';
end if;
if (g=2 AND h=2 and i=2) Then
p2w <= '1';
end if;
if (g=2 AND e=2 AND c=2) Then 
p2w <= '1';
end if;
if (c=2 AND f=2 AND i=2) Then 
p2w <= '1';
end if;
if(p2w = '0' AND p1w = '0' AND buttonConfirmCounter = 9) THEN
gameT <= '1';
end if;
		---------------------------------------------------------------------
		--------------------------- Winner Display --------------------------
		---------------------------------------------------------------------		
		if (gameT = '1' AND buttonConfirmCounter = 9 AND p1w = '0' AND p2w = '0') then
		------------------------------------------------------------------- T START
	IF(row > 80 AND row < 140 AND column < 25 AND column > 5) THEN
				red <= (6 => '1',
						  OTHERS => '0');
				green	<= (6 => '1',
							 OTHERS => '0');
				blue <= (6 => '1',
							OTHERS => '0');
			END IF;
				IF(row > 100 AND row < 120 AND column < 100 AND column > 5) THEN
				red <= (6 => '1',
						  OTHERS => '0');
				green	<= (6 => '1',
							 OTHERS => '0');
				blue <= (6 => '1',
							OTHERS => '0');
			END IF;
			------------------------------------------------------------------- T END
			
			------------------------------------------------------------------- I START
				IF(row > 160 AND row < 180 AND column < 25 AND column > 5) THEN
				red <= (6 => '1',
						  OTHERS => '0');
				green	<= (6 => '1',
							 OTHERS => '0');
				blue <= (6 => '1',
							OTHERS => '0');
			END IF;
				IF(row > 160 AND row < 180 AND column < 100 AND column > 40) THEN
				red <= (6 => '1',
						  OTHERS => '0');
				green	<= (6 => '1',
							 OTHERS => '0');
				blue <= (6 => '1',
							OTHERS => '0');
			END IF;
			------------------------------------------------------------------- I END
			
			------------------------------------------------------------------- E START
			IF(row > 200 AND row < 220 AND column < 100 AND column > 5) THEN
				red <= (6 => '1',
						  OTHERS => '0');
				green	<= (6 => '1',
							 OTHERS => '0');
				blue <= (6 => '1',
							OTHERS => '0');
			END IF;
			IF(row > 219 AND row < 260 AND column < 20 AND column > 5) THEN
				red <= (6 => '1',
						  OTHERS => '0');
				green	<= (6 => '1',
							 OTHERS => '0');
				blue <= (6 => '1',
							OTHERS => '0');
			END IF;
			IF(row > 219 AND row < 260 AND column < 57 AND column > 37) THEN
				red <= (6 => '1',
						  OTHERS => '0');
				green	<= (6 => '1',
							 OTHERS => '0');
				blue <= (6 => '1',
							OTHERS => '0');
			END IF;
			IF(row > 219 AND row < 260 AND column < 100 AND column > 80) THEN
				red <= (6 => '1',
						  OTHERS => '0');
				green	<= (6 => '1',
							 OTHERS => '0');
				blue <= (6 => '1',
							OTHERS => '0');
			END IF;
			------------------------------------------------------------------- E END
end if;
if (p1w = '1') then
	------------------------------------------------------------------- Red cube
	IF(row > 5 AND row < 95 AND column < 100 AND column > 5) THEN
				red <= (6 => '1',
						  OTHERS => '0');
				green	<= (OTHERS => '0');
				blue <= (OTHERS => '0');
			END IF;
	------------------------------------------------------------------- START W
	IF(row > 100 AND row < 120 AND column < 100 AND column > 5) THEN
				red <= (6 => '1',
						  OTHERS => '0');
				green	<= (6 => '1',
							 OTHERS => '0');
				blue <= (6 => '1',
							OTHERS => '0');
			END IF;
	IF(row > 119 AND row < 140 AND column < 100 AND column > 80) THEN
		red <= (6 => '1',
				  OTHERS => '0');
		green	<= (6 => '1',
					 OTHERS => '0');
		blue <= (6 => '1',
					OTHERS => '0');
	END IF;
	IF(row > 139 AND row < 160 AND column < 100 AND column > 30) THEN
		red <= (6 => '1',
				  OTHERS => '0');
		green	<= (6 => '1',
					 OTHERS => '0');
		blue <= (6 => '1',
					OTHERS => '0');
	END IF;
	IF(row > 159 AND row < 180 AND column < 100 AND column > 80) THEN
		red <= (6 => '1',
				  OTHERS => '0');
		green	<= (6 => '1',
					 OTHERS => '0');
		blue <= (6 => '1',
					OTHERS => '0');
	END IF;
	IF(row > 179 AND row < 200 AND column < 100 AND column > 5) THEN
		red <= (6 => '1',
				  OTHERS => '0');
		green	<= (6 => '1',
					 OTHERS => '0');
		blue <= (6 => '1',
					OTHERS => '0');
	END IF;
	------------------------------------------------------------------- END W
	
	------------------------------------------------------------------- START I
	IF(row > 220 AND row < 240 AND column < 100 AND column > 40) THEN
		red <= (6 => '1',
				  OTHERS => '0');
		green	<= (6 => '1',
					 OTHERS => '0');
		blue <= (6 => '1',
					OTHERS => '0');
	END IF;
		IF(row > 220 AND row < 240 AND column < 25 AND column > 5) THEN
		red <= (6 => '1',
				  OTHERS => '0');
		green	<= (6 => '1',
					 OTHERS => '0');
		blue <= (6 => '1',
					OTHERS => '0');
	END IF;
	------------------------------------------------------------------- END I
	
	------------------------------------------------------------------- START N
	IF(row > 260 AND row < 280 AND column < 100 AND column > 5) THEN
		red <= (6 => '1',
				  OTHERS => '0');
		green	<= (6 => '1',
					 OTHERS => '0');
		blue <= (6 => '1',
					OTHERS => '0');
	END IF;
	IF(row > 279 AND row < 320 AND column < 25 AND column > 5) THEN
		red <= (6 => '1',
				  OTHERS => '0');
		green	<= (6 => '1',
					 OTHERS => '0');
		blue <= (6 => '1',
					OTHERS => '0');
	END IF;
	IF(row > 319 AND row < 340 AND column < 100 AND column > 5) THEN
		red <= (6 => '1',
				  OTHERS => '0');
		green	<= (6 => '1',
					 OTHERS => '0');
		blue <= (6 => '1',
					OTHERS => '0');
	END IF;
	------------------------------------------------------------------- END N
	
	------------------------------------------------------------------- START S
	IF(row > 360 AND row < 420 AND column < 26 AND column > 5) THEN
		red <= (6 => '1',
				  OTHERS => '0');
		green	<= (6 => '1',
					 OTHERS => '0');
		blue <= (6 => '1',
					OTHERS => '0');
	END IF;
	IF(row > 360 AND row < 380 AND column < 50 AND column > 25) THEN
		red <= (6 => '1',
				  OTHERS => '0');
		green	<= (6 => '1',
					 OTHERS => '0');
		blue <= (6 => '1',
					OTHERS => '0');
	END IF;
	IF(row > 360 AND row < 420 AND column < 60 AND column > 39) THEN
		red <= (6 => '1',
				  OTHERS => '0');
		green	<= (6 => '1',
					 OTHERS => '0');
		blue <= (6 => '1',
					OTHERS => '0');
	END IF;
	IF(row > 400 AND row < 420 AND column < 81 AND column > 59) THEN
	red <= (6 => '1',
			  OTHERS => '0');
	green	<= (6 => '1',
				 OTHERS => '0');
	blue <= (6 => '1',
				OTHERS => '0');
	END IF;
	IF(row > 360 AND row < 420 AND column < 100 AND column > 80) THEN
		red <= (6 => '1',
				  OTHERS => '0');
		green	<= (6 => '1',
					 OTHERS => '0');
		blue <= (6 => '1',
					OTHERS => '0');
	END IF;
	------------------------------------------------------------------- END S
			--end if;
ELSIF (p2w = '1') THEN
IF(row > 5 AND row < 95 AND column < 100 AND column > 5) THEN
				red <= (OTHERS => '0');
				green	<= (6 => '1',
							OTHERS => '0');
				blue <= (OTHERS => '0');
	END IF;
	--END IF;

	------------------------------------------------------------------- START W
	IF(row > 100 AND row < 120 AND column < 100 AND column > 5) THEN
				red <= (6 => '1',
						  OTHERS => '0');
				green	<= (6 => '1',
							 OTHERS => '0');
				blue <= (6 => '1',
							OTHERS => '0');
			END IF;
	IF(row > 119 AND row < 140 AND column < 100 AND column > 80) THEN
		red <= (6 => '1',
				  OTHERS => '0');
		green	<= (6 => '1',
					 OTHERS => '0');
		blue <= (6 => '1',
					OTHERS => '0');
	END IF;
	IF(row > 139 AND row < 160 AND column < 100 AND column > 30) THEN
		red <= (6 => '1',
				  OTHERS => '0');
		green	<= (6 => '1',
					 OTHERS => '0');
		blue <= (6 => '1',
					OTHERS => '0');
	END IF;
	IF(row > 159 AND row < 180 AND column < 100 AND column > 80) THEN
		red <= (6 => '1',
				  OTHERS => '0');
		green	<= (6 => '1',
					 OTHERS => '0');
		blue <= (6 => '1',
					OTHERS => '0');
	END IF;
	IF(row > 179 AND row < 200 AND column < 100 AND column > 5) THEN
		red <= (6 => '1',
				  OTHERS => '0');
		green	<= (6 => '1',
					 OTHERS => '0');
		blue <= (6 => '1',
					OTHERS => '0');
	END IF;
	------------------------------------------------------------------- END W
	
	------------------------------------------------------------------- START I
	IF(row > 220 AND row < 240 AND column < 100 AND column > 40) THEN
		red <= (6 => '1',
				  OTHERS => '0');
		green	<= (6 => '1',
					 OTHERS => '0');
		blue <= (6 => '1',
					OTHERS => '0');
	END IF;
		IF(row > 220 AND row < 240 AND column < 25 AND column > 5) THEN
		red <= (6 => '1',
				  OTHERS => '0');
		green	<= (6 => '1',
					 OTHERS => '0');
		blue <= (6 => '1',
					OTHERS => '0');
	END IF;
	------------------------------------------------------------------- END I
	
	------------------------------------------------------------------- START N
	IF(row > 260 AND row < 280 AND column < 100 AND column > 5) THEN
		red <= (6 => '1',
				  OTHERS => '0');
		green	<= (6 => '1',
					 OTHERS => '0');
		blue <= (6 => '1',
					OTHERS => '0');
	END IF;
	IF(row > 279 AND row < 320 AND column < 25 AND column > 5) THEN
		red <= (6 => '1',
				  OTHERS => '0');
		green	<= (6 => '1',
					 OTHERS => '0');
		blue <= (6 => '1',
					OTHERS => '0');
	END IF;
	IF(row > 319 AND row < 340 AND column < 100 AND column > 5) THEN
		red <= (6 => '1',
				  OTHERS => '0');
		green	<= (6 => '1',
					 OTHERS => '0');
		blue <= (6 => '1',
					OTHERS => '0');
	END IF;
	------------------------------------------------------------------- END N
	
	------------------------------------------------------------------- START S
	IF(row > 360 AND row < 420 AND column < 26 AND column > 5) THEN
		red <= (6 => '1',
				  OTHERS => '0');
		green	<= (6 => '1',
					 OTHERS => '0');
		blue <= (6 => '1',
					OTHERS => '0');
	END IF;
	IF(row > 360 AND row < 380 AND column < 50 AND column > 25) THEN
		red <= (6 => '1',
				  OTHERS => '0');
		green	<= (6 => '1',
					 OTHERS => '0');
		blue <= (6 => '1',
					OTHERS => '0');
	END IF;
	IF(row > 360 AND row < 420 AND column < 60 AND column > 39) THEN
		red <= (6 => '1',
				  OTHERS => '0');
		green	<= (6 => '1',
					 OTHERS => '0');
		blue <= (6 => '1',
					OTHERS => '0');
	END IF;
	IF(row > 400 AND row < 420 AND column < 81 AND column > 59) THEN
	red <= (6 => '1',
			  OTHERS => '0');
	green	<= (6 => '1',
				 OTHERS => '0');
	blue <= (6 => '1',
				OTHERS => '0');
	END IF;
	IF(row > 360 AND row < 420 AND column < 100 AND column > 80) THEN
		red <= (6 => '1',
				  OTHERS => '0');
		green	<= (6 => '1',
					 OTHERS => '0');
		blue <= (6 => '1',
					OTHERS => '0');
	END IF;
	------------------------------------------------------------------- END S
end if;
	END PROCESS;
END behavior;