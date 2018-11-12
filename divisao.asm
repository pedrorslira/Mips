addi $t0,$zero,100 #dividendo
addi $t1,$zero,2 #divisor
add $t2,$zero,$t0 #registrador auxiliar que vai ajudar na conta
addi $t3,$zero,0 #resultado da divisão

Loop:
sub $t2,$t2,$t1 #aux = aux - divisor
addi $t3,$t3,1 #resultado = resultado + 1
beq $t2,$zero,Exit #se aux for igual a 0, sai do loop e encerra o programa
slt $t4,$t2,$zero #salva em t4 a informação de se t2 é menor do que 0
bne $t4,$zero,Subtracao #se aux for menor que 0, sai do loop
j Loop
Subtracao: addi $t3,$t3,-1 #já que o resultado vai ser em inteiro, diminuir em 1 o valor do resultado final
Exit: 