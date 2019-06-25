{Fazer um programa em Pascal para ler uma massa de dados contendo a definição de várias equações do segundo grau da forma ax2 + bx + c = 0. Cada linha de dados contém a definição de uma equação por meio dos valores de a, b e c do conjunto dos números reais. A última linha informada ao sistema contém 3 (três) valores zero (exemplo 0.0 0.0 0.0). Após a leitura de cada linha o programa deve calcular as duas raízes da equação e imprimir na tela, em cada linha, uma das seguintes possibilidades:

    As duas raízes reais (duas casas decimais), caso existam duas diferentes;
    ou a única raiz real (duas casas decimais), caso seja este o caso;
    ou a mensagem "nao existem raizes reais", se for o caso.
    ou a mensagem "nao eh equacao do segundo grau", se for o caso.

Exemplo de entrada:
1 4 1
1 2 1
1 0 10
0 1 2
0 0 0

Saída esperada para a entrada acima:
-3.73 -0.27
-1.00
nao tem raizes reais}
program code;
var
	a, b, c, count: integer;
	x1, x2, disc: real;
begin
	count := 0;
	read(a, b, c);
	if (a = 0) and (b = 0) and (c = 0) then
		count := count + 1;
	while (count <> 1) do
	begin
		disc := b*b - 4*a*c;
		if a = 0 then
			writeln('nao eh equacao do segundo grau')
		else if disc < 0 then
			writeln('nao tem raizes reais')
		else if disc = 0 then
			begin
			x1 := ((-1) * b)/ (2*a);
			writeln(x1:0:2);
			end
		else
			begin
			x1 := (((-1) * b) + (Sqrt(disc))) / (2*a);
			x2 := (((-1) * b) - (Sqrt(disc))) / (2*a);
			writeln(x2:0:2, ' ', x1:0:2);
			end;
		readln(a, b, c);
		if (a = 0) and (b = 0) and (c = 0) then
			count := count + 1
	end;
end.
