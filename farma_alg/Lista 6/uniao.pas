{
Em teoria dos conjuntos uma de suas possı́veis operações é a operação de União. Dados dois conjuntos A e B, a união entre os conjuntos é definida por:
A ∪ B = {x : x ∈ A ∨ x ∈ B}
Isto é, a União do conjunto A com o conjunto B é um conjunto formado por todo elemento x tal que x é elemento de A ou x é elemento de B. O diagrama de Venn abaixo ilustra bem este conceito.

No diagrama apresentado, o conjunto A é composto pelos elementos {1, 2, 3, 7} e o conjunto B é composto pelos elementos {4, 5, 6, 7}, o conjunto A ∪ B é o conjunto {1, 2, 3, 4, 5, 6, 7}.

Escreva um programa em Free Pascal que leia duas sequências com quantidades arbitrárias de valores inteiros positivos, as quais denotam dois conjuntos da matemática. Os valores de uma sequência nunca conterão duplicatas mas podem vir fora de ordem. Cada sequência termina com o valor 0 (que não é elemento de nenhum dos conjuntos). Depois da leitura dos dados, o programa deve determinar e imprimir o conjunto união. O tamanho máximo de cada conjunto é de 200 elementos.
Por exemplo, considere a entrada e a saı́da de dados abaixo:

Exemplo de entrada:
11 7 1 18 6 5 9 0
9 22 4 5 6 18 0

Saı́da esperada para a entrada acima:
11 7 1 18 6 5 9 22 4
}


program uniao;
type
	array_inteiros = array [1..1000] of integer;
	
{*********************************************************************************}
{                                FUNCTIONS                                        }
{*********************************************************************************}

function generate_array (var V: array_inteiros): integer;
var
	num: longint;
	i: integer;
begin
	read(num);
	i := 0;
	while num <> 0 do
	begin
		i := i + 1;
		V[i] := num;
		read(num);
	end;
	generate_array := i; // retorna tamanho do vetor
end;

{*********************************************************************************}
{                                MAIN                                             }
{*********************************************************************************}


var
	v1, v2: array_inteiros;
	tam_v1, tam_v2, i, j: integer;
	b: boolean;
begin
	tam_v1 := generate_array(v1);
	tam_v2 := generate_array(v2);
	for i := 1 to tam_v2 do
	begin
		b := True;
		for j := 1 to tam_v1 do
			if v2[i] = v1[j] then
				b := False;
		if b then
		begin
			tam_v1 := tam_v1 + 1;
			v1[tam_v1] := v2[i];
		end;
	end;
	for i := 1 to tam_v1 do
		write(v1[i], ' ');
end.
		
