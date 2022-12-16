.data 
	pergunta: .asciiz "Qual o seu nome: "
	saida: .asciiz  "Olá, "
	nome: .space 25
	
.text
	li $v0, 4 #imprimir uma string
	la $a0, pergunta
	syscall
	
	#leitura do nome
	li $v0, 8 
	la $a0, nome
	la $a1, 25
	syscall
	
	#mostra a saida
	li $v0, 4 
	la $a0, saida
	syscall
	
	#impressao do nome
	li $v0, 4
	la $a0, nome
	syscall