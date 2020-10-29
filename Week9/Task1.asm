.data
num54: .float 5.4
num1823: .float 18.23
num123: .float 12.3
num823: .float 8.23


.text

li $v0, 6
syscall

mov.s $f4, $f0

li $v0, 6
syscall

mov.s $f6, $f0

mul.s $f8, $f4, $f6

l.s $f10, num54
mul.s $f8, $f8, $f10

l.s $f10, num1823
mul.s $f4, $f4, $f10

l.s $f10, num123
mul.s $f6, $f6, $f10

add.s $f12, $f8, $f4

sub.s $f12, $f12, $f6

l.s $f10, num823
sub.s $f12, $f12, $f10

li $v0, 2
syscall

li $v0, 10
syscall
