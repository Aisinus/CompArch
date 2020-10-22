.data 
prompt: .asciiz "Enter n "
.text


li $v0, 4
la $a0, prompt
syscall

li $v0, 5 
syscall

move $a3, $v0
li $a1, 0
li $a2, 0
jal rec

li $v0,1
move $a0, $a1
syscall 

li $v0, 10
syscall

rec:
add $a1, $a1, $a2
beq $a2, $a3, exit
add $a2, $a2, 1
j rec
exit:
jr $ra
