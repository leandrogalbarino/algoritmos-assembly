# Média de Três Números: Crie um programa que lê três números inteiros, calcula a média deles e imprime o resultado.

.data
	# VARIAVEIS DA MEMORIA

	a: .word 99	 #variavel int com valor = 99
	b: .word 1	 #variavel int com valor = 1
	c: .word 100	 #variavel int com valor = 100
	res: .space 4	 #espaco reservado na memoria

.text
	# COMANDOS
	
	lw $t0, a 		# le o valor de a
	lw $t1, b		# le o valor de b
	lw $t2, c		# le o valor de c
	li $t3, 3		# coloca na variavel t3 o valor 3
		
	add $t4, $t0, $t1 	# t4 = t0 + t1
	add  $t5, $t4, $t2	# t5 = t4 + t2
	
	div $t5, $t3		# divide t5 / 3
	
	mflo $t5		# coloca o valor da divisao em t5
	mfhi $t6		# coloca o resto da divisao em t6
	
	sw $t5 res		# atribui a variavel da memoria res, o valor de t5
	
	li $v0, 1 		# imprime um inteiro
	lw $a0, res		# carrega o valor da variavel res e coloca em $a0
	syscall			# chama o sistema e faz a impressão
	
	
	