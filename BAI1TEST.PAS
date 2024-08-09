uses crt;
var nhap,xuat:text;
st:string;
n,i,dem:longint;
a:array[1..100] of longint;
begin
assign(nhap,'input1.txt');reset(nhap);
assign(xuat,'output1.txt');rewrite(xuat);
while not eof(nhap) do begin
inc(n);
read(nhap,a[n]);
end;
writeln(xuat,n);
for i:=1 to n do write(xuat,a[i],' ');
writeln(xuat);
for i:=1 to n do if a[i]=a[n] then inc(Dem);
writeln(xuat,dem);
close(nhap);close(xuat);
end.