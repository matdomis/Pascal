program kalt;
var
   n, num, k, resto, restoAnt : integer;
   ehAlt: boolean;
   contaNum,                        (* conta n numeros de entrada *)
   contaSeq,                        (* conta pares/impares consecutivos *)
   contaK: integer;                 (* conta uma sequencia de k inteiros *)
begin
   read( n );
   ehAlt:= true;
   k:= 0;
   contaNum:= 0;
   restoAnt:= -1;
   
   while contaNum < n do
   begin
      k:= k+1;
      read( num );
      resto:= num mod 2;
      if resto = restoAnt then
	 ehAlt:= false
      else
	 restoAnt:= resto;
      contaSeq:= 1;
      contaK:= 1;
      
      while (contaK < k) and (contaNum+contaK < n) do
      begin
	 read( num );
	 contaK:= contaK+1; 
	 if num mod 2 = resto then
	    contaSeq:= contaSeq + 1
      end;
      if contaSeq <> k then
	 ehAlt:= false;
      contaNum:= contaNum + k;
   end;
   if ehAlt then
      writeln( k )
   else
      writeln( 'NAO');
end.
   
