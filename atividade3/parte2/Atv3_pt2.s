#
# modelo de saida para o compilador

  # Alunos:
  # Yuri Gabriel da Silva Alves 
  # Cássio Andrêzza de Almeida

#
.section .text
.globl _start
_start:

    # Calculando 7374 * 657
    mov $7374, %rax       # Coloca 7374 no RAX
    imul $657, %rax       # Multiplica RAX por 657. Resultado em RAX
    mov %rax, %rbx        # Salva o resultado parcial (7374 * 657) em RBX

    # Calculando 13121517 * 256
    mov $13121517, %rax   # Coloca 13121517 no RAX
    imul $256, %rax       # Multiplica RAX por 256. Resultado em RAX
    mov %rax, %rcx        # Salva o resultado parcial (13121517 * 256) em RCX

    # Soma 4294979641
    mov $4294979641, %rax # Coloca 4294979641 no RAX
    add %rbx, %rax        # Soma (7374 * 657) ao valor em RAX
    add %rcx, %rax        # Soma (13121517 * 256) ao valor acumulado em RAX


call imprime_num
call sair
.include "runtime.s"
