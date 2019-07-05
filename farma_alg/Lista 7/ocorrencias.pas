{ Fazer um programa em Free Pascal que leia do teclado dois números naturais 0 < n, m ≤ 100. Em seguida, leia duas sequências de respectivamente n e m números também naturais, sendo garantidamente m < n.
Seu programa deve determinar quantas vezes a segunda sequência ocorre na primeira.

Exemplo de entrada 1:
7
2
18 23 6 14 6 31 13
12 20

Saída esperada:
0

Exemplo de entrada 2:
9
4
18 23 6 14 6 18 23 6 14
18 23 6 14

Saída esperada:
2

Exemplo de entrada 3:
30
3
2 4 2 1 6 1 7 2 9 10 2 4 2 1 8 11 12 13 2 7 1 5 6 1 3 2 4 2 4 2
2 4 2

Saída esperada:
4}

program ocorrencias;

type
    array_inteiros = array [1..100] of integer;
    
{*********************************************************************************}
{                                FUNCTIONS                                        }
{*********************************************************************************}

procedure generate_arr(var v: array_inteiros; tam: integer);
var
    k: integer;
begin
    for k := 1 to tam do
        read(v[k]);
end;

{*********************************************************************************}
{                                MAIN                                             }
{*********************************************************************************}

var
    v1, v2: array_inteiros;
    c, i, k, n, m: integer;
    b: boolean;
begin
    readln(n);
    readln(m);
    generate_arr(v1, n);
    generate_arr(v2, m);
    c := 0;
    for i := 0 to n - m do
    begin
        b := True;
        for k := 1 to m do
            if v1[i+k] <> v2[k] then
                b := False;
        if b then
            c := c + 1;
    end;
    writeln(c);
end.