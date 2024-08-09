 uses crt;
 const inp='b2.inp';out='b2.out';
var x,y,i,j,t,d,q,n,luu:longint;
a:array[1..40] of longint;
b:array[1..100,1..100] of longint;
function ngto(k:longint):boolean;
var s:longint;
begin  s:=0;
for i:=2 to k-1 do if k mod i=0 then inc(s);
if s=0 then ngto:=true else ngto:=false;
end;
procedure mang(x:longint;var j:longint);
var c,h:longint;
begin     j:=0;
  for c:=2 to x-1 do if ngto(c) then begin inc(j);a[j]:=c;end;
end;

procedure phantich(x:longint; var y:longint);
var cong:longint;
begin y:=0; i:=1;
while x>=1 do begin
if (x-a[i]<>1) and (cong<=2) then begin
inc(y);inc(cong);
x:=x-a[i];
end else begin
inc(i); cong:=0;end;
end;
luu:=a[i];
end;

begin clrscr;
assign(input,inp);reset(input);
assign(output,out);rewrite(output);
readln(n);
for d:=1 to n do for q:=1 to n do read(b[d,q]);
for d:=1 to n do for q:=1 to n do begin
x:=b[d,q];
mang(x,j);i:=0;
phantich(x,y);
b[d,q]:=y+1;end;
for i:=1 to n do begin for j:=1 to n do write(b[i,j],' ');writeln;end;
close(input);close(output);
end.


