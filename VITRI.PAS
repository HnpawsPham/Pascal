uses crt;
var A:array[1..100] of integer;
n,k,b,i,l:integer;
begin
clrscr;
writeln('Muon nhap bao nhieu phan tu');read(n);
writeln('Nhap tung phan tu');
for i:=1 to n do begin write('A[',i,']='); readln(a[i]);end;
writeln('Nhap phan tu can tim');read(k);l:=0;
for i:=1 to n do if A[i]=k then break;l:=i;
writeln('Vi tri dau tien cua phan tu can tim la vi tri thu ',l);
writeln('Cac phan tu bang phan tu can tim la:');
for i:=1 to n do if (a[i]=k) and (a[i]<>l) then writeln('A[',i,']=',A[i]);
delay(9000);
readln
end.