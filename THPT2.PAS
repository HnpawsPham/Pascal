 uses crt;
const inp='thpt2.inp';out='thpt2.out';
var i,n,j,cangiua:longint;
a,b:array[1..100,1..100] of longint;
procedure nghieng45;
var hang,cot,l:longint;
begin
hang:=1;cot:=1;
cangiua:=(1+n) div 2;
b[1,cangiua]:=a[1,1];
while not hang>cangiua do begin
inc(hang);
for cot:=0 to hang do begin
b[hang,cot+1]:=a[hang+1-l,cot+1];
inc(l);end;
end;end;
procedure nghieng90;
var cam,l:longint;
begin cam:=n;
for i:=1 to n do
for j:=1 to n do begin
b[i,j]:=a[cam,i];dec(cam);
if cam=0 then cam:=n;end;
end;
begin
assign(input,inp);reset(input);
assign(output,out);rewrite(output);
readln(n);
for i:=1 to n do for j:=1 to n do read(a[i,j]);
nghieng45;
for i:=1 to n do begin for j:=1 to n do write(b[i,j],' ');writeln;end;
close(input);close(output);
end.
