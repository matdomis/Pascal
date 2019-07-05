{ Em teoria das probabilidades, o paradoxo do aniversário afirma que dado um grupo de 23 (ou mais) pessoas escolhidas aleatoriamente, a chance de que duas pessoas terão a mesma data de aniversário é de mais de 50%. Embora não seja um paradoxo do ponto de vista matemático, ele é chamado assim pois foge da intuição das pessoas e é difı́cil se acreditar que é mais fácil ter duas pessoas que fazem aniversário no mesmo dia em um grupo de 23 pessoas do que ganhar um cara-ou-coroa.
Existe uma prova analı́tica para este resultado, mas aqui a ideia é fazer simulações que corroborem de forma numérica que isto de fato é verdade (simulações analı́ticas não substituem a prova analı́tica formal).

Faça um programa em Free Pascal que leia um inteiro positivo N, sendo 23 ≤ N ≤ 30. N indica o tamanho do vetor de aniversários. Em seguida o programa deve ler 100 vetores de tamanho N. Cada elemento do vetor será composto de um inteiro entre 1 e 365, indicando cada dia do ano. Assim, 1 significa primeiro de Janeiro enquanto que 365 significa 31 de Dezembro. Os anos bissextos não fazem parte deste experimento.
Seu programa deve, para cada vetor, determinar se há coincidência de pelo menos dois aniversários, isto é, se o vetor tem pelo menos um valor repetido. Você deve somar todas as ocorrências positivas (positivos) para cada um dos 100 vetores e imprimir positivos/100.

Nos exemplos abaixo usamos vetores de tamanho 12 e 15 e apenas 5 vetores ao invés de 100, senão os casos de teste ficariam ruim de serem vistos neste arquivo. Mas os casos de teste do FARMA-ALG contém os valores conforme especificado acima no enunciado.

Entrada com 12 datas e 5 vetores:
12
113 115 1 189 115 210 183 133 155 15 317 42
199 192 25 234 168 182 201 348 174 21 346 124
51 27 204 91 11 213 34 64 237 71 177 213
9 208 59 127 203 330 304 159 188 235 236 45
249 231 332 163 253 348 74 286 234 319 191 167

Saı́da esperada para a entrada acima:
0.40

Entrada com 15 datas e 5 vetores:
15
327 288 305 123 22 105 205 12 107 170 218 133 59 28 127
12 12 270 132 153 137 178 225 70 233 318 2 44 304 162
34 295 21 271 80 175 216 138 199 307 80 142 137 161 224
182 310 359 267 184 183 231 112 7 147 9 344 57 122 155
133 94 173 58 130 199 317 167 281 110 328 8 298 167 12

Saı́da esperada para a entrada acima:
0.60

Observação para os que duvidam que os números gerados para os casos de teste sejam realmente aleatórios (precisamente falando pseudo-aleatórios). Aqueles que acreditam podem pular o restante deste texto:

Você pode gerar você mesmo uma entrada e testar no seu computador (não no FARMA-ALG). Você
vai ver que os valores impressos são muito próximos dos disponibilizados nos casos de saı́da, eles não
serão necessariamente iguais justamente porque os números gerados são aleatórios. Mas, como dito, isto
3é apenas no caso de você querer controlar o processo todo para verificar que o chamado paradoxo do
aniversário de fato é verdadeiro.

Segue um exemplo de programa que gera números pseudo-aleatórios. }

 Program Aniversario;
Type
   TpVetor= array [1..31] of Integer;
Procedure LeVetor(Var v:TpVetor; n:Integer);
Var
   i:Integer;
Begin
   for i:=1 to n do
   Begin
   Read(v[i]);
   end;
   ReadLn;
end;
Function Repeticao(Var v:TpVetor; n:Integer):Real;
Var
   i,k,temp,qtdR:integer;
   md:boolean;
Begin
   i:=1;
   qtdR:=0;
   md:=false;
   while (i<n+1) and (qtdr<>1) do
   Begin
      temp:=v[i];
      k:=i+1;
      while (k<n+2) and (md=false) do
      Begin
         if temp=v[k]  then
         Begin
         qtdr:=1;
         end;
         k:=k+1;
      end;
      i:=i+1;
   end;
   Repeticao:=qtdr/100;
end;
Var
   Vn:TpVetor;
   num,i:Integer;
   Rp:Real;
Begin
   ReadLn(num);
   Rp:=0;
   for i:=1 to 100 do
   Begin
      Levetor(Vn,num);
      Rp:=Rp+Repeticao(Vn,num);
   end;
   write(rp:1:2);
end.
