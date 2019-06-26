{=================================================================================}
{                           (★^O^★)    BUBBLE   (★^O^★)                           }
{=================================================================================}


procedure bubble_sort (var V: array_inteiros);
var
    tam, compare_num, num, k, i: integer;
begin
    tam := tamarr(V);  // function returns lenght of the array
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
    


        






