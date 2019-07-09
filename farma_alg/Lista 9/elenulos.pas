{

Faça um programa em Free Pascal que leia dois inteiros positivos m e n, sendo 1 ≤ m, n ≤ 100, e uma matriz A m×n . O programa deve imprimir o números de linhas e o número de colunas que são nulas, ou seja, quando todos os elementos de uma linha ou coluna são iguais a 0 (zero).
Nos casos de teste cada elemento x da matriz A é definido por 0 ≤ x ≤ 100.

Exemplo de entrada:
4 4
1 0 2 3
4 0 5 6
0 0 0 0
0 0 0 0

Saı́da esperada para o exemplo acima:
linhas: 2
colunas: 1
}
program code;
type
   arrayNumbers = array [1..100] of integer;
   matriz = array [1..100] of arrayNumbers;
var
   m: matriz;
   ii, jj, i, j, countCol, countLin, num: integer;
   b: boolean;
begin
   read(i, j);
   for ii := 1 to i do
      for jj := 1 to j do
      begin
         read(num);
         m[ii][jj] := num;
      end;
   b := False;
   countCol := 0;
   countLin := 0;
   //teste colunas
   jj := 1;
   while jj <> j + 1 do
   begin
      b := True;
      for ii := 1 to i do
         if m[ii][jj] <> 0 then
            b := False;
      if b then
         countCol := countCol + 1;
      jj := jj + 1;
   end;
   //teste linhas
   ii := 1;
   while ii <> i + 1 do
   begin
      b := True;
      for jj := 1 to j do
         if m[ii][jj] <> 0 then
            b := False;
      if b then
         countLin := countLin + 1;
      ii := ii + 1;
   end;
   writeln('linhas: ', countLin);
   writeln('colunas: ', countCol);
end.