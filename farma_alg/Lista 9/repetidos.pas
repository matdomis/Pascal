{

Faça um programa em Free Pascal que leia dois inteiros positivos m e n, sendo 1 ≤ m, n ≤ 100, e uma matriz A m×n . O programa deve imprimir “sim” se há elementos repetidos na matriz A, caso contrário deve imprimir “nao”.
Nos casos de teste cada elemento x da matriz A é definido por 1 ≤ x ≤ 1000.

Exemplo de entrada 1:

3 3
1 2 3
4 5 6
7 8 9

Saída esperada para o exemplo acima:
nao

Exemplo de entrada 2:

3 4
1 2 3 4
4 5 6 7
7 8 9 10

Saída esperada para o exemplo acima:
sim
}

program code;
type
   arrayNumbers = array [1..100] of integer;
   matriz = array [1..100] of arrayNumbers;
var
   m: matriz;
   num, ii, jj, i, j, tempI, tempJ, numrep, count: integer;
   repetido: boolean;
begin
   read(i);
   read(j);
   repetido := False;
   for ii := 1 to i do
      for jj := 1 to j do
      begin
         read(num);
         m[ii][jj] := num;
      end;
   count := 0;
   tempI := 1;
   tempJ := 1;
   for ii := 1 to i do
      for jj := 1 to j do
      begin
         count := 0;
         numrep := m[ii][jj];
         for tempI := 1 to i do
            for tempJ := 1 to j do
               if m[tempI][tempJ] = numrep then
                  count := count + 1;
         if count > 1 then
            repetido := True;
      end;
   if repetido then
      writeln('sim')
   else
      writeln('nao');
end.       