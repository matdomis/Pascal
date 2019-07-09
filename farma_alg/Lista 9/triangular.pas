{Faça um programa em Free Pascal que leia um inteiro positivo n, sendo 1 ≤ m, n ≤ 100, e uma matriz inteira A n×n . O programa deve imprimir “sim” caso a matriz A seja triangular, caso contrário deve imprimir “nao”.
Nos casos de teste cada elemento x da matriz A é definido por 0 ≤ x ≤ 100.

Exemplo de entrada 1:
3
1 9 5
0 2 4
0 0 7

Saı́da esperada para o exemplo acima:
sim

Exemplo de entrada 2:
3
1 0 0
5 2 0
4 9 3
Saı́da esperada para o exemplo acima:
sim

Exemplo de entrada 2:
3
1 2 3
4 5 6
7 8 9
Saı́da esperada para o exemplo acima:
nao}
program triangular;
const MIN = 1; MAX = 100;
type array_inteiro = array [MIN..MAX] of integer;
	 matriz = array [MIN..MAX] of array_inteiro;

{*********************************************************************************}
{                                FUNCTIONS                                        }
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
////
function triangulo_superior(M: matriz; N: integer): boolean;
var
	i, j, count, count_aux: integer;

begin
	count := 0;
	count_aux := 0;
	for i := 1 to N do
	begin
		count_aux := count_aux + M[i][i];
		for j := i to N do
			count := count + M[i][j];
	end;
	if count_aux = count then
		triangulo_superior := True
	else
		triangulo_superior := False;
end;
function triangulo_inferior(M: matriz; N: integer): boolean;
var
	i, j, count, count_aux: integer;
begin
	
	count := 0;
	count_aux := 0;
	for i := N downto 1 do
	begin
		count_aux := count_aux + M[i][i];
		for j := i downto 1 do
			count := count + M[i][j];
	end;
	if count_aux = count then
		triangulo_inferior := True
	else
		triangulo_inferior := False;
end;
	
{*********************************************************************************}
{                                MAIN                                             }
{*********************************************************************************}


var
	i, j, N: integer;
	M: matriz;
begin
	read(N);
	generate_matriz(M, N);
	if (triangulo_superior(M, N)) or (triangulo_inferior(M, N)) then
		writeln('sim')
	else
		writeln('nao');
end.