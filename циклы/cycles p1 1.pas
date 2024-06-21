program cycle_1;
  var i, N, count, sum: integer;

begin
  write('Введите число N: ');
  readln(N);
  count:= 0;
  sum:= 0;
    for i := 0 to N do
    begin
      if i mod 2 = 0 then
        begin
          writeln(i);
          count := count + 1;
          sum := sum + i;
        end;
    end;
  writeln('Количество чисел: ', count);
  writeln('Сумма чисел: ', sum);
end.
