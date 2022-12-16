.data 
	menor: .asciiz "É menor."
	maior: .asciiz "É maior."
	
.text
	addi $s0, $zero, 100
  	addi $s2, $zero, 200
	
	blt $s0, $t2, imprimeMenor
	li $v0, 4 #imprimir uma string
	la $a0, maior
	syscall
	
	li $v0,10
	syscall
	
		
	imprimeMenor:
		li $v0, 4 #imprimir uma string
		la $a0, menor
		syscall
		
