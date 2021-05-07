.data

	### Provided stack data ###
	stack_beg: .word   0 : 100
	stack_end:
	
	### Board Data
	BoardPositions: .word 0:9 # stores the occupied/available positions on the board
	UserPositions: .word 0:9 # stores the user's current positions on the board
	MachinePositions: .word 0:9 # stores the machine's current positions on the board
	
	# Ascii messages ###
	user_goes_first_message: .asciiz "Based on the (pseudo) random drawing, you go first! \n" 
	machine_goes_first_message: .asciiz  "Based on the (pseudo) random drawing, the machine goest first... \n" 
	user_object_type_prompt: .asciiz "Would you like to be O's or X's? (0 for 0: O's and 1 for X's) \n"
	user_input_column_prompt: .asciiz "Enter the column you wish place your X or O in: \n"
	user_input_row_prompt: .asciiz "Enter the row you wish place your X or O in: \n"
	postion_occupied_message: .asciiz "Sorry, that position is already occupied! \n" 
	lose_message: .asciiz "Sorry, you lost. Try again sometime! \n" 
	win_message: .asciiz "Congratulations, you win! \n" 
	tie_message: .asciiz "Looks like a tie... try again sometime! \n" 
	bad_object_input_message: .asciiz "Please enter a valid object option! \n" 
	bad_row_column_input_message: .asciiz "Please enter row and column values that are between 1 and 3 \n" 
	
	
	### Lookup tables ###
	RowAndColumnToBoardNumber: .word 1, 1, 0 # row | column | board number spot
			           .word 1, 2, 1 # row | column | board number spot
			     	   .word 1, 3, 2 # row | column | board number spot
			   	   .word 2, 1, 3 # row | column | board number spot
			      	   .word 2, 2, 4 # row | column | board number spot
			      	   .word 2, 3, 5 # row | column | board number spot
			      	   .word 3, 1, 6 # row | column | board number spot
			    	   .word 3, 2, 7 # row | column | board number spot
			      	   .word 3, 3, 8 # row | column | board number spot
			      	   
	WinningCombinations: .word 0, 1, 2
			     .word 0, 3, 6
			     .word 0, 4, 8
			     .word 1, 4, 7
			     .word 2, 5, 8
			     .word 2, 4, 6
			     .word 3, 4, 5
			     .word 6, 7, 8
			     
			     # start permuations for machine position selection
			     .word 0, 2, 1 
			     .word 1, 0, 2
			     .word 1, 2, 0
			     .word 2, 0, 1
			     .word 2, 1, 0
			     
			     .word 0, 6, 3
			     .word 3, 0, 6
			     .word 3, 6, 0
			     .word 6, 0, 3
			     .word 6, 3, 0
			     
			     .word 0, 8, 4
			     .word 4, 0, 8
			     .word 4, 8, 0
			     .word 8, 0, 4
			     .word 8, 4, 0
			     
			     .word 1, 7, 4
			     .word 4, 1, 7
			     .word 4, 7, 1
			     .word 7, 1, 4
			     .word 7, 4, 1
			     
			     .word 2, 8, 5
			     .word 5, 2, 8
			     .word 5, 8, 2
			     .word 8, 2, 5
			     .word 8, 5, 2
			     
			     .word 2, 6, 4
			     .word 4, 2, 6
			     .word 4, 6, 2
			     .word 6, 2, 4
			     .word 6, 4, 2
			     
			     .word 3, 5, 4
			     .word 4, 3, 5
			     .word 4, 5, 3
			     .word 5, 3, 4
			     .word 5, 4, 3
			     
			     .word 6, 8, 7
			     .word 7, 6, 8
			     .word 7, 8, 6
			     .word 8, 6, 7
			     .word 8, 7, 6
			     
 	
 	
	OTable: .word 1, 1,  43, 12 # row | column | x coordinate start | y coordinate start
		.word 1, 2, 129, 12 # row | column | x coordinate start | y coordinate start
		.word 1, 3, 215, 12 # row | column | x coordinate start | y coordinate start
		
		.word 2, 1,  43, 98 # row | column | x coordinate start | y coordinate start
		.word 2, 2, 129, 98 # row | column | x coordinate start | y coordinate start
		.word 2, 3, 215, 98 # row | column | x coordinate start | y coordinate start
		
		.word 3, 1,  43, 184 # row | column | x coordinate start | y coordinate start
		.word 3, 2, 129, 184 # row | column | x coordinate start | y coordinate start
		.word 3, 3, 215, 184 # row | column | x coordinate start | y coordinate start
		
		
	XTable: .word 1, 1,  12, 12 # row | column | x coordinate start | y coordinate start
		.word 1, 2,  98, 12 # row | column | x coordinate start | y coordinate start
		.word 1, 3, 184, 12 # row | column | x coordinate start | y coordinate start
		
		.word 2, 1,  12, 98 # row | column | x coordinate start | y coordinate start
		.word 2, 2,  98, 98 # row | column | x coordinate start | y coordinate start
		.word 2, 3, 184, 98 # row | column | x coordinate start | y coordinate start
		
		.word 3, 1,  12, 184 # row | column | x coordinate start | y coordinate start
		.word 3, 2,  98, 184 # row | column | x coordinate start | y coordinate start
		.word 3, 3, 184, 184 # row | column | x coordinate start | y coordinate start
		     
	SquaresTable: .word 0
		      .word 1
		      .word 4
		      .word 9 
		      .word 16
		      .word 25
		      .word 36
		      .word 49
		      .word 64
		      .word 81
		      .word 100
		      .word 121
		      .word 144
		      .word 169
		      .word 196
		      .word 225
		      .word 256
		      .word 289
		      .word 324
		      .word 361
		      .word 400
		      .word 441
		      .word 484
		      .word 529
		      .word 576
		      .word 625
		      .word 676
		      .word 729
		      .word 784
		      .word 841
		      .word 900
		      .word 961
		      .word 1024
		     
		     
	
	ColorTable: .word 'G', 0x0000ff00 # Green
		    .word 'Y', 0x00ffff00 # Yellow
		    .word 'W', 0x00ffffff # White
		    .word '0', 0x00000000 # Black
		 

