Program ex_2;
var
f_1, f_2: text;
line, new_name: string;

begin
  writeln('введите новое имя файла');
  readln(new_name);
  assign(f_1, 'text.txt');
  assign(f_2, new_name + '.txt');
  reset(f_1);
	rewrite(f_2);
  
  while not eof(f_1) do
  begin
    readln(f_1, line);
    writeln(line);
    writeln(f_2, line)
  end;
  close(f_1);
  close(f_2);
end.
