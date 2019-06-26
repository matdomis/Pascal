program listainversa;
type
    array_inteiros = array [1..100] of integer;

{*********************************************************************************}
{                           FUNCTIONS                                             }
{*********************************************************************************}

procedure generate_array(var v: array_inteiros);
var
	k, num: integer;
begin
	k := 1;
	read(num);
	while num <> 0 do
	begin
		v[k] := num;
		read(num);
		k := k + 1;
	end;
end;

function tamarr(V: array_inteiros): integer;
var
 k: integer;
begin
  k := 1;
  while V[k] <> 0 do
   k := k + 1;
  tamarr := k - 1;
end;

procedure print_array(V: array_inteiros; N: integer);
var
	i: integer;
begin
	for i := 1 to N do
		write(V[i], ' ');
end;

procedure reverse_array (var V: array_inteiros; N: integer);
var
    temparr: array_inteiros;
    i, k: integer;
begin
    temparr := V;
    i := 1;
    for k := N downto 1 do
    begin
        V[i] := temparr[k];
        i := i + 1;
    end;
end;

{*********************************************************************************}
{                           MAIN                                                  }
{*********************************************************************************}

var
    vetor1, vetor2: array_inteiros;
    tam1, tam2: integer;
begin
    generate_array(vetor1);
    generate_array(vetor2);
    tam1 := tamarr(vetor1);
    tam2 := tamarr(vetor2);
    reverse_array(vetor1, tam1);
    reverse_array(vetor2, tam2);
    print_array(vetor1, tam1);
    writeln();
    print_array(vetor2, tam2);
end.

