program Lin_alg_ch2;
var
  A,B,C,D,p,x1,y1,x2,y2,S: real;

BEGIN
	writeln ('введите вершины треугольника ABC');
	readln (A, B, C);
	p:= (A+B+C)/2;
	writeln ('Полупериметр=', p);
	writeln ('Введите координаты первой вершины');
	readln (x1, y1);
	writeln ('Введите координаты второй вершины');
	readln (x2, y2);
	D:=(sqrt(sqr(x1-x2)+sqr(y1-y2)));
	writeln ('Длина стороны треугольника=', D);
	S:=(sqrt(p*(p-A)*(p-B)*(p-C)));
	writeln ('Площадь треугольника=', S);
END.
