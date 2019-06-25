{
A decomposição em fatores primos é uma regra matemática importante quando se deseja encontrar o mínimo múltiplo comum e o máximo divisor comum entre dois ou mais números. A regra é definida por:

I) Dividir o número dado por um divisor primo.
II) Dividir o quociente da divisão anterior por outro número primo.
III) Repetir o processo até que o quociente da divisão seja igual a 1.

Sobre o número 180 o processo pode ser definido por:

180 | 2
90  | 2
45  | 3
15  | 3
5   | 5
1

Fazer um programa em Free Pascal que leia um número inteiro positivo do teclado. Após a leitura, o programa deve calcular a decomposição em fatores primos do número informado e imprimir os fatores calculados.

Exemplo de entrada 1:
12

Saída esperada para a entrada acima:
2 2 3

Exemplo de entrada 1:
150

Saída esperada para a entrada acima:
2 3 5 5
}

program code;
var
  primos, temp: string;
  num: longint;
  c: integer;
  b, checkifnot: boolean;
begin
  read(num);
  primos := '';
  b := True;
  while b do
  begin
    checkifnot := False;
    for c := 2 to 7 do
    begin
      if num = 1 then
      begin
        b := False;
        checkifnot := True;
        break;
      end
      else if num mod c = 0 then
      begin
        str(c, temp);
        primos := primos + temp + ' ';
        num := num div c;
        checkifnot := True;
        break;
      end;
    end;
    if checkifnot = False then
    begin
      str(num, temp);
      primos := primos + temp;
      break;
    end;    
  end;
  writeln(primos);        
end.
