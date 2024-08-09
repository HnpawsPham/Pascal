uses crt;
var max,i,n:integer;
a:Array[1..100] of integer;
begin
clrscr;
readln(n);
for i:=1 to n do readln(a[i]);
for i:=1 to n do if a[i]<0 then max:=a[i];
for i:=1 to n do if (a[i]<0) and (a[i]>max) then max:=a[i];
writeln(max);
readln
end.