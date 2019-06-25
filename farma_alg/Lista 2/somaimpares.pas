{ Fazer um programa em Free Pascal que leia dois inteiros ímpares A e B, sendo A <= B. Após a leitura some todos os números ímpares contidos no intervalo entre A e B, considerando também A e B. Em resumo, o programa deverá executar a soma:

S = A + (A + 2) + (A + 4) + ... + B

Exemplo de entrada:
3 9

Saída esperada para a entrada acima:
24 }

program code;
var
  count, i, a, b: longint;
begin
  read(a, b);
  i := a;
  while i <= b do
  begin
    if a mod 2 <> 0 then
      count := count + a;
    a := a + 1;
    i := i + 1;
  end;
  writeln('Soma: ', count);
end.
