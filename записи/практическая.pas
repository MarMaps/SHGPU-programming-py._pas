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
 writeln('������ ������⢮ ����');
 readln(n);
 for i:=1 to n do
	begin
	 with b[i] do
	 begin
		writeln('�������� ',i,' �����');
		readln(nazv);
		writeln('���� ',i,' �����');
		readln(author);
		writeln('��� ������� ',i,' �����');
		readln(year);
		writeln('������ ⨯ �������⥫쭮� ���ଠ樨 ��� ����� (p - ������⢮ ��࠭��, g - ����)');
        readln(infoType);
        case infoType of
			'p': begin
             writeln('������ ������⢮ ��࠭��');
             readln(pages);
             end;
             'g': begin
             writeln('������ ���� �����');
             readln(genre);
             end;
        end;
      end;
    end;
	
 writeln('������ ��� �������');
 readln(g);
 for i:=1 to n do
	if b[i].year=g then writeln(b[i].nazv);
writeln('������ ⨯ ���᪠ (p - �� �������� ��࠭��, g - �� �����)');
    readln(searchType);
    case searchType of
        'p': begin
            writeln('������ ������⢮ ��࠭�� ��� ���᪠');
            readln(searchPages);
            for i := 1 to n do
                if (b[i].infoType = 'p') and (b[i].pages = searchPages) then
                    writeln(b[i].nazv);
        end;
        'g': begin
            writeln('������ ���� ��� ���᪠');
            readln(searchGenre);
            for i := 1 to n do
                if (b[i].infoType = 'g') and (b[i].genre = searchGenre) then
                    writeln(b[i].nazv);
        end;
    end;
 end.
