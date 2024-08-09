 uses crt;
var i,c,n,j,cangiua,hang,cot,l:longint;
a,b:array[1..100,1..100] of longint;

function chon (var i,j:longint):longint;
begin i:=1;l:=0;
for c:=1 to hang do begin
if a[i-l,j+l]<>0 then begin
chon:=a[i-l,j+l];
write(chon,' ');
inc(l);end;
end;
end;

procedure inra;
var x,y:longint;
begin 
x:=-1;y:=10;gotoxy(cangiua,y);
writeln(b[1,1]);
for c:=1 to cangiua*2 do begin 
chon(i,j);inc(i); inc(j);end;
end;

procedure nghieng90;
var cam,l:longint;
begin cam:=n;
for i:=1 to n do
for j:=1 to n do begin
b[i,j]:=a[cam,i];dec(cam);
if cam=0 then cam:=n;end;
end;
begin clrscr;
readln(n);hang:=2;cot:=1;
for i:=1 to n do for j:=1 to n do read(a[i,j]);
cangiua:=((1+n) div 2) +1;
b[1,1]:=a[1,1];
inra;
end.
