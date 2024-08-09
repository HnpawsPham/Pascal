uses crt;
var n,i:integer;
begin
clrscr;
writeln('Nhap n');read(n);
for i:=1 to n do if i mod 2 <> 0 then write(i,',');
readln
end.
