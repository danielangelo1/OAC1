.data
  message: .asciiz "Entre o valor de : "

.text

  ### imprimir a mensagem
  addi $v0, $zero, 4
  la $a0, message
  syscall
  
  addi $v0, $zero, 7  ## 7 para ler um double
  syscall    ## $f0 = input()
  
  ## mostra o valor
  addi $v0, $zero, 3 ## 3 para mostrar um double
  add.d $f12, $f0, $f2 ### somente para mover f0 para f12
  syscall
  
  
  
  
   
  
