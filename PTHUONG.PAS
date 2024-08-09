uses crt;
const inp='pthuong.inp';out='pthuong.out';
var n,i,s,c,luu:longint;
a,b:array[1..100] of longint;
begin
assign(input,inp);reset(input);
assign(output,out);rewrite(output);
readln(n); luu:=n;
for i:=1 to n do begin readln(a[i]);b[i]:=a[i];end;
for i:=1 to n-1 do
if (a[i]<a[i+1]) and (a[i]<a[i+2]) then begin
for c:=i to n do
b[c]:=b[c+1];dec(n);end;
for i:=1 to n do s:=s+b[i];writeln(s);
for i:=1 to luu do for c:=1 to n do if a[i]=b[c] then write(i,' ');
close(input);
close(output);
end.

