### imprimindo um float

.data
  pi: .float 3.14

.text
  addi $v0, $zero, 2  ## 2 = imprimir float
  lwc1 $f12, pi ## operacoes float utilizam o coprocessor 1
  syscall
