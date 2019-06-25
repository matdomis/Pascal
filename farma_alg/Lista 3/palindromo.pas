{ 

Um número é considerado um palíndromo (ou capicua) quando aplicada uma operação de reversão o novo número equivale ao original.
Por exemplo, o número 1001 invertido é 1001, logo o mesmo é um palíndromo. O número 4003 invertido é 3004, o que não o torna um palíndromo.

Fazer um programa em Free Pascal que leia um número inteiro positivo do teclado e verifique se a sua sequência de dígitos é exatamente a mesma, independente da ordem de leitura. Caso a sequência seja a mesma, imprimir "Sim eh palindromo". Caso não seja, imprimir "Nao eh palindromo".

Dica: Um modo de inverter um número inteiro é aplicar operações sucessivas por 10, utilizando tanto o quociente da divisão inteira quanto o módulo (ou resto) da divisão.

Exemplo de entrada 1:
12321

Saída esperada para a entrada acima:
Sim eh palindromo

Exemplo de entrada 2:
31527

Saída esperada para a entrada acima:
Nao eh palindromo
}

program code;
var
	count: integer;
	S, temp: longint;
	c,temp2, p: string;
begin
	read(S);
	Str(S, c);
	p := '';
	for count := 1 to length(c) do
	begin
		temp := S mod 10;
		Str(temp, temp2);
		S := S div 10;
		p := p + temp2;
	end;
	if c = p then
		writeln('Sim eh palindromo')
	else
		writeln('Nao eh palindromo');
end.		