.text

main: 
	init: 
		la $sp, stack_end
	        la $s6, 0x10040000 # base address of display
	        li $s0, 0 # assume user will use O's but update if neccesary
	        li $s1, 0 # number of positions user currently occupying
	        li $s2, 0 # number of positions machine currently occupying
	        
	        jal drawBoard
	        
	        jal getRandomNumber # $v0 contains the ranodom number [0,1]
	        move $s3, $v0
	        
	        
	prePlay: 
	
	  	li $v0, 4 # print string
		la $a0, user_goes_first_message
		
		beq $s3, 0, userGoesFirst
		
		la $a0, machine_goes_first_message
		syscall
		b machinePlay # if the random number is 1, machine goes first
		
		userGoesFirst:
			syscall 
		
	
	play:
	
		userPlay:
		# $v0 and $v1 will have the user's row/col input respetively after this method
		jal getUserInput
		
		move $a0, $v0
		move $a1, $v1
		
		jal checkPositionIsValidAndUpdatePositions
		beq $v0, 1, play
		
		# $v0 will have the x-coordinate memory address and the y-coordinate address is one word down
		li $a2, 0 # user indicator
		jal convertInputToCoords
		
		lw $a0, 0($v0)
		lw $a1, 4($v0)
		li $a2, 0 # user indicator
		jal drawXOrO
		
		li $a1, 0 # user indicator
		li $a3, 0 # checkType indicator (winner check)
		jal checkIfWinner 
		
		machinePlay:
		# $v0 will have the x-coordinate memory address and the y-coordinate address is one word down
		jal getMachineInput
		
		lw $a0, ($v0)
		lw $a1, 4($v0)
		li $a2, 1 # machine indicator
		
		jal convertInputToCoords
		
		lw $a0, 0($v0)
		lw $a1, 4($v0)
		li $a2, 1 # machine indicator
		jal drawXOrO
		
		li $a1, 1 # machine indicator
		li $a3, 0 # checkType indicator (winner check)
		jal checkIfWinner 
		
		b play
		
		
		
# generates random number
# argument: none
# return: (int) $v0 contains the random number
getRandomNumber:

	# stack stuff
	subi $sp, $sp, 4 # make room for the saved items below
	sw $ra, 0($sp) # store $ra

	# get seed
	li $a0, 0 # generator number/id
	li, $v0, 30 # sys call for system time
	syscall 
	move $t0, $a0 # store the LSB returned by sys time call to $t0
	
	# get random number
	li $a0, 0 # generator number/id
	move $a1, $t0 # seed for generator 
	li, $v0, 40 # seed random number generator 
	syscall 
	li $a1, 2 # upper bound of random number
	li $v0, 42 # generate random number
	syscall 
	
	finishRandomNumberRoutine:
		move $v0, $a0 # move the random number to the proper return regsiter
		lw $ra, 0($sp) # restore $ra
		addi $sp, $sp, 4 # set the $sp back to its original state
	
		jr $ra
			
									
# get the user's input 
# argument: none
# return: $s0 = user's chosen object type, $v0 = user's row input, $v1 = user's col inpout	
getUserInput: 
	# stack stuff
	subi $sp, $sp, 8 # make room for the saved items below
	sw $ra, 0($sp) # store $ra
	
	add $t0, $s1, $s2 # used in check below to see if this is the first iteration
	
	bnez $t0, getRowAndColumnInput
	
	li $v0, 4
	la $a0, user_object_type_prompt
	syscall 
	
	li $v0, 5 # read int from user (read value goes into $v0)
	syscall
	
	beqz $v0, finishGettingUserObjectInput
	beq $v0, 1, finishGettingUserObjectInput
	
	li $v0, 4 # print string
	la $a0, bad_object_input_message
	syscall 
	b getUserInput
	
	finishGettingUserObjectInput:
	move $s0, $v0 # store user object choice input in $s0
	
	getRowAndColumnInput:
	
		li $v0, 4 # print string
		la $a0, user_input_row_prompt # prompt address user for column
		syscall 
	
		li $v0, 5 # read int from user (read value goes into $v0)
		syscall
		
		bgt $v0, 3, badInputGiven
		bltz $v0, badInputGiven
		
		sw $v0, 4($sp) # store $v0 before it's changed below
	
		li $v0, 4 # print string
		la $a0, user_input_column_prompt # prompt address user for row
		syscall 
	
		li $v0, 5 # read int from user (read value goes into $v0)
		syscall
		
		bgt $v0, 3, badInputGiven
		bltz $v0, badInputGiven
		
		move $v1, $v0 # store user row input in $t1
		
		lw $ra, 0($sp) # restore $ra
		lw $v0, 4($sp) # restore $v0 
		addi $sp, $sp, 8 # set the $sp back to its original state
	
		jr $ra
		
		
		badInputGiven:
			li $v0, 4 # print string
			la $a0, bad_row_column_input_message
			syscall 
			b getRowAndColumnInput
		
	
