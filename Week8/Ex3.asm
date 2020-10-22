.data
temp: .asciiz "Formula Equal:"
e: .float 2.71828
pi: .float 3.1415

.text

li $v0, 4
la $a0, temp
syscall

l.s $f1, e
l.s $f2, pi

mul.s $f1, $f1, $f1
div.s $f1, $f1, $f2

li $v0, 2
mov.s $f12, $f1
syscall

li $v0, 10
syscall