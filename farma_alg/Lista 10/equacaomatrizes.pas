{
    

Um vetor real X com n elementos é apresentado como resultado de um sistema de equações lineares Ax = B cujos coeficientes são representados em uma matriz real A(m×n) e os lados direitos das equações (os resultados de cada equação) em um vetor real B de m elementos. Criar um programa em Free Pascal que verifique se o vetor X é realmente solução do sistema dado, imprimindo "sim" caso o vetor informado seja solução do sistema de equações, ou imprimindo "não" caso contrário.

Dica: Comparações entre números reais pode ser um problema dependendo da arquitetura da máquina a ser utilizada. Para solucionar este problema um método a ser utilizado é a comparação por margem de erro.

Exemplo de entrada:
3 3 #tamanho da matriz
1 3 2 #resultado informado
2 1 -3 #Matriz
-1 3 2
3 1 -3
-1 12 0 #lado direito

Saída esperada:
sim

}

program equacaomatrizes;