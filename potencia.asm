addi $a0,$zero,2 #Base
addi $a1,$zero,4 #Expoente

add $t3,$zero,$a0 #resultado
add $t0,$zero,$zero #somador aux do resultado
add $t1,$zero,$zero #somador aux da multiplicação
addi $t2,$zero,1    #somador aux da potência
beq $a0,$zero,Excess1 #Excessão 1: se a base for 0
beq $a1,$zero,Excess2 #Excessão 2: se o expoente for 0
beq $a1,$t2,Excess3 #Excessão 3: se o expoente for 1
L1: add $t0,$t0,$t3   
addi $t1,$t1,1
bne $t1,$a0,L1
addi $t2,$t2,1
add $t1,$zero,$zero
add $t3,$zero,$t0
add $t0,$zero,$zero
bne $t2,$a1,L1
Fim: add $v0,$t3,$zero
j Exit
Excess1: add $v0,$zero,$zero
j Exit
Excess2: addi $v0,$zero,1
j Exit
Excess3: add $v0,$a0,$zero
Exit: #jr $ra