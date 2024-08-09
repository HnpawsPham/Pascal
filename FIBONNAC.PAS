uses crt;
var tam,nhap,i,j,s:longint;
begin
clrscr;
writeln('NHAP SO VAO');
readln(nhap);
i:=1;j:=1;
while tam<=nhap-1 do begin
tam:=i+j;
i:=j;
j:=tam;
end;
if (tam=nhap) or (nhap=1) then writeln('YES') else writeln('NO');
readln
end.
