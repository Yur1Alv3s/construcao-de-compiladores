
#
# modelo de saida para o compilador

  # Alunos:
  # Yuri Gabriel da Silva Alves 
  # Cássio Andrêzza de Almeida

#
.section .text
.globl _start
_start:

    # Calculando (512 * 65)
    mov $512, %rax    
    imul $23, %rax     
    # mov %rax, %rbx     
    
    # Calculando (5657 * 23)
    mov $5657, %rbx     
    imul $23, %rbx      
    # mov %rbx, %rax

    sub %rbx, %rax

    # mov %rbx, %rax


call imprime_num
call sair
.include "runtime.s"

