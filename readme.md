
# Algoritmos em Assembly MIPS

Este repositório é destinado a armazenar algoritmos e exemplos simples em Assembly MIPS. O objetivo principal é manter um repositório pessoal para consulta futura e organização de conhecimentos.

## O que é Assembly MIPS?

Assembly MIPS é uma linguagem de programação de baixo nível usada para escrever instruções específicas para a arquitetura MIPS (Microprocessor without Interlocked Pipeline Stages). É comumente usada em sistemas embarcados e para fins educacionais devido à sua simplicidade e design enxuto.

### Exemplo de Código Assembly MIPS

Aqui está um exemplo simples de um programa em MIPS que soma dois números:

```assembly
.data
num1: .word 5       # Define o primeiro número
num2: .word 10      # Define o segundo número
result: .word 0     # Define a variável para armazenar o resultado

.text
main:
    lw $t0, num1    # Carrega o valor de num1 no registrador $t0
    lw $t1, num2    # Carrega o valor de num2 no registrador $t1
    add $t2, $t0, $t1 # Soma os valores e armazena em $t2
    sw $t2, result  # Salva o resultado em 'result'

    # Código para sair do programa (convencional para SPIM)
    li $v0, 10      # Código de saída
    syscall         # Chama o sistema para encerrar
```

## Conceitos Básicos

### Registradores

Em MIPS, os registradores são utilizados para armazenar dados temporários e intermediários durante a execução do programa. Alguns registradores comuns incluem:

- `$t0` a `$t9`: Registradores temporários.
- `$s0` a `$s7`: Registradores salvos.
- `$a0` a `$a3`: Argumentos de função.
- `$v0` e `$v1`: Valores de retorno.

### Instruções Básicas

- `lw` (Load Word): Carrega uma palavra (32 bits) da memória para um registrador.
- `sw` (Store Word): Armazena uma palavra de um registrador para a memória.
- `add`: Soma o valor de dois registradores e armazena o resultado em um terceiro registrador.
- `li` (Load Immediate): Carrega um valor imediato em um registrador.
- `syscall`: Realiza uma chamada de sistema para interagir com o sistema operacional.

## Como Executar

Para executar os exemplos de Assembly MIPS, você pode usar o simulador [MARS](http://courses.missouristate.edu/KenVollmar/MARS/), que é uma ferramenta popular para simulação de código MIPS.

### Passos:

1. Escreva o código Assembly em um arquivo com a extensão `.asm`.
2. Carregue o arquivo no simulador (MARS).
3. Execute o programa e observe o resultado nos registradores.

## Recursos Adicionais

- [MARS](https://www.oracle.com/java/technologies/downloads/?er=221886) - Baixar o simulador.

## Nota Importante

Este repositório foi criado para fins pessoais e para armazenamento de informações. Caso deseje aprender mais sobre Assembly MIPS, recomendo buscar por outros recursos e documentações específicas.
