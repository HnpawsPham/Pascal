uses crt;
const inp='taomang.inp';out='taomang.out';
var w:array[1..100] of longint;
i,a,m,j,s,n,t:longint;
procedure luythua(a,i:longint;var t:longint);
begin t:=1;
for j:=1 to i do t:=a*t;writeln(t);
end;
begin
assign(input,inp);reset(input);
assign(output,out);rewrite(output);
read(n,a,m);
for i:=1 to n do begin
luythua(a,i,t);
 w[i]:=t mod m +1;
 end;
 for i:=1 to n do s:=w[i]+s;
 writeln(S);
 close(input);close(output);
 end.