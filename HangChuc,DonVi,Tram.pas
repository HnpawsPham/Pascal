uses crt;
var a,i,n,e,g:integer;
begin
clrscr;
writeln('Nhap so nguyen vao');read(n);
a:=n;g:=1;
while a>0 do begin a:= a div 10;g:=g+1;end;
for i:=1 to g-1 do begin e:=e+1;writeln('Chu so  thu ',g-e,' la ',n mod 10);
n:=n div 10;end;
readln
end.
