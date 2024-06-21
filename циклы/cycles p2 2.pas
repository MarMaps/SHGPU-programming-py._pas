program cycles_2_2;
var
  N, i: integer;
  sum: real;
  
begin
  writeln('Введите число N:');
  readln(N);

  if N <= 0 then
  begin
    writeln('N должно быть положительным числом.');
    exit;
  end;

  sum := 0;

  for i := 0 to N do
  begin
    sum := sum + 1 / (2 * i + 1);
  end;

  writeln('Сумма ряда: ', sum:0:3);
end.