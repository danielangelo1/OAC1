#     |-------------|
# max |    stack    |
#     |-------------| 
#     |      |      |
#     |      v      |
#     |             |
#     |      ^      |
#     |      |      |
#     |-------------|
#     |    heap     |
#     |-------------|
#     |    data     |
#     |-------------|
#     |    text     |
# 0   |-------------| 
#
#fatorial( n ) = 1                  se n = 0
#              = n * fatorial(n-1)  se n >= 1

.data
   promptMessage: .asciiz "Entre com um número para encontrar o fatorial"
   resultMessage: .asciiz "\n O fatorial do número é: "
   theNumber:   .word 0
   theAnswer:   .word 0
 
 .text
   .globl main ## permite ser referenciado por outros arquivos
   main: 
     ### lê o número do usuário
     li $v0, 4
     la $a0, promptMessage
     syscall
     
     li $v0, 5
     syscall
     
     sw $v0, theNumber
     # call the factorial function
     
     lw $a0, theNumber
     jal findFactorial
     sw $v0, theAnswer
     
     # display the results
     li $v0, 4
     la $a0, resultMessage
     syscall
     
     li $v0, 1
     lw $a0, theAnswer
     syscall
     
     # finaliza o programa
     li $v0, 10
     syscall
     
.globl findFactorial
findFactorial:
  subu $sp, $sp, 8
  sw $ra, ($sp)  # empilha endereco retorno
  sw $s0, 4($sp) # empilha n
  # caso base
  li $v0 ,1  # $v0 = 1
  beq $a0, 0, factorialDone #if n == 0, return 1
  # fatorial de n -1
  move $s0, $a0
  sub $a0, $a0, 1 # n = n-1
  jal findFactorial
  # multiplicacao
  mul $v0, $s0, $v0
factorialDone:
  lw $ra, ($sp)    #desempilha $ra
  lw $s0, 4($sp)   #desempilha s0
  addu $sp, $sp, 8 #volta o topo da pilha
  jr $ra
     
     
     
     
  
      







