program substituicao;
type
    array_inteiros = array [1..100] of integer;

{*********************************************************************************}
{                                FUNCTIONS                                        }
{*********************************************************************************}

procedure generate_arr(var v: array_inteiros);
var
   num, k: integer;
begin
    read(num);
    k := 0;
    while num <> 0 do
    begin
        k := k + 1;
        v[k] := num;
        read(num);
    end;
end;

function tam_arr(V: array_inteiros): integer;
var
 k: integer;
begin
  k := 1;
  while V[k] <> 0 do
   k := k + 1;
  tam_arr := k - 1;
end;

procedure print_array(V: array_inteiros; tamarr: integer);
var
	i: integer;
begin
	for i := 1 to tamarr do
		write(V[i], ' ');
end;

var
    texto, v1, v2: array_inteiros; // v2 -> v1;
    tam_texto, tam_v1, tam_v2, i, k, jump, arm: integer;
    b: boolean;
begin
    generate_arr(texto);
    generate_arr(v1);
    generate_arr(v2);
    tam_texto := tam_arr(texto);
    tam_v1 := tam_arr(v1);
    tam_v2 := tam_arr(v2);
    jump := tam_v2 - tam_v1;
	arm := 0;
    for i := 0 to tam_texto - tam_v1 do
    begin
        b := True;
        for k := 1 to tam_v1 do
            if texto[i+k] <> v1[k] then
                b := False; 
        if b then
            tam_texto := tam_texto + jump;
            for k := tam_texto - jump downto i + tam_v1 do
				arm := texto[k + jump];
                texto[k + jump] := texto[k];

    end;
    writeln(jump);
    print_array(texto, tam_texto);
end.
    
    
    
    
    
    
    
    
    
