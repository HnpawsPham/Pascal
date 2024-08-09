uses crt;
var a,b,UCLN,r,doi:integer;
begin
clrscr;
writeln('Nhap hai so a va b di');
readln(a,b);
if a>b then r:= a mod b
else begin
doi:=b;
b:=a;
a:=doi;
while r <>0 do
r:=a mod b;
a:=b;
b:=r;
UCLN:=a;
writeln('UCLN la: ',UCLN);
readln
end.