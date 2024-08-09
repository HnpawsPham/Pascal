uses crt;
const inp='path.inp';out='path.out';
var dai:char;s,tong,n,d,b,i,j:integer;
begin
assign(input,inp);reset(input);
assign(output,out);rewrite(output);
readln(n,d);
for i:=1 to n do begin readln(dai,s);
for j:=1 to s do tong:=tong+d;end;
writeln(tong);
close(input);close(output);
end.
