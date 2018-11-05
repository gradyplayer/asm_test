//
//  asm_test.s
//  asm_test
//
//  Created by grady player on 11/3/18.
//  Copyright © 2018 ObjectivelyBetter, LLC. All rights reserved.
//

.section __TEXT,__text


.globl _sum
_sum:
#preamble
    pushq %rbp
    movq %rsp, %rbp
#function
    movq $0, %r8
    cmpq $0, %rsi
    jle z
    movq %rsi, %rcx
l:
    addq (%rdi), %r8
    addq $8, %rdi
    loop l
z:
    movq %r8, %rax
    popq %rbp
    retq #return


.globl _add
_add:
#preamble
    pushq %rbp
    movq %rsp, %rbp
#function
    addq %rdi, %rsi
    movq %rsi, %rax
    popq %rbp
    retq #return


.globl _mult
_mult:
#preamble
    pushq %rbp
    movq %rsp, %rbp
#body
    movq %rdi, %rax
    mulq %rsi
#restore
    popq %rbp
    retq #return

.globl _divide_with_remainder
_divide_with_remainder:
#preamble
    pushq %rbp
    movq %rsp, %rbp
    movq %rdx, %r8 #store rdx (3rd param in r8)
    movq $0, %rdx
#body
    movq %rdi, %rax
    divq %rsi
    movq %rdx, (%r8)
#restore
    popq %rbp
    retq #return

.globl _jmptest
_jmptest:
#preamble
    pushq %rbp
    movq %rsp, %rbp
#movq (0), %rax
    movq $0, %rax
    popq %rbp
    ret
