uses crt;
var n,kq,i,j,s:longint;
nhap,xuat:text;
a:Array[1..100] of longint;
begin
kq:=maxlongint;
assign(nhap,'DIFFERENT.INP');reset(nhap);
assign(xuat,'DIFFERENT.OUT');rewrite(xuat);
readln(nhap,n);
for i:=1 to n do read(nhap,a[i]);
for i:=1 to n do for j:=n downto 1 do if i<>j then begin
s:=abs(a[i]-a[j]);
if s<kq then kq:=s;
end;
writeln(xuat,kq);
close(nhap);close(xuat);
end.
