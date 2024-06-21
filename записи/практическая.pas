Program zd2;
	type
	book=record
	nazv,author:string;
	year:integer;
	case infoType: char of
            'p': (pages: integer);
            'g': (genre: string[30]);
	end;
	var b:array[1..100] of book;
	i,n,g:integer;
	searchType: char;
	searchPages: integer;
    searchGenre: string[30];
begin
 writeln('Введите количество книг');
 readln(n);
 for i:=1 to n do
	begin
	 with b[i] do
	 begin
		writeln('Название ',i,' книги');
		readln(nazv);
		writeln('Автор ',i,' книги');
		readln(author);
		writeln('Год издания ',i,' книги');
		readln(year);
		writeln('Введите тип дополнительной информации для книги (p - количество страниц, g - жанр)');
        readln(infoType);
        case infoType of
			'p': begin
             writeln('Введите количество страниц');
             readln(pages);
             end;
             'g': begin
             writeln('Введите жанр книги');
             readln(genre);
             end;
        end;
      end;
    end;
	
 writeln('Введите год издания');
 readln(g);
 for i:=1 to n do
	if b[i].year=g then writeln(b[i].nazv);
writeln('Введите тип поиска (p - по количеству страниц, g - по жанру)');
    readln(searchType);
    case searchType of
        'p': begin
            writeln('Введите количество страниц для поиска');
            readln(searchPages);
            for i := 1 to n do
                if (b[i].infoType = 'p') and (b[i].pages = searchPages) then
                    writeln(b[i].nazv);
        end;
        'g': begin
            writeln('Введите жанр для поиска');
            readln(searchGenre);
            for i := 1 to n do
                if (b[i].infoType = 'g') and (b[i].genre = searchGenre) then
                    writeln(b[i].nazv);
        end;
    end;
 end.
