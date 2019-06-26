{                       ENUNCIADO                   }
{

Fazer um programa em Free Pascal que leia do teclado um número inteiro que representa uma quantidade de segundos (unidade de medida de ângulo geométrico) e que imprima na tela o seu valor equivalente em graus, minutos e segundos. Se a quantidade de segundos for insuficiente para dar o valor 1 (um) em graus, o valor em graus deve ser 0 (zero). A mesma observação vale em relação aos minutos e segundos.

Exemplo de entrada 1:
3600

Saída esperada para a entrada acima:
1 graus, 0 minutos e 0 segundos

Exemplo de entrada 2:
3500   

Saída esperada para a entrada acima:
0 graus, 58 minutos e 20 segundos  }

program segundosemgraus;
var
    sec, grau, min, sec2: longint;
begin
    readln(sec);
    if sec >= 3600 then 
    begin
        grau := sec div 3600;
        min := (sec mod 3600) div 60;
        sec2 := (sec mod 3600)  mod 60;
     end
    else begin
        min := sec div 60;
        sec2 := sec mod 60;
    end;
    writeln(grau, ' grau(s), ', min, ' minuto(s), ', sec2, ' segundo(s)');
end.
