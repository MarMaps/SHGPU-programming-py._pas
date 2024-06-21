program dop_if_2;
  var x, y, R, N: real;
  
begin
  writeln('Введите координаты точки A');
  readln(x, y);
  writeln('Введите радиус');
  readln(R);
  writeln('Введите смещение по оси абцисс');
  readln(N);
    if (sqrt(sqr(x - n) + sqr(y)) <= r) then
      writeln('Точка находится внутри круга')
    else
      writeln('Точка находится вне круга');
end.