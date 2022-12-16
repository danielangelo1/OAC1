#http://courses.missouristate.edu/kenvollmar/mars/download.htm
# Java JRE
# java -jar Mars4_5.jar

.data
  myMessage: .asciiz "Hello World \n"
  myCharacter: .byte 'm'

.text

  addi $v0, $zero, 4    # v0 = 0+ 4 impressao na tela
  la $a0, myMessage     # a0 argumento de funcao
  syscall # chamada de sistema para operação de entrada e saída
  # verifica o valor de $v0 para saber qual rotina executar
  # os argumentos deverão ficar em $a0
  
  addi $v0, $zero, 4 ## 4 para imprimir na tela  $v0 = 4
  la $a0, myCharacter
  syscall

  ### Visualizar a memoria no formato ASCII
