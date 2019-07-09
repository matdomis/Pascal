{É comum em editores de texto que você deseje substituir um pedaço do texto por outro pedaço, normalmente uma palavra por outra. Este problema simula esta situação com números, para facilitar.
Escreva um programa em Free Pascal que leia três sequências de números inteiros terminadas em zero (os zeros não devem ser processados). Imagine que a primeira sequência é o texto completo, a segunda é a palavra que você deseja substituir pela terceira. Considere que o usuário nunca vai digitar mais do que 100 números antes de cada zero. A entrada de dados garante que a segunda sequência tem no máximo tantos elementos quanto a primeira. Seu programa deve determinar se a primeira ocorrência da segunda sequência está contida na primeira e em caso afirmativo, deve substituı́-la pela terceira sequência. Ao final, seu programa deve imprimir a primeira sequência após a substituição, caso tenha havido alguma. Caso contrário seu programa deve imprimir "vazia".

Exemplo de entrada 1:
3 4 5 5 6 7 8 8 9 10 5 5 5 7 7 3 0
6 7 8 8 9 0
1 1 1 1 1 1 1 0

Saı́da esperada para a entrada acima:
3 4 5 5 1 1 1 1 1 1 1 10 5 5 5 7 7 3

Exemplo de entrada 2:
3 4 5 5 6 7 8 8 9 10 5 5 5 7 7 3 0
1 2 3 4 0
1 1 1 1 1 1 1 0

Saı́da esperada para a entrada acima:
3 4 5 5 6 7 8 8 9 10 5 5 5 7 7 3

Observação: Caso queira, você pode usar o seguinte programa principal. A função ocorre retorna true se o vetor v2 que tem tamanho tv2 ocorre no vetor v1 que tem tamanho tv1. Se ele ocorre, então pos_ini é o ı́ndice do inı́cio desta ocorrência e pos fim é o final dela. Você pode adaptar isso se achar melhor. Se aceitar a sugestão, implemente esta função e esta procedure e se precisar faça outras que te ajudem.
}


program substituicao;
type
    array_inteiros = array [1..100] of integer;

{*********************************************************************************}
{                                FUNCTIONS                                        }
{*********************************************************************************}

procedure generate_arr(var v: array_inteiros);
var
   num, k: integer;
begin
    read(num);
    k := 0;
    while num <> 0 do
    begin
        k := k + 1;
        v[k] := num;
        read(num);
    end;
end;

function tam_arr(V: array_inteiros): integer;
var
 k: integer;
begin
  k := 1;
  while V[k] <> 0 do
   k := k + 1;
  tam_arr := k - 1;
end;

procedure print_array(V: array_inteiros; tamarr: integer);
var
	i: integer;
begin
	for i := 1 to tamarr do
		write(V[i], ' ');
end;

var
    texto, v1, v2: array_inteiros; // v2 -> v1;
    tam_texto, tam_v1, tam_v2, i, k, jump, arm: integer;
    b: boolean;
begin
    generate_arr(texto);
    generate_arr(v1);
    generate_arr(v2);
    tam_texto := tam_arr(texto);
    tam_v1 := tam_arr(v1);
    tam_v2 := tam_arr(v2);
    jump := tam_v2 - tam_v1;
	arm := 0;
    for i := 0 to tam_texto - tam_v1 do
    begin
        b := True;
        for k := 1 to tam_v1 do
            if texto[i+k] <> v1[k] then
                b := False; 
        if b then
            tam_texto := tam_texto + jump;
            for k := tam_texto - jump downto i + tam_v1 do
				arm := texto[k + jump];
                texto[k + jump] := texto[k];

    end;
    writeln(jump);
    print_array(texto, tam_texto);
end.
    
    
    
    
    
    
    
    
    
