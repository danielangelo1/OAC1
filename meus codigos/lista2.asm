.data

	pi: .float 3.14159265359	
	raio: .float 12
	msg: .asciiz "A area é: "
	
.text
	l.s $f14, raio
	l.s $f12, pi
	mul.s $f12, $f12, $f14 #f12= pi *raio
	mul.s $f12, $f12, $f14 #f12= pi *raio *raio
	
	#imprimindo a area
	li $v0, 2
	la $a0, msg
	syscall
	
		