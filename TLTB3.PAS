uses crt;
var
n,s,i,j:longint;
begin
clrscr;
read(s);
for i:=1 to s do n:=i*i*i+n;
for i:=1 to maxlongint do if i*i=n then begin writeln(i);halt;end;
delay(9000);
readln
end.