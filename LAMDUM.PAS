uses crt;
const inp='sln.inp';out='sln.out';
var t,i,n,m,s,j:longint;
a,b:array[1..100] of longint;
begin
assign(input,inp);reset(input);
assign(output,out);rewrite(output);
readln(m,n);
for i:=1 to n do begin
read(a[i]);s:=s+a[i];
end;
for i:=1 to n-1 do for j:=i+1 to n do if a[j]>a[i] then
begin t:=a[i];a[i]:=a[j];a[j]:=t;end;
  j:=0;i:=n;
while s>m do begin
dec(i);
if a[i]<= a[n] then begin
inc(j);
 b[j]:=a[i]; end;
 s:=s-a[i];
end;
write(m,'=');for i:=1 to j do write(b[i],' ');
close(input);close(output);
end.



