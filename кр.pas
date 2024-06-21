program notebook;

const
MAX = 10000;

type
  laptop = record
  brand: string[50];
  RAM: integer;
  speed: real; 
  price: real;
end;

var
    catalog: array[1..MAX] of laptop;
    N, i, bestIndex: integer;
    bestRatio: real;
    katalogFile, rezFile: text;

begin
    writeln('введите количество ноутбуков: ');
    readln(N);
    
    for i := 1 to N do
    begin
      writeln('ноутбук №', i);
      writeln('марка (Acer, Asus, Lenovo, Dell, HP): ');
      readln(catalog[i].brand);
      writeln('объем оперативной памяти: ');
      readln(catalog[i].RAM);
      writeln('скорость работы:');
      readln(catalog[i].speed);
      writeln('цена:');
      readln(catalog[i].price);
    end;
    
    assign(katalogFile, 'katalog.txt');
    rewrite(katalogFile);
    writeln(katalogFile, 'каталог ноутбуков: марка, объем оперативной памяти, скорость работы, цена:');
    for i := 1 to N do
      writeln(katalogFile, catalog[i].brand, ', ', catalog[i].RAM, ', ', catalog[i].speed, ', ', catalog[i].price);
      close(katalogFile);
    
    bestRatio := 0;
    for i := 1 to N do
    begin
      if catalog[i].speed / catalog[i].price > bestRatio then
      begin
        bestRatio := catalog[i].speed / catalog[i].price;
        bestIndex := i;
      end;
    end;
    
    assign(rezFile, 'rez.txt');
    rewrite(rezFile);
    writeln(rezFile, 'ноутбук с наилучшим соотношением: ');
    writeln(rezFile, 'марка: ', catalog[bestIndex].brand);
    writeln(rezFile, 'объем оперативной памяти: ', catalog[bestIndex].RAM, ' Гб');
    writeln(rezFile, 'скорость работы: ', catalog[bestIndex].speed, ' Ггц');
    writeln(rezFile, 'цена: ', catalog[bestIndex].price, ' руб');
    close(rezFile);
end.
