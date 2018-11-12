addi $t0,$zero,5 #primeiro número da multiplicação
addi $t1,$zero,5 #segundo número da multiplicação
addi $t2,$zero,0 #contador de quantas vezes vai multiplicar
addi $s0,$zero,0 #somador da multiplicação

Loop:
beq $t2,$t1,Exit #se o contador for igual ao t1,encerra o programa
add $s0,$s0,$t0 #resultado += primeiro número
addi $t2,$t2,1 #contador++
j Loop
Exit:
