program somaeproduto;
var
  a, b, c, d: integer;
  num, den: integer;
begin
  read(a, b);
  read(c, d);
  num:= a * d + c * b;
  den:= d*b;
  writeln('A soma = ', num, ' / ', den);
  writeln('O produto = ', a*c, ' / ', b*d); 
end.
