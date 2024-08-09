uses crt;
var xau:string;
i:longint;
begin
clrscr;repeat
writeln('Nhap xau di');readln(xau);
for i:=1 to length(xau) do 
if xau[i]<>'z' then write(chr(ord(xau[i])-1)) else write('a');writeln;until keypressed;writeln;
readln
end.