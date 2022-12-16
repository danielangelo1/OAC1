### Funções
.data
  message: .asciiz "MIPS OAC I \n"
.text
  main: 
    jal displayMessage  ## jump and link
    # Observar o valor de $ra
    addi $s0, $zero, 5
     ## imprimi 5 na tela
    li $v0, 1
    add $a0, $zero, $s0
    syscall
  
  li $v0, 10  ### avisa que o programa finalizou
  syscall
  
  displayMessage:
    li $v0, 4
    la $a0, message
    syscall
    jr $ra  ## volta para onde a funcao foi chamada
