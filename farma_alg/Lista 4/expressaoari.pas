{


Escreva um programa em Pascal que leia 6 valores reais para as variáveis A,B,C,D,E, F e imprima o valor de X após o cálculo da seguinte expressão aritmética:

X = ((A+B) * E/(C-D))/((F/A*B) + E)

Seu programa deve imprimir a mensagem "divisao por zero" caso o denominador seja zero. Caso isso não ocorra seu programa irá abortar neste caso, o que não é correto.

Exemplos de entrada e saída:

Exemplo de entrada 1:
1 2 3 4 5 6
Saída esperada:
-1.8750000000000000E+000

Exemplo de entrada 2:
0 0 0 0 0 0
Saída esperada:
divisao por zero
}

program code;
var
	A, B, C, D, E, F: integer;
	X: real;
begin
	read(A, B, C, D, E, F);
	if ((C*F) - (D*F) + (A*B*E*C) - (A*B*E*D)) = 0 then
		writeln('divisao por zero')
	else
		begin
		X := ((A*A*B*E) + (B*B*A*E)) / ((C*F) - (D*F) + (A*B*E*C) - (A*B*E*D));
		writeln(X);
		end;
end.

