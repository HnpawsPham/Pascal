uses crt;
const inp='ptyn.inp';out='ptyn.out';
var i,j,so,n,m,kq,min,max,luu,l,c:longint; co:boolean;
a:Array[1..100,1..100] of longint;
begin
assign(input,inp);reset(input);
assign(output,out);rewrite(output);
readln(n,m);
for i:=1 to n do for j:=1 to m do read(a[i,j]);
for i:=1 to n do begin
for l:=i downto 1 do if a[i,j]<a[l,j] then co:=true else co:=false;
for l:=i+1 to n do if a[i,j]<a[l,j] then co:=true else co:=false;
if co then for j:=1 to m do begin
for c:=j downto 1 do if a[i,j]>a[i,c] then co:=true else co:=false;
for c:=j+1 to m do if a[i,j]>a[i,c] then co:=true else co:=false;end;
if co then for l:=1 to n do for j:=1 to m do if a[l,j]=min then begin
writeln('(',l,',',j,')');so:=1;end; co:=false;
end;
if so=0 then writeln('Khong co phan tu yen ngua');
close(input);close(output);
end.