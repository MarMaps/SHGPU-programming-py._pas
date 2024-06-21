program op_if_2;
  var x, y: integer;
  
begin
  writeln('Введите координаты точки А');
  readln(x, y);
    if (x>0) and (y>0) then writeln('Точка в I четверти');
    if (x<0) and (y>0) then writeln('Точка во II четверти');
    if (x<0) and (y<0) then writeln('Точка в III четверти');
    if (x>0) and (y<0) then writeln('Точка в IV четверти');
    if (x=0) and (y=0) then writeln('Точка в начале координат');
    if (x=0) and (y<>0) then writeln('Точка на оси OY');
    if (x<>0) and (y=0) then writeln('Точка на оси OX');
end.