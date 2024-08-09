uses crt;
const inp='message.inp';out='message.out';
type chinh=array[1..10,1..10] of char;
var a,b:chinh;
t,i,j,c,d,so,dai,r,m,n,l,x,v,ii,jj:longint;co:boolean;
procedure xuli(a,b:chinh);
begin
co:=false;
for c:=1 to n-1 do for d:=1 to m-1 do
for i:=1 to n do for j:=1 to m do
if b[i,j]=a[c,d] then if (b[i,j+1]=a[c,d+1]) and (a[c+1,d]=b[i+1,j])
or (b[i,j+1]=a[c,d+1]) and (b[i,j+2]=a[i,j+2]) then begin co:=true;halt;end;
if co then begin for t:=1 to n do if b[i,j]=a[c,d] then begin inc(dai);
inc(j);inc(d);end;
for t:=1 to m do if b[i,j]=a[c,d] then begin inc(i);inc(r);inc(c);end;
end;
writeln(dai*r);
end;
begin
assign(input,inp);reset(input);
assign(output,out);reset(output);
readln(so);
read(m,n);
for i:=1 to n do for j:=1 to m do read(a[i,j]);
x:=n+n;v:=x-n;
for i:=v to x do for j:=1 to m do begin
inc(ii);inc(jj);
read(b[ii,jj]);
end;
for l:=1 to so do xuli(a,b);
close(input);close(output);
end.
