program ex3;
var
  f: text;
  line_finish, line_start: String;
begin
  assign(f, 'file.txt');

  writeln('Введите строку в начало файла:');
  readln(line_start);

  rewrite(f);
  writeln(f, line_start);

  append(f);
  writeln('Введите строку в конец файла:');
  readln(line_finish);
  writeln(f, line_finish);

  close(f);
end.
