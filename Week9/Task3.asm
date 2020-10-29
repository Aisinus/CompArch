.data 
	null: .float 0
	max: .float 3.40e+38f
	outstring: .asciiz "The minumum is:\n"
.text 
	li $t0,  0
	l.s $f2, null			
	l.s $f1, max	
	input: 
		addi $t0, $t0, 1
		beq $t0, 8, exit
		li $v0, 6
		syscall 
		c.lt.s $f0, $f1
		bc1t reassign	
		j input
		
	reassign:	
		add.s $f1, $f0, $f2
		j input 
		
	exit:
		la $a0, outstring
		li $v0, 4
		syscall
		li $v0, 2
		add.s $f12, $f1, $f2
		syscall
		li $v0, 10
		syscall
		
