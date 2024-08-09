uses Crt; 
var a:array[1..100] of integer;
i,n,c,j,ad:integer;
begin
clrscr;
writeln('Nhap so cac phan tu');read(n);
writeln('Nhap tung phan tu');
for i:=1 to n do begin write('A[',i,']=');readln(a[i]);end;
writeln('Mang vua nhap la');
for i:= 1 to n do begin write('A[',i,']=');writeln(a[i]);end;
writeln('Nhap phan tu can chen');read(c);
writeln('Nhap vi tri can chen');read(ad);
for i:=n+1 downto ad+1 do
a[i]:=a[i-1];a[ad]:=c;n:=n+1;
writeln('Mang sau khi chen');for i:=1 to n do writeln('A[',i,']=',a[i]);
delay(9000);
readln
end.