program Lin_alg_ch2_2;
var
  w,a,s,d,Z,sum: integer;

BEGIN
	writeln ('Введите трёхзначное число');
	readln (w);
	a:=w mod 10;
	w:=w div 10;
	s:=w mod 10;
	w:=w div 10;
	d:=w;
	w:=(100*a)+(10*s)+d;
	writeln (w);
	sum:=a+s+d;
  writeln ('сумма цифр равна ', sum);
END.