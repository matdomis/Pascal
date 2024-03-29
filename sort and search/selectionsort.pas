{=================================================================================}
{                      ୧☉□☉୨         SELECTION         ୧☉□☉୨                    }
{=================================================================================}
https://codepumpkin.com/wp-content/uploads/2017/10/selectionSort.gif


procedure selection_sort (var V: array_inteiros);
var
    tam, i, k, arm_valor, pos_troca: integer;
begin
    tam := tamarr(V); // returns array length
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
