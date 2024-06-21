program op_if_1;
  var v, j: integer;

begin
  writeln('Введите 2 числа');
  readln(v, j);
    if (v>j) then v:=0
    else
      begin
        v:=v*v;
        j:=j*j;
      end;
  writeln ('v=',v);
  writeln ('j=',j);
end.