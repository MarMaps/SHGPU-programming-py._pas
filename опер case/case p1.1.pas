program Lab_1;
var 
  n:byte; 
begin
 write('Введите номер дня недели');
 readln(n);
 case n of 
 1: writeln('Понедельник'); 
 2: writeln('Вторник');
 3: writeln('Среда');
 4: writeln('Четверг');
 5: writeln('Пятница');
 6: writeln('Суббота');
 7: writeln('Воскресение');
 else writeln('Ошибка');
 end;
end.