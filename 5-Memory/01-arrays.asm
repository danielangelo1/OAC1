.data
  myArray: .space 12  #reserva o espaço da memoria
.text
  addi $s0, $zero, 4
  addi $s1, $zero, 10
  addi $s2, $zero, 12
  addi $t0, $zero, 0
  
  sw $s0, myArray($t0)
  addi $t0, $t0, 4
  sw $s1, myArray($t0)
  addi $t0, $t0, 4
  sw $s2, myArray($t0)

  addi $t0, $zero, 0
  lw $t6, myArray( $t0 )
  li $v0, 1
  addi $a0, $t6, 0
  syscall
  
  addi $t0, $t0, 4
  lw $t6, myArray( $t0)
  li $v0, 1
  addi $a0, $t6, 0
  syscall

  addi $t0, $t0, 4
  lw $t6, myArray( $t0)
  li $v0, 1
  addi $a0, $t6, 0
  syscall

