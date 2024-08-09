uses crt;
var s,n:array[1..100] of integer;
a,t,i,j:integer;
begin
clrscr;
writeln('Nhap so phan tu muon nhap vao mang');read(a);
writeln('Nhap cac phan tu vao mang');
for i:=1 to a do begin write('N[',i,']=');readln(n[i]);end;
for i:=1 to a do for j:=1 to a do if l[i]=n[i] then s[i]=s[i]+1;
t:=s[1];
for i:=2 to a do if s[i]>t then t:=s[i];
for i:=2 to a do if s[i]=t then writeln('Phan tu xuat hien nhieu lan nhat la: ',n[i],' voi tan so la ',t);
readln
end.