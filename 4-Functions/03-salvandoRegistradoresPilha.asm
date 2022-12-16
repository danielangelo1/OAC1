# salvando registradores pilha
.data
  newLine: .asciiz "\n"
.text
  main: 
    addi $s0, $zero, 333  # $s0 = 10
    jal increaseMyRegister
   
    li $v0, 4
    la $a0, newLine
    syscall
    
    # imprimi o valor
    li $v0, 1
    move $a0, $s0
    syscall     # $imprime 10
    
  # finaliza o programa    
  li $v0, 10
  syscall
  
  increaseMyRegister:
    addi $sp, $sp, -4  # stack pointer, libera 4 bytes na pilha.
    sw $s0, 0( $sp )   # memoria[ $sp + 0 ] = $s0
    addi $s0, $s0, 30  # s0 += 30
    
    # imprimi novo valor funcao
    li $v0, 1
    move $a0, $s0
    syscall   # imprime 40
    
    lw $s0, 0($sp)     # $s0 = memoria[ $sp +0 ]
    addi $sp, $sp, 4   # restaura o ponterio para o topo da pilha
    jr $ra


