{ 

Considere que um professor tem N alunos em sua turma de Algoritmos e Estruturas de Dados I. Este professor calcula a média final dos alunos após a aplicação de três provas Prova1, Prova2 e Prova3 com pesos para as provas respectivamente de 1, 2 e 3. A média final é o resultado da média ponderada (Prova1 + 2 x Prova2 + 3 x Prova3)/6.

Faça um programa em Free Pascal que leia N, 0 <= N <= 100 do teclado (não precisa testar se o valor lido está fora desta faixa) e em seguida leia três listas de notas para os N alunos. As notas sempre são de 0 a 100, não precisa testar isso. Considere que no lugar dos nomes os alunos são numerados de 1 até N. Seu programa deve imprimir a média final dos N alunos (com duas casas decimais) e, para cada aluno, indicar se foi aprovado (média maior ou igual a 70), se deve fazer a prova final (média maior ou igual a 40 e menor que 70) ou se foi reprovado (média inferior a 40).

Exemplo de entrada: // Observacões
5 // a turma tem 5 alunos
50 30 10 80 85 // notas da prova 1 para os 5 alunos
40 40 60 55 75 // notas da prova 2 para os 5 alunos
80 35 90 20 95 // notas da prova 3 para os 5 alunos

Saída esperada:
Aluno 1: 61.67 Final
Aluno 2: 35.83 Reprovado
Aluno 3: 66.67 Final
Aluno 4: 41.67 Final
Aluno 5: 86.67 Aprovado
}

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
