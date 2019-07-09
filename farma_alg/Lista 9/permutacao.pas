{Uma matriz inteira A n×n é considerada uma matriz de permutação se em cada linha e em cada coluna
houver n - 1 elementos nulos e um único elemento igual a 1.
Faça um programa em Free Pascal que leia um inteiro positivo n, sendo 1 ≤ m, n ≤ 100, e uma matriz
inteira A n×n . O programa deve imprimir “sim” caso a matriz A seja de permutação, caso contrário deve
imprimir “nao”.
Nos casos de teste cada elemento x da matriz A é definido por 0 ≤ x ≤ 100.

Exemplo de entrada 1:
3
1 0 0
0 1 0
0 0 1

Saı́da esperada para o exemplo acima:
sim

Exemplo de entrada 2:
3
1 0 0
1 0 0
0 1 0

Saı́da esperada para o exemplo acima:
nao}
program PERMUTACAO;
const MIN = 1; MAX = 100;
type array_inteiro = array [MIN..MAX] of integer;
	 matriz = array [MIN..MAX] of array_inteiro;
     
{*********************************************************************************}
{                                FUNCTION                                         }
{*********************************************************************************}

procedure generate_matriz(var M: matriz; N: integer); // matriz NxN
var
	i, j: integer;
begin
	for i := 1 to N do
		for j := 1 to N do
			read(M[i][j]);
end;
procedure print_matriz(M: matriz; N: integer);
var
	i, j: integer;
begin
	for i := 1 to N do
		for j := 1 to N do
			write(M[i][j]);
end;

{*********************************************************************************}
{                                MAIN                                             }
{*********************************************************************************}

var
	i, j, N, countu, countz: integer;
	M: matriz;
	bLinha, bColuna: boolean;
begin
	read(N);
	generate_matriz(M, N);
	bLinha := True;
	bColuna := True;
	for i := 1 to N do
	begin
		countu := 0;
		countz := 0;
		for j := 1 to N do
		begin
			if M[j][i] = 1 then
				countu := countu + 1
			else if M[j][i] = 0 then
				countz := countz + 1;
		end;
		if (countu <> 1) and (countz <> N-1) then
			bLinha := False;
		countu := 0;
		countz := 0;
		for j := 1 to N do
		begin
			if M[i][j] = 1 then
				countu := countu + 1
			else if M[i][j] = 0 then
				countz := countz + 1;
		end;
		if (countu <> 1) and (countz <> N-1) then
			bColuna := False;
	end;
	if (bColuna = True) and (bLinha = True) then
		writeln('sim')
	else
		writeln('nao');
end.