   uses crt;
var st,o:string;
i:longint;
nhap,xuat :text;
begin
o:='';
assign(nhap,'input5.dat');reset(nhap);
assign(xuat,'output5.dat');rewrite(xuat);
readln(nhap,st);
for i:=1 to length(st) do if st[i] in ['0'..'9'] then o:=o+st[i];
writeln(xuat,o);
writeln(xuat,st);
close(nhap);close(xuat);
end.