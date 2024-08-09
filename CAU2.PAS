uses crt;
type chinh=array[1..250] of string;
const inp='cau2.inp';out='cau2.out';
var st:string;a:chinh;
i,n,j:integer;
procedure tach(st:string;var a:chinh;var k:integer);
begin
st:=st+' ';i:=1;
while pos(' ',st)<>0 do begin
a[i]:=copy(st,1,pos(' ',st)-1);
delete(st,1,pos(' ',st));
inc(i);end;k:=i-1;
end;
procedure xuli(var a:chinh;var k:integer);
var t:string;
begin
for i:=1 to n-1 do for j:=i+1 to n do if
a[j]<=a[i] then begin
 t:=a[j];a[j]:=a[i];a[i]:=t;end;
end;
begin
clrscr;
assign(input,inp);reset(input);
assign(output,out);rewrite(output);
read(st);
  tach(st,a,n);
  xuli(a,n);
  for i:=1 to n do write(a[i],' ');
close(input);close(output);
end.