# get the machine's input 
# argument: none
# return: $v0 = pointer to machine's row input (next word is the col input)
getMachineInput:
	# stack stuff
	subi $sp, $sp, 16 # make room for the saved items below
	sw $ra, 0($sp) # store $ra
	
	bnez $s2, findBestPositionPrep
	# this is the first time the machine is choosing, so take either 
	# the center spot, board number 4 or the first spot board number 1
	# reason being is that the center spot is involved in 4 winning combos and the 1st spot is involved in 3,
	# and those are the highest winning combo amounts for any given positions
		la $t7, BoardPositions
		li $v1, 4 # set the selected board position to the center spot
		
		lw $t7, 16($t7) # center spot of board
		beqz $t7, selectedMachinePostionToRowAndColumn
		li $v1, 0 # if the center spot is taken, then choose th first spot
		b selectedMachinePostionToRowAndColumn
	
	
	findBestPositionPrep:
		li $t6, 2 # counter
		li $a1, 1 # first check for winning machine positions (offensive)
	
	findBestPositionLoop:
		move $a3, $t6 # checkType arg for method
		
		sw $t6, 8($sp) # store $t6 to the stack
		sw $a1, 12($sp) # store $a1 to the stack
		
		jal checkIfWinner
		
		lw $t6, 8($sp) # restore $t6 from the stack
		lw $a1, 12($sp) # restore $a1 from the stack
		
		bne $v1, 9, selectedMachinePostionToRowAndColumn
		
		beqz $a1, bestPositionLoopAdjustments # if $a0 equals zero this is the first iteration
		addi $t6, $t6, 1 # this negates the substraction below as we still need to check for two in a row at this point
		li $a1, 0 # update $a0 to user indicator (defensive)
		
		beq $t6, 3, bestPositionLoopAdjustments # switch back to machine check for the one in a row situation (offensive)
		li $a1, 1 
		
		bestPositionLoopAdjustments:
			subi $t6, $t6, 1 # decement the counter
			bnez $t6, findBestPositionLoop
			
		### this is where we end up if no positions were found by the above, so we just want to take first available board
		### position at this point
		
		li $t6, 0 # counter
		la $t7, BoardPositions
		getFirstAvailablePositionLoop:
			lw $t8, ($t7)
			move $v1, $t6 # set it equal to the counter as that's the board number
			beqz $t8, selectedMachinePostionToRowAndColumn
			addi $t7, $t7, 4 # move to next board position to see if it is available
			addi $t6, $t6, 1 # increment counter
			b getFirstAvailablePositionLoop
			
		
		selectedMachinePostionToRowAndColumn:
			move $a0, $v1 # board position
			li $a1, 1 # machine indicator
			
			sw $v1, 4($sp) # store $v1
			
			jal updateBoardPositionsAndUserPositions
		
			lw $v1, 4($sp) # restore $v1
		
		
			la $t0, RowAndColumnToBoardNumber
			mul $v1, $v1, 12 # multiply the board number by 12 to get the proper offset for the RowColumn table
			nop 
			nop
			add $v0, $t0, $v1 # set the pointer to the correct location in the RowColumn table for the return value
	
	lw $ra, 0($sp) # restore $ra
	addi $sp, $sp, 16 # set the $sp back to its original state
	
	jr $ra
	


# determine if the user's position input is valid
# arguments: $a0 as user input row, $a1 has user input column
# return: $vo equals zero if position is not occupied or 1 if it is occupied
checkPositionIsValidAndUpdatePositions:
	# stack stuff
	subi $sp, $sp, 12 # make room for the saved items below
	sw $ra, 0($sp) # store $ra
	
	la $t0, RowAndColumnToBoardNumber 
	getBoardNumberOuterLoop:
		lw $t1, ($t0)
		beq $a0, $t1, prepareGetBoardNumberInnerLoop
		addi $t0, $t0, 12 # move to next row in lookup table
		b getBoardNumberOuterLoop
		
		prepareGetBoardNumberInnerLoop:
			addi $t0, $t0, 4 # move to the next word in the table which hold the column number
			getBoardNumberInnerLoop:
				lw $t1, ($t0)
				beq $a1, $t1, prepareFinalPositionIsValidCheck
				addi $t0, $t0, 12 # prepare to to next row in lookup table
				b getBoardNumberInnerLoop
			
				prepareFinalPositionIsValidCheck:
					addi $t3, $t0, 4 # move to the next word in the table which holds the table number
					lw $t3, ($t3) # load the word table number word into $t3
					sll $t3, $t3, 2 # multiply it by 4 so it's word-aligned
					la $t4, BoardPositions
					add $t4, $t4, $t3 # set the board positions pointer to proper word
					lw $t6, ($t4) # load the actual word
					
					beqz $t6, continueToUpdatingBoardPositions
					
					sw $a0, 4($sp) # store $a0
					la $a0, postion_occupied_message
					li $v0, 4
					syscall
					li $v0, 1 # set return to one, meaning the position is occupied
					b finishCheckPositionIsValid
	
					
					continueToUpdatingBoardPositions:
					li $v0, 0 # set return to zero, meaning the position is not occupied
					
					sw $a0, 4($sp) # store $a0
					sw $a1, 8($sp) # store $a1
					
					lw $t1, 4($t0) # load the selected board position word of the table
					li $a0, 0 
					add $a0, $a0, $t1 # the board position
					li $a1, 0 # user indicator
					jal updateBoardPositionsAndUserPositions
			
			
		finishCheckPositionIsValid:
			lw $ra, 0($sp) # restore $ra
			lw $a0, 4($sp) # restore $a0
			lw $a1, 8($sp) # restore $a1
			addi $sp, $sp, 12 # set the $sp back to its original state
	
			jr $ra
	
	
