#####################################################################
## ARQUITETURA MR4 - teste de todas as instru��es
## Autor: Ney Calazans (calazans@inf.pucrs.br)
## Teste � exaustivo quanto ao total de instru��es, n�o
##  exaustivo quanto �s condi��es de teste de cada instru��o em si
## �ltima altera��o: 26/10/2005
#####################################################################
        .text                   # Declara��o de in�cio do segmento de texto
        .globl  main            # Declara��o de que o r�tulo main � global
########################################
# testes de instru��es individuais
########################################
main:   

########################################
# soma uma constante a um vetor
########################################
soma_ct:la      $t0,array       # coloca em $t0 o endere�o do vetor (0x10010000)
        la      $t1,size        # coloca em $t1 o endere�o do tamanho do vetor 
        lw      $t1,0($t1)      # coloca em $t1 o tamanho do vetor
        la      $t2,const       # coloca em $t2 o endere�o da constante
        lw      $t2,0($t2)      # coloca em $t2 a constante
loop:   blez    $t1,end_add     # se/quando tamanho �/torna-se 0, fim do processamento
        lw      $t3,0($t0)      # coloca em $t3 o pr�ximo elemento do vetor
        addu    $t3,$t3,$t2     # soma constante
        sw      $t3,0($t0)      # atualiza no vetor o valor do elemento
        addiu   $t0,$t0,4       # atualiza ponteiro do vetor. Lembrar, 1 palavra=4 posi��es de mem�ria
        addiu   $t1,$t1,-1      # decrementa contador de tamanho do vetor
        j       loop            # continua execu��o
########################################
# teste de subrotinas aninhadas
########################################
end_add:addiu   $sp,$sp,-4      # assume-se $sp inicializado, aloca espa�o na pilha
                                # no SPIM $sp inicializado com 0x7FFFEFFC. Usamos 0x10010800.
        sw      $ra,0($sp)      # salva endere�o de retorno de quem chamou (trap handler)
        jal     sum_tst         # salta para subrotina sum_tst
        lw      $ra,0($sp)      # ao retornar, recupera endere�o de retorno da pilha
        addiu   $sp,$sp,4       # atualiza apontador de pilha
end:    jr      $ra             # FIM DO PROGRAMA AQUI. Volta para o "SISTEMA OPERACIONAL"
# In�cio da primeira subrotina: sum_tst
sum_tst:la      $t0,var_a       # pega endere�o da primeira vari�vel (pseudo-instru��o)
        lw      $t0,0($t0)      # toma o valor de var_a e coloca em $t0
        la      $t1,var_b       # pega endere�o da segunda vari�vel (pseudo-instru��o)
        lw      $t1,0($t1)      # toma o valor de var_b e coloca em $t1
        addu    $t2,$t1,$t0     # soma var_a com var_b e coloca resultado em $t2
        addiu   $sp,$sp,-8      # aloca espa�o na pilha
        sw      $t2,0($sp)      # no topo da pilha coloca o resultado da soma
        sw      $ra,4($sp)      # abaixo do topo coloca o endere�o de retorno
        la      $t3,ver_ev      # pega endere�o da subrotina ver_ev (pseudo-instru��o)
        jalr    $ra,$t3         # chama subrotina que verifica se resultado da soma � par
        lw      $ra,4($sp)      # ao retornar, recupera endere�o de retorno da pilha
        addiu   $sp,$sp,8       # atualiza apontador de pilha
        jr      $ra             # Primeira subrotina chamada acaba aqui. Retorna
# In�cio da segunda subrotina: ver_ev. Trata-se de subrotina folha, que n�o usa pilha
ver_ev: lw      $t3,0($sp)      # tira dados to topo da pilha (par�metro)
        andi    $t3,$t3,1       # $t3 <= 1 se par�metro � �mpar, 0 caso contr�rio
        jr      $ra             # e retorna
########################################
# �rea de dados
########################################
        .data
# para trecho que soma constante a vetor
array:  .word   0xabcdef03 0xcdefab18 0xefabcd35 0xbadcfeab 0xdcfebacd 0xfebadc77 0xdefabc53 0xcbafed45
#                               terceiro byte da segunda palavra (0xef) vira 0x10 antes de exec soma_ct
size:   .word   0x8
const:  .word   0xffffffff      # constante -1 em complemento de 2
# para trecho de teste de chamadas de subrotinas
var_a:  .word   0xff            # 
var_b:  .word   0x100           #