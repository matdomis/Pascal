{

Fazer um programa em Free Pascal que leia do teclado um número inteiro positivo n e determine o resultado do somatório definido por:

S = 1/2 + 2/n-1 + 3/n-2 + .. + n/1

Exemplo de entrada:
3

Saída esperada para a entrada acima:
4.3333333333333330E+000
}

program Somatorio;
var
  x, y: integer;
  c: real;
begin
  y := 1;
  readln(x);
  while x <> 0 do
  begin
    c := c + (y/x);
    x := x - 1;
    y := y + 1;
  end;
  writeln('Somatorio: ', c:0:2);
end.