# updates the occupied board positions and user/machine positions and increments their number of positions
# arguments: $a0 = position, $a1 = user/machine (0 user, 1 machine)
# return: none
updateBoardPositionsAndUserPositions:
	# stack stuff
	subi $sp, $sp, 4 # make room for the saved items below
	sw $ra, 0($sp) # store $ra
	
	sll $a0, $a0, 2 # multiply the  position by four to get it word-aligned
	
		beqz $a1, userProtocol
		
		addi $s2, $s2, 1
		
			addNewPostionToMachinePositions:
					la $t0, MachinePositions
					add $t0, $t0, $a0 # add the board position to $t0
					li $t1, 1 
					sw $t1, ($t0)
					b addNewPostionToBoardPositions
		
		
		userProtocol:
			addi $s1, $s1, 1
		
			addNewPostionToUserPositions:
					la $t0, UserPositions
					add $t0, $t0, $a0
					li $t1, 1
					sw $t1, ($t0)
					
		addNewPostionToBoardPositions:
				la $t0, BoardPositions
				add $t0, $t0, $a0
				li $t1, 1
				sw $t1, ($t0)		
	
	lw $ra, 0($sp) # restore $ra
	addi $sp, $sp, 4 # set the $sp back to its original state
	jr $ra
	

# determine if the game has been won, also used as in machine's position selection logic
# arguments: $a1 = user/machine (0 = user, 1 = machine), 
# args cont... $a3 = checkType (0 = winner check, 1 = (1 in a row) 2 = (2 in a row)
# return: $v1 = board number for machine to take (or 9 if none available or not applicable) -> only for $a3 args > 0
checkIfWinner:
	# stack stuff
	subi $sp, $sp, 4 # make room for the saved items below
	sw $ra, 0($sp) # store $ra
	
	add $t0, $s1, $s2
	beq $t0, 9, TieMessage
	
	li $v1, 9 # used for typeCheck only, 9 is not a possible board position to return, so if that's returned there was no pos found
	
	la $t0, UserPositions
	beqz $a1, startWinnerCheck
	la $t0, MachinePositions
	
	startWinnerCheck:	
		la $t1, WinningCombinations
		li $t2, 0 # counter
		li $t3, 0 # summer
		li $t9, 0 # long term counter
		
		winningComboCheckerLoop:
			lw $t4, ($t1) # winning position from current row
			sll $t4, $t4, 2 # multiply by 4 so it's word-aligned
			add $t5, $t0, $t4 # pointer to user/machine's postion at this index
			lw $t5, ($t5) # the word at the position for the user/machine
			beqz $t5, nextWinnerComboLoop
			
			addi, $t3, $t3, 1 # the user/machine has this spot so add one to the summer
			
			nextWinnerComboLoop:
			addi $t2, $t2, 1 # increment counter
			addi $t9, $t9, 1 # increment long term counter
			addi $t1, $t1, 4 # move the Winnning Combo pointer down one Word for next iteration
			
			checkTypeTwo:
				bne $a3, 2, checkTypeOne # this is the 2 in a row situation
				bne $t3, 2, regularCheck # if the summer is not at two
				beq $t2, 3, regularCheck # if short counter is at three then there is no position to take in this row
				b checkIfValidBoardPositionForMachineAndReturnIfSo
				

			checkTypeOne:
				bne $a3, 1, regularCheck # this is the 1 in a row situation
				bne $t3, 1, regularCheck # if the summer is not at one
				beq $t2, 3, regularCheck # if short counter is at three then there is no position to take in this row
				
				
				checkIfValidBoardPositionForMachineAndReturnIfSo:
					la $t7, BoardPositions
					lw $t8, ($t1) # get the next board number from the current winning combo iteration
					move $v1, $t8 # set the return value to the board number that the machine should take
					sll $t8, $t8, 2 # multiply the board number by 4 to word-align it for below addition
					add $t7, $t7, $t8 # move the board position's pointer to the correct spot
					lw $t7, ($t7) # hold the value of the next winning combo board postion (0 if empty, 1 if occupied)
					bnez $t7, regularCheckPrep
					b finishCheckIfWinner
					
					regularCheckPrep:
					li $v1, 9 # set the return value back to 9 as this spot was not available
				
			
			regularCheck:
			beq $t3, 3, WinOrLoseMessage # if summer equals 3, that means we have a winner, $a1 arugment already correctly set!
			
			blt $t2, 3, winningComboCheckerLoop
			li $t2, 0 # reset counter
			li $t3, 0 # reset summer
			
			beqz $a3, skipPermuationChecks
			
			blt $t9, 144, winningComboCheckerLoop # go through standard winning combos and permuations
			
			b finishCheckIfWinner
			
			skipPermuationChecks:
			blt $t9, 24, winningComboCheckerLoop # pnly go through standard winning combos (not permuations)
			
			
	
	finishCheckIfWinner:
	lw $ra, 0($sp) # restore $ra
	addi $sp, $sp, 4 # set the $sp back to its original state
	jr $ra


