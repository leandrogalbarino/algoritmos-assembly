# PROGRAMA QUE LE UM FLOAT E O IMPRIME!

.data 
# VARIAVEIS DA MEMORIA RAM.
	mensagem: .asciiz "DIGITE UM NUMERO REAL: "
	resulta: .asciiz "O VALOR FORNECIDO É: " 
	zero: .float 0.0
	valor_lido: .float

.text
# COMANDOS
	# Mensagem ao usuario.
	li $v0, 4
	la $a0, mensagem
	syscall

	# Pede um valor em float
	li $v0, 6
	syscall # valor lido está em $f0
	
	# Atribuindo a $f12 o valor de $f0
	lwc1 $f1, zero
	add.s $f12, $f1, $f0
	
	# Mensagem ao usuario.
	li, $v0, 4
	la $a0, resulta
	syscall
	
	s.s $f12, valor_lido
	lwc1 $f12, valor_lido
	
	# Imprimindo o valor lido
	li $v0, 2
	syscall
	
	li $v0, 10
	syscall
	
	
	
	