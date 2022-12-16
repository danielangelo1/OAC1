.data
	pergunta: .asciiz "Insira um número positivo: "
	msgPar: .asciiz "O número é par"
	msgImpar: .asciiz "O número é impar." 

.text
	la $a0, pergunta
	jal imprimeString
	jal leInteiro
	
	move $a0, $v0
	jal ehImpar
	beq $v0, $zero, imprimePar
	la $a0, msgImpar
	jal imprimeString
	jal encerraPrograma
		
	imprimePar:
	la $a0, msgPar
	jal imprimeString
	jal encerraPrograma
	
	#encerra programa
	encerraPrograma:
		li $v0, 10
		syscall
	
	#retorna 1 se for impar retortna 0 se for par
	ehImpar:
		li $t0, 2
		div $a0, $t0
		
		mfhi $v0
		jr $ra
		
	#funcao que recebe uma string em a0 e imprime 	
	imprimeString:
	li $v0, 4
	syscall 
	jr $ra
	
	#funcao que le um inteiro e retora em v0
	leInteiro:
	li $v0, 5
	syscall
	jr $ra