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
    
//
procedure print_array (V: array_inteiros);
var
    k, tam: integer;
begin
    tam := tamarr(V);
    for k := 1 to tam do
        write(V[k], ' ');
end;
//

procedure merge_sort(var V: array_inteiros);
var
    vetor_1, vetor_2: array_inteiros;
    tam_arr, tam_vetor_1, tam_vetor_2, i, k, aux_pos: integer;
    
begin
    tam_arr := tamarr(V);
    tam_vetor_1 := tam_arr div 2;
    tam_vetor_2 := tam_arr - tam_vetor_1;
    aux_pos := 1;
    
    for i := 1 to tam_vetor_1 do
        vetor_1[i] := V[i];
    
    for i := tam_vetor_2 to tam_arr do
    begin
        vetor_2[aux_pos] := V[i];
        aux_pos := aux_pos + 1;
    end;
    
    for i := 1 to tam_vetor_1 do
        write(vetor_1[i],' ');
    writeln();
    for i := 1 to tam_vetor_2 do
        write(vetor_2[i], ' ');
    writeln();
    while (tamarr(vetor_1) <> 1) do
    begin
        merge_sort(vetor_1);
        merge_sort(vetor_2);
    end;

end;
    












//
var
    vetor: array_inteiros;
begin
    generate_array(vetor);
    merge_sort(vetor);
end.