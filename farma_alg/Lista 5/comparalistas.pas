{ 

Faça um programa em Free Pascal que leia duas listas de valores inteiros positivos, cada um deles terminado em zero. O zero indica o término da entrada de dados e não deve ser processado. Seu programa deve inicialmente testar se as duas listas têm o mesmo número de elementos. Se não tiverem deve imprimir a mensagem "Tamanhos diferentes". Caso tenham o mesmo tamanho, seu programa deve verificar se um conjunto é o inverso do outro. Se forem, imprimir "Sim" e em caso contrário, imprimir "Nao"

Exemplo de entrada 1:
1 2 3 4 5 6 0
9 8 7 6 5 4 3 2 1 0

Saída esperada:
Tamanhos diferentes

Exemplo de entrada 2:
1 2 3 4 5 6 0
6 5 4 3 2 1 0

Saída esperada:
Sim

Exemplo de entrada 3:
1 7 3 3 5 6 0
6 5 4 3 2 1 0

Saída esperada:
Nao

}

program comparalista;
type
    array_inteiros = array [1..100] of integer;

{*********************************************************************************}
{                           FUNCTIONS                                             }
{*********************************************************************************}

procedure generate_array(var v: array_inteiros);
var
	k, num: integer;
begin
	k := 1;
	read(num);
	while num <> 0 do
	begin
		v[k] := num;
		read(num);
		k := k + 1;
	end;
end;

function tamarr(V: array_inteiros): integer;
var
 k: integer;
begin
  k := 1;
  while V[k] <> 0 do
   k := k + 1;
  tamarr := k - 1;
end;

procedure print_array(V: array_inteiros; N: integer);
var
	i: integer;
begin
	for i := 1 to N do
		write(V[i], ' ');
end;

procedure reverse_array (var V: array_inteiros; N: integer);
var
    temparr: array_inteiros;
    i, k: integer;
begin
    temparr := V;
    i := 1;
    for k := N downto 1 do
    begin
        V[i] := temparr[k];
        i := i + 1;
    end;
end;

{*********************************************************************************}
{                           MAIN                                                  }
{*********************************************************************************}

var
    vetor1, vetor2: array_inteiros;
    i, tam1, tam2: integer;
    b: boolean;
begin
    generate_array(vetor1);
    generate_array(vetor2);
    tam1 := tamarr(vetor1);
    tam2 := tamarr(vetor2);
    if tam1 = tam2 then
    begin
        reverse_array(vetor1, tam1);
        b := True;
        for i := 1 to tam1 do
            if vetor1[i] <> vetor2[i] then
                b := False;
        if b then
            writeln('Sim')
        else
            writeln('Nao');
    end
    else
        writeln('Tamanhos diferentes');
end.
