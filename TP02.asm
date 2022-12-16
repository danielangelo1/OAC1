.data
	pergunta: .asciiz "Insira o primeiro número a ser multiplicado:  "
	pergunta2: .asciiz "Insira o segundo número a ser multiplicado: "
	resultado: .asciiz "O resultado da multiplicação é: "
.text

	li $v0, 4
	la $a0, pergunta  # Imprime a mensagem na tela
	syscall
	addi $v0, $zero, 5 
	syscall
	add $s0, $zero, $v0   # O número digitado é armazenado no registrador s0
	
	li $v0, 4
	la $a0, pergunta2          #	Imprime a segunda mensagem pedido ao usuario digitar o numero
	syscall
	addi $v0, $zero, 5 
	syscall
	add $s1, $zero, $v0   # O número digitado é armazenado no registrador s1
 
	while:                  #Loop para que os números sejam divididos e multiplicados
	andi $t0, $s0, 1
	beq $t0, 1, impar     #Condição para somar o número seguindo a logica camponesa
	srl $s0, $s0, 1
	sll $s1, $s1, 1
	beq $s0, $s3, saida   # Condição para encerramento do processo de multiplicação
	j while

	impar:
	add $s4, $s4, $s1     # Armazena o valor que estava em s1 para s4
	srl $s0, $s0, 1       
	sll $s1, $s1, 1
	j while

	saida:               
	li $v0, 4
	la $a0, resultado # Imprime na tela o resultado da multiplicação
	syscall
	
	li $v0, 1 
	la $a0, ($s4)
	
	syscall
	li $v0, 10 # Encerra o programa.
	syscall
