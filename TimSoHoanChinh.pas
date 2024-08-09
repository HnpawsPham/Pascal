uses crt;
var n,i,s,j:integer;
begin
clrscr;
writeln('Nhap n');read(n);
for i:=1 to n-1 do if n mod i=0 then s:=s+i;if s=n then 
writeln('Day la so hoan chinh') 
else writeln('Day khong phai so hoan chinh');
readln
end.