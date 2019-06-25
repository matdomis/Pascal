{Fazer um programa em Free Pascal que leia um número inteiro positivo n. Em seguida leia uma sequência contendo n números inteiros. Se o valor de n for par o programa deve retornar a soma dos números pares da sequência, caso contrário o programa deve retornar a soma dos números ímpares.

Exemplo de entrada 1:
4
1 12 3 4

Saída esperada para a entrada acima:
16

Exemplo de entrada 2:
3
1 122 3001

Saída esperada para a entrada acima:
3002}

program SomaPares;
var
  a, n, x, c: longint;
begin
	read(n);
  a := n;
	c := 0;
	while 0 < n do
	begin
		read(x);
		if x mod 2 = 0 then
			c := c + x;
		n := n - 1;
  end;
	if a mod 2 = 0 then
		writeln('Soma: ', c)
	else
		writeln('Soma: impar');
end.
