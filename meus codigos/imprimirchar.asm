.data 
	#area para dados na memoria princial
	idade: .word  19 #inteiro a ser impresso
	
.text	#area para instruçoes do programa

	li $v0, 1 # funcao para imprimir char
	lw $a0, word # passando o parametro char para o registrado a0
	syscall #precisa estar em a0

	li $v0, 10
	syscall