.data 
	pergunta: .asciiz "Insira um numero : "
	maior: .asciiz "O numéro é maior que zero."
	menor: .asciiz "O número é menor que zero."
	igual: .asciiz "O número é igual a zero"
.text
	li $v0, 4 #imprimir uma string
	la $a0, pergunta
	syscall
	
	#lendo o numero
	li $v0, 5
	syscall #valor lido estara em $f0
	
	move $t0, $v0
	
	beq $t0, $zero, imprimeIgual
	bgt $t0, $zero, imprimeMaior
	blt $t0, $zero, imprimeMenor
	
	
	imprimeIgual:
		li $v0, 4 #imprimir uma string
		la $a0, igual
		syscall
		
		li $v0, 10
		syscall
		
	imprimeMaior:
		li $v0, 4 #imprimir uma string
		la $a0, maior
		syscall
		
		li $v0, 10
		syscall
		
	imprimeMenor:
		li $v0, 4 #imprimir uma string
		la $a0, menor
		syscall
		