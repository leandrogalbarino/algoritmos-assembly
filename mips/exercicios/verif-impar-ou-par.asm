# Verificar Número Par ou Ímpar

.data
	#VARIAVEIS DA MEMORIA
	Val: .space 4
	msg: .asciiz "DIGITE O VALOR DA VARIAVEL: "
	impar: .asciiz "O NÚMERO É IMPAR!!"
	par: .asciiz "O NÚMERO É PAR!!"
.text
	# MENSAGEMA AO USUARIO!
	li $v0, 4
	la $a0, msg
	syscall

	# LE O NUMERO FORNECIDO PELO USUARIO!
	li $v0, 5
	syscall
	
	# ARMAZENA O VALOR INFORMADO PARA A VARIAVEL 'Val'
	sw $v0, Val
	
	li $t0, 2
	lw $t1, Val
	
	div $t1, $t0
	mfhi $s1 # POSSUI O RESTO DA DIVISAO
	li $t3, 0
	bne $s1, $t3, imprimeImpar
	
	# imprime par se for == 0
	li $v0, 4
	la $a0, par
	syscall
	
	li $v0, 10
	syscall
	
	# imprime impar se for != 0
	imprimeImpar:
		li $v0, 4
		la $a0, impar
		syscall
	
	li $v0, 10
	syscall	


# PROGRAMA EM C
#	int main(){
#		if(valor % 2 != 0){
#			PRINTA: O VALOR É IMPAR!!
#		}
#	}