# tell the user that they won (or lost)
# arguments: $a1 = user/machine (0 = user, 1 = machine)
# none	
WinOrLoseMessage:
	jal prepMakeSound # make the Win or Lose sound, $a1 already set to the correct state
	
	la $a0, win_message
	beqz $a1, printWinOrLoseMessage
	la $a0, lose_message
	
	printWinOrLoseMessage:
		li $v0, 4
		syscall 
		
		li $v0, 10
		syscall 
		
		
# tell the user that they tied the machine
# arguments: none
# none	
TieMessage:
	
	li $a1 2 # tie indicatior
	jal prepMakeSound

	la $a0, tie_message
	li $v0, 4
	syscall 
	
	li $v0, 10
	syscall


# make a Win, Lose or Tie sound
# argument: $a1: Win = 0, Lose = 1, Tie = 2
# return: none
prepMakeSound:
	# save to stack
	subi $sp, $sp, 4 # make room for the saved items below
	sw $ra, 0($sp) # store $ra 
	
	move $t0, $a1 # move the arg to $t0 as it is changed below
	
	li $a1, 1200 # time in ms
	li $a3, 110 # volume
	
	## Winner (you'll never hear this...)
	li $a0, 100 # pitch
	li $a2, 50 # instrument 
	
	beqz $t0, makeTheSound
	## Lose
	li $a0, 35 # pitch
	li $a2, 7 # instrument 
	
	beq $t0, 1, makeTheSound
	## Tie
	li $a0, 65 # pitch
	li $a2, 20 # instrument 
	
	makeTheSound: 		
		jal makeSound
	
	# set stack back
	lw $ra, 0($sp) # put the correct $ra back to get to this method's caller below
	addi $sp, $sp, 4 # adjust $sp back to its original state
			
	jr $ra	

	
# make a sound
# argument: $a0: pitch, $a1: duration, $a2: instrument, $a3: volume
# return: none				
makeSound:
	
	# save to stack
	subi $sp, $sp, 4 # make room for the saved items below
	sw $ra, 0($sp) # store $ra 
			
	li $v0, 31 # syscall for MIDI out
	syscall 
	
	# set stack back
	lw $ra, 0($sp) # put the correct $ra back to get to this method's caller below
	addi $sp, $sp, 4 # adjust $sp back to its original state
			
	jr $ra	

	
# use the user's input to locate the correct memory location of the coords for drawing the object
# arguments: $a0 = row input, $a1 = column input, $a2 = user/machine (0 = user, 1 = machine)
# return: $v0 = memory address for user's given row/col at the x-coord point (y-coord is one word down)
convertInputToCoords:
	# stack stuff
	subi $sp, $sp, 4 # make room for the saved items below
	sw $ra, 0($sp) # store $ra
	
	la $t0, OTable

	beqz $a2, userInputCoordsProtocol
	
	bnez $s0, getObjectAddressOuterLoop
	la $t0, XTable
	b getObjectAddressOuterLoop
	
	userInputCoordsProtocol:
	beqz $s0, getObjectAddressOuterLoop # if the user is X's update $t0 to the correct label address
	la $t0, XTable 
	
	getObjectAddressOuterLoop:
		lw $t1, 0($t0)
		beq $t1, $a0, prepareForObjectAddressInnerLoop # user's row input matched the given lookup table's row move to inner loop (col)
		addi $t0, $t0, 16 # move to the next row in the lookup table
		b getObjectAddressOuterLoop
		
		
		prepareForObjectAddressInnerLoop:
		addi $t0, $t0, 4 # move to the next word in the lookuptable (columns)
		
		getObjectAddressInnerLoop:
			lw $t1, 0($t0) # load the col word from the lookup table
			beq $t1, $a1, finishconvertUserInputToCoords # user's col input matched the given lookup table's col
			addi $t0, $t0, 16 # move to the next row in the lookup table
			b getObjectAddressInnerLoop
			
			finishconvertUserInputToCoords:
				la $v0, 4($t0) # set the proper return value
				
				lw $ra, 0($sp) # restore $ra
				addi $sp, $sp, 4 # set the $sp back to its original state
				
				jr $ra	
				
				
