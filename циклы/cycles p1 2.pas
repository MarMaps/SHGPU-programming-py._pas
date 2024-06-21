program cycle_2;
  var num, count: integer;

begin
  count := 0;
  repeat
    write('Введите число: ');
    readln(num);
    count := count + 1;
    if num = 9 then
      count := count - 1;
  until num = 3;
  writeln('Количество попыток ввода: ', count);
end.