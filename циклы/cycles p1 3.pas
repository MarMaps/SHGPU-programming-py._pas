program cycle_3;
  var a, b: integer;

begin
  for a:= 1 to 10 do
  begin
    for b:= 1 to 10 do
    begin
      write(a*b:4);
    end;
    writeln;
  end;
end.