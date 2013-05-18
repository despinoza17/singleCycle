OCTAL:
	andi $r0, $r0, 0
	andi $r1, $r1, 0
	andi $r2, $r2, 0
	lw $r0, 0($r0)
	lui $r1, 0x01
	ori $r1, $r1, 0xFF
	and $r0, $r0, $r1
	andi $r1, $r1, 0

	addi $r2, $r2, 13
	sllv $r1, $r0, $r2
	srlv $r1, $r1, $r2

	andi $r2, $r2, 0
	addi $r2, $r2, 3
	srlv $r0, $r0, $r2
	addi $r2, $r2, 10
	sllv $r0, $r0, $r2
	addi $r2, $r2, -4
	srlv $r0, $r0, $r2
	or $r1, $r1, $r0

	andi $r0, $r0, 0
	andi $r2, $r2, 0
	lw $r0, 0($r0)
	lui $r2, 0x01
	ori $r2, $r2, 0xFF
	and $r0, $r0, $r2
	andi $r2, $r2, 0
	addi $r2, $r2, 6
	srlv $r0, $r0, $r2
	addi $r2, $r2, 7
	sllv $r0, $r0, $r2
	addi $r2, $r2, -8
	srlv $r0, $r0, $r2
	or $r1, $r1, $r0

	disp $r1, 0
	jr $r3


