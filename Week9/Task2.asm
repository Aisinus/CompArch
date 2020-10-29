.data 
prompt: .asciiz "Enter n "
error: .asciiz "error"
.text


li $v0, 4
la $a0, prompt
syscall

li $v0, 5 
syscall

move $a3, $v0 
beqz $a3,eror
li $a1, 2 
li $a2, 1 
li $t0,2
jal rec


li $v0,1
move $a0, $a1
syscall 

li $v0, 10
syscall

rec:
beq $a2, $a3, exit

mul $t0,$t0,2
add $a1,$a1,$t0	
add $a2, $a2, 1
j rec


exit:
jr $ra


eror:
li $v0, 4
la $a0, error
syscall

li $v0, 10
syscall