# decide whether to draw an X or an O
# arguments: $a0 = row input, $a1 = column input $a2, user/machine
# return: none	
drawXOrO:
	# stack stuff
	subi $sp, $sp, 4 # make room for the saved items below
	sw $ra, 0($sp) # store $ra		
	
	beqz $a2, userObjectDrawProtocol
	
	beqz $s0, checkDrawXMachine
	jal drawO
		
	checkDrawXMachine:
		bnez $s0, finishDrawXOrO
		jal drawX
		b finishDrawXOrO
	
	userObjectDrawProtocol:
	bnez $s0, checkDrawX
	jal drawO
		
	checkDrawX:
		bne $s0, 1, finishDrawXOrO
		jal drawX
		
	
	finishDrawXOrO:
	lw $ra, 0($sp) # restore $ra
	addi $sp, $sp, 4 # set the $sp back to its original state
	
	jr $ra	
				


# draw the game board
# argument: none
# return: none				
drawBoard:
	# stack stuff
	subi $sp, $sp, 4 # make room for the saved items below
	sw $ra, 0($sp) # store $ra
	
	jal clearDisplay
	
	li $a0, 86 # x-coordinate
	li $a1, 0 # y-coordinate
	li $a2, 'W' # white color 
	li $a3, 255 # length of line
	gameBoarDrawingVericalLines:
		jal drawVerticalLine
		beq $a0, 172, prepareGameBoarDrawingHorizontalLines
		sll $a0, $a0, 1 # multiply x-coordinate by 2 for next iteration
		li $a1, 0 # y-coordinate back to zero
		li $a3, 255 # length of line refresh to 255
		b gameBoarDrawingVericalLines
		
		
	prepareGameBoarDrawingHorizontalLines:
	li $a0, 0 # x-coordinate
	li $a1, 86 # y-coordinate
	li $a3, 255 # length of line refresh to 255
	
		gameBoarDrawingHorizontalLines:
			jal drawHorizontalLine
			beq $a1, 172, finishGameBoarDrawingLines
			sll $a1, $a1, 1 # multiply y-coordinate by 2 for next iteration
			li $a0, 0 # x-coordinate back to zero
			li $a3, 255 # length of line refresh to 255
			b gameBoarDrawingHorizontalLines
		
		
			finishGameBoarDrawingLines:
				lw $ra, 0($sp) # restore $ra
				addi $sp, $sp, 4 # set the $sp back to its original state
				
				jr $ra				

# draw a black box over the entire display
# argument: none
# return: none				
clearDisplay:	
	subi $sp, $sp, 4 # make room for the saved items below
	sw $ra, 0($sp) # store $ra
	
	li $a0, 0 # set $a0 to zero
	li $a1, 0 # set $a1 to zero
	li $a2, '0' # color should be black which is char 0
	li $a3, 256 # full screen, all 256 rows
	
	jal drawBox
	
	lw $ra, 0($sp) # put the correct $ra back to get to this method's caller below
	addi $sp, $sp, 4 # adjust $sp back to its original state
	jr $ra

	
# draw the X in the correct box
# arguments : $a0 x-coordinate where X begins, $a1 y-coordinate where X begins
# return: nothing
drawX:
	# stack stuff
	subi $sp, $sp, 12 # make room for the saved items below
	sw $ra, 0($sp) # store $ra
	sw $a0, 4($sp) # store $a0
	sw $a1, 8($sp) # store $a1
	
	li $a2, 'Y' # yellow color
	li $a3, 0 # negative slope
	jal drawSlopedLine
	
	lw $a0, 4($sp) # restore $a0
	lw $a1, 8($sp) # restore $a1
	
	addi $a1, $a1, 62 # y-coordinate
	li $a2, 'Y' # yellow color
	li $a3, 1 # postive slope
	jal drawSlopedLine
	
	lw $ra, 0($sp) # restore $ra
	addi $sp, $sp, 12 # set the $sp back to its original state
	
	jr $ra		
	

