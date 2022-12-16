.data
	pergunta: .asciiz "Insira o primeiro n�mero a ser multiplicado:  "
	pergunta2: .asciiz "Insira o segundo n�mero a ser multiplicado: "
	resultado: .asciiz "O resultado da multiplica��o �: "
.text

	li $v0, 4
	la $a0, pergunta  # Imprime a mensagem na tela
	syscall
	addi $v0, $zero, 5 
	syscall
	add $s0, $zero, $v0   # O n�mero digitado � armazenado no registrador s0
	
	li $v0, 4
	la $a0, pergunta2          #	Imprime a segunda mensagem pedido ao usuario digitar o numero
	syscall
	addi $v0, $zero, 5 
	syscall
	add $s1, $zero, $v0   # O n�mero digitado � armazenado no registrador s1
 
	while:                  #Loop para que os n�meros sejam divididos e multiplicados
	andi $t0, $s0, 1
	beq $t0, 1, impar     #Condi��o para somar o n�mero seguindo a logica camponesa
	srl $s0, $s0, 1
	sll $s1, $s1, 1
	beq $s0, $s3, saida   # Condi��o para encerramento do processo de multiplica��o
	j while

	impar:
	add $s4, $s4, $s1     # Armazena o valor que estava em s1 para s4
	srl $s0, $s0, 1       
	sll $s1, $s1, 1
	j while

	saida:               
	li $v0, 4
	la $a0, resultado # Imprime na tela o resultado da multiplica��o
	syscall
	
	li $v0, 1 
	la $a0, ($s4)
	
	syscall
	li $v0, 10 # Encerra o programa.
	syscall
