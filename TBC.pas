uses crt;
const inp='TBC.INP';out='TBC.OUT';
var i,n,j,s:integer;
a,B:array[1..100] of integer;
begin
clrscr;
assign(input,inp);reset(input);
assign(output,out);rewrite(output);
while not eof(input) do begin
i:=i+1;
read(b[i]);end;
n:=i;
for i:=1 to n do BEGIN s:=a[I-1]+s;
a[i]:=b[i]*I-S;
write(a[i],' ');
END;
close(input);close(output);
end.


