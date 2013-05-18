addi $r1, $r0, 4
sw $r1, 0($r0)
addi $r1, $r0, 20
sw $r1, 1($r0)
addi $r1, $r0, 40
sw $r1, 2($r0)
addi $r1, $r0, 30
sw $r1, 3($r0)
addi $r1, $r0, 10
sw $r1, 4($r0)

Average8:
	andi $r1, $r1, 0
	andi $r2, $r2, 0
	andi $r0, $r0, 0
	lw $r0, 0($r0)				# load number of elems


sum:						
	lw $r2, 0($r0)	    	# elem from mem
	addi $r0, $r0, -1
	addp8 $r1, $r1, $r2		# add numbers
	andi $r2, $r2, 0
	bne $r0, $r2, sum		# branch if not equal

	addi $r0, $r0, 8
	srlv $r2, $r1, $r0		# move top 8 bits to bottom
	add $r1, $r1, $r2		# add top 8 bits with bottom 8 bits
	andi $r0, $r0, 0
	lw $r0, 0($r0)
	divp8 $r2, $r1, $r0 	# divide the final sum by r0 value
	andi $r0, $r0, 0
	addi $r0, $r0, 8
	sllv $r2, $r2, $r0		# zero out top
	srlv $r2, $r2, $r0		# back

	disp $r2, 0
	jr $r3
