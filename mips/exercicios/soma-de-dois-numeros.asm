#Soma de Dois Números: Escreva um programa que lê dois números inteiros, soma-os e exibe o resultado.

.data
#VARIAVEIS DA MEORIA
	VarA: .word 35
	VarB: .word 35
	VarC: .space 4

.text


	li $v0, 1 #imprime um inteiro
	lw $a0, VarA  #Coloca o valor de VarA em a0
	syscall #Chama o sistema e pede para ele executar
	
	li $v0, 1  #imprime um int
	lw $a0, VarB  #Coloca o valor de VarB EM a0
	syscall #chama o sistema e pede que faça os comandos
	
	lw $t0, VarA #le o valor de VarA na memoria e coloca em $t0
	lw $t1, VarB # mesma coisa de cima
	
	add $t3, $t0, $t1   # faz a soma de t0(VarA) +   t1 ( VarB) e coloca em t3
	sw $t3, VarC  #escre em VarC o valor de $t3
	
	li $v0, 1 # imprime um int
	lw $a0, VarC  # Coloca o valor de VarC em a0
	syscall #chama o sistema e pede que faça os comandos

	
		
	li $v0, 10
	syscall