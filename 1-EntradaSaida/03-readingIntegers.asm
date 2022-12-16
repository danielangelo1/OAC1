.data
  prompt: .asciiz "Entre com o número: "
  message: .asciiz "Seu numero é: "
  
 .text
   addi $v0, $zero, 4  # 4 para imprimir uma string
   la $a0, prompt
   syscall
   
   # Obtém a entrada do usuário
   addi $v0, $zero, 5  # código prar ler do teclado um inteiro
   syscall
   
   # Armazenar o resultado em $t0
   add $s0, $zero, $v0
   
   # imprime a mensagem
   addi $v0, $zero, 4
   la $a0, message
   syscall
   
   # imprime o valor
   addi $v0, $zero, 1
   add $a0, $s0, $zero
   syscall
   
  
