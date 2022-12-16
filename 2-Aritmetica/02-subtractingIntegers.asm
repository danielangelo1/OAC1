### subtraindo inteiros

.data
  number1: .word 20
  number2: .word  8

.text
  lw $s0, number1  ### $s0 = 20 saved registers
  lw $s1, number2
  
  sub $t0, $s0, $s1 # $t0 = $s0 - $s1
  
  addi $v0, $zero, 1  ### imprimindo inteiro
  add  $a0, $zero, $t0
  #add $a0, $t0, $0
 
  syscall
