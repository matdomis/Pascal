program code;
const
   MIN = 1;
   MAX = 100;
type
   array_tipo_inteiros = array [MIN..MAX] of integer;
//

var
   alunos, i: integer;
   array_alunos, array_nota1, array_nota2, array_nota3: array_tipo_inteiros;
   media: real;
//

{*********************************************************************************}
{                                FUNCTIONS                                        }
{*********************************************************************************}


procedure generate_alunos (var v: array_tipo_inteiros);
var
   aluno, temp_alunos: integer;
begin
   readln(alunos);
   temp_alunos := alunos; // copia alunos para nao alterar a variavel global.
   aluno := 1;
   while temp_alunos <> 0 do
   begin
      v[aluno] := aluno;
      aluno := aluno + 1;
      temp_alunos := temp_alunos - 1;
   end;
end;
//
procedure notas_1 (var v: array_tipo_inteiros);
var
   i, nota, temp_alunos_2: integer;
begin
   temp_alunos_2 := alunos;
   i := 1;
   while temp_alunos_2 <> 0 do
   begin
      read(nota);
      v[i] := nota;
      i := i + 1;
      temp_alunos_2 := temp_alunos_2 - 1;
   end;
end;
//
procedure notas_2 (var v: array_tipo_inteiros);
var
  i, nota, temp_alunos_3: integer;
begin
   i := 1;
   temp_alunos_3 := alunos;
   while temp_alunos_3 <> 0 do
   begin
      read(nota);
      v[i] := nota;
      i := i + 1;
      temp_alunos_3 := temp_alunos_3 - 1;
   end;
end;
//
procedure notas_3 (var v: array_tipo_inteiros);
var
   i, nota, temp_alunos_4: integer;
begin
   i := 1;
   temp_alunos_4 := alunos;
   while temp_alunos_4 <> 0 do
   begin
      read(nota);
      v[i] := nota;
      i := i + 1;
      temp_alunos_4 := temp_alunos_4 - 1;
   end;
end;

{*********************************************************************************}
{                                MAIN                                             }
{*********************************************************************************}

begin
   generate_alunos(array_alunos);
   notas_1(array_nota1);
   notas_2(array_nota2);
   notas_3(array_nota3);
   i := 1;
   while alunos <> 0 do
   begin
      media := ((array_nota1[i] + (2 * array_nota2[i]) + (3 * array_nota3[i])) / 6);
      if media >= 70.0 then
         writeln('Aluno ', i, ': ', media:0:2, ' Aprovado')
      else if (40 <= media) and (media < 70) then
         writeln('Aluno ', i, ': ', media:0:2, ' Final')
      else
         writeln('Aluno ', i, ': ', media:0:2, ' Reprovado'); 
      alunos := alunos - 1;
      i := i + 1;
   end;
end.
