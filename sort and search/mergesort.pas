=S


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
