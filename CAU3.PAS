uses crt;
type chinh=array[1..100]of integer;
var a:chinh;
n,i,k:integer;
e:boolean;
function tong(s:integer):longint;
var g:integer;
begin
while s<>0 do begin
g:=(s mod 10)+g;s:=s div 10;end;
tong:=g;
end;
procedure kq(n,k:integer;var a:chinh);
begin
for i:=1 to n do if tong(a[i])=k*2 then begin
write(a[i],' '); e:=false;end else e:=true;
if e then writeln('Khong co');
end;
begin
clrscr;
read(n,k);writeln;
for i:=1 to n do read(A[i]);writeln;
kq(n,k,a);delay(9000);
readln
end.

