uses crt,dos;
var nhap,xuat:text;
i,gioihan,t:longint;
y,m,d,w,h,p,s,x:word;
st:string;
ma,dong:array[1..100] of string;
begin
assign(nhap,'HOADON.DAT');reset(nhap);
assign(xuat,'HOADON.OUT');rewrite(xuat);
t:=1;
while not eof(nhap) do  begin
readln(nhap,st);dong[t]:=st;
for i:=1 to length(st) do if st[i]<>' ' then
ma[t]:=ma[t]+st[i] else break;
 writeln(xuat,ma[t]);
  writeln(xuat,dong[t]);inc(t);
end;
getdate(y,m,d,w);
gettime(h,p,s,x);
writeln(xuat,'Hoa don duoc in luc ',h,' gio ',p,' phut ngay ',d,'/',m,'/',y);
close(xuat);close(nhap);
end.
