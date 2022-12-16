	.text	#area para instruçoes do programa

	li $t0, 75 # adicionado o valor para esse registrador
	li $t1, 25 # adicionado o valor para esse registrador
	sub $t2, $t0, $t1 #subtraindo os valores salvos nos dois registradoes
	subi $t3, $t2, -40 #subtraindo o valor salvo em um registrador com um valor adicionado imediatamente
	