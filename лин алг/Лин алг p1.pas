Program lab_1;
var
a,b,s,d,p:integer;
q,x,y,g,w,u,n,m,arg,res:real;
begin
writeln('введите 2 числа');
readln(a, b);
s:=a+b;
d:=a-b;
p:=a*b;
q:=a/b;
writeln('сумма=', s);
writeln('разность=', d);
writeln('произведение=', p);
writeln('частное=', q);
writeln('введите 2 числа');
readln (x, y);
arg:=x+y;
n:=sin(arg)*cos(arg);
m:=sin(arg)*cos(arg)+sin(arg)/cos(arg);
res:=n/m;
writeln('sin(x+y)*cos(x+y)/sin(x+y)+cos(x+y)+tg(x+y)=', res:2:3);
writeln('введите число g');
readln(g);
g:=g*g;
g:=g*g;
writeln('g^4=', g);
writeln('введите число w');
readln(w);
u:=w*w;
u:=u*u;
u:=u*u;
w:=w*u;
writeln('g^9=', w);
end.
