{


Fazer um programa em Pascal para ler do teclado um número inteiro m e em seguida ler uma sequência de m pares de números (N1, P1), (N2, P2), ... (Nm, Pm), onde Ni, 1 <= i <= m são números reais e Pi, 1 <= i <= m são números inteiros, imprimir o cálculo da média ponderada deles. Isto é, calcular:

MP = (N1P1 + N2P2 + N3P3 ... NmPm) / P1 + P2 + P3 ... Pm

Seu programa deve imprimir a mensagem "divisao por zero" caso o denominador seja zero. Caso isso não ocorra seu programa irá abortar neste caso, o que não é correto.

Exemplos de entrada e saída:
Exemplo de entrada 1:
3
0 1
3 2
10 3
Saída esperada :
6.0000000000000000E+000

Exemplo de entrada 2:
3
0 0
3 2
10 -2
Saída esperada :
divisao por zero

Exemplo de entrada 3:
0
Saída esperada :
divisao por zero
}

program code;
var
  C, N, P, temp: longint;
  den, num: longint;
begin
  den := 0;
  num := 0;
  readln(C);
  for temp := 1 to C do
  begin
    read(N, P);
    den := den + (N*P);
    num := num + P;
  end;
  if num = 0 then
    writeln('divisao por zero')
  else
    writeln(den/num);
end.
