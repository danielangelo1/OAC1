	.text	#area para instruçoes do programa

	li $t0, 75 # adicionado o valor para esse registrador
	li $t1, 25 # adicionado o valor para esse registrador
	add $s0, $t0, $t1 #somando os valores salvos nos dois registradoes
	addi $s1, $t0, 33 #somando o valor salvo em um registrador com um valor adicionado imediatamente
	