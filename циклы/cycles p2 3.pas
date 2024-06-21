program cycles_2_3;
var
  K, i, number, sum: integer;

begin
  writeln ('Введите целое число K:');
  readln (K);
  
  if (K < 0) or (K > 27) then
  begin
    writeln('сумма цифр данного числа не будет состоять из трехзначных чисел');
    exit;
  end;

  writeln('Трехзначные числа, сумма цифр которых равна ', K, ':');

  for i := 100 to 999 do
  begin
    number := i;
    sum := 0;

    while number > 0 do
    begin
      sum := sum + number mod 10;
      number := number div 10;
    end;
    
    if sum = K then
      writeln(i);
  end; 
end.