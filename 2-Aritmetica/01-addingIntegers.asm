### somando inteiros

.data
  number1: .word 5
  number2: .word 10

.text
  lw $t0, number1($zero)
  lw $t1, number2($zero)
  
  add $t2, $t0, $t1 # $t2 = $t0 + $t1
  
  addi $v0, $zero, 1  ### imprimindo inteiro
  add  $a0, $zero, $t2  ### valor a ser impresso em $a0 = 0 + $t2
  syscall
