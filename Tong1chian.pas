uses crt;
var A:array[1..10000]of integer;
i,n:integer;s:real;
begin
clrscr;
writeln('Nhap mau n');read(n);
for i:=1 to n do begin A[i]:=i;if (A[i] <= n) then S:=(1/A[i])+S;end;
writeln('Ket qua: ');
for i:=1 to n do write('1   ');writeln;for i:=1 to n-1 do write('- + ');write('-');
writeln; for i:=1 to n do write(i,'   ');writeln('= ',s:2:3);
readln
end.