# draw a horizontal lines of arbitraty length to make a circle
# argument: $a0: x-coordinate, $a1: y-coordinate
# return: none				
drawO:

	li $a2, 'G' # green color
	li $a3, 32 # radius

	subi $sp, $sp, 32 # make room for the saved items below
	sw $ra, 0($sp) # store $ra
	sw $s0, 20($sp) # store $s0 before changing below
	sw $s1, 24($sp) # store $s1 before changing below
	sw $s5, 28($sp) # store $s1 before changing below
	
	move $s1, $a3 # y-offset
	li $s5, 0 # counter
	
	circleLoop:
		sw $a1, 4($sp) # store y-coord
		sw $a2, 8($sp) # store color
		sw $a0, 12($sp) # store x-coord
		sw $a3, 16($sp) # store radius
		
		la $t0, SquaresTable # load squares table address into $t0
		li $t1, 1024 # set $t0 equal to fixed radius squared (32)^2
		
		# determine the x-offset
		sll $t2, $s1, 2 # multiply y-offset by 4 to get the proper offset below (stored as words)
		add $t2, $t2, $t0 # set the SquareTable Pointer to the correct value
		lw $t3, 0($t2) # set $t3 to the value of the square of the y-offset
		sub $t3, $t1, $t3 # substract the square of the y-offset from the square of the radius 
		
		li $t4, 0 # counter for loop below, hold the (floor) value of the square root 
		la $t0, SquaresTable # load the address of the squares table to $t2
		
		determineXPositonOffsetLoop:
			lw $t2, 0($t0) # load the next square into $t2 for comparison below
			bge $t2, $t3, setCoordinates
			addi $t0, $t0, 4 # move the squares table to the next word
			addi $t4, $t4, 1 # increment the counter
			b determineXPositonOffsetLoop
				
			setCoordinates:
			move $t0, $t4 # x-coordinate offset
			
			li $a3, 4 # if zero, make the line length four
			subi $a0, $a0, 2 # proper offset for x-coord with 4 as length
			beqz $t0, drawLine
			
			addi $a0, $a0, 2 # correct the substraction from above for the zero case
			sub $a0, $a0, $t0 # this is the x-coodinate start position
			sll $a3, $t0, 1 # multiplying the offset by two gives the length of the line, in $a3
			
			drawLine:
			jal drawHorizontalOutline
			
			lw $a1, 4($sp) # load y-coord
			lw $a2, 8($sp) # load color
			lw $a0, 12($sp) # load x-coord
			lw $a3, 16($sp) # load radius
			
			li $t9, -1 # we are first decrementing the y offset on each iteration as we haven't passed the (0,0) coordinate 
			blt $s5, $a3, stillTopOfCircle
			li $t9, 1 # we are now incrementing the y offset on each iteration as we passed the (0,0) coordinate 
		
			stillTopOfCircle:
			addi $a1, $a1, 1 # increment y-coordinate
			add $s1, $s1, $t9 # increment/decrement y-offset
			addi $s5, $s5, 1 # increment counter
			
			sll $t2, $a3, 1 # multiply the radius by two to get the diameter for below comparison
		
			ble $s5, $t2, circleLoop
		
			lw $s0, 20($sp) # restore $s0 to its state before this method
			lw $s1, 24($sp) # restore $s1 to its state before this method
			lw $s5, 28($sp) # restore $s5 to its state before this method
			lw $ra, 0($sp) # put the correct $ra back to get to this method's caller below
			addi $sp, $sp, 32 # adjust $sp back to its original state
			
			
			jr $ra	
			
			
			
# draw a horizontal line of an arbitraty length to make a rectangle
# argument: $a0: x-coordinate, $a1: y-coordinate, $a2: color, $a3: rows of box
# return: none				
drawBox:
	subi $sp, $sp, 24 # make room for the saved items below
	sw $ra, 0($sp) # store $ra
	sw $s0, 20($sp) # store $s0 before changing below
	
	move $s0, $a3 # set $s0 equal to $a3
	
	boxLoop:
		sw $a1, 4($sp) # store $a1
		sw $a2, 8($sp) # store $a2
		sw $a0, 12($sp) # store $a0
		sw $a3, 16($sp) # store $a3
		
		jal drawHorizontalLine
		
		lw $a1, 4($sp) # load $a1
		lw $a2, 8($sp) # load $a2
		lw $a0, 12($sp) # load $a0
		lw $a3, 16($sp) # load $a3
		
		addi $a1, $a1, 1 # increment the y-coordinate
		subi $s0, $s0, 1 # decrement box row count
		
		bnez $s0, boxLoop
		
		lw $s0, 20($sp) # restore $s0 to its state before this method
		lw $ra, 0($sp) # put the correct $ra back to get to this method's caller below
		addi $sp, $sp, 24 # adjust $sp back to its original state
	
		jr $ra
		

# draw a horizontal line of an arbitrary length
# argument: $a0: x-coordinate, $a1: y-coordinate, $a2: color, $a3: length of line
# return: none				
drawHorizontalLine:
	subi $sp, $sp, 20 # make room for the saved items below
	sw $ra, 0($sp) # store $ra

	horzontalLineLoop: 
		sw $a1, 4($sp) # store $a1
		sw $a2, 8($sp) # store $a2
		sw $a0, 12($sp) # store $a0
		sw $a3, 16($sp) # store $a3
		
		jal drawDot
		
		lw $a1, 4($sp) # load $a1
		lw $a2, 8($sp) # load $a2
		lw $a0, 12($sp) # load $a0
		lw $a3, 16($sp) # load $a3
		
		addi $a0, $a0, 1 # increment the x-coordinate
		subi $a3, $a3, 1 # decrement the length of line number
		bnez $a3, horzontalLineLoop
 
		lw $ra, 0($sp) # put the correct $ra back to get to this method's caller below
		addi $sp, $sp, 20 # adjust $sp back to its original state
	
		jr $ra
		
		
# draw a horizontal outline of an arbitrary length (just the first and last dots have color)
# argument: $a0: x-coordinate, $a1: y-coordinate, $a2: color, $a3: length of line
# return: none				
drawHorizontalOutline:
	subi $sp, $sp, 24 # make room for the saved items below
	sw $ra, 0($sp) # store $ra
	sw $s0, 20($sp) # store $s0 befroe changing below
	li $s0, 0 # used to tell if first iteration compeleted 

	horzontalOutlineLoop: 
		sw $a1, 4($sp) # store $a1
		sw $a2, 8($sp) # store $a2
		sw $a0, 12($sp) # store $a0
		sw $a3, 16($sp) # store $a3
		
		beqz $s0, drawThatDot # skip black color change on first iteration
		blt $a3, 2, drawThatDot # skip black color change for final iterations
		li $a2, '0' # use black color to match background for all not edge dots
		
		drawThatDot:
		jal drawDot
		
		lw $a1, 4($sp) # load $a1
		lw $a2, 8($sp) # load $a2
		lw $a0, 12($sp) # load $a0
		lw $a3, 16($sp) # load $a3
		
		addi $a0, $a0, 1 # increment the x-coordinate
		subi $a3, $a3, 1 # decrement the length of line number
		li $s0, 1 # denotes first incrementation completeted 
		
		bnez $a3, horzontalOutlineLoop
 
		lw $ra, 0($sp) # put the correct $ra back to get to this method's caller below
		lw $s0, 20($sp) # restore $s0 
		addi $sp, $sp, 24 # adjust $sp back to its original state
	
		jr $ra
		
		

