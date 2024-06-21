program ex_1;

type
    person = record
        surname: string;
        name: string;
        patronymic: string;
        height: integer;
        weight: real;
        age: integer;
    end;

var
    people: array of ^person; 
    N, i, tallest_index, max_height: integer;
    current_person: ^person; 

begin
    writeln('Введите количество людей:');
    readln(N);
    SetLength(people, N);

    for i := 0 to N - 1 do
    begin
        New(people[i]);
        current_person := people[i];
        writeln('Введите данные для человека ', i + 1);
        write('Фамилия: ');
        readln(current_person^.surname);
        write('Имя: ');
        readln(current_person^.name);
        write('Отчество: ');
        readln(current_person^.patronymic);
        write('Рост (в сантиметрах): ');
        readln(current_person^.height);
        write('Вес: ');
        readln(current_person^.weight);
        write('Возраст: ');
        readln(current_person^.age);
    end;

    max_height := -1;
    for i := 0 to N - 1 do
    begin
        if people[i]^.height > max_height then
        begin
            max_height := people[i]^.height;
            tallest_index := i;
        end;
    end;

    writeln('Самый высокий человек:');
    current_person := people[tallest_index];
    writeln('Фамилия: ', current_person^.surname);
    writeln('Имя: ', current_person^.name);
    writeln('Отчество: ', current_person^.patronymic);
    writeln('Рост: ', current_person^.height);
    writeln('Вес: ', current_person^.weight);
    writeln('Возраст: ', current_person^.age);

    for i := 0 to N - 1 do
    begin
        Dispose(people[i]); 
    end;
    SetLength(people, 0);
end.
