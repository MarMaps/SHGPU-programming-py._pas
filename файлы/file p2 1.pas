program ex1;
var
    f: text;
    line: String;
    i: Integer;
    letters, words, sentences: Integer;
    n_word, n_sentence: Boolean;
begin
    assign(f, 'file.txt');
    reset(f);
    letters := 0;
    words := 0;
    sentences := 0;

    while not Eof(f) do
    begin
        Readln(f, line);
        n_word := False;
        n_sentence := False;

        for i := 1 to length(line) do
        begin
            if (line[i] in ['a'..'z']) or (line[i] in ['A'..'Z']) then 
            begin
                inc(letters);
                if not n_word then
                begin
                    n_word := True;
                    inc(words);
                end;
            end
            else if (line[i] = '.') or (line[i] = '!') or (line[i] = '?') then
      begin
        n_word := false;
        n_sentence := true;
      end;
    end;

    if n_sentence then
    begin
      inc(sentences);
    end;
  end;

    writeln('количество букв: ', letters);
    writeln('количество слов: ', words);
    Writeln('Количество предложений: ', sentences);

    close(f);
end.
