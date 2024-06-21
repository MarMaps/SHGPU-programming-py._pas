program car_catalog;

type
    car = record
        brand: string;
        color: string;
        year: integer;
        power: integer;
        country: string;
        is_new: boolean;
        previous_owners: integer;
        mileage: integer;
    end;

var
    catalog: array of car;
    N, i, year_from, year_to, power_from, power_to, owners_from, owners_to, mileage_from, mileage_to: integer;
    search_field1, search_value1, search_field2, search_value2: string;
    found: boolean;

begin
    writeln('Введите количество автомобилей:');
    readln(N);
    SetLength(catalog, N);

    for i := 0 to N - 1 do
    begin
        writeln('Введите данные для автомобиля: ', i + 1);
        write('Марка авто (Lada, Toyota, Honda, Audi, BMW, KIA, Volvo): ');
        readln(catalog[i].brand);
        write('Цвет: ');
        readln(catalog[i].color);
        write('Год выпуска: ');
        readln(catalog[i].year);
        write('Мощность двигателя: ');
        readln(catalog[i].power);
        write('Страна производитель: ');
        readln(catalog[i].country);
        write('Новый автомобиль? (true/false): ');
        readln(catalog[i].is_new);
        if not catalog[i].is_new then
        begin
            write('Количество прежних владельцев: ');
            readln(catalog[i].previous_owners);
            write('Пробег: ');
            readln(catalog[i].mileage);
        end
        else
        begin
            catalog[i].previous_owners := 0;
            catalog[i].mileage := 0;
        end;
    end;

    writeln('Введите два поля для поиска (марка, цвет, год, мощность, страна производитель, новый?):');
    write('Первое поле: ');
    readln(search_field1);
    write('Значение первого поля: ');
    readln(search_value1);
    write('Второе поле: ');
    readln(search_field2);
    write('Значение второго поля: ');
    readln(search_value2);

    found := false;
    for i := 0 to N - 1 do
    begin
        if ((search_field1 = 'марка') and (catalog[i].brand = search_value1)) or
           ((search_field1 = 'цвет') and (catalog[i].color = search_value1)) or
           ((search_field1 = 'год') and (IntToStr(catalog[i].year) = search_value1)) or
           ((search_field1 = 'мощность') and (IntToStr(catalog[i].power) = search_value1)) or
           ((search_field1 = 'страна производитель') and (catalog[i].country = search_value1)) or
           ((search_field1 = 'новый?') and ((catalog[i].is_new and (search_value1 = 'true')) or
                                           (not catalog[i].is_new and (search_value1 = 'false')))) then
        begin
            if ((search_field2 = 'марка') and (catalog[i].brand = search_value2)) or
               ((search_field2 = 'цвет') and (catalog[i].color = search_value2)) or
               ((search_field2 = 'год') and (IntToStr(catalog[i].year) = search_value2)) or
               ((search_field2 = 'мощность') and (IntToStr(catalog[i].power) = search_value2)) or
               ((search_field2 = 'страна производитель') and (catalog[i].country = search_value2)) or
               ((search_field2 = 'новый?') and ((catalog[i].is_new and (search_value2 = 'true')) or
                                               (not catalog[i].is_new and (search_value2 = 'false')))) then
            begin
                found := true;
                writeln('Найден автомобиль:');
                writeln('Марка: ', catalog[i].brand);
                writeln('Цвет: ', catalog[i].color);
                writeln('Год выпуска: ', catalog[i].year);
                writeln('Мощность двигателя: ', catalog[i].power);
                writeln('Страна производитель: ', catalog[i].country);
                writeln('Новый авто: ', catalog[i].is_new);
                if not catalog[i].is_new then
                begin
                    writeln('Количество прежних владельцев: ', catalog[i].previous_owners);
                    writeln('Пробег: ', catalog[i].mileage);
                end;
                writeln;
            end;
        end;
    end;

    if not found then
        writeln('Автомобили по заданным параметрам не найдены');
end.
