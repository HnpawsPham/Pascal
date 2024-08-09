uses Crt; 
var a:array[1..100] of integer;
i,n,c,j,d,b,ad:integer;
begin
clrscr;
writeln('Nhap so cac phan tu');read(n);
writeln('Nhap tung phan tu');
for i:=1 to n do begin write('A[',i,']=');readln(a[i]);end;
writeln('Mang vua nhap la');
for i:= 1 to n do write('A[',i,']=',a[i],'     ');d:=0;
for i:=1 to n do for j:=2 to n do 
if a[i]=a[j] then begin ;a[j]:=a[j+1];end;
for i:=1 to n do if a[i]=0 then n:=n-1;
writeln('Mang ket qua la');for i:= 1 to n do write('A[',i,']     ');writeln;
for i:= 1 to n do write(A[i],'     ');
readln
end.
