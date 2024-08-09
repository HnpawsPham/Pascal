uses crt;
var a,tich:real;i,n:integer;
begin
clrscr;
writeln('Nhap so can luy thua');read(a);
writeln('Nhap so luy thua');read(n);tich:=1;
for i:=1 to n do begin tich:=tich*a;end;
writeln('Ket qua: ',tich:7:3);
readln
end.