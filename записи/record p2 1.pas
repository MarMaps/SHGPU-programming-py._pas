program phone_directory;

type
    subscriber = record
        surname: string;
        name: string;
        patronymic: string;
        phone: string;
    end;

var
    directory: array of subscriber;
    N, i: integer;
    searchSurname, searchName, searchPatronymic: string;
    found: boolean;

begin
    writeln('Введите количество абонентов:');
    readln(N);
    SetLength(directory, N);

    for i := 0 to N - 1 do
    begin
        writeln('Введите данные для абонента ', i + 1);
        write('Фамилия: ');
        readln(directory[i].surname);
        write('Имя: ');
        readln(directory[i].name);
        write('Отчество: ');
        readln(directory[i].patronymic);
        write('Номер телефона (если нет, введите "-"): ');
        readln(directory[i].phone);
    end;

    writeln('Введите данные для отображения номерв телефона:');
    write('Фамилия: ');
    readln(searchSurname);
    write('Имя: ');
    readln(searchName);
    write('Отчество: ');
    readln(searchPatronymic);

    found := false;
    for i := 0 to N - 1 do
    begin
        if (directory[i].surname = searchSurname) and
           (directory[i].name = searchName) and
           (directory[i].patronymic = searchPatronymic) then
        begin
            found := true;
            if directory[i].phone = '-' then
                writeln('Абонент не имеет номера телефона')
            else
                writeln('Номер телефона: ', directory[i].phone);
            break;
        end;
    end;
end.
