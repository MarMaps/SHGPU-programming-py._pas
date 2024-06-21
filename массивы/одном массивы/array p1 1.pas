program array1_1;
  var N, K, i, sum, count_greater, count_less, count_equal, count_replacements: integer;
  arr: array of integer;
  
begin
  Write('Введите количество элементов: ');
  Readln(N);
  SetLength(arr, N);
  for i := 0 to N - 1 do
  begin
    arr[i] := Random(-20, 21);
    write (arr[i],' ');
  end;
  Write('Введите число К: ');
  Readln(K);
  sum := 0;
  count_greater := 0;
  count_less := 0;
  count_equal := 0;
  count_replacements := 0;
  for i := 0 to N - 1 do
  begin
    if arr[i] mod K = 0 then
    begin
      sum := sum + arr[i];
    end;
    if arr[i] > K then
    begin
      count_greater := count_greater + 1;
    end
    else if arr[i] < K then
    begin
      count_less := count_less + 1;
    end
    else
    begin
      count_equal := count_equal + 1;
    end;
    if arr[i] > K then
    begin
      arr[i] := K;
      count_replacements := count_replacements + 1;
    end;
  end;
  Writeln('Сумма элементов, кратных числу К: ', sum);
  Writeln('Количество чисел больших К: ', count_greater);
  Writeln('Количество чисел меньших К: ', count_less);
  Writeln('Количество чисел равных К: ', count_equal);
  Writeln('Количество замен: ', count_replacements);
end.