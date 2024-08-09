uses crt;
var counter,i:integer;
begin
clrscr;read(counter);
for i:=1 to counter do begin
sound(100);delay(100);nosound;end;
end.