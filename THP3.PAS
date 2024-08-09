uses crt;
const inp='thp3.inp';out='thp3.out';
type main=array[1..50,1..50] of longint;
var n,m,i,j,luu,e,f,tam,max:longint;
a,b:main;

function find(an:longint):boolean;
begin
for i:=1 to n do for j:=1 to m do if a[i,j]=an then
find:=true;
end;
procedure timmin( var tam,luu:longint);
begin
while tam<=luu do begin inc(tam);
while find(tam)=false do inc(tam);end;
luu:=tam;
end;

function ngto(k:longint):boolean;
var s,d:longint;
begin s:=0; if k<>1 then
for d:=1 to k do if k mod d=0 then inc(s);
if s=2 then ngto:=true;
end;

procedure sapxep(var e,f:longint;tam:longint);
begin
for i:=1 to n do for j:=1 to m do if a[i,j]=tam then begin b[e,f]:=a[i,j];
inc(f);if f=m+1 then begin inc(e);f:=1;end;end;
end;

begin
assign(input,inp);reset(input);
assign(output,out);rewrite(output);
readln(n,m);tam:=maxlongint;max:=0;
for i:=1 to n do for j:=1 to m do read(a[i,j]);
e:=1;f:=1;
 for i:=1 to n do for j:=1 to m do if a[i,j]<tam then tam:=a[i,j];luu:=0;
  for i:=1 to n do for j:=1 to m do if a[i,j]>max then max:=a[i,j];
while tam<=max do begin 
if ngto(tam) then 
sapxep(e,f,tam);
timmin(tam,luu);
end;
tam:=0;luu:=0; 
while tam<=max do begin 
if not ngto(tam) then 
sapxep(e,f,tam);
timmin(tam,luu);
end;
writeln;
for i:=1 to n do begin for j:=1 to m do write(b[i,j],' ');writeln;end;
close(input);close(output);
end.




