uses crt;
const inp='demma.inp';out='demma.out';
var m,n,i,j,l:longint;
kt:boolean;
a,b:array[1..100] of longint;
begin
assign(input,inp);reset(input);
assign(output,out);rewrite(output);
readln(m,n);
for i:=1 to m do read(a[i]);
for i:=1 to n do read(b[i]);

repeat
inc(j);
 for i:=1 to m do if b[j] = a[i] then dec(n);
until j>n+1;
 writeln(n);
 close(input);close(output);
 end.
