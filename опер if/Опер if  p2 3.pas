program op_if_3;
  var X,Y,Z: integer;
  
begin
  writeln('Введите стороны X,Y,Z треугольника');
  readln(X, Y, Z);
    if (X+Y>Z) and (X+Z>Y) and (Z+Y>X) then 
     begin
      writeln ('Треугольник с данными сторонами существует');
      if (X=Y) and (Y=Z) and (X=Z) then writeln ('Треугольник равносторонний')
      else
        if (X=Y) or (Y=Z) or (X=Z) then writeln ('Треугольник равнобедренный')
      else
        if (Sqr(X)=Sqr(Y)+Sqr(Z)) then writeln ('Треугольник прямоугольный')
     end
end.