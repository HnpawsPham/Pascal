uses crt;
var a:array[1..100] of integer;
i,n,d,p,vt,t,l:integer;
begin
clrscr;
writeln('Nhap so cac phan tu cua mang');read(n);
writeln('Nhap cac gia tri vao mang');
for i:=1 to n do begin write('A[',i,']=');readln(a[i]);end;
writeln('Mang vua nhap la');
for i:=1 to n do  writeln('A[',i,']= ',a[i]);
writeln('Chon phan tu muon thay doi vi tri');read(p);
writeln('Chon vi tri muon thay doi den');read(vt);
for i:=1 to n do if a[i]=p then a[i]:=a[vt];
a[vt]:=p;
writeln('Mang sau khi chuyen doi:');
for i:=1 to n do writeln('A[',i,']= ',a[i]);delay(9000);
readln
end.