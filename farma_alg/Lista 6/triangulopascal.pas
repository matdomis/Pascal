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
        
    








