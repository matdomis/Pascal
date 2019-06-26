program kalt;
var
   n, num, k, contaNum, contaSeq, resto : integer;
   ehAlt: boolean;
begin
   read( n );

   if n = 0 then
      writeln( 0 )
   else
   begin
      ehAlt:= true;
      k:= 1;
      read( num );
      contaNum:= 1;
      resto:= num mod 2;
      contaSeq:= 1;
   
      while contaNum < n do
      begin
	 read( num );
	 contaNum:= contaNum + 1;
	 if num mod 2 = resto then
	    contaSeq:= contaSeq + 1
	 else
	 begin
	    if contaSeq <> k then
	       ehAlt:= false;
	    contaSeq:= 1;
	    resto:= num mod 2;
	    k:= k + 1;
	 end;
      end;
      if ehAlt and (contaSeq = k) then
	 writeln( k )
      else
	 writeln( 'NAO');
   end;
end.
   
