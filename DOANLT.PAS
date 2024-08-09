uses crt;
const inp='doanlt.inp';out='doanlt.out';
var n,m,x,y,i,j,s:longint;
a:array[1..200] of longint;
begin
assign(input,inp);reset(input);
assign(output,out);rewrite(output);
readln(n);
for i:=1 to n do read(a[i]);writeln;
readln(m);
for i:=1 to m do begin
read(x,y);
for j:=x to y do s:=a[j]+s;
writeln(s);s:=0;
end;
close(input);close(output);
end.
