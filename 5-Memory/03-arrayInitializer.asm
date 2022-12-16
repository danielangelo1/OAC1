.data
  #myArray: .word 100:3  # 3 elementos e cada um com o valor 100
  #myArray: .word 5:3  # 3 elementos e cada um com o valor 5
  myArray: .word 5:10  # 10 elementos e cada um com o valor 5
  newLine: .asciiz " " 
  
.text

    addi $t0, $zero, 0

  while:
    beq $t0, 40, exit
    lw $t6, myArray( $t0 )
    addi $t0, $t0, 4
    ### imprime o numero
    li $v0, 1
    move $a0, $t6
    syscall
    ### imprime uma linha
    li $v0, 4
    la $a0, newLine
    syscall
    
    j while
  exit:
    ### finaliza o program
    li $v0, 10
    syscall
