.data
  message: .asciiz "Entre o valor de pi: "
  zeroFloat: .float 0.0  ### definir o zero em float 
.text
  lwc1 $f4, zeroFloat
  ### imprimir a mensagem
  li $v0, 4
  la $a0, message
  syscall
  
  li $v0, 6  ## 6 para ler um float
  syscall    ## $f0 = input()
  
  ## mostra o valor
  li $v0, 2 ## 2 para mostrar um float
  add.s $f12, $f0, $f4
  syscall
  
  
  
  
   
  
