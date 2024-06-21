program array1_2;
var N, i, max_index, min_index, temp: integer;
  arr: array of integer;
  
begin
  Write('Введите количество элементов массива: ');
  Readln(N);
  SetLength(arr, N);
  for i := 0 to N - 1 do
  begin
    arr[i] := Random(-100, 101);
    write (arr[i],' ');
  end;
  max_index := 0;
  min_index := 0;
  for i := 1 to N - 1 do
  begin
    if arr[i] > arr[max_index] then
    begin
      max_index := i;
    end;
    if arr[i] < arr[min_index] then
    begin
      min_index := i;
    end;
  end;
  temp := arr[max_index];
  arr[max_index] := arr[min_index];
  arr[min_index] := temp;
  Writeln('Массив после замены наибольшего и наименьшего элементов:');
  for i := 0 to N - 1 do
  begin
    Write(arr[i], ' ');
  end;
end.