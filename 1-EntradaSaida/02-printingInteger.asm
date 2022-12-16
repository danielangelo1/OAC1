
.data
  dec: .word  85  # word ou inteiro

.text
  addi $v0, $zero, 1    ## 1 =  imprimir um inteiro
  lw $a0, dec  ## load word  ## a0
  syscall
  ### Visualizar a memoria no formato decimal
