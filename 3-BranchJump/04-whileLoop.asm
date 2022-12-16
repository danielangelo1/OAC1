.data
   message: .asciiz "Após o Loop While \n"
   space: .asciiz " "
.text
  
  main:
  
  addi $t0, $zero, 0
  while:
    bgt $t0, 10, exit #while t0 <= 10
    jal printNumber  ## quando usa jal, pode usar jr $ra
    addi $t0, $t0, 1  #t0 = t0 +1
    j while
  exit:
    li $v0, 4
    la $a0, message
    syscall 
  
  end:
  li $v0, 10
  syscall
  
  printNumber:
  li $v0, 1
  add $a0, $t0, $zero
  syscall
  li $v0, 4
  la $a0, space
  syscall
  jr $ra

