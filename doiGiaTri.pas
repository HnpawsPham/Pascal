uses crt;
var a,b,c:real;
begin
clrscr;
writeln('Nhap hai so a va b');read(a,b);
c:=a;a:=b;b:=c;
writeln('a=',a:1:2,'b=',b:1:2);
readln
end.