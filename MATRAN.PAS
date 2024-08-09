uses crt; type chinh=array[1..100,1..100] of integer;
type phu=array[1..100] of integer;
var cot, hang, i,j:integer;a:chinh;
s:phu;

procedure nhap(m,n:integer;var a:Chinh;var s:phu);
begin
for i:=1 to m do for j:=1 to n do begin
read(a[i,j]);s[i]:=s[i]+a[i,j];end; i:=0;
end;

procedure tax(a:chinh;m,n:integer);
var max:integer;
begin
write('cac phan tu la max moi dong: ');
for i:=1 to m do begin max:=a[i,1];
for j:=1 to n do if a[i,j]>max then max:=a[i,j];
write(max,' ');end;writeln;
end;

procedure tin(a:chinh;m,n:integer);
var min:integer;
begin
write('cac phan tu la min moi dong: ');
for i:=1 to m do begin min:=a[i,1];
for j:=2 to n do if a[i,j]<min then min:=a[i,j];
write(min,' ');end;writeln;
end;

procedure inra(cot,hang:integer;var a:Chinh);
begin
repeat
inc(i);
for j:=1 to cot do write(a[i,j],' ');writeln;
until i=hang;end;

procedure xuli(a:chinh;m,n:integer;s:phu);
begin
for i:=1 to m do begin for j:=1 to n do
write(s[i]-a[i,j],' ');writeln;end;
end; 

begin clrscr;
writeln('nhap cot va hang');
read(cot,hang);
nhap(hang,cot,a,s);writeln;
inra(cot,hang,a);writeln;
xuli(a,hang,cot,s);
tax(a,hang,cot);tin(a,hang,cot);
delay(9000);
readln
end.
