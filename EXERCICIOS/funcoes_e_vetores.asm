# IMPLEMENTE UM PROGRAMA COM VETOR DE 5 INTEIROS, COLOQUE OS VALORES 0,1,2,3 NESSE VETOR
# IMPLEMENTE FUNCOES DE STRING, LER NUMEROS E TERMINAR PROGRAMA!;

.data
	vet:
		.align 2		#tipo do vetor
		.space 20		#tamanho do vetor
	pede_numeros: .asciiz "POR FAVOR DIGITE O NUMERO DA POSICAO "
	dois_pontos: .byte ':'
	sucesso: .asciiz "VOCE PRENCHEU O VETOR COM SUCESSO!!\n"
	espaco: .byte ' '
	
.text
	#laco
		move $t0, $zero	
		li $t1, 5
		li $t3, 4
	while:
		beq $t0, $t1, saida		# if(i == 5) break;
		
		# imprime string
		la $a0, pede_numeros
		jal imprime_string
		
		# imprime posicao do vetor
		move $a0, $t0
		jal imprime_inteiro		
		move $t0, $a0
		
		# imprime dois pontos
		lb $a0, dois_pontos
		jal imprime_char
		
		# le inteiro
		jal le_inteiro		
		move $t2, $v0			# t2 = numero_lido;		
		
		# calcula posicao do vetor
		mul $t4, $t3, $t0		# t4 = 4 * i; 
		
		# armazena no vetor
		sw $t2, vet($t4)		
		addi $t0, $t0, 1		# i++;
		j while
	saida:
	la $a0, sucesso
	jal imprime_string
	
	move $t0, $zero	
	li $t1, 5
	li $t3, 4
		imprime_vetor:
			beq, $t0, $t1, termina		# se i = 5 break;
			
			mul $t2, $t0, $t3
			lw $a0, vet($t2)
			jal imprime_inteiro
						
			lb $a0, espaco
			jal imprime_char 
							
			addi $t0, $t0, 1		# i++;
			j imprime_vetor
	termina:
	jal terminar_program

imprime_inteiro:
	li $v0, 1	# codigo para imprimir inteiro
	syscall
	jr $ra		# retorna a funcao chamadora

imprime_char:
	li $v0, 11
	syscall
	jr $ra
	
imprime_string:
	li $v0, 4	# codigo para imprimir string
	syscall
	jr $ra		# retorno a funcao chamadora

le_inteiro:
	li $v0, 5	# codigo para ler um inteiro
	syscall
	jr $ra		# retorno a funcao chamadora
	
terminar_program:
	li $v0, 10
	syscall	
