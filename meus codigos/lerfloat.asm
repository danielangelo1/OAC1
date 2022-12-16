.data 
	pergunta: .asciiz "Insira um numero decimal: "
	zero: .float 0.0
.text
	li $v0, 4 #imprimir uma string
	la $a0, pergunta
	syscall
	
	#lendo o float
	li $v0, 6
	syscall #valor lido estara em $f0
	
	
	lwc1 $f1, zero
	add.s $f12, $f1, $f0
	
	li $v0, 2
	syscall