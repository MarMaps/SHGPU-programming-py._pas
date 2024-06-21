program cycles_2_1;
var
  N, i: integer;
  height, average_Height: real;

begin
  writeln('Введите количество учеников в классе');
  readln(N);
  
  average_Height := 0;
  i := 1;

  writeln('Введите рост каждого ученика в см:');

  while i <= N do
  begin
    write('Рост ученика ', i, ': ');
    readln(height);
    average_Height := average_Height + height;
    i := i + 1;
  end;

  if N > 0 then
  begin
    average_Height := average_Height / N;
    writeln('Средний рост учеников в классе: ', average_Height:0:2, ' см');
  end
  else
    writeln('В классе нет учеников.');

end.
