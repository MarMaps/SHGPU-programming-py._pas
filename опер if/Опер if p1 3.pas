program op_if_3;
  var x: integer;
  
begin
  writeln('Введите число X');
  readln(x);
    if x mod 2=0 then writeln('Число четное');
    if x mod 2<>0 then writeln('Число не является четным');
    if x<10 then writeln('В числе 1 цифра')
    else if x<100 then writeln('В числе 2 цифры')
    else writeln('В числе 3 цифры')
end.