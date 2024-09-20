.data
	msg: .asciiz "OLÁ MUNDO\n" 	# mensagem para o usuario
	caractere: .byte 'b' #mensagem
	inteiro: .word 900 #valor de um intero
.text
	li $v0, 4 #imprimir msg
	la $a0, msg #colocar a msg para o registrador a0
	syscall #faça
	
	li $v0, 11
	lb $a0, caractere
	syscall 
	
	li $v0, 1 # imprimir inteiro
	lw $a0, inteiro #colocar inteiro em $a0
	syscall
	
	li, $t0, 65
	li, $t1, 25
	add $s0, $t0,$t1
	add $s1, $s0, 10
	
	
	
	li $v0, 10 
	syscall