# draw a vertical line of an arbitrary length
# argument: $a0: x-coordinate, $a1: y-coordinate, $a2: color, $a3: length of line
# return: none				
drawVerticalLine:
	subi $sp, $sp, 20 # make room for the saved items below
	sw $ra, 0($sp) # store $ra

	verticalLineLoop: 
		sw $a1, 4($sp) # store $a1
		sw $a2, 8($sp) # store $a2
		sw $a0, 12($sp) # store $a0
		sw $a3, 16($sp) # store $a3
		
		jal drawDot
		
		lw $a1, 4($sp) # load $a1
		lw $a2, 8($sp) # load $a2
		lw $a0, 12($sp) # load $a0
		lw $a3, 16($sp) # load $a3
		
		addi $a1, $a1, 1 # increment the y-coordinate
		subi $a3, $a3, 1 # decrement the length of line number
		bnez $a3, verticalLineLoop
 
		lw $ra, 0($sp) # put the correct $ra back to get to this method's caller below
		addi $sp, $sp, 20 # adjust $sp back to its original state
	
		jr $ra
		
		
# draw a sloped (1) line of 64 pixels
# argument: $a0: x-coordinate, $a1: y-coordinate, $a2: color, $a3: negative slope
# return: none				
drawSlopedLine:
	subi $sp, $sp, 24 # make room for the saved items below
	sw $ra, 0($sp) # store $ra
	li $t0, 62 # fixed length of line

	slopedLineLoop: 
		sw $a1, 4($sp) # store $a1
		sw $a2, 8($sp) # store $a2
		sw $a0, 12($sp) # store $a0
		sw $a3, 16($sp) # store $a3
		sw $t0, 20($sp) # store $t0
		
		jal drawDot
		
		lw $a1, 4($sp) # load $a1
		lw $a2, 8($sp) # load $a2
		lw $a0, 12($sp) # load $a0
		lw $a3, 16($sp) # load $a3
		lw $t0, 20($sp) # load $t0
		
		addi $a0, $a0, 1 # increment the x-coordinate
		addi $a1, $a1, 1 # increment the y-coordinate
		subi $t0, $t0, 1 # decrement the length of line number
		beqz $a3, checkIfSlopedLineLoopsAgain
		subi $a1, $a1, 2 # this is for negative slope, sub 2 because of the 1 added above
		
		checkIfSlopedLineLoopsAgain:
			bnez $t0, slopedLineLoop
 
		lw $ra, 0($sp) # put the correct $ra back to get to this method's caller below
		addi $sp, $sp, 24 # adjust $sp back to its original state
	
		jr $ra
	
	
# draws a dot of the chosen at the location provided by the x and y coordinate 
# argument: $a0: x-coordinate, $a1: y-coordinate, $a2: color
# return: none
drawDot:
	subi $sp, $sp, 8 # make room for the saved items below
	sw $ra, 4($sp) # store $ra
	sw $a2, 0($sp) # store the chosen color
	
	jal calculateAddress
	
	lw $a2, 0($sp) # restore $a2
	sw $v0, 0($sp) # save the pixel mem location for below
	
	jal getColor
	lw $v0, 0($sp) # restore $v0
	
	sw $v1, 0($v0) # draw the dot
	lw $ra, 4($sp) # put the correct $ra back to get to this method's caller below
	addi $sp, $sp, 8 # adjust $sp back to its original state
	
	jr $ra
	

# caclulates address of pixel based off y and x coordinates 
# argument: $a0: x-coordinate, $a1: y-coordinate, $a2: color
# return: $v0: calculated memory address of pixel based on (x,y) Cartesian coordinates 
calculateAddress: 
	
	move $v0, $s6 # set $v0 to the base address of display
	sll $a0, $a0, 2 # multiply x coordinate by 4 to get proper column
	sll $a1, $a1, 10 # multiply y coordinate by 256 to get the row and then by 4 (b/c stored as words)
	
	add $a0, $a0, $a1 # add the two numbers to get the proper offset and store in $a1
	add $v0, $v0, $a0 # add the offset to $v0, which already contained the base address of display
	
	jr $ra

# return the color value in $v1 based on the argument
# argument: $a2: contains character B, G, R, Y or 0
# return: $v1: 32 bit color value
getColor:
	
	la $t0, ColorTable # load base address of color table to $t0
	
	colorTableLoop:
		lw $t1, 0($t0) # load the next byte into $t1, this byte has the color character
		beq $t1, $a2, loadColorValue
		addi $t0, $t0, 8 # move 2 word up to get the next color character
		b colorTableLoop
		
		loadColorValue:
			
			lw $v1, 4($t0) # place the whole word in $v1
			
			jr $ra
			
	        
	        
	        
	        
	        
	        
	        
