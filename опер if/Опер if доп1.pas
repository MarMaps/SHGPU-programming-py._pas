program dop_if_1;
  var x, y: real;
  
begin
  writeln('Введите координаты точки A');
  readln(x, y);
    if (sqrt(sqr(x) + sqr(y)) <= 10) then
      writeln('Точка находится внутри круга')
    else
      writeln('Точка находится вне круга');
end.