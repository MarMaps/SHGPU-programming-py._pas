program op_if_1;
  var v, j: real;

begin
  writeln('Введите 2 числа');
  readln(v, j);
    if (v>= 0) then v:=v*v;
    if (j>= 0) then j:=j*j;
  writeln ('v^2=',v);
  writeln ('j^2=',j);
end.