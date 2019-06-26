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

procedure selection_sort (var V: array_inteiros);
var
    tam, i, k, arm_valor, pos_troca: integer;
    b: boolean;
begin
    tam := tamarr(V);
    b := False;
    for i := 1 to tam-1 do
    begin
        arm_valor := V[i];
        pos_troca := i;
        for k := i + 1 to tam do
        begin
            if (V[i] > V[k]) and (V[k] < arm_valor) then
            begin
                arm_valor := V[k];
                pos_troca := k;
            end;
        end;
        V[pos_troca] := V[i];
        V[i] := arm_valor;
    end;
end;
                
          
          


//
var
    vetor: array_inteiros;
begin
    generate_array(vetor);
    selection_sort(vetor);
    print_array(vetor);
end.










