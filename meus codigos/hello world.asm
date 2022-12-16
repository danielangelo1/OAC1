.data 
	#area para dados na memoria princial
	msg: .asciiz  "Hello, World!" #mensagem a ser exibida ao usuario
	
.text	#area para instruçoes do programa

	li $v0,4 #instrucao para impressao de Sring
	la $a0, msg #indica endereco em que esta a mensagem
	syscall #faca, imprima