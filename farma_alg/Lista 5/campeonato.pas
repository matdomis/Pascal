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
