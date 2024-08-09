uses crt;
var a:array[1..100] of integer;
n,s,i,j,dem:integer;
begin
clrscr;
read(n,s);writeln;
for i:=1 to n do read(a[i]);
for i:=1 to n-1 do for j:=i+1 to n do if a[j]+a[i]=s then dem:=dem+1;
writeln(Dem);delay(9000);
readln
end.