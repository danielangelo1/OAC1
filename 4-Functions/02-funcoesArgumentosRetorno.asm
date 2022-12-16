### retorno funções
.data
  message: .asciiz "MIPS OAC I \n"
.text
  main: 
     # a0, a1, a2, a3 para passar argumentos
     addi $a1, $zero, 50
     addi $a2, $zero, 100
     jal addNumbers
     # imprimindo v1
     li $v0, 1         # imprimir inteiro
     addi $a0, $v1, 0  # $a0 = $v1 + 0
     syscall
  # finaliza o programa    
  li $v0, 10
  syscall
  addNumbers:
    add $v1, $a1, $a2
    # $v1 valores de retorno
    jr $ra  # return
