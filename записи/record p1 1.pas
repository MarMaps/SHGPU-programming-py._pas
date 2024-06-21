program PeopleInfo;

type
    person = record
        fio: string;
        gender: string;
        birthdate: string[8];
        birthplace: string[50];
    end;

var
    people: array of person;
    N, i, youngestIndex: integer;
    menCount, womenCount: integer;
    minBirthDate: string;
    placeCounts: array of record
        place: string;
        count: integer;
    end;
    j, k: integer;
    found: boolean;

function CompareDates(date1, date2: string): integer;
begin
    if date1 > date2 then
        CompareDates := 1
    else if date1 < date2 then
        CompareDates := -1
    else
        CompareDates := 0;
end;

begin
    writeln('Введите количество людей:');
    readln(N);
    SetLength(people, N);
    SetLength(placeCounts, N);

    for i := 0 to N-1 do
    begin
        writeln('Введите ФИО:');
        readln(people[i].fio);
        writeln('Введите пол (м/ж):');
        readln(people[i].gender);
        writeln('Введите дату рождения (формат ГГГГММДД):');
        readln(people[i].birthdate);
        writeln('Введите место рождения:');
        readln(people[i].birthplace);
    end;

    youngestIndex := 0;
    minBirthDate := people[0].birthdate;
    menCount := 0;
    womenCount := 0;

    for i := 0 to N-1 do
    begin
        if CompareDates(people[i].birthdate, minBirthDate) > 0 then
        begin
            youngestIndex := i;
            minBirthDate := people[i].birthdate;
        end;

        if people[i].gender = 'м' then
            Inc(menCount)
        else if people[i].gender = 'ж' then
            Inc(womenCount);
        
        found := False;
        for j := 0 to k-1 do
        begin
            if placeCounts[j].place = people[i].birthplace then
            begin
                Inc(placeCounts[j].count);
                found := True;
                Break;
            end;
        end;
        
        if not found then
        begin
            placeCounts[k].place := people[i].birthplace;
            placeCounts[k].count := 1;
            Inc(k);
        end;
    end;

    writeln('Самый молодой человек: ', people[youngestIndex].fio);
    writeln('Количество мужчин: ', menCount);
    writeln('Количество женщин: ', womenCount);

    writeln('Люди с одинаковым местом рождения:');
    for j := 0 to k-1 do
    begin
        if placeCounts[j].count > 1 then
            writeln('Место рождения: ', placeCounts[j].place, ', Количество: ', placeCounts[j].count);
    end;
end.
