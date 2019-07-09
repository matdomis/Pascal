{ 

Faça um programa em Free Pascal que leia diversas linhas nas quais as linhas ı́mpares contém o tamanho n (0 ≤ n ≤ 100) da sequência de números inteiros que deve ser lida na linha subsequente. Quando uma linha ı́mpar contiver o valor zero significa que a entrada de dados acabou e seu programa deverá encerrar com a impressão de todas as sequências originais e também compactadas pela eliminação de
todos os elementos repetidos de cada sequência.
No exemplo abaixo, O significa a sequência original e C a sequência compactada.

Exemplo de entrada:
5
2 4 7 -1 2
3
1 1 1
7
3 4 5 3 7 5 1
0
Saı́da esperada:
O: 2 4 7 -1 2
C: 2 4 7 -1
O: 1 1 1
C: 1
O: 3 4 5 3 7 5 1
C: 3 4 5 7 1
}

program compactacao;
const MIN = 1; MAX = 100;
type
	array_inteiros = array [MIN..MAX] of integer;

{*********************************************************************************}
{                                FUNCTIONS                                        }
{*********************************************************************************}


function generate_array (var V: array_inteiros): integer;
var
	i, num: integer;
begin
	read(num);
	i := 0;
	while num <> 0 do
	begin
		i := i + 1;
		V[i] := num;
		read(num);
	end;
	generate_array := i;  (* tamanho da array *)
end;
procedure print_array (V: array_inteiros; tamarr: integer);
var
	i: integer;
begin
	for i := 1 to tamarr do
		write(V[i], ' ');
end;


{*********************************************************************************}
{                                MAIN                                             }
{*********************************************************************************}


var
	vetor_O, vetor_O_copia: array_inteiros;
	num, count, i, j, pos_armazenamento: integer;

begin
	readln(num);
	pos_armazenamento := 0;
	while num <> 0 do
	begin // tamanho array original]
		for i := 1 to num do
			read(vetor_O[i]);
		vetor_O_copia := vetor_O;
		for i := 1 to num do
		begin
			count := 0;
			for j := 1 to num do
				if vetor_O[i] = vetor_O[j] then
				begin
					count := count + 1;
					if count > 1 then
						vetor_O[j] := -999;
				end;
		end;
		write('O: ');
		for i := 1 to num do
			write(vetor_O_copia[i], ' ');
		writeln();
		write('C: ');
		for i := 1 to num do
			if vetor_O[i] = -999 then
				write('')
			else
				write(vetor_O[i], ' ');
		writeln();
		readln(num);
	end;
end.
