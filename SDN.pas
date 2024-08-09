uses crt;
const inp='sdn.inp';out='sdn.out';
var y,t,l:longint;i,j,s,n:integer;
A:array[1..100000]of longint;
begin
clrscr;
assign(input,inp);reset(input);
assign(output);rewrite(output);
readln(y);l:=y;
repeat l:=l div 10 ;s:=s+1;until l=0;n:=10;
for i:=1 to s do begin a[i]:=l div 10;n:=10*n;end;
for i:=1 to s do 
for j:=s downto 1 do 
begin
t:=a[i];
a[i]:=a[j];
a[j]:=t;
end;
for i:=1 to s do n:=n*10;
for i:=1 to s do begin y:=(a[i]*n)+l; n:=n/10;end;
writeln(y mod 19);
close(input);close(output);
end.
