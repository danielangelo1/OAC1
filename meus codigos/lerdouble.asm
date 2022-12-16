.data 
	pergunta: .asciiz "Insira um numero decimal: "
	zero: .double 0.0
.text
	li $v0, 4 #imprimir uma string
	la $a0, pergunta
	syscall
	
	#lendo o float
	li $v0, 7
	syscall #valor lido estara em $f0
	
	
	ldc1 $f2, zero
	add.d $f12, $f2, $f0
	
	#imprimindo o numerop
	li $v0, 3
	syscall