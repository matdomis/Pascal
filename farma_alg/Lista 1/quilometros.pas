{ Fazer um programa em Free Pascal que leia do teclado um número real K representando uma velocidade em Kilômetros por hora (km/h) e imprima na tela a velocidade correspondente em milhas por hora (ml/h), lembrando que 1 milha = 1.609344 km.

Exemplo de entrada:
105.4

Saída esperada para a entrada acima:
6.5492523661815000E+00}

program km2ml;
var
    x, y: real;
begin
    readln(x);
    y := x * 0.62137119223;
    writeln(y:0:4, ' ml/h');
end.
