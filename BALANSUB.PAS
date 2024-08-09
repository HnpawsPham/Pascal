uses crt;
const inp='balansub.inp';out='balansub.out';
var n,i,kq,j,ss:longint;
a:array[1..100] of longint;
begin
assign(input,inp);reset(input);
assign(output,out);rewrite(output);
readln(n);
for i:=1 to n do read(a[i]);
l:=1;
for j:=1 to n do begin
for i:=l to n do begin writeln(a[i],' ',i);inc(l);if a[i]>=i then inc(Ss) else inc(t);end;
if ss>kq then kq:=ss;ss:=0;
end;
writeln(kq+1);
close(input);close(output);
end.
