program Lab_3;
var 
  x:integer;
begin
 write('Введите число');
 readln(x);
 case x of 
  -9..-1:writeln('x=', 2*x); 
  0:writeln('x=', sin(x));
  1..9:writeln('x=', x*x+1);
  else writeln('Ошибка ввода');
 end;
end.