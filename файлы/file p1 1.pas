Program ex_1;
var
a: integer;
f: file of integer;

begin
  assign(f, 'file_1');
  rewrite(f);
  
  writeln('введите число:');
  readln(a);
  while a <> 5 do
  begin
    readln(a);
    write(f, a);
  end;
  close(f);
end.
