.data

	pi: .float 3.14159265359	
	msg: .asciiz "A area é: "
.text
	l.s $f1, 12 #r=12
	l.s $f12, pi
	mul.s $f12, $f12, $f1 #f12= pi *raio
	mul.s $f12, $f12, $f1 #f12= pi *raio  *raio
	
	#imprimindo a area
	la $a0, msg 
	li $v0, 2
	syscall
	
		