uses crt;
var i,n:integer;
begin
for i:=2 to 9 do begin
writeln('Bang cuu chuong ',i);
for n:=1 to 9 do
writeln(i,'x',n,'=',i*n);end;
readln
end.