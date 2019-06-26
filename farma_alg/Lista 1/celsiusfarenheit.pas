{          ENUNCIADO         }
{

Fazer um programa em Free Pascal que leia do teclado um número real C representando uma temperatura na escala Celsius e imprima na tela a correspondente temperatura na escala Farenheit (F) calculada segundo a fórmula: C = 5*(F-32)/9. Veja um exemplo de execução incluindo entrada e saída:

Exemplo de entrada:
28.7

Saída esperada para a entrada acima:
8.3659999999999997E+001
}

program CparaF;
var
    x, y: real;
begin
    readln(x);
    y := (9*x + 160)/5;
    writeln(y:0:2, ' graus Farenheit');
end.
