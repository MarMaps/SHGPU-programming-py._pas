program Lin_alg_ch2_3;
var
  s,k,v,p: real;
  
BEGIN
    writeln('введите стоимость одной газеты');
    readln(s);
    writeln('введите количество проданных газет');
    readln(k);
    v:=s*k;
    writeln('выручка= ',v);
    p:=v-s;
    writeln('прибыль= ',p);
end.