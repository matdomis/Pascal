{
O tratamento de duplicatas é um fator importante em alguns algoritmos. Um exemplo é um tipo que se pretende a representar um conjunto no sentido da teoria dos conjuntos e matemática. Um conjunto não pode ter elementos repetidos.
Escreva um programa em Free Pascal que leia uma quantidade arbitrária de números inteiros positivos do teclado e determine os números repetidos fornecidos na entrada de dados. O programa deve imprimir apenas uma ocorrência de cada número repetido, mesmo que sejam fornecidas várias duplicatas do mesmo número no momento da entrada. O número zero é o último lido e não deve ser levado em conta na
determinação de repetidos.
Nota: O usuário nunca irá digitar mais do que 100 números para a entrada do programa (excluindo o zero).
Um exemplo de entrada e saı́da é:

Exemplo de entrada:
3 4 5 5 6 7 8 8 9 10 5 5 5 7 7 3 0

Saı́da esperada para a entrada acima:
3 5 7 8
}

program repetidos;
var
	v, v_repetidos: array [1..100] of integer;
	num, i, k, j, pos_repetido: integer;
	b: boolean;
begin
	read(num);
	k := 0;
	i := 0; // i = indice do vetor original (v) que irá ser manipulado.
	pos_repetido := 0;
	while num <> 0 do
	begin
		k := k + 1;
		v[k] := num;
		read(num);
	end;
	while i < k do
	begin
		b := False;
		i := i + 1;
		for j := i + 1 to k do
			if v[i] = v[j] then
				b := True;
		if b then
			for j := 1 to k do
				if v[i] = v_repetidos[j] then
					b := False;
		if b then
		begin
			pos_repetido := pos_repetido + 1;
			v_repetidos[pos_repetido] := v[i];
		end;
	end;
	
	for j := 1 to pos_repetido do
		write(v_repetidos[j], ' ');
end.
