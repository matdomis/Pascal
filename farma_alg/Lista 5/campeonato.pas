{

Faça um programa em Free Pascal que leia o número N, 1 <= N <= 20 e em seguida leia os nomes dos N times que participaram do campeonato de um certo ano. Em seguida leia a pontuação respectiva que cada um dos times obteve naquele campeonato, supondo (para simplificar) que nenhum time obteve a mesma pontuação. Seu programa deve imprimir o nome do campeão, isto é, o que teve a maior pontuação.

No Free Pascal, nomes (ou frases) podem ser manipulados usando-se o tipo predefinido string. Considere que os nomes dos times não ultrapassam 20 caracteres, por isso pode usar o tipo string20. Neste tipo você pode ler os nomes a partir do teclado como se fossem números, mas para não gerar erros de compilação, substitua todos os seus comandos read por readln, senão seu programa pode gerar erros de execução (runtime error) por causa do modo como o compilador lida com o ENTER.

Exemplo do uso do tipo string:

var x, y: string[20];
begin
    readln (x);
    readln (y);
    if x = y then
        writeln ('os nomes sao iguais')
    else
        writeln ('o nome ',x,' eh diferente do nome ',y);
end.

Ou ainda:

var x, y: string[20];
begin
    x:= 'algoritmos 1';
    y:= 'computacao';
    if x = y then
        writeln ('os nomes sao iguais')
    else
        writeln ('o nome ',x,' eh diferente do nome ',y);
end.

então x < y, pois o Free Pascal usa ordenação lexicográfica para isso.

Exemplo de entrada:
5
XV de Piracicaba
Ferroviaria
Botafogo-RP
Sao Carlense
XV de Jau
75
47
68
82
56

Saida esperada:
O campeao eh o Sao Carlense
}
program campeonato;
var
	vetor_times: array [1..100] of string[20];
	vetor_pontuacao: array [1..100] of integer;
	i, pos_ponto_max, ponto_max, n: integer;
begin
	readln(n);
	ponto_max := 0;
	for i := 1 to n do
		readln(vetor_times[i]);
	for i := 1 to n do
		readln(vetor_pontuacao[i]);
	for i := 1 to n do
		if vetor_pontuacao[i] > ponto_max then
	    begin
	        ponto_max := vetor_pontuacao[i];
		    pos_ponto_max := i;
		end;
	writeln('O campeao eh o ', vetor_times[pos_ponto_max]);
end.
