program sort;

type
    array_inteiros = array [1..100] of integer;
function tamarr (V: array_inteiros): integer;
var
    k: integer;
begin
    k := 1;
    while V[k] <> 0 do
        k := k + 1;
    tamarr := k - 1;
end;
procedure generate_array (var V: array_inteiros);
var
    i, num: integer;
begin
    read(num);
    i := 0;
    while num <> 0 do
    begin
        i := i + 1;
        V[i] := num;
        read(num);
    end;
end;
procedure bubble_sort (var V: array_inteiros);
var
    tam, compare_num, num, k, i: integer;
begin
    tam := tamarr(V);
    k := 1;
    while k <= tam do
    begin
        for i := 1 to tam-1 do
        begin
            compare_num := V[i+1];
            if V[i] > compare_num then
            begin
                V[i+1] := V[i];
                v[i] := compare_num;
            end;
        end;
        k := k + 1;
    end;
end;
    
    

//
procedure print_array (V: array_inteiros);
var
    k, tam: integer;
begin
    tam := tamarr(V);
    for k := 1 to tam do
        write(V[k], ' ');
end;
var
    vetor: array_inteiros;
begin
    generate_array(vetor);
    bubble_sort(vetor);
    print_array(vetor);
end.
        






