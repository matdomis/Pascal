{ Fazer um programa em Free Pascal que leia um número inteiro positivo N que representa o número de linhas de um Triângulo de Pascal, sendo 0 <= N <= 20. Seu programa deve gerar e imprimir os valores de cada linha deste triângulo no monitor de vı́deo do computador. Veja uma exemplo de execução do programa:

Exemplo de entrada:
7

Saída esperada para a entrada acima:
1
1 1
1 2 1
1 3 3 1
1 4 6 4 1
1 5 10 10 5 1
1 6 15 20 15 6 1
}

program triangulopascal;

type
    array_inteiros = array [1..100] of integer;

{*********************************************************************************}
{                                FUNCTIONS                                        }
{*********************************************************************************}

function fatorial(n: integer): qword;
begin
    if n >= 1 then
        fatorial := n * fatorial(n-1)
    else
        fatorial := 1;
end;

function binomio(n, p: integer): longint;
begin
    binomio := fatorial(n) div ((fatorial(p) * fatorial(n - p)));
end;

{*********************************************************************************}
{                                MAIN                                             }
{*********************************************************************************}

var
    v: array_inteiros;
    i, tam, n: integer;
begin
    readln(n);
    tam := 0;
    while tam <= n do
    begin
        tam := tam + 1;
        for i := 0 to tam do
            v[i] := binomio(tam, i);
        for i := 0 to tam do
            write(v[i], ' ');
        writeln();
    end;
end.
