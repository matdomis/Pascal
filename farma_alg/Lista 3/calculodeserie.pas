{
Considere a soma S dos termo da série infinita apresentada abaixo:

S = 1 - 1/2! + 1/4! - 1/6! + 1/8! - 1/10! ...

Fazer um programa em Free Pascal que calcule o valor aproximado da soma S dos termos da série até o momento em que a diferença das normas (módulo) de duas somas parciais for menor que 0,000001 ({i.e.}, { norma da diferença das normas de duas somas parciais consecutivas).

Saída esperada:
0.54030230379188 }

program serie;
var
   S, dif, term1, term2: real;
   count, i, sinal: integer;
   fat, fat2: longint;
begin
   S := 1;
   i := 0;
   sinal := 1;
   dif := 1;
   while (dif > 0.000001) do
   begin
      fat2 := 1;
      dif := 1;
      fat := 1;
      i := i + 2;
      count := i;
      while count <> 1 do
      begin
         fat := fat * count;
         count := count - 1;
         if count = 1 then
         begin
            count := i + 2;
            while count <> 1 do
            begin
               fat2 := fat2 * count;
               count := count - 1;
            end;
         end;
      end;
      term1 := 1/fat;
      term2 := 1/fat2;
      dif := term1 - term2;
      sinal := sinal * (-1);
      S := S + (sinal * term1);
    end;
   writeln(S:0:15);
end.
