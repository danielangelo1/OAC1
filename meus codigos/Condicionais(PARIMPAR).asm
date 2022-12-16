.data 
	pergunta: .asciiz "Insira um numero : "
	par: .asciiz "O numéro é par."
	impar: .asciiz "O número é impar."
.text
	li $v0, 4 #imprimir uma string
	la $a0, pergunta
	syscall
	
	#lendo o numero
	li $v0, 5
	syscall #valor lido estara em $f0
	
	li $t0, 2
	div $v0, $t0
	
	mfhi $t1, #possui o resto da divisao por  2
	
	beq $t1, $zero, imprimePar
	li $v0, 4 #imprimir uma string
	la $a0, impar
	syscall
	
	#encerrar o programa
	li $v0, 10
	syscall
	
	imprimePar:
		li $v0, 4
		la $a0, par
		syscall