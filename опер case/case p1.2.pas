program Lab_2;
var 
  x:byte;
begin
 write('Введите количество баллов');
 readln(x);
 case x of 
  0..29:writeln('Не справился'); 
  30..100:writeln('Справился');
  else writeln('Ошибка ввода');
 end;
 case x of
   0..30:writeln('Удовлетворительно');
   31..75:writeln('Хорошо');
   76..100:writeln('Отлично');
 end;
end.