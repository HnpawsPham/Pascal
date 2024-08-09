uses crt;
var st:string;
i,j:integer;
nhap,xuat:text;
procedure cach1(var st:string);
begin
for i:=1 to length(st) do if st[i]=' ' then begin
for j:=pos(st[i],st) to length(St) do st[j]:=st[j+1];
delete(st,pos(st[length(St)],st),1);   end;
end;
procedure cach2(var st:string);
begin
for i:=1 to length(st) do if st[i]=' ' then delete(st,pos(st[i],st),1);
end;
begin
assign(nhap,'input6.txt');reset(nhap);
assign(xuat,'output6.txt');rewrite(xuat);
readln(nhap,st);   cach2(sT);
writeln(xuat,st);
close(nhap);close(xuat);
end.