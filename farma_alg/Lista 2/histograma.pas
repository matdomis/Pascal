{ 

Um histograma, também conhecido por distribuição de frequência, é uma ferramenta utilizada em estatística para verificar a distribuição dos dados sobre um conjunto de classes. Sua representação visual segue um modelo como o apresentado a seguir:

Onde o eixo x (base) representa as classes da análise e o eixo y (altura) representa as frequências. Cada classe possui um intervalo de valores que define a base de cada retângulo e a altura de cada retângulo representa a frequência de dados para determinada classe. Computacionalmente é possível representar um histograma através da definição de classes e do total de exemplos que se enquadram em determinada classe.

Fazer um programa em Free Pascal que leia a idade de várias pessoas até que o valor lido seja zero. Imprima a quantidade de pessoas menores que 20 anos de idade, entre 20 e 40 anos e maiores que 40 anos. Além disso, pessoas com idades múltiplas de 5 não devem ser consideradas na contagem.

Exemplo de entrada 1:
21 14 49 31 36 0

Saída esperada para a entrada acima:
menores que 20: 1
entre 20 e 40: 3
maiores que 40: 1

Exemplo de entrada 2:
30 10 49 31 63 0

Saída esperada para a entrada acima:
menores que 20: 0
entre 20 e 40: 1
maiores que 40: 2
}

program Idades;
var
  n, a, b, c: integer;
begin
  n := 1;
  while n <> 0 do
  begin
    read(n);
    if (n < 20) and (n mod 5 <> 0) then
      a := a + 1
    else if (20 <= n) and (n <= 40) and (n mod 5 <> 0) then
      b := b + 1
    else if (n > 60) and (n mod 5 <> 0) then
      c := c + 1;
   end;
  writeln('menores que 20: ', a);
  writeln('entre 20 e 40: ', b);
  writeln('maiores que 60: ', c);
end.
