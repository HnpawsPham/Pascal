uses crt;
var 
i,n:integer;S: real;
begin
clrscr;
writeln('Nhap mau n');read(n);
for i:=1 to n do if i <= n then begin S:=1/i+S;write('1/',i,'+ ');end;
writeln('=',S:1:2);
readln
end.