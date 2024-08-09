uses crt;
var a,i,j,q,dem,lt,ptu,s:longint;t,d:string;code:integer;
begin
clrscr;
readln(a);
q:=a;
while q<>0 do begin q:=q div 10;dem:=dem+1;end;lt:=1;
for i:=1 to dem-1 do lt:=2*lt;
str(a,t);
for i:=1 to length(t) do begin
val(t[i],ptu,code);ptu:=ptu*lt;
lt:=lt div 2;
s:=s+ptu;end;
writeln(s);
readln
end.