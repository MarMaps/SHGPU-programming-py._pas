program op_case_2;
  var a, b: integer;
      s: char;
      res: real;
  
begin
  writeln ('Введите первое число');
  readln (a);
  writeln ('введите второе число');
  readln (b);
  writeln ('введите знак операции');
  readln (s);
  case s of
    '+': res:= a+b;
    '-': res:= a-b;
    '*': res:= a*b;
    '/': if b <> 0 then
      res:= a/b
  end;
  writeln ('Результат=', res:0:2);
end.