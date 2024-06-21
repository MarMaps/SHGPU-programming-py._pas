program op_case_3;
  var t: integer;
  
begin
  writeln ('Введите температуру');
  readln (t);
  case t of
    -25..-1: writeln ('учатся все');
    -30..-26: writeln ('не учатся начальные классы');
    -35..-31: writeln ('не учатся до 9 класса');
    -40..-36: writeln ('не учатся все');
    else writeln ('ошибка ввода');
  end;
end.