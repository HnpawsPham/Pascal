uses crt;
var st:string;l:char;
tanso,i,j:longint;
nhap,xuat:text;
begin
assign(nhap,'input7.txt');reset(nhap);
assign(xuat,'output7.txt');rewrite(xuat);
readln(nhap,st);
writeln(xuat,'Xau da doc duoc: ',st);
for l:='A' to 'Z' do begin
for i:=1 to length(st) do if (st[i] in ['a'..'z']) or
(st[i] in ['A'..'Z']) then begin
if l=upcase(st[i]) then inc(tanso);end;
if tanso<>0 then writeln(xuat,'Ky tu ',l,' xuat hien ',tanso,' lan');
tanso:=0;
end;
close(nhap);close(xuat);
end.