program powerlifting_competition;

type
    participant = record
        fio: string;
        weight: real;
        result1: integer;
        result2: integer;
        result3: integer;
        total: integer;
    end;

var
    participants: array of participant;
    N, i, maxTotal, winnerIndex: integer;

begin
    writeln('Введите количество участников:');
    readln(N);
    SetLength(participants, N);

    for i := 0 to N - 1 do
    begin
        writeln('Введите данные для участника ', i + 1);
        write('ФИО: ');
        readln(participants[i].fio);
        write('Вес: ');
        readln(participants[i].weight);
        write('Результат упражнения №1: ');
        readln(participants[i].result1);
        write('Результат упражнения №2: ');
        readln(participants[i].result2);
        write('Результат упражнения №3: ');
        readln(participants[i].result3);
        participants[i].total := participants[i].result1 + participants[i].result2 + participants[i].result3;
    end;

    maxTotal := -1;
    winnerIndex := -1;

    for i := 0 to N - 1 do
    begin
        if (participants[i].total > maxTotal) or
           ((participants[i].total = maxTotal) and (participants[i].weight < participants[winnerIndex].weight)) then
        begin
            maxTotal := participants[i].total;
            winnerIndex := i;
        end;
    end;

    writeln('Победитель соревнований:');
    writeln('ФИО: ', participants[winnerIndex].fio);
    writeln('Вес: ', participants[winnerIndex].weight:0:2);
    writeln('Сумма баллов: ', participants[winnerIndex].total);
